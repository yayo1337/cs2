#include <pch/pch.hpp>
#include <utilities/memory/memory.hpp>
#include <core/systems/systems.hpp>
#include <core/features/features.hpp>
#include <core/settings.hpp>

#include "../movement.hpp"

namespace features::movement {

	// texture bug: скольжение вдоль тесной щели между текстурами.
	// детект: bbox-трассы вперёд и под углом дают стену ближе шага скана,
	// при этом по velocity мы не прижаты к ней. зажимаем duck+strafe в сторону
	// щели — физика проталкивает пешку сквозь шов.
	namespace {

		constexpr float k_rad_to_deg{ 180.0f / std::numbers::pi_v<float> };
		constexpr float k_deg_to_rad{ std::numbers::pi_v<float> / 180.0f };
		constexpr float k_gap_scan_dist{ 2.0f };
		constexpr float k_max_wall_normal_z{ 0.2f };

	} // namespace

	void texturebug::on_create_move( systems::input::usercmd* cmd )
	{
		this->m_active_this_tick = false;

		if ( !settings::g_movement.texturebug.value )
		{
			return;
		}

		const auto local = systems::g_local.get( );
		if ( !local.pawn || !local.is_alive )
		{
			return;
		}

		const auto movement_services = memory::read<std::uintptr_t>( local.pawn + SCHEMA( "C_BasePlayerPawn", "m_pMovementServices"_hash ) );
		const auto scene_node = memory::read<std::uintptr_t>( local.pawn + SCHEMA( "C_BaseEntity", "m_pGameSceneNode"_hash ) );
		const auto base = cmd->csgo_user_cmd.mutable_base( );
		if ( !movement_services || !scene_node || !base || !base->viewangles( ) )
		{
			return;
		}

		const auto origin = memory::read<math::vector3>( scene_node + SCHEMA( "CGameSceneNode", "m_vecAbsOrigin"_hash ) );
		const auto mins = memory::read<math::vector3>( local.pawn + SCHEMA( "C_BaseModelEntity", "m_Collision"_hash ) + SCHEMA( "CCollisionProperty", "m_vecMins"_hash ) );
		const auto maxs = memory::read<math::vector3>( local.pawn + SCHEMA( "C_BaseModelEntity", "m_Collision"_hash ) + SCHEMA( "CCollisionProperty", "m_vecMaxs"_hash ) );

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
		const auto yaw_rad = base->viewangles( )->y( ) * k_deg_to_rad;

		// две трассы: по yaw и перпендикулярно — ищем «карман»
		const math::vector3 fwd{ std::cosf( yaw_rad ), std::sinf( yaw_rad ), 0.0f };
		const math::vector3 side{ -std::sinf( yaw_rad ), std::cosf( yaw_rad ), 0.0f };

		const auto trace_fwd = systems::g_tracing.trace_player_bbox(
			origin, { origin.x + fwd.x * k_gap_scan_dist, origin.y + fwd.y * k_gap_scan_dist, origin.z },
			{ mins, maxs }, filter, movement_services );
		const auto trace_side = systems::g_tracing.trace_player_bbox(
			origin, { origin.x + side.x * k_gap_scan_dist, origin.y + side.y * k_gap_scan_dist, origin.z },
			{ mins, maxs }, filter, movement_services );

		const bool wall_fwd = trace_fwd.fraction > 0.0f && trace_fwd.fraction < 1.0f
			&& std::fabsf( trace_fwd.normal.z ) < k_max_wall_normal_z;
		const bool wall_side = trace_side.fraction > 0.0f && trace_side.fraction < 1.0f
			&& std::fabsf( trace_side.normal.z ) < k_max_wall_normal_z;

		if ( !wall_fwd || !wall_side )
		{
			return;
		}

		// в щели: зажимаем duck и вбиваемся вперёд
		cmd->buttons.value |= cstypes::command_buttons::in_duck | cstypes::command_buttons::in_forward;
		cmd->buttons.value_changed |= cstypes::command_buttons::in_duck | cstypes::command_buttons::in_forward;
		base->set_forwardmove( 1.0f );

		this->m_active_this_tick = true;
	}

} // namespace features::movement
