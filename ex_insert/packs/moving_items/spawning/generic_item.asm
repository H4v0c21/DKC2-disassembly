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
