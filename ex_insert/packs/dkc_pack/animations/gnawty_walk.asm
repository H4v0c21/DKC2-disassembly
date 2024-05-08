gnawty_walk_animation:
	db $04 : dw !last_used_graphic_id-28
	;run code here (probably turn around logic)
	db !execute_ex_anim_code : dw gnawty_turning_logic
	db $04 : dw !last_used_graphic_id-24
	db $04 : dw !last_used_graphic_id-20
	db $04 : dw !last_used_graphic_id-16
	db $04 : dw !last_used_graphic_id-12
	db $04 : dw !last_used_graphic_id-8
	db $04 : dw !last_used_graphic_id-4
	db $04 : dw !last_used_graphic_id
	db !animation_command_80, $00