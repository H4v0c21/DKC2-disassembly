example_sprite_animation:
	db $02 : dw !last_used_graphic_id-12
	db $02 : dw !last_used_graphic_id-8
	db $02 : dw !last_used_graphic_id-4
	db $02 : dw !last_used_graphic_id
	db !animation_command_80, $00