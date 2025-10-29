; Spawn script for a generic moving item
moving_generic_spawn_script:
	dw sprite.number, !last_used_sprite_id
	dw sprite.render_order, $00C4
	dw sprite.constants_address, example_object_00_constants
	dw sprite.interaction_flags, $0000
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw !initcommand_success


; Spawn script for a generic moving banana
moving_banana_generic_spawn_script:
	dw !initcommand_load_subconfig, moving_generic_spawn_script
	dw sprite.state, $0000
	dw !initcommand_set_animation, $02DF	;Use banana animation
	dw !initcommand_set_alt_palette, $0000	;Use default global palette
	dw !initcommand_set_oam, $2000
	dw !initcommand_success


%insert_sprite_spawn_script_single($2000, moving_banana_orbit_small_spawn_script)
; Spawn script for a orbiting banana
moving_banana_orbit_small_spawn_script:
	dw !initcommand_load_subconfig, moving_banana_generic_spawn_script
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $1800	;Orbit radius
	dw sprite.max_x_speed, $0200		;Orbit speed
	dw sprite.movement_state, $000A		;Use orbit movement
	dw !initcommand_success			;Done with this spawn script

%insert_sprite_spawn_script_single($2002, moving_banana_orbit_medium_spawn_script)
; Spawn script for a orbiting banana
moving_banana_orbit_medium_spawn_script:
	dw !initcommand_load_subconfig, moving_banana_generic_spawn_script
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $2800	;Orbit radius
	dw sprite.max_x_speed, $0200		;Orbit speed
	dw sprite.movement_state, $000A		;Use orbit movement
	dw !initcommand_success			;Done with this spawn script

%insert_sprite_spawn_script_single($2004, moving_banana_orbit_large_spawn_script)
; Spawn script for a orbiting banana
moving_banana_orbit_large_spawn_script:
	dw !initcommand_load_subconfig, moving_banana_generic_spawn_script
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $3800	;Orbit radius
	dw sprite.max_x_speed, $0200		;Orbit speed
	dw sprite.movement_state, $000A		;Use orbit movement
	dw !initcommand_success			;Done with this spawn script


%insert_sprite_spawn_script_single($2006, moving_banana_wander_x_spawn_script)
; Spawn script for a wandering banana
moving_banana_wander_x_spawn_script:
	dw !initcommand_load_subconfig, moving_banana_generic_spawn_script
	dw sprite.general_purpose_46, $3030	;Left/right deviation
	dw sprite.max_x_speed, $FF00		;X move velocity
	dw sprite.general_purpose_4A, $0404	;Up/down deviation
	dw sprite.max_y_speed, $0100		;Y move velocity
	dw sprite.movement_state, $0007		;Use wander from home movement
	dw !initcommand_success
	
%insert_sprite_spawn_script_single($2008, moving_banana_wander_y_spawn_script)
; Spawn script for a wandering banana
moving_banana_wander_y_spawn_script:
	dw !initcommand_load_subconfig, moving_banana_generic_spawn_script
	dw sprite.general_purpose_46, $0404	;Left/right deviation
	dw sprite.max_x_speed, $FF00		;X move velocity
	dw sprite.general_purpose_4A, $3030	;Up/down deviation
	dw sprite.max_y_speed, $0100		;Y move velocity
	dw sprite.movement_state, $0007		;Use wander from home movement
	dw !initcommand_success

%insert_sprite_spawn_script_single($200A, moving_banana_wander_xy_spawn_script)
; Spawn script for a wandering banana
moving_banana_wander_xy_spawn_script:
	dw !initcommand_load_subconfig, moving_banana_generic_spawn_script
	dw sprite.general_purpose_46, $3030	;Left/right deviation
	dw sprite.max_x_speed, $FF00		;X move velocity
	dw sprite.general_purpose_4A, $3030	;Up/down deviation
	dw sprite.max_y_speed, $0100		;Y move velocity
	dw sprite.movement_state, $0007		;Use wander from home movement
	dw !initcommand_success