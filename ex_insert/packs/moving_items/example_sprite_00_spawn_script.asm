example_object_00_spawn_script:
	dw sprite.number, !last_used_sprite_id
	dw sprite.render_order, $00C4
	dw sprite.constants_address, example_object_00_constants
	dw sprite.interaction_flags, $0120
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	
	dw sprite.general_purpose_46, $3030	;Left/right deviation
	dw sprite.max_x_speed, $FF00		;X move velocity
	dw sprite.general_purpose_4A, $0404	;Up/down deviation
	dw sprite.max_y_speed, $0100		;Y move velocity
	
	dw !initcommand_set_animation, $02DF	;Use banana animation
	
	dw sprite.movement_state, $0007		;Use wander from home movement
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $0000	;Use default global palette
	dw !initcommand_success