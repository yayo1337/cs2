#include <pch/pch.hpp>
#include <utilities/math/math.hpp>
#include <utilities/memory/memory.hpp>
#include <utilities/addresses/addresses.hpp>
#include <core/systems/systems.hpp>
#include <core/settings.hpp>
#include <core/features/features.hpp>

#include "../rendering.hpp"
#include <utilities/security/security.hpp>

namespace rendering {

	void widgets::draw( )
	{
		auto& dl = xdraw::get( );

		// In-game widgets render while the menu is closed, so re-apply the lime theme here.
		g_menu.sync_theme_style( );

		__try
		{
			this->keybinds( dl );
		}
		__except ( EXCEPTION_EXECUTE_HANDLER )
		{
		}
	}

	void widgets::keybinds( xdraw::draw_list& draw_list )
	{
		struct row_anim_t
		{
			animation::fade alpha;
			animation::spring offset_y;
			bool active_this_frame{ false };
		};

		static std::map<std::string, row_anim_t> row_states;
		static animation::fade container_alpha;
		const auto [screen_w, screen_h] = xdraw::viewport_size( );
		const auto& s = xui::ctx( ).style;

		constexpr auto margin{ 10.0f };
		constexpr auto row_spacing{ 3.0f };
		constexpr auto row_h{ 21.0f };
		constexpr auto header_h{ 24.0f };
		constexpr auto r{ 8.0f };
		constexpr auto inner_r{ 6.0f };
		constexpr auto inner_pad{ 2.0f };
		constexpr auto text_pad_x{ 8.0f };
		constexpr auto text_nudge{ 0.5f };

		struct bind_entry
		{
			std::string name{};
			char value[ 32 ]{};
			bool has_value_pill{};
			xui::bind_mode mode{};
		};

		bind_entry entries[ 32 ]{};
		auto count{ 0 };

		const auto& ctx = features::combat::g_shared.ctx( );
		const auto has_weapon = ctx.valid && ctx.weapon_type >= cstypes::weapon_type::pistol && ctx.weapon_type <= cstypes::weapon_type::lmg;

		for ( const auto setting : xui::binds::all( ) )
		{
			if ( !setting || setting->name.empty( ) || setting->bind.key == 0 || !setting->bind.active || count >= 32 )
			{
				continue;
			}

			auto is_rage_group{ false };
			for ( auto i = 0u; i < settings::combat::ragebot::k_group_count; ++i )
			{
				const auto& g = settings::g_combat.m_ragebot.groups[ i ];
				if ( setting == &g.min_damage_override || setting == &g.hitchance_override || setting == &g.force_shot || setting == &g.force_shot_air || setting == &g.body_aim || setting == &g.silent || setting == &g.no_spread )
				{
					is_rage_group = true;
					break;
				}
			}

			if ( is_rage_group )
			{
				if ( !settings::g_combat.m_ragebot.enabled || !has_weapon )
				{
					continue;
				}

				const auto active_group = &settings::g_combat.m_ragebot.get_group( ctx.weapon_type );
				auto is_active{ false };

				for ( auto i = 0u; i < settings::combat::ragebot::k_group_count; ++i )
				{
					const auto& g = settings::g_combat.m_ragebot.groups[ i ];
					if ( &g == active_group )
					{
						if ( setting == &g.min_damage_override || setting == &g.hitchance_override || setting == &g.force_shot || setting == &g.force_shot_air || setting == &g.body_aim )
						{
							is_active = true;
						}
						break;
					}
				}

				if ( !is_active )
				{
					continue;
				}

				auto& e = entries[ count++ ];
				e.name = setting->name;
				e.mode = setting->bind.mode;

				if ( setting == &active_group->min_damage_override )
				{
					std::snprintf( e.value, sizeof( e.value ), "%d", active_group->min_damage_override_value.value );
					e.has_value_pill = true;
				}
				else if ( setting == &active_group->hitchance_override )
				{
					std::snprintf( e.value, sizeof( e.value ), "%d%%", active_group->hitchance_override_value.value );
					e.has_value_pill = true;
				}
				else
				{
					e.value[ 0 ] = '\0';
					e.has_value_pill = false;
				}
				continue;
			}

			auto is_legit_group{ false };
			for ( auto i = 0u; i < settings::combat::legitbot::k_group_count; ++i )
			{
				const auto& g = settings::g_combat.m_legitbot.groups[ i ];
				if ( setting == &g.aimbot || setting == &g.rcs || setting == &g.standalone_rcs || setting == &g.triggerbot || setting == &g.autowall || setting == &g.visualize_fov || setting == &g.trigger_always_on || setting == &g.trigger_autostop || setting == &g.visible_check || setting == &g.aim_through_smoke || setting == &g.aim_while_flashed || setting == &g.autoscope || setting == &g.silent_aim )
				{
					is_legit_group = true;
					break;
				}
			}

			if ( is_legit_group )
			{
				if ( !settings::g_combat.m_legitbot.enabled.value || !has_weapon )
				{
					continue;
				}

				const auto* active_group = &settings::g_combat.m_legitbot.get_group( ctx.weapon_type );
				auto is_active{ false };

				for ( auto i = 0u; i < settings::combat::legitbot::k_group_count; ++i )
				{
					if ( &settings::g_combat.m_legitbot.groups[ i ] == active_group )
					{
						const auto& g = settings::g_combat.m_legitbot.groups[ i ];
						if ( setting == &g.aimbot || setting == &g.rcs || setting == &g.standalone_rcs || setting == &g.triggerbot || setting == &g.autowall || setting == &g.visualize_fov || setting == &g.trigger_always_on || setting == &g.trigger_autostop || setting == &g.visible_check || setting == &g.aim_through_smoke || setting == &g.aim_while_flashed || setting == &g.autoscope || setting == &g.silent_aim )
						{
							is_active = true;
						}
						break;
					}
				}

				if ( !is_active )
				{
					continue;
				}

				auto& e = entries[ count++ ];
				e.name = setting->name;
				e.mode = setting->bind.mode;
				e.value[ 0 ] = '\0';
				e.has_value_pill = false;
				continue;
			}

			if ( setting == &settings::g_combat.m_antiaim.enabled || setting == &settings::g_combat.m_antiaim.manual_left || setting == &settings::g_combat.m_antiaim.manual_right || setting == &settings::g_combat.m_antiaim.hide_shots || setting == &settings::g_combat.m_antiaim.avoid_backstab || setting == &settings::g_combat.m_antiaim.direction_indicator )
			{
				if ( !settings::g_combat.m_antiaim.enabled.value )
				{
					continue;
				}
			}

			auto& e = entries[ count++ ];
			e.name = setting->name;
			e.mode = setting->bind.mode;
			e.value[ 0 ] = '\0';
			e.has_value_pill = false;
		}

		if ( count > 0 || g_menu.is_open( ) )
			container_alpha.fade_in( 0.2f );
		else
			container_alpha.fade_out( 0.2f );

		container_alpha.update( );
		if ( !container_alpha.visible( ) )
			return;

		const auto master_alpha = container_alpha.alpha( );

		const auto [header_tw, header_th] = xdraw::measure_text( "keybinds" );
		const auto header_w = inner_pad + header_tw + text_pad_x * 2.0f + inner_pad;

		auto& kb_x = settings::g_misc.m_widgets.keybinds_x.value;
		auto& kb_y = settings::g_misc.m_widgets.keybinds_y.value;

		float x = kb_x >= 0.0f ? kb_x : std::max( margin, g_menu.pos_x( ) - header_w - margin );
		float y = kb_y >= 0.0f ? kb_y : std::max( margin, g_menu.pos_y( ) + margin );

		const auto& input = xui::ctx( ).input;

		const auto header_rect = xui::rect{ x, y, header_w, header_h };

		static bool dragging{};
		static float grab_dx{}, grab_dy{};

		if ( !dragging && input.mouse_clicked && header_rect.contains( input.mouse_x, input.mouse_y ) )
		{
			dragging = true;
			grab_dx = input.mouse_x - x;
			grab_dy = input.mouse_y - y;
		}

		if ( dragging )
		{
			if ( input.mouse_down )
			{
				x = std::clamp( input.mouse_x - grab_dx, 0.0f, static_cast< float >( screen_w ) - header_w );
				y = std::clamp( input.mouse_y - grab_dy, 0.0f, static_cast< float >( screen_h ) - header_h );

				kb_x = x;
				kb_y = y;
			}
			else
			{
				dragging = false;
			}
		}

		const auto base_ry = y;

		const auto header_inner_h = header_h - inner_pad * 2.0f;
		const auto inner_h = row_h - inner_pad * 2.0f;
		const auto master_u8 = static_cast< std::uint8_t >( 255.0f * master_alpha );

		draw_list.rect_filled_blurred( x, base_ry, header_w, header_h, xdraw::corner_radius{ r }, xdraw::color{ 255, 255, 255, master_u8 } );
		draw_list.rect_filled( x, base_ry, header_w, header_h, s.window_bg.alpha( static_cast< std::uint8_t >( s.window_bg.a * master_alpha ) ), xdraw::corner_radius{ r } );
		draw_list.rect( x, base_ry, header_w, header_h, s.child_border.alpha( static_cast< std::uint8_t >( s.child_border.a * master_alpha ) ), xdraw::corner_radius{ r }, 1.0f );

		const auto htx = x + inner_pad;
		const auto htw = header_tw + text_pad_x * 2.0f;
		draw_list.rect_filled( htx, base_ry + inner_pad, htw, header_inner_h, s.child_bg.alpha( static_cast< std::uint8_t >( s.child_bg.a * master_alpha ) ), xdraw::corner_radius{ inner_r } );
		draw_list.text( htx + text_pad_x, base_ry + ( header_h - header_th ) * 0.5f + text_nudge, "keybinds", s.accent.alpha( static_cast< std::uint8_t >( s.accent.a * master_alpha ) ) );

		for ( auto& [name, state] : row_states )
			state.active_this_frame = false;

		float current_offset_y = header_h + row_spacing;
		for ( auto i = 0; i < count; ++i )
		{
			const auto& e = entries[ i ];
			if ( e.name.empty( ) )
			{
				continue;
			}
			auto& anim = row_states[ e.name ];

			if ( !anim.active_this_frame && anim.alpha.alpha( ) <= 0.01f )
				anim.offset_y.snap( current_offset_y );

			anim.active_this_frame = true;
			anim.alpha.fade_in( 0.2f );
			anim.offset_y.set_target( current_offset_y );
			anim.alpha.update( );
			anim.offset_y.update( );

			const auto row_alpha = anim.alpha.alpha( ) * master_alpha;
			const auto draw_y = base_ry + anim.offset_y.value( );
			const auto [nw, nh] = xdraw::measure_text( e.name );
			const auto row_u8 = static_cast< std::uint8_t >( 255.0f * row_alpha );

			if ( e.has_value_pill )
			{
				const auto [vw, vh] = xdraw::measure_text( e.value );
				const auto name_pill_w = nw + text_pad_x * 2.0f;
				const auto value_pill_w = vw + text_pad_x * 2.0f;
				const auto row_w = inner_pad + name_pill_w + inner_pad + value_pill_w + inner_pad;

				draw_list.rect_filled_blurred( x, draw_y, row_w, row_h, xdraw::corner_radius{ r }, xdraw::color{ 255, 255, 255, row_u8 } );
				draw_list.rect_filled( x, draw_y, row_w, row_h, s.window_bg.alpha( static_cast< std::uint8_t >( s.window_bg.a * row_alpha ) ), xdraw::corner_radius{ r } );
				draw_list.rect_filled( x + inner_pad, draw_y + inner_pad, name_pill_w, inner_h, s.child_bg.alpha( static_cast< std::uint8_t >( s.child_bg.a * row_alpha ) ), xdraw::corner_radius{ inner_r } );
				draw_list.text( x + inner_pad + text_pad_x, draw_y + ( row_h - nh ) * 0.5f + text_nudge, e.name, s.accent.alpha( static_cast< std::uint8_t >( s.accent.a * row_alpha ) ) );

				const auto vpx = x + inner_pad + name_pill_w + inner_pad;
				draw_list.rect_filled( vpx, draw_y + inner_pad, value_pill_w, inner_h, s.accent.alpha( static_cast< std::uint8_t >( s.accent.a * row_alpha ) ), xdraw::corner_radius{ inner_r } );
				draw_list.text( vpx + text_pad_x, draw_y + ( row_h - vh ) * 0.5f + text_nudge, e.value, s.checkbox_mark_icon.alpha( static_cast< std::uint8_t >( s.checkbox_mark_icon.a * row_alpha ) ) );
			}
			else
			{
				const auto name_pill_w = nw + text_pad_x * 2.0f;
				const auto row_w = inner_pad + name_pill_w + inner_pad;
				const auto text_col = ( e.mode == xui::bind_mode::toggle ) ? s.text_dim : s.accent;

				draw_list.rect_filled_blurred( x, draw_y, row_w, row_h, xdraw::corner_radius{ r }, xdraw::color{ 255, 255, 255, row_u8 } );
				draw_list.rect_filled( x, draw_y, row_w, row_h, s.window_bg.alpha( static_cast< std::uint8_t >( s.window_bg.a * row_alpha ) ), xdraw::corner_radius{ r } );
				draw_list.rect_filled( x + inner_pad, draw_y + inner_pad, name_pill_w, inner_h, s.child_bg.alpha( static_cast< std::uint8_t >( s.child_bg.a * row_alpha ) ), xdraw::corner_radius{ inner_r } );
				draw_list.text( x + inner_pad + text_pad_x, draw_y + ( row_h - nh ) * 0.5f + text_nudge, e.name, text_col.alpha( static_cast< std::uint8_t >( text_col.a * row_alpha ) ) );
			}

			current_offset_y += row_h + row_spacing;
		}

		for ( auto it = row_states.begin( ); it != row_states.end( ); )
		{
			if ( !it->second.active_this_frame )
			{
				it->second.alpha.fade_out( 0.15f );
				it->second.alpha.update( );
				it->second.offset_y.update( );

				if ( it->second.alpha.alpha( ) <= 0.001f )
				{
					it = row_states.erase( it );
					continue;
				}

				const auto row_alpha = it->second.alpha.alpha( ) * master_alpha;
				const auto row_u8 = static_cast< std::uint8_t >( 255.0f * row_alpha );
				const auto draw_y = base_ry + it->second.offset_y.value( );
				const auto [nw, nh] = xdraw::measure_text( it->first.c_str( ) );
				const auto row_w = inner_pad + ( nw + text_pad_x * 2.0f ) + inner_pad;

				draw_list.rect_filled_blurred( x, draw_y, row_w, row_h, xdraw::corner_radius{ r }, xdraw::color{ 255, 255, 255, row_u8 } );
				draw_list.rect_filled( x, draw_y, row_w, row_h, s.window_bg.alpha( static_cast< std::uint8_t >( s.window_bg.a * row_alpha ) ), xdraw::corner_radius{ r } );
			}
			++it;
		}
	}

} // namespace rendering
