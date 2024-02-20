example_sprite_spawn_script:
	dw sprite.number, $0320
	dw sprite.render_order, $00D4
	dw sprite.action, $0000
	dw sprite.unknown_42, $0000
	dw sprite.unknown_54, example_sprite_constants
	dw !initcommand_set_oam, $2000		;faces left, maybe right, idk lmao
	dw !initcommand_set_alt_palette, $005A	;epic blue color
	dw !initcommand_set_animation, $0160	;klomp walk
	dw !initcommand_success