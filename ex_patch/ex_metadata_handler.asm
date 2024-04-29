;EX PATCH METADATA

ex_header:
	dw !ex_patch_version			;0000

padbyte $00 : pad ex_header+$40

;EX LEVEL METADATA
	dl custom_pre_nmi_table			;0040
	dl custom_post_nmi_table		;0043
	dl custom_post_logic_table		;0046
	dl custom_level_load_table		;0049
	
padbyte $00 : pad ex_header+$80
	
;EX SPRITE METADATA
	dl ex_sprite_main_table			;0080
	dl ex_sprite_main_table_end		;0083
	dl ex_spawn_script_table		;0086
	dl ex_spawn_script_table_end		;0089
	dl ex_spawn_scripts			;008C
	dl ex_sprite_constants			;008F
	dw !ex_sprite_id_start			;0092
	dw !ex_spawn_id_start			;0094
	dw !ex_animation_id_start		;0096
	dl ex_animation_table			;0098
	dl ex_animation_table_end		;009B
	dl ex_graphics_address_table		;009E
	dl ex_graphics				;00A1
	dw !ex_graphics_id_start		;00A4