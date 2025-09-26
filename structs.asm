;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;ROM structures
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

struct sprite $0000
	.type:				skip 2	;00
	.render_order:			skip 2	;02
	.x_sub_position:		skip 2	;04
	.x_position:			skip 2	;06
	.y_sub_position:		skip 2	;08
	.y_position:			skip 2	;0A
	.ground_y_position:		skip 2	;0C
	.ground_distance:		skip 2	;0E
	.terrain_attributes:		skip 1	;10
	.terrain_attributes_high:	skip 1	;11
	.oam_property:			skip 2	;12
	.render_order_mirror:		skip 2	;14
	.last_rendered_graphic:		skip 2	;16
	.current_graphic_mirror:	skip 2	;18
	.current_graphic:		skip 2	;1A
	.display_mode:			skip 1	;1C
	.display_mode_high:		skip 1	;1D
	.terrain_interaction:		skip 2	;1E
	.x_speed:			skip 2	;20
	.unknown_22:			skip 2	;22
	.y_speed:			skip 2	;24
	.max_x_speed:			skip 2	;26
	.unknown_28:			skip 2	;28
	.max_y_speed:			skip 2	;2A
	.unknown_2C:			skip 2	;2C
	.state:				skip 1	;2E \ This is a pair in most cases, but a couple sprites use 2F alone
	.sub_state:			skip 1	;2F /
	.interaction_flags:		skip 2	;30
	.carry_or_defeat_flags:		skip 2	;32
	.unknown_34:			skip 2	;34
	.animation_id:			skip 2	;36
	.animation_timer:		skip 2	;38
	.animation_speed:		skip 2	;3A
	.animation_address:		skip 2	;3C
	.animation_routine:		skip 2	;3E
	.animation_flags:		skip 2	;40
	.general_purpose_42:		skip 2	;42 \
	.general_purpose_44:		skip 2	;44  |
	.general_purpose_46:		skip 2	;46  |
	.general_purpose_48:		skip 2	;48  |
	.general_purpose_4A:		skip 1	;4A  | Can also be used by movement states
	.general_purpose_4B:		skip 1	;4B  |
	.general_purpose_4C:		skip 2	;4C  |
	.general_purpose_4E:		skip 2	;4E  |
	.general_purpose_50:		skip 2	;50 /
	.movement_state:		skip 1	;52
	.movement_sub_state:		skip 1	;53
	.constants_address:		skip 2	;54
	.placement_number:		skip 2	;56
	.placement_parameter:		skip 2	;58
	.despawn_time:			skip 1	;5A
	.despawn_countdown:		skip 1	;5B
	.unknown_5C:			skip 2	;5C
endstruct

struct kong_control $0000
	.animation_id:		skip 2	;00 animation number (no kong offset)
	.input_pressed:		skip 2	;02 Copy of the active players inputs that were just pressed
	.input_held:		skip 2	;04 Copy of the active players inputs that are pressed or held down
	.fast_flag:		skip 2	;06 04 if a direction was held with Y
	.gravity_force:		skip 2	;08 Gravity force
	.max_fall_speed:	skip 2	;0A Terminal velocity
	.unknown_0C:		skip 2	;0C Appears to be used for dixie, something to do with rolling/gliding, checked by animation code
	.roll_speed:		skip 2	;0E Roll speed
	.roll_event_time:	skip 2	;10 A record of the time that a roll was triggered
	.jump_event_time:	skip 2	;12 A record of the time that a jump was triggered
	.flash_timer:		skip 2	;14 Invincibility flash timer
	.invincible_timer:	skip 2	;16 Invincibility timer
	.input_held_y_event:	skip 2	;18 A record of the held input state when Y was pressed
	.y_press_time:		skip 2	;1A A record of the latest time that Y was pressed
	.y_old_press_time:	skip 2	;1C A record of the previous time that Y was pressed
	.y_release_time:	skip 2	;1E A record of the time that the latest Y press was released
	.y_old_release_time:	skip 2	;20 A record of the time that the previous Y press was released
	.b_press_time:		skip 2	;22 A record of the last time B was pressed
	.roll_gravity_delay:	skip 2	;24 Amount of time before gravity force should be applied when rolling off a ledge
endstruct

struct main_level $0515
	.type:				skip 2	;$0515/$0553 $00,x config+$00 level type
	.tileset_init_number:		skip 2	;$0517/$0555 $02,x theme+$00 graphics init routine index
	.HDMA_init_number:		skip 2	;$0519/$0557 $04,x theme+$02 HDMA init routine index
	.song:				skip 2	;$051B/$0559 $06,x theme+$04 music track index
	.init_routine:			skip 2	;$051D/$055B $08,x theme+$0A level init routine pointer (bank BB)
	.slope_init_routine:		skip 2	;$051F/$055D $0A,x theme+$08 terrain slope init routine pointer (bank BB)
	.animal:			skip 2	;$0521/$055F $0C,x config+$07 start level with animal
	.tileset_type:			skip 2	;$0523/$0561 $0E,x theme+$12 32x32 tilemap index
	.layout_number:			skip 2	;$0525/$0563 $10,x config+$04 level map number (tilemap layout)
	.NMI_number:			skip 2	;$0527/$0565 $12,x theme+$0E level nmi routine index
	.logic_number:			skip 2	;$0529/$0567 $14,x theme+$10 level logic routine index
	.effects:			skip 2	;$052B/$0569 $16,x theme+$13 level effect flags
	.bonus_type:			skip 2	;$052D/$056B $18,x config+$01 bonus type (does not exist in level config if normal level)
	.extra_unlock_lvl_tmp:		skip 2	;$052F/$056D $1A,x config unlocks additional map unlock temp id (level id to unlock)
	.entrances_address:		skip 2	;$0531/$056F $1C,x config entrances entrances address (offset in level config varies)
	.entrance_x:			skip 2	;$0533/$0571 $1E,x config entrances entrance x position
	.entrance_y:			skip 2	;$0535/$0573 $20,x config entrances entrance y position
	.ppu_config_number:		skip 2	;$0537/$0575 $22,x theme+$0C ppu setting script index
	.vram_payload_number:		skip 2	;$0539/$0577 $24,x theme+$0D vram upload script index
	.destination_count:		skip 2	;$053B/$0579 $26,x calculated destination count
	.destinations:
		.destination_slot_1:	skip 2	;$053D/$057B $28,x config destinations+$00 level destination 1
		.destination_slot_2:	skip 2	;$053F/$057D $2A,x config destinations+$02 level destination 2
		.destination_slot_3:	skip 2	;$0541/$057F $2C,x config destinations+$04 level destination 3
		.destination_slot_4:	skip 2	;$0543/$0581 $2E,x config destinations+$06 level destination 4
		.destination_slot_5:	skip 2	;$0545/$0583 $30,x config destinations+$08 level destination 5
		.destination_slot_6:	skip 2	;$0547/$0585 $32,x config destinations+$0A level destination 6
		.destination_slot_7:	skip 2	;$0549/$0587 $34,x config destinations+$0C level destination 7
		.destination_slot_8:	skip 2	;$054B/$0589 $36,x config destinations+$0E level destination 8
	.unknown_38:			skip 2	;$054D/$058B $38,x config+$08 camera positioning (unknown)
	.camera_control:		skip 1	;$054F/$058D $3A,x config+$0A camera control
	.entrance_direction:		skip 1	;$0550/$058E $3B,x config+$0B entrance first byte (facing direction)
	.extra_unlocks_ptr:		skip 2	;$0551/$058F $3C,x config unlocks additional map unlocks data address (offset in level config varies)
endstruct

struct alt_level $0553
	.type:				skip 2	;$0515/$0553 $00,x config+$00 level type
	.tileset_init_number:		skip 2	;$0517/$0555 $02,x theme+$00 graphics init routine index
	.HDMA_init_number:		skip 2	;$0519/$0557 $04,x theme+$02 HDMA init routine index
	.song:				skip 2	;$051B/$0559 $06,x theme+$04 music track index
	.init_routine:			skip 2	;$051D/$055B $08,x theme+$0A level init routine pointer (bank BB)
	.slope_init_routine:		skip 2	;$051F/$055D $0A,x theme+$08 terrain slope init routine pointer (bank BB)
	.animal:			skip 2	;$0521/$055F $0C,x config+$07 start level with animal
	.tileset_type:			skip 2	;$0523/$0561 $0E,x theme+$12 32x32 tilemap index
	.layout_number:			skip 2	;$0525/$0563 $10,x config+$04 level map number (tilemap layout)
	.NMI_number:			skip 2	;$0527/$0565 $12,x theme+$0E level nmi routine index
	.logic_number:			skip 2	;$0529/$0567 $14,x theme+$10 level logic routine index
	.effects:			skip 2	;$052B/$0569 $16,x theme+$13 level effect flags
	.bonus_type:			skip 2	;$052D/$056B $18,x config+$01 bonus type (does not exist in level config if normal level)
	.extra_unlock_lvl_tmp:		skip 2	;$052F/$056D $1A,x config unlocks additional map unlock temp id (level id to unlock)
	.entrances_address:		skip 2	;$0531/$056F $1C,x config entrances entrances address (offset in level config varies)
	.entrance_x:			skip 2	;$0533/$0571 $1E,x config entrances entrance x position
	.entrance_y:			skip 2	;$0535/$0573 $20,x config entrances entrance y position
	.ppu_config_number:		skip 2	;$0537/$0575 $22,x theme+$0C ppu setting script index
	.vram_payload_number:		skip 2	;$0539/$0577 $24,x theme+$0D vram upload script index
	.destination_count:		skip 2	;$053B/$0579 $26,x calculated destination count
	.destinations:
		.destination_slot_1:	skip 2	;$053D/$057B $28,x config destinations+$00 level destination 1
		.destination_slot_2:	skip 2	;$053F/$057D $2A,x config destinations+$02 level destination 2
		.destination_slot_3:	skip 2	;$0541/$057F $2C,x config destinations+$04 level destination 3
		.destination_slot_4:	skip 2	;$0543/$0581 $2E,x config destinations+$06 level destination 4
		.destination_slot_5:	skip 2	;$0545/$0583 $30,x config destinations+$08 level destination 5
		.destination_slot_6:	skip 2	;$0547/$0585 $32,x config destinations+$0A level destination 6
		.destination_slot_7:	skip 2	;$0549/$0587 $34,x config destinations+$0C level destination 7
		.destination_slot_8:	skip 2	;$054B/$0589 $36,x config destinations+$0E level destination 8
	.unknown_38:			skip 2	;$054D/$058B $38,x config+$08 camera positioning (unknown)
	.camera_control:		skip 1	;$054F/$058D $3A,x config+$0A camera control
	.entrance_direction:		skip 1	;$0550/$058E $3B,x config+$0B entrance first byte (facing direction)
	.extra_unlocks_ptr:		skip 2	;$0551/$058F $3C,x config unlocks additional map unlocks data address (offset in level config varies)
endstruct

struct rel_level $0000
	.type:				skip 2	;$0515/$0553 $00,x config+$00 level type
	.tileset_init_number:		skip 2	;$0517/$0555 $02,x theme+$00 graphics init routine index
	.HDMA_init_number:		skip 2	;$0519/$0557 $04,x theme+$02 HDMA init routine index
	.song:				skip 2	;$051B/$0559 $06,x theme+$04 music track index
	.init_routine:			skip 2	;$051D/$055B $08,x theme+$0A level init routine pointer (bank BB)
	.slope_init_routine:		skip 2	;$051F/$055D $0A,x theme+$08 terrain slope init routine pointer (bank BB)
	.animal:			skip 2	;$0521/$055F $0C,x config+$07 start level with animal
	.tileset_type:			skip 2	;$0523/$0561 $0E,x theme+$12 32x32 tilemap index
	.layout_number:			skip 2	;$0525/$0563 $10,x config+$04 level map number (tilemap layout)
	.NMI_number:			skip 2	;$0527/$0565 $12,x theme+$0E level nmi routine index
	.logic_number:			skip 2	;$0529/$0567 $14,x theme+$10 level logic routine index
	.effects:			skip 2	;$052B/$0569 $16,x theme+$13 level effect flags
	.bonus_type:			skip 2	;$052D/$056B $18,x config+$01 bonus type (does not exist in level config if normal level)
	.extra_unlock_lvl_tmp:		skip 2	;$052F/$056D $1A,x config unlocks additional map unlock temp id (level id to unlock)
	.entrances_address:		skip 2	;$0531/$056F $1C,x config entrances entrances address (offset in level config varies)
	.entrance_x:			skip 2	;$0533/$0571 $1E,x config entrances entrance x position
	.entrance_y:			skip 2	;$0535/$0573 $20,x config entrances entrance y position
	.ppu_config_number:		skip 2	;$0537/$0575 $22,x theme+$0C ppu setting script index
	.vram_payload_number:		skip 2	;$0539/$0577 $24,x theme+$0D vram upload script index
	.destination_count:		skip 2	;$053B/$0579 $26,x calculated destination count
	.destinations:
		.destination_slot_1:	skip 2	;$053D/$057B $28,x config destinations+$00 level destination 1
		.destination_slot_2:	skip 2	;$053F/$057D $2A,x config destinations+$02 level destination 2
		.destination_slot_3:	skip 2	;$0541/$057F $2C,x config destinations+$04 level destination 3
		.destination_slot_4:	skip 2	;$0543/$0581 $2E,x config destinations+$06 level destination 4
		.destination_slot_5:	skip 2	;$0545/$0583 $30,x config destinations+$08 level destination 5
		.destination_slot_6:	skip 2	;$0547/$0585 $32,x config destinations+$0A level destination 6
		.destination_slot_7:	skip 2	;$0549/$0587 $34,x config destinations+$0C level destination 7
		.destination_slot_8:	skip 2	;$054B/$0589 $36,x config destinations+$0E level destination 8
	.unknown_38:			skip 2	;$054D/$058B $38,x config+$08 camera positioning (unknown)
	.camera_control:		skip 1	;$054F/$058D $3A,x config+$0A camera control
	.entrance_direction:		skip 1	;$0550/$058E $3B,x config+$0B entrance first byte (facing direction)
	.extra_unlocks_ptr:		skip 2	;$0551/$058F $3C,x config unlocks additional map unlocks data address (offset in level config varies)
endstruct

; FIXME: these are here because they need to be after `struct sprite`,
; but other parts of structs.asm need to be after ram.asm
main_sprite_table = $0DE2
main_sprite_table_end = $0DE2+(sizeof(sprite)*24)

struct oam oam_table
	.position:
	.x:             skip 1
	.y:             skip 1
	.display:
	.tile:          skip 1
	.property:      skip 1
endstruct

struct oam_attribute oam_attribute_table
	.size		skip 1
endstruct

struct write_byte $0000
	.terminate:
	.count: skip 1
	.value: skip 1
endstruct

struct write_word $0000
	.terminate:
	.count: skip 1
	.value: skip 2
endstruct

struct write_long $0000
	.terminate:
	.count: skip 1
	.value: skip 4
endstruct

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SRAM structures
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
struct subfile $0000
	.data: skip $014E
endstruct

struct save_file $0000
	.header:
	.additive_checksum: 	skip 2
	.xor_checksum: 		skip 2
	.file_signature:
	.active_player:		skip 1
	.file_type:		skip 1
	.contents:
	.player_1:		skip sizeof(subfile)
	.player_2:		skip sizeof(subfile)
	.data:			skip 6
endstruct

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;ROM structures
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

struct wram_clear_table $0000
	.address: skip 2
	.size: skip 2
endstruct
