#include <pch/pch.hpp>
#include <utilities/memory/memory.hpp>
#include <core/systems/systems.hpp>
#include <core/features/features.hpp>
#include <core/settings.hpp>

#include "../movement.hpp"

namespace features::movement {

	// mini jump: прыжок минимальной высоты — jump ставится на один тик
	// и сразу снимается, чтобы движок не дал полный импульс.
	void minijump::on_create_move( systems::input::usercmd* cmd ) const
	{
		if ( !settings::g_movement.minijump.value )
		{
			return;
		}

		const auto local = systems::g_local.get( );
		if ( !local.pawn || !local.is_alive )
		{
			return;
		}

		const auto& prestate = systems::g_prediction.pre( );
		if ( !( prestate.flags & cstypes::entity_flags::on_ground ) )
		{
			return;
		}

		const auto move_type = memory::read<std::uint8_t>( local.pawn + SCHEMA( "C_BaseEntity", "m_nActualMoveType"_hash ) );
		if ( move_type == cstypes::move_type::ladder || move_type == cstypes::move_type::noclip )
		{
			return;
		}

		// duck на короткий тик обрезает импульс прыжка — мини-джамп
		cmd->buttons.value |= cstypes::command_buttons::in_jump | cstypes::command_buttons::in_duck;
		cmd->buttons.value_changed |= cstypes::command_buttons::in_jump | cstypes::command_buttons::in_duck;
	}

} // namespace features::movement
