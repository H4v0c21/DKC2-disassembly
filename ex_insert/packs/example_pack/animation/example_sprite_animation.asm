example_sprite_animation:
	db $02 : dw $0E58
	db $02 : dw $0E5C
	db $02 : dw $0E60
	db $02 : dw $0E64
	db $02 : dw !last_used_graphic_id-12
	db $02 : dw $0E68
	db $02 : dw $0E6C
	db $02 : dw $0E70
	db $02 : dw $0E74
	db $02 : dw $0E78
	db $02 : dw $0E7C
	db $02 : dw $0E80
	db $02 : dw $0E84
	db $02 : dw $0E88
	db $02 : dw $0E8C
	db !animation_command_80, $00


;example_sprite_animation:
;	db $02 : dw !last_used_graphic_id-12
;	db $02 : dw !last_used_graphic_id-8
;	db $02 : dw !last_used_graphic_id-4
;	db $02 : dw !last_used_graphic_id
;	db !animation_command_80, $00