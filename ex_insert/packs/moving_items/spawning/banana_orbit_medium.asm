; Spawn script for a orbiting banana
moving_banana_orbit_spawn_script:
	dw !initcommand_load_subconfig, moving_banana_generic_spawn_script
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $2800	;Orbit radius
	dw sprite.max_x_speed, $0200		;Orbit speed
	dw sprite.movement_state, $000A		;Use orbit movement
	dw !initcommand_success			;Done with this spawn script