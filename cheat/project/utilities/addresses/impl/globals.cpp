#include <pch/pch.hpp>
#include <utilities/memory/memory.hpp>
#include <utilities/logging/logging.hpp>
#include <protection/game_addresses.hpp>
#include <protection/rva_fallbacks.hpp>
#include "../addresses.hpp"

namespace addresses::globals {

	bool initialize () {
		source2client              = INTERFACE_ ("Source2Client002");
		panorama = INTERFACE_ ("PanoramaUIEngine001");
		source2engine_to_client    = INTERFACE_ ("Source2EngineToClient001");
		scene_system               = INTERFACE_ ("SceneSystem_002");
		material_system            = INTERFACE_ ("VMaterialSystem2_001");
		schema_system              = INTERFACE_ ("SchemaSystem_001");
		input_system               = INTERFACE_ ("InputSystemVersion001");
		particle_system_mgr        = INTERFACE_ ("ParticleSystemMgr003");
		cvar                       = (interfaces::c_engine_cvar*)INTERFACE_ ("VEngineCvar007");
		source2client_prediction   = INTERFACE_ ("Source2ClientPrediction001");
		network_client_service     = INTERFACE_ ("NetworkClientService_001");
		resource_system            = INTERFACE_ ("ResourceSystem013");
		localize                   = INTERFACE_ ("Localize_001");
		mesh_system                = INTERFACE_ ("MeshSystem001");
		file_system                = INTERFACE_ ("VFileSystem017");

		// The /OFFSETS 18.09 dump was captured on the same client build these
		// signatures were authored for, so the dumper RVA is a verified fallback:
		// if a signature breaks after a build shift the literal keeps the global
		// alive instead of nulling every consumer downstream.
		const auto client_base = MODULE_BASE ("client.dll");

		const auto client_global = [client_base] (const ::protection::addresses::address_t& entry, std::uintptr_t fallback) -> std::uintptr_t
		{
			if (const auto resolved = PATTERN (entry))
				return resolved;

			const auto base = client_base ? client_base : memory::get_module_base ("client.dll");

			logging::console::print (xs ("[warn] pattern missed, using dumper rva | client.dll + {:#x}"), fallback);
			return base + fallback;
		};

		// --- dumper-backed globals (rva constants mirror /OFFSETS 18.09) ---
		csgo_input             = client_global (patterns::csgo_input,              rva::k_client_csgo_input);
		entity_list            = client_global (patterns::entity_list,             rva::k_client_entity_list);
		global_vars            = client_global (patterns::global_vars,             rva::k_client_global_vars);
		view_matrix            = client_global (patterns::view_matrix,             rva::k_client_view_matrix);
		game_rules             = client_global (patterns::game_rules,              rva::k_client_game_rules);
		game_entity_system     = client_global (patterns::game_entity_system,      rva::k_client_game_entity_system);
		planted_c4             = client_global (patterns::planted_c4,              rva::k_client_planted_c4);
		local_player_controller = client_global (patterns::local_player_controller, rva::k_client_local_player_controller);

		// dwPrediction is the prediction context slot, not the pawn slot.
		prediction_state       = client_global (patterns::prediction_state,        rva::k_client_prediction);

		// --- signature-only globals (no dumper counterpart exists) ---
		light_data_queue       = PATTERN (patterns::light_data_queue);
		particle_manager       = PATTERN (patterns::particle_manager);
		game_event_manager     = PATTERN (patterns::game_event_manager);
		game_trace_manager     = PATTERN (patterns::game_trace_manager);
		render_game_system_storage = PATTERN (patterns::render_game_system_storage);
		material_manager       = PATTERN (patterns::material_manager);
		weapon_recoil_data     = PATTERN (patterns::weapon_recoil_data);
		hud                    = PATTERN (patterns::hud);
		prediction_seed        = PATTERN (patterns::prediction_seed);
		simulation_player      = PATTERN (patterns::simulation_player);
		prediction_player      = PATTERN (patterns::prediction_player);
		item_system            = PATTERN (patterns::item_system);
		frame_input_ring_idx   = PATTERN (patterns::frame_input_ring_idx);
		frame_input_ring_base  = PATTERN (patterns::frame_input_ring_base);

		if (const auto ptr = MODULE_EXPORT("tier0.dll:g_pMemAlloc"))
			mem_alloc = *reinterpret_cast<std::uintptr_t*>(ptr);

		const std::pair<std::string_view, std::uintptr_t> required_globals[] {
			{ "csgo_input", csgo_input },
			{ "entity_list", entity_list },
			{ "local_player_controller", local_player_controller },
			{ "global_vars", global_vars },
			{ "view_matrix", view_matrix },
			{ "game_rules", game_rules },
			{ "light_data_queue", light_data_queue },
			{ "particle_manager", particle_manager },
			{ "game_event_manager", game_event_manager },
			{ "game_trace_manager", game_trace_manager },
			{ "render_game_system_storage", render_game_system_storage },
			{ "mem_alloc", mem_alloc },
			{ "material_manager", material_manager },
			{ "game_entity_system", game_entity_system },
			{ "weapon_recoil_data", weapon_recoil_data },
			{ "hud", hud },
			{ "prediction_seed", prediction_seed },
			{ "simulation_player", simulation_player },
			{ "prediction_player", prediction_player },
			{ "planted_c4", planted_c4 },
			{ "item_system", item_system },
			{ "network_client_service", network_client_service },
			{ "frame_input_ring_idx", frame_input_ring_idx },
			{ "frame_input_ring_base", frame_input_ring_base },
			{ "prediction_state", prediction_state },
		};

		auto initialized = true;
		for (const auto& [name, address] : required_globals) {
			if (!address) {
				logging::console::print (xs ("[error] global address not initialized | {}"), name);
				initialized = false;
			}
		}

		return initialized;
	}

} // namespace addresses::globals
