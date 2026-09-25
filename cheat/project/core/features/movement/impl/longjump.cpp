#include <pch/pch.hpp>
#include <utilities/memory/memory.hpp>
#include <core/systems/systems.hpp>
#include <core/features/features.hpp>
#include <core/settings.hpp>

#include "../movement.hpp"

namespace features::movement {

	// long jump: форсируем полный forward на отрыве и в полёте,
	// bhop/edgebug/jumpbug имеют приоритет над импульсом.
	void longjump::on_create_move( systems::input::usercmd* cmd ) const
	{
		if ( !settings::g_movement.longjump.value )
		{
			return;
		}

		if ( features::movement::g_edgebug.active_this_tick( )
			|| features::movement::g_jumpbug.active_this_tick( ) )
		{
			return;
		}

		const auto local = systems::g_local.get( );
		if ( !local.pawn || !local.is_alive )
		{
			return;
		}

		const auto move_type = memory::read<std::uint8_t>( local.pawn + SCHEMA( "C_BaseEntity", "m_nActualMoveType"_hash ) );
		if ( move_type == cstypes::move_type::ladder || move_type == cstypes::move_type::noclip )
		{
			return;
		}

		const auto base = cmd->csgo_user_cmd.mutable_base( );
		if ( !base )
		{
			return;
		}

		base->set_forwardmove( 1.0f );
		cmd->buttons.value |= cstypes::command_buttons::in_forward;
		cmd->buttons.value_changed |= cstypes::command_buttons::in_forward;
	}

} // namespace features::movement
