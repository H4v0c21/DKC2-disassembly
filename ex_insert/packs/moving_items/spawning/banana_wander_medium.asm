; Spawn script for a wandering banana
moving_banana_wander_spawn_script:
	dw !initcommand_load_subconfig, moving_banana_generic_spawn_script
	dw sprite.general_purpose_46, $3030	;Left/right deviation
	dw sprite.max_x_speed, $FF00		;X move velocity
	dw sprite.general_purpose_4A, $0404	;Up/down deviation
	dw sprite.max_y_speed, $0100		;Y move velocity
	dw sprite.movement_state, $0007		;Use wander from home movement
	dw !initcommand_success