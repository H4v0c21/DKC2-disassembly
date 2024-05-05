gnawty_defeat_animation:
	db $04 : dw !last_used_graphic_id-16
	;run code here (probably turn around logic)
	db $04 : dw !last_used_graphic_id-12
	db $04 : dw !last_used_graphic_id-8
	db $04 : dw !last_used_graphic_id-4
	db $04 : dw !last_used_graphic_id
	;run code here (probably turn around logic)
	db !animation_command_80, $00