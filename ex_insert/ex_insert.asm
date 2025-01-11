exhirom

optimize dp always
optimize address mirrors

!game_version #= read1($00FFDB)
incsrc "ex_hooks.asm"

org $008000

;sprite spawn script command constants
!initcommand_success = $8000
!initcommand_set_animation = $8100
!initcommand_skip = $2000
!initcommand_load_subconfig = $8300
!initcommand_set_palette = $8400
!initcommand_set_oam = $8500
!initcommand_spawn_relative = $8600
!initcommand_set_directional = $8700
!initcommand_set_position = $8800
!initcommand_setup_static = $8900
!initcommand_bulk_set = $8A00
!initcommand_set_oam_special = $8B00
!initcommand_set_palette2 = $8C00
!initcommand_set_alt_palette = $8D00
!initcommand_setup_static2 = $8E00


;sprite animation command constants
!animation_command_80 = $80
!animation_command_81 = $81
!animation_command_82 = $82
!animation_command_83 = $83
!animation_command_84 = $84
!animation_command_85 = $85
!animation_command_86 = $86
!animation_command_87 = $87
!animation_command_88 = $88
!animation_command_89 = $89
!animation_command_8A = $8A
!animation_command_8B = $8B
!animation_command_8C = $8C
!animation_command_8D = $8D
!animation_command_8E = $8E
!animation_command_8F = $8F
!animation_command_90 = $90
!animation_command_91 = $91
!animation_command_92 = $92
!animation_command_93 = $93
!animation_command_94 = $94
!execute_ex_anim_code = $95


;sprite object
struct sprite $0000
	.number:		skip 2
	.render_order:		skip 2
	.x_sub_position:	skip 2
	.x_position:		skip 2
	.y_sub_position:	skip 2
	.y_position:		skip 2
	.ground_y_position:	skip 2
	.ground_distance:	skip 2
	.terrain_attributes:	skip 2
	.oam_property:		skip 2
	.unknown_14:		skip 2
	.unknown_16:		skip 2
	.unknown_18:		skip 2
	.unknown_1A:		skip 2
	.unknown_1C:		skip 2
	.terrain_interaction:	skip 2
	.x_speed:		skip 2
	.unknown_22:		skip 2
	.y_speed:		skip 2
	.max_x_speed:		skip 2
	.unknown_28:		skip 2
	.max_y_speed:		skip 2
	.x_force:		skip 2
	.state:			skip 1 ;\ This is a pair in most cases, but a couple sprites use 2F alone
	.sub_state:		skip 1 ;/
	.interaction_flags:	skip 2
	.unknown_32:		skip 2
	.unknown_34:		skip 2
	.animation_id:		skip 2
	.animation_timer:	skip 2
	.animation_control:	skip 2
	.animation_address:	skip 2
	.unknown_3E:		skip 2
	.unknown_40:		skip 2
	.general_purpose_42:	skip 2
	.general_purpose_44:	skip 2
	.general_purpose_46:	skip 2
	.general_purpose_48:	skip 2
	.general_purpose_4A:	skip 2
	.general_purpose_4C:	skip 2
	.general_purpose_4E:	skip 2
	.parameter:		skip 2
	.movement_state:	skip 1
	.movement_sub_state:	skip 1
	.constants_address:	skip 2
	.placement_number:	skip 2
	.placement_parameter:	skip 2
	.despawn_time:		skip 2
	.unknown_5C:		skip 2
endstruct


;EX PATCH METADATA
!ex_header_address = $408000
!ex_patch_version = read2(!ex_header_address)

;EX LEVEL METADATA
!ex_level_pre_nmi_table_address #= read3(!ex_header_address+$40)
!ex_level_post_nmi_table_address #= read3(!ex_header_address+$43)
!ex_level_post_logic_table_address #= read3(!ex_header_address+$46)
!ex_level_load_table_address #= read3(!ex_header_address+$49)
!ex_level_code_insertion_address #= read3(!ex_header_address+$4C)

;EX SPRITE PACK PATHS
!packs_path = "packs/"
!pack_file = "/pack.asm"

;EX SPRITE METADATA
!ex_sprite_main_table_insertion_address #= read3(!ex_header_address+$80)
!ex_sprite_main_insertion_address #= read3(!ex_header_address+$83)

!ex_spawn_script_table_insertion_address #= read3(!ex_header_address+$86)
!ex_spawn_script_insertion_address #= read3(!ex_header_address+$89)

!ex_sprite_constants_insertion_address #= read3(!ex_header_address+$8C)

!ex_animation_table_insertion_address #= read3(!ex_header_address+$8F)
!ex_animation_insertion_address #= read3(!ex_header_address+$92)
!ex_animation_code_insertion_address #= read3(!ex_header_address+$95)

!ex_graphics_table_insertion_address #= read3(!ex_header_address+$98)
!ex_graphics_insertion_address #= read3(!ex_header_address+$9B)

!ex_hitbox_table_base_address #= read3(!ex_header_address+$9E)
!ex_hitbox_insertion_address #= read3(!ex_header_address+$A1)

!ex_palette_table_insertion_address #= read3(!ex_header_address+$A4)
!ex_palette_insertion_address #= read3(!ex_header_address+$A7)

!ex_sprite_id_start #= read2(!ex_header_address+$AA)
!ex_spawn_id_start #= read2(!ex_header_address+$AC)
!ex_animation_id_start #= read2(!ex_header_address+$AE)
!ex_graphics_id_start #= read2(!ex_header_address+$B0)
!ex_palette_id_start #= read2(!ex_header_address+$B2)

!last_used_sprite_id #= !ex_sprite_id_start-4
!last_used_spawn_id #= !ex_spawn_id_start-2
!last_used_animation_id #= !ex_animation_id_start-1
!last_used_graphic_id #= !ex_graphics_id_start-4
!last_used_palette_id #= !ex_palette_id_start-1

!null_id = $1FFE

;throws an error if the ex patch version doesn't match the one passed to this macro by the pack creator
macro require_patch_version(required_version)
	assert !ex_patch_version == <required_version>,"This pack requires a different Ex Patch version!"
endmacro

;throws an error if the game version doesn't match the one passed to this macro by the pack creator
macro require_game_version(required_version)
	assert !game_version == <required_version>,"This pack requires a different DKC 2 version!"
endmacro

;creates a spawn script for a custom sprite
!constants_counter = 0
macro insert_sprite_constants(constants_path)
	org !ex_sprite_constants_insertion_address
	constants_!constants_counter:
		incsrc <constants_path>                                                         ;import constants
	constants_end_!constants_counter:
	
	!ex_sprite_constants_insertion_address := constants_end_!constants_counter		;update data insertion address
	!constants_counter #= !constants_counter+1						;update label counter to prevent label redefines
endmacro


;creates a spawn script for a custom sprite
!spawn_script_counter = 0
macro insert_sprite_spawn_script(spawn_script_id, spawn_script_path)
	
	;go to next free script data insertion address
	org !ex_spawn_script_insertion_address
	
	;create script label, import script data, mark end of script data
	spawn_script_!spawn_script_counter:
		incsrc <spawn_script_path>
	spawn_script_end_!spawn_script_counter:
	
	;go to next free slot in script table and write pointer
	org !ex_spawn_script_table_insertion_address+<spawn_script_id>-!ex_spawn_id_start
		dw spawn_script_!spawn_script_counter
	
	;update script data insertion address
	!ex_spawn_script_insertion_address := spawn_script_end_!spawn_script_counter
	
	;increment this counter so we dont redefine labels if we call the macro again
	!spawn_script_counter #= !spawn_script_counter+1
	
	;update last used script id, and table insertion address
	
	;!last_used_spawn_id #= !last_used_spawn_id+2
	;!ex_spawn_script_table_insertion_address #= !ex_spawn_script_table_insertion_address+2
endmacro


;creates a main routine for a custom sprite
!sprite_main_counter = 0
macro insert_sprite_code(sprite_main_path, execution_conditions)
	org !ex_sprite_main_insertion_address							;go to next free insertion address
	sprite_main_!sprite_main_counter:							;create a label for the sprite main
		incsrc <sprite_main_path>							;import sprite main
	sprite_main_end_!sprite_main_counter:							;mark the end of the sprite main
	
	org !ex_sprite_main_table_insertion_address						;set pc to next free slot in sprite main table
		dw sprite_main_!sprite_main_counter						;write sprite main pointer
		dw <execution_conditions>							;write sexecution conditions
	
	!ex_sprite_main_insertion_address := sprite_main_end_!sprite_main_counter		;update data insertion address
	!sprite_main_counter #= !sprite_main_counter+1						;update label counter to prevent label redefines
	
	!last_used_sprite_id #= !last_used_sprite_id+4						;update last used id
	!ex_sprite_main_table_insertion_address #= !ex_sprite_main_table_insertion_address+4	;update table insertion address
endmacro


;creates a graphic for a custom sprite
!graphic_counter = 0
!graphic_size = 0
macro insert_sprite_graphic(graphic_path, hitbox_pointer)
	
	;get graphic size and next bank address
	!graphic_size #= filesize("<graphic_path>")
	!next_bank #= (!ex_graphics_insertion_address&$FF0000)+$010000
	
	;if we crossed a bank border insert graphic at the beginning of next bank
	if !graphic_size+!ex_graphics_insertion_address >= !next_bank
		!ex_graphics_insertion_address #= !next_bank
	endif
	
	org !ex_graphics_insertion_address							;go to next free insertion address
	?graphic:										;create a label for the graphic
		incbin <graphic_path>								;import graphic
	;?graphic_end_!graphic_counter:								;mark the end of the graphic

	org !ex_graphics_table_insertion_address						;set pc to next free slot in sprite main table
		dl ?graphic									;write graphic pointer
		db $00
	
	org !ex_hitbox_table_base_address+((!last_used_graphic_id-!ex_graphics_id_start)/2)+2
		dw <hitbox_pointer>
	
	!graphic_counter #= !graphic_counter+1							;update label counter to prevent label redefines
	!last_used_graphic_id #= !last_used_graphic_id+4					;update last used id
	!ex_graphics_insertion_address #= !ex_graphics_insertion_address+!graphic_size		;update data insertion address
	!ex_graphics_table_insertion_address #= !ex_graphics_table_insertion_address+4		;update table insertion address
endmacro


;creates an animation for a custom sprite
!animation_counter = 0
macro insert_sprite_animation(animation_path, params)
	org !ex_animation_insertion_address							;go to next free insertion address
	animation_!animation_counter:								;create a label for the animation
		incsrc <animation_path>								;import animation
	animation_end_!animation_counter:							;mark the end of the animation
	
	org !ex_animation_table_insertion_address						;set pc to next free slot in sprite main table
		dw animation_!animation_counter							;write animation pointer
		dw <params>									;write params
	
	!ex_animation_insertion_address := animation_end_!animation_counter			;update data insertion address
	!animation_counter #= !animation_counter+1						;update label counter to prevent label redefines
	
	!last_used_animation_id #= !last_used_animation_id+1					;update last used id
	!ex_animation_table_insertion_address #= !ex_animation_table_insertion_address+4	;update table insertion address
endmacro


;creates hitboxes for a custom sprite
!hitbox_counter = 0
macro insert_sprite_hitboxes(hitbox_path)
	org !ex_hitbox_insertion_address							;go to next free insertion address
	hitbox_!hitbox_counter:									;create a label for the hitboxes
		incsrc <hitbox_path>								;import hitboxes
	hitbox_end_!hitbox_counter:								;mark the end of the hitboxes
	
	!ex_hitbox_insertion_address := hitbox_end_!hitbox_counter				;update data insertion address
	!hitbox_counter #= !hitbox_counter+1							;update label counter to prevent label redefines
endmacro


;inserts animation code for custom sprite
!animation_code_counter = 0
macro insert_sprite_animation_code(code_path)
	org !ex_animation_code_insertion_address						;org to next free data address
	animation_code_!animation_code_counter:							;create label for custom data
		incsrc <code_path>								;import custom data
	animation_code_end_!animation_code_counter:						;mark end of custom data
	
	!ex_animation_code_insertion_address := animation_code_end_!animation_code_counter	;update data insertion address
	!animation_code_counter #= !animation_code_counter+1					;update label counter to prevent label redefines
endmacro


;inserts a palette for custom sprite
!palette_counter = 0
macro insert_sprite_palette(palette_path)
	org !ex_palette_insertion_address							;org to next free data address
	
	palette_!palette_counter:								;create label for custom data
		incbin <palette_path>								;import custom data
	palette_end_!palette_counter:								;mark end of custom data

	org !ex_palette_table_insertion_address							;org to next free table slot
		dw palette_!palette_counter							;write pointer to table
		
	!ex_palette_insertion_address := palette_end_!palette_counter				;update data insertion address
	!palette_counter #= !palette_counter+1							;update label counter to prevent label redefines
	
	!last_used_palette_id #= !last_used_palette_id+1					;update last used id
	!ex_palette_table_insertion_address #= !ex_palette_table_insertion_address+2		;update table insertion address
endmacro


;inserts sprite packs into ROM
macro include_pack(pack_name)
	!pack_name = <pack_name>
	incsrc !packs_path!pack_name!pack_file
endmacro


incsrc "ex_packs.asm"
