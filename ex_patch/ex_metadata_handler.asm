;EX PATCH METADATA

ex_header:
	dw !ex_patch_version			;0000

padbyte $00 : pad ex_header+$40

;EX LEVEL METADATA
	dl custom_pre_nmi_table			;0040
	dl custom_post_nmi_table		;0043
	dl custom_post_logic_table		;0046
	dl custom_level_load_table		;0049
	dl custom_level_code			;004C
	
padbyte $00 : pad ex_header+$80
	
;EX SPRITE METADATA
	dl ex_sprite_main_table			;0080
	dl ex_sprite_main_data			;0083
	dl ex_sprite_spawn_script_table		;0086
	dl ex_sprite_spawn_script_data		;0089
	dl ex_sprite_constants_data		;008C
	dl ex_sprite_animation_table		;008F
	dl ex_sprite_animation_data		;0092
	dl ex_sprite_animation_code		;0095
	dl ex_sprite_graphics_table		;0098
	dl ex_sprite_graphics_data		;009B
	dl ex_sprite_hitbox_table		;009E
	dl ex_sprite_hitbox_data		;00A1
	dl ex_sprite_palette_table		;00A4
	dl ex_sprite_palette_data		;00A7
	dw !ex_sprite_id_start			;00AA
	dw !ex_sprite_spawn_id_start		;00AC
	dw !ex_sprite_animation_id_start	;00AE
	dw !ex_sprite_graphics_id_start		;00B0
	dw !ex_sprite_palette_id_start		;00B2