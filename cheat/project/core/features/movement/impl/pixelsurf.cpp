#include <pch/pch.hpp>
#include <utilities/memory/memory.hpp>
#include <utilities/logging/logging.hpp>
#include <core/systems/systems.hpp>
#include <core/features/features.hpp>
#include <core/settings.hpp>

#include "../movement.hpp"

namespace features::movement {

	namespace {

		constexpr float k_rad_to_deg{ 180.0f / std::numbers::pi_v<float> };
		constexpr float k_deg_to_rad{ std::numbers::pi_v<float> / 180.0f };
		constexpr float k_scan_step{ 1.0f };
		constexpr float k_max_surface_normal_z{ 0.7f };
		constexpr float k_player_radius{ 24.0f };
		constexpr float k_ground_trace_length{ 2048.0f };
		constexpr float k_ground_offset{ 8.0f };
		constexpr float k_retry_offset{ 32.0f };
		constexpr std::uintptr_t k_trace_mask{ 0x1c3003 };
		constexpr std::uint8_t k_trace_layer{ 4 };

		constexpr float k_notify_fall_speed{ 7.0f };
		constexpr float k_notify_rearm_speed{ 20.0f };
		constexpr float k_notify_horizontal_z{ 0.5f };
		constexpr int k_notify_surf_ticks{ 2 };

		struct surface_candidate
		{
			float target_yaw{};
			float distance{ std::numeric_limits<float>::max( ) };
			bool surface_side{};
			bool found{};
			math::vector3 normal{};
			math::vector3 contact{};
		};

		[[nodiscard]] float normalize_angle( float angle )
		{
			while ( angle > 180.0f )
			{
				angle -= 360.0f;
			}
			while ( angle < -180.0f )
			{
				angle += 360.0f;
			}
			return angle;
		}

		[[nodiscard]] float turn_angle_for_speed( float speed, bool slipping )
		{
			if ( speed < 60.0f )
			{
				return 10.0f;
			}
			const auto ratio = ( slipping ? 30.006001f : 29.933001f ) / speed;
			return std::asinf( std::clamp( ratio, -1.0f, 1.0f ) ) * k_rad_to_deg;
		}

	} // namespace

	void pixelsurf::reset_detection( )
	{
		this->m_surf_ticks = 0;
		this->m_notified = false;
		this->m_last_z = 0.0f;
	}

	void pixelsurf::on_create_move( systems::input::usercmd* cmd )
	{
		this->m_active_this_tick = false;

		if ( !cmd || !settings::g_movement.pixelsurf.value )
		{
			this->reset_detection( );
			return;
		}

		const auto local = systems::g_local.get( );
		if ( !local.pawn || !local.is_alive )
		{
			this->reset_detection( );
			return;
		}

		const auto health = memory::read<int>( local.pawn + SCHEMA( "C_BaseEntity", "m_iHealth"_hash ) );
		const auto flags = memory::read<std::uint32_t>( local.pawn + SCHEMA( "C_BaseEntity", "m_fFlags"_hash ) );
		const auto move_type = memory::read<std::uint8_t>( local.pawn + SCHEMA( "C_BaseEntity", "m_nActualMoveType"_hash ) );
		const auto scene_node = memory::read<std::uintptr_t>( local.pawn + SCHEMA( "C_BaseEntity", "m_pGameSceneNode"_hash ) );
		const auto base = cmd->csgo_user_cmd.mutable_base( );
		const auto movement_services = memory::read<std::uintptr_t>( local.pawn + SCHEMA( "C_BasePlayerPawn", "m_pMovementServices"_hash ) );

		if ( health <= 0 || flags & cstypes::entity_flags::on_ground )
		{
			this->reset_detection( );
			return;
		}
		if ( move_type == cstypes::move_type::ladder || move_type == cstypes::move_type::noclip || move_type == cstypes::move_type::observer )
		{
			this->reset_detection( );
			return;
		}
		if ( !scene_node || !movement_services )
		{
			return;
		}
		if ( !base || !base->viewangles( ) )
		{
			return;
		}

		const auto collision = local.pawn + SCHEMA( "C_BaseModelEntity", "m_Collision"_hash );
		const auto mins = memory::read<math::vector3>( collision + SCHEMA( "CCollisionProperty", "m_vecMins"_hash ) );
		const auto maxs = memory::read<math::vector3>( collision + SCHEMA( "CCollisionProperty", "m_vecMaxs"_hash ) );
		const auto origin = memory::read<math::vector3>( scene_node + SCHEMA( "CGameSceneNode", "m_vecAbsOrigin"_hash ) );
		const auto velocity = memory::read<math::vector3>( local.pawn + SCHEMA( "C_BaseEntity", "m_vecVelocity"_hash ) );
		const auto speed = velocity.length_2d( );
		const auto current_pitch = base->viewangles( )->x( );
		const auto current_yaw = normalize_angle( base->viewangles( )->y( ) );
		const auto slipping = velocity.z >= -8.293333f && velocity.z <= -5.628950f;
		const auto turn_angle = turn_angle_for_speed( speed, slipping );

		const auto movement_pawn = memory::read<std::uintptr_t>( movement_services + 56 );
		if ( !movement_pawn )
		{
			return;
		}

		auto trace_mask = memory::read<std::uintptr_t>( movement_pawn + 0xd48 );
		if ( memory::read<std::uint32_t>( movement_pawn + 0x3f8 ) & 0x10 )
		{
			trace_mask |= 0x20;
		}

		const auto filter = systems::g_tracing.make_player_movement_filter( local.pawn, trace_mask, 11 );
		const auto view_radians = current_yaw * k_deg_to_rad;
		const auto velocity_reversed = speed >= 5.0f
			&& std::fabsf( normalize_angle( std::atan2f( velocity.y, velocity.x ) * k_rad_to_deg - current_yaw ) ) > 90.0f;

		const auto scan_surfaces = [&]( const math::vector3& scan_origin, surface_candidate* output )
		{
			constexpr std::array<math::vector3, 4> directions
			{
				math::vector3{ 1.0f, 0.0f, 0.0f  },
				math::vector3{ 0.0f, 1.0f, 0.0f  },
				math::vector3{ -1.0f, 0.0f, 0.0f },
				math::vector3{ 0.0f, -1.0f, 0.0f }
			};

			*output = {};
			for ( const auto& direction : directions )
			{
				const math::vector3 trace_end
				{
					scan_origin.x + direction.x * k_scan_step,
					scan_origin.y + direction.y * k_scan_step,
					scan_origin.z
				};

				const auto trace = systems::g_tracing.trace_player_bbox( scan_origin, trace_end, { mins, maxs }, filter, movement_services );
				if ( trace.fraction <= 0.0f || trace.fraction >= 1.0f || trace.all_solid || std::fabsf( trace.normal.z ) >= k_max_surface_normal_z )
				{
					continue;
				}

				const auto normal_yaw = normalize_angle( std::atan2f( trace.normal.y, trace.normal.x ) * k_rad_to_deg );
				const auto normal_radians = normal_yaw * k_deg_to_rad;
				const auto surface_side = std::sinf( normal_radians ) * std::cosf( view_radians )
					- std::cosf( normal_radians ) * std::sinf( view_radians ) > 0.0f;
				const auto parallel_yaw = normalize_angle( normal_yaw + ( surface_side ? -90.0f : 90.0f ) );
				const auto add_turn = slipping ^ velocity_reversed ^ surface_side;
				const auto target_yaw = normalize_angle( parallel_yaw + ( add_turn ? turn_angle : -turn_angle ) );
				const auto dx = trace.end_pos.x - scan_origin.x;
				const auto dy = trace.end_pos.y - scan_origin.y;
				const auto distance = std::sqrtf( dx * dx + dy * dy ) - k_player_radius;
				if ( distance >= output->distance )
				{
					continue;
				}

				output->target_yaw = target_yaw;
				output->distance = distance;
				output->surface_side = surface_side;
				output->found = true;
				output->normal = trace.normal;
				output->contact = trace.end_pos;
			}
		};

		surface_candidate best{};
		scan_surfaces( origin, &best );

		if ( !best.found )
		{
			const math::vector3 ground_end{ origin.x, origin.y, origin.z - k_ground_trace_length };
			const auto ground_trace = systems::g_tracing.trace( origin, ground_end, local.pawn, k_trace_mask, k_trace_layer );
			if ( ground_trace.fraction < 1.0f && !ground_trace.all_solid )
			{
				const auto ground_distance = origin.z - ground_trace.end_pos.z;
				const math::vector3 offset_origin
				{
					origin.x - k_retry_offset,
					origin.y - k_retry_offset,
					origin.z - k_retry_offset
				};
				scan_surfaces( offset_origin, &best );

				if ( !best.found )
				{
					const math::vector3 grounded_origin
					{
						origin.x,
						origin.y,
						origin.z - ground_distance + k_ground_offset
					};
					scan_surfaces( grounded_origin, &best );
				}
			}
		}

		auto view_angles = base->mutable_viewangles( );
		const auto dropping = velocity.z <= -k_notify_rearm_speed;

		if ( !view_angles || !best.found )
		{
			this->m_surf_ticks = 0;

			if ( dropping )
			{
				this->m_notified = false;
			}

			this->m_last_z = velocity.z;
			return;
		}

		++this->m_surf_ticks;

		const auto horizontal = std::fabsf( velocity.z ) <= k_notify_horizontal_z;
		const auto entered_from_fall = this->m_last_z <= -k_notify_fall_speed;
		if ( !this->m_notified && ( entered_from_fall || horizontal || this->m_surf_ticks >= k_notify_surf_ticks ) )
		{
			this->m_notified = true;
			logging::console::print( "pixelsurfed" );
		}

		this->m_last_z = velocity.z;

		if ( !settings::g_movement.pixelsurf_silent.value )
		{
			systems::g_input.set_view_angles( { current_pitch, best.target_yaw, 0.0f } );
		}

		view_angles->set_x( current_pitch );
		view_angles->set_y( best.target_yaw );
		view_angles->set_z( 0.0f );
		const auto move_right = best.surface_side ^ slipping;
		base->set_forwardmove( 0.0f );
		base->set_leftmove( move_right ? -1.0f : 1.0f );

		constexpr auto movement_buttons =
			  cstypes::command_buttons::in_forward
			| cstypes::command_buttons::in_back
			| cstypes::command_buttons::in_moveleft
			| cstypes::command_buttons::in_moveright;
		cmd->buttons.value &= ~movement_buttons;
		cmd->buttons.value |= move_right ? cstypes::command_buttons::in_moveright : cstypes::command_buttons::in_moveleft;
		cmd->buttons.value_changed |= movement_buttons;

		this->m_active_this_tick = true;
	}

} // namespace features::movement
