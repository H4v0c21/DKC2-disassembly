gnawty_turn_animation:
	db $04 : dw !last_used_graphic_id-4
	db $04 : dw !last_used_graphic_id
	;run code here (probably turn around logic)
	db $04 : dw !last_used_graphic_id
	db $04 : dw !last_used_graphic_id-4
	;run code here (probably turn around logic)
	db !animation_command_80, $00