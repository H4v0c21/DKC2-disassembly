example_sprite_2_spawn_script:
	dw sprite.number, $0324
	dw sprite.render_order, $00D4
	dw sprite.action, $0000
	dw sprite.unknown_42, $0000
	dw sprite.unknown_54, example_sprite_2_constants
	dw !initcommand_set_oam, $2000		;faces left, maybe right, idk lmao
	dw !initcommand_set_alt_palette, $005C	;epic blue color
	dw !initcommand_set_animation, $01A3	;spiny walk
	dw !initcommand_success