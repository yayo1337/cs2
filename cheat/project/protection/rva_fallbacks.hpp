#ifndef RVA_FALLBACKS_HPP
#define RVA_FALLBACKS_HPP

#include <cstdint>

/*
* @info
* Last-known-good module-relative RVAs for the cs2 build in /OFFSETS 18.09.
*
* Every constant below was copied 1:1 from the cs2-dumper output that shipped
* with the project (output/offsets.hpp + output/client_dll.hpp) and mapped onto
* the globals consumed by addresses::globals::initialize().
*
* The remaining globals (hud, item_system, material_manager, weapon_recoil_data,
* prediction_*, render_game_system_storage, light_data_queue, ...) have no
* dumper counterpart because they are not static global points: they must keep
* resolving through their signatures. Do not invent numbers for them.
*
* Usage: fallback only, when a signature fails to scan.
*/

namespace protection::rva {

	// --- client.dll globals (dump: dw* symbols) -----------------------------
	constexpr std::uintptr_t k_client_csgo_input              = 0x23E2610;
	constexpr std::uintptr_t k_client_entity_list             = 0x2577BE0;
	constexpr std::uintptr_t k_client_game_entity_system      = 0x2577BE0;
	constexpr std::uintptr_t k_client_game_rules              = 0x23CC6C8;
	constexpr std::uintptr_t k_client_global_vars             = 0x20B57C0;
	constexpr std::uintptr_t k_client_local_player_controller = 0x23A78D0;
	constexpr std::uintptr_t k_client_planted_c4              = 0x23973B8;
	constexpr std::uintptr_t k_client_prediction              = 0x23CCB10;
	constexpr std::uintptr_t k_client_view_matrix             = 0x23D21F0;
	constexpr std::uintptr_t k_client_weapon_c4               = 0x2345728;

	// --- engine2.dll globals ------------------------------------------------
	constexpr std::uintptr_t k_engine2_network_game_client    = 0x90E6A0;
	constexpr std::uintptr_t k_engine2_network_delta_tick     = 0x24C;

	// --- module interfaces (dump: interfaces.hpp) ---------------------------
	constexpr std::uintptr_t k_schema_system_interface        = 0x75730;
	constexpr std::uintptr_t k_input_system_interface         = 0x45BA0;
	constexpr std::uintptr_t k_sound_system_interface         = 0x54B5D0;

	// ------------------------------------------------------------------------
	// Schema fields (dump: client_dll.hpp). These are the last-known-good
	// members for the same build, used to audit systems::schemas::lookup()
	// results and as an offline cross-check. A live mismatch means the schema
	// walk returned a stale class layout.
	// ------------------------------------------------------------------------
	namespace schema {

		// C_BaseEntity
		constexpr std::uintptr_t entity_game_scene_node       = 0x330;
		constexpr std::uintptr_t entity_collision             = 0x340;
		constexpr std::uintptr_t entity_health                = 0x34C;
		constexpr std::uintptr_t entity_life_state            = 0x354;
		constexpr std::uintptr_t entity_team_num              = 0x3E7;
		constexpr std::uintptr_t entity_flags                 = 0x3F4;
		constexpr std::uintptr_t entity_abs_velocity          = 0x3F8;
		constexpr std::uintptr_t entity_velocity              = 0x430;
		constexpr std::uintptr_t entity_move_collide          = 0x524;
		constexpr std::uintptr_t entity_move_type             = 0x525;
		constexpr std::uintptr_t entity_actual_move_type      = 0x526;
		constexpr std::uintptr_t entity_subclass_id           = 0x380;

		// C_BasePlayerPawn
		constexpr std::uintptr_t pawn_weapon_services         = 0x1208;
		constexpr std::uintptr_t pawn_item_services           = 0x1210;
		constexpr std::uintptr_t pawn_observer_services       = 0x1220;
		constexpr std::uintptr_t pawn_camera_services         = 0x1240;
		constexpr std::uintptr_t pawn_movement_services       = 0x1248;
		constexpr std::uintptr_t pawn_fov_sensitivity_adjust  = 0x13B0;
		constexpr std::uintptr_t pawn_old_origin              = 0x13B8;
		constexpr std::uintptr_t pawn_controller_handle       = 0x13D0;

		// C_CSPlayerPawnBase / C_CSPlayerPawn
		constexpr std::uintptr_t pawn_base_view_offset        = 0xE78;
		constexpr std::uintptr_t pawn_base_flash_duration     = 0x1428;
		constexpr std::uintptr_t pawn_base_flash_max_alpha    = 0x1424;
		constexpr std::uintptr_t pawn_econ_gloves             = 0x1690;
		constexpr std::uintptr_t pawn_hud_model_arms          = 0x1B84;
		constexpr std::uintptr_t pawn_shots_fired             = 0x1C8C;
		constexpr std::uintptr_t pawn_is_scoped               = 0x1C78;
		constexpr std::uintptr_t pawn_is_defusing             = 0x1C7A;
		constexpr std::uintptr_t pawn_armor_value             = 0x1CA4;
		constexpr std::uintptr_t pawn_eye_angles              = 0x3350;
		constexpr std::uintptr_t pawn_is_buy_menu_open        = 0x150A;

		// CBasePlayerController / CCSPlayerController
		constexpr std::uintptr_t controller_pawn_handle       = 0x6BC;
		constexpr std::uintptr_t controller_tick_base         = 0x6B8;
		constexpr std::uintptr_t controller_steam_id          = 0x780;
		constexpr std::uintptr_t controller_alive             = 0x91C;
		constexpr std::uintptr_t controller_observer_pawn     = 0x918;

		// CPlayer_WeaponServices / C_BasePlayerWeapon
		constexpr std::uintptr_t weapon_services_active       = 0x60;
		constexpr std::uintptr_t weapon_clip1                 = 0x1700;
		constexpr std::uintptr_t weapon_clip2                 = 0x1704;

		// C_EconEntity / C_EconItemView
		constexpr std::uintptr_t econ_fallback_paint_kit      = 0x1680;
		constexpr std::uintptr_t econ_fallback_seed           = 0x1684;
		constexpr std::uintptr_t econ_fallback_wear           = 0x1688;
		constexpr std::uintptr_t item_definition_index        = 0x1BA;
		constexpr std::uintptr_t item_entity_quality          = 0x1BC;
		constexpr std::uintptr_t item_account_id              = 0x1D8;
		constexpr std::uintptr_t item_custom_name             = 0x2F8;

		// CGameSceneNode
		constexpr std::uintptr_t scene_node_child             = 0x40;
		constexpr std::uintptr_t scene_node_sibling           = 0x48;
		constexpr std::uintptr_t scene_node_parent            = 0x70;
		constexpr std::uintptr_t scene_node_origin            = 0x80;
		constexpr std::uintptr_t scene_node_rotation          = 0xB8;
		constexpr std::uintptr_t scene_node_scale             = 0xC4;
		constexpr std::uintptr_t scene_node_abs_origin        = 0xC8;
		constexpr std::uintptr_t scene_node_dormant           = 0x103;

	} // namespace schema

} // namespace protection::rva

#endif // !RVA_FALLBACKS_HPP
