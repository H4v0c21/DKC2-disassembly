if !game_version == 0
	give_banana_to_kong = $B5F928
else
	give_banana_to_kong = $B5F94C
endif

example_sprite_00_main:
	JSR ex_sprite_state_handler

.state_table
	dw .state_0

.state_0
	LDX current_sprite
	JSL process_current_movement
	JSL process_animation
	JSL populate_sprite_clipping
	LDA #$1529
	JSL check_simple_player_collision
	BCS ..collided
	JML sprite_return_handle_despawn

..collided
	LDX #$F8F8
	JSL give_banana_to_kong
	LDX current_sprite
	JSL delete_sprite_handle_deallocation
	JML sprite_return_handle_despawn