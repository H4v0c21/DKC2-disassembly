gnawty_2_spawn_script:
	dw sprite.number, !last_used_sprite_id
	dw sprite.render_order, $00D4
	dw sprite.unknown_54, gnawty_constants
	dw sprite.action, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $FF00
	dw sprite.y_speed, $0000
	dw sprite.unknown_30, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $001E
	dw !initcommand_set_animation, !last_used_animation_id
	dw sprite.unknown_52, $0022
	dw !initcommand_success