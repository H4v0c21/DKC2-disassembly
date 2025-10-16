;as a convention, any unused address will be named UNUSED_<address> and treated as a single byte
;Most addresses shall be assumed 2 bytes unless otherwise noted.  Single byte addresses won't be specifically
;noted as their addresses will carry that point.
;Duplicate addresses imply an address withg multiple contexts.
;Temporaries are named after the address they point to rather than a sequence.
;Temporaries used for any significant context should have local reassignment
;Temporaries are generally any addres used in multi contexts.

wram_base = $7E0000
wram_base_high = $7F0000

;;;
;;; Start Direct Page WRAM ($00-$FF)
;;;
spc_transaction				= $00	;word	counter	incomplete name
spc_sample_dir_destination_1		= $02	;word	pointer	incomplete name
spc_sample_dir_destination_2		= $04	;word	pointer	incomplete name
spc_sample_destination_1		= $06	;word	pointer	incomplete name
spc_sample_destination_2		= $08	;word	pointer	incomplete name
sample_counter_1			= $0A	;word	counter	incomplete name
sample_counter_2			= $0C	;word	counter	incomplete name
sample_map				= $0E	;long	pointer	incomplete name
UNKNOWN_12				= $12	;word	unknown	set to FFFF
UNKNOWN_14				= $14	;byte	unknown appears to always be 0
UNKNOWN_15				= $15	;byte	unknown appears to always be 0
UNKNOWN_16				= $16	;byte	unknown appears to always be 0
UNKNOWN_17				= $17	;byte	unknown appears to always be 0
UNKNOWN_18				= $18	;byte	unknown appears to always be 0
UNKNOWN_19				= $19	;byte	unknown appears to always be 0
UNKNOWN_1A				= $1A	;word	unknown appears to always be 0
current_song				= $1C	;word	index
stereo_select				= $1E	;word	boolean
NMI_pointer				= $20	;word	pointer
UNUSED_22				= $22	;byte	unused
UNUSED_23				= $23	;byte	unused
gamemode_pointer			= $24	;word	pointer
temp_26					= $26	;byte	temp
temp_27					= $27	;byte	temp
temp_28					= $28	;byte	temp
temp_29					= $29	;byte	temp
active_frame_counter			= $2A	;word	counter
global_frame_counter			= $2C	;word	counter
rng_result				= $2E	;byte	rng
rng_seed_1				= $2F	;byte	rng
rng_seed_2				= $30	;byte	rng
rng_seed_3				= $31	;byte	rng
temp_32					= $32	;byte	temp
temp_33					= $33	;byte	temp
temp_34					= $34	;byte	temp
temp_35					= $35	;byte	temp
temp_36					= $36	;byte	temp
temp_37					= $37	;byte	temp
temp_38					= $38	;byte	temp
temp_39					= $39	;byte	temp
temp_3A					= $3A	;byte	temp
temp_3B					= $3B	;byte	temp
temp_3C					= $3C	;byte	temp
temp_3D					= $3D	;byte	temp
temp_3E					= $3E	;byte	temp
temp_3F					= $3F	;byte	temp
temp_40					= $40	;byte	temp

oam_size_index				= $56	;word	index

temp_5E					= $5E	;byte	temp
temp_5F					= $5F	;byte	temp
temp_60					= $60	;byte	temp
temp_61					= $61	;byte	temp
UNKNOWN_62				= $62	;byte	unknown
UNKNOWN_63				= $63	;byte	unknown
current_sprite				= $64	;word	pointer
current_kong_control_variables		= $66	;word	pointer
alternate_sprite			= $68	;word	pointer
UNKNOWN_6A				= $6A	;word	pointer
current_player_mount			= $6C	;word	pointer
animal_type				= $6E	;word	index
next_oam_slot				= $70	;word	index

current_sprite_constants		= $8E	;\ long	pointer
current_sprite_constants_bank		= $90	;/
current_player_action			= $92	;word	index
nmi_submode				= $94	;word	index
gamemode_submode			= $96	;word	index
level_tilemap				= $98	;long	pointer
level_collision_tilemap			= $9C	;long	pointer

level_number				= $D3	;word	index
gameplay_frame_counter			= $D5	;\ double	counter
gameplay_frame_counter_high		= $D7	;/

collision_mask_result			= $EB	;word
UNUSED_ED				= $ED
UNUSED_EE				= $EE
previous_palette_buffer_slot		= $EF	;word
current_palette_buffer_slot		= $F1	;word
;;;
;;; End Direct Page WRAM ($00-$FF)
;;;
stack_end				= $0100
stack					= $01FF
oam_table				= $0200
oam_attribute_table			= $0400
;Likely Unused				= $0420-$04FF
firework_flicker_flag			= $0500
player_1_held				= $0502
player_2_held				= $0504
player_1_pressed			= $0506
player_2_pressed			= $0508
player_1_released			= $050A
player_2_released			= $050C
player_active_held			= $050E
player_active_pressed			= $0510
player_active_pressed_high		= $0511
screen_brightness			= $0512
screen_fade_speed			= $0513
screen_fade_timer			= $0514
;Main Level Config Structure		= $0515-$0552
;Alt Level Config Structure		= $0553-$0590
unknown_kong_control_variables		= $0591
active_kong_sprite			= $0593
active_kong_control_variables		= $0595
inactive_kong_sprite			= $0597
inactive_kong_control_variables		= $0599
pending_dma_hdma_channels		= $059B
level_destination_number		= $059D
destination_level_entrance_number	= $059F
level_exit_trigger_x_position		= $05A1
returning_level_number			= $05A3
returning_entrance_number		= $05A5
selected_palette_data_address		= $05A7
sprite_return_address			= $05A9
sprite_return_bank			= $05AB
;Likely Unused				= $05AD-$05BA
debug_flags				= $05BB
pirate_panic_level_number_unused	= $05BD
;Likely Unused				= $05BF-$05C2
unknown_debug_sprite_unused		= $05C3
;Likely Unused				= $05C5-$05F2
exception_number			= $05F3
exception_unknown			= $05F5
exception_palette_address		= $05F7
UNUSED_05F9				= $05F9
UNUSED_05FA				= $05FA
demo_status				= $05FB
demo_sequence_index			= $05FD
demo_input_timer			= $05FF
demo_sequence_address			= $0601
demo_sequence_size			= $0603
demo_sequence_number			= $0605
UNUSED_0607				= $0607
UNUSED_0608				= $0608
UNUSED_0609				= $0609
UNUSED_060A				= $060A
cheat_enable_flags			= $060B
current_game_mode			= $060D ;Also doubles as cursor position in mode select screen
active_controller			= $060F
file_select_selection			= $0611
file_select_action			= $0613
file_select_file_to_copy		= $0615
language_select				= $0617
sound_effect_buffer			= $0619	;Byte Array[8]
used_sound_effect_channels		= $0621	;Byte
spc_command_buffer			= $0622	;Word Array[8]
current_sound_effect_slot		= $0632	;Word
next_sound_effect_slot			= $0634	;Word
last_spc_command_transfer_time		= $0636	;Word
next_firework_sprite_buffer_slot	= $0638	;Word
firework_sprite_buffer			= $063A	;Word Array[8]
;;;
;;; Start Player Specific WRAM ($064A-$0906)
;;;
RAM_064A				= $064A
RAM_064B				= $064B
RAM_064C				= $064C

npc_screen_type				= $0689
returning_map_node_number		= $06A9
map_node_number				= $06AB
world_number				= $06B1




RAM_07B0				= $07B0
RAM_07B2				= $07B2

;Unused* although the buffer before technically isnt a fixed size, the vanilla game only has 7 worlds (14 bytes)
;$07C0-$08A1

active_controller_number		= $08A2
active_kong_number			= $08A4
level_entrance_number			= $08A6
parent_level_number			= $08A8
checkpoint_level_entrance_number	= $08AA
checkpoint_level_number			= $08AC
checkpoint_animal_type			= $08AE
checkpoint_parent_level_number		= $08B0
checkpoint_collected_kong_letters	= $08B2
UNUSED_08B4				= $08B4
UNUSED_08B5				= $08B5
last_animal_dismount_state		= $08B6
cheated_token_count			= $08B8
banana_count_before_token_cheat		= $08BA
token_cheat_step			= $08BB
banana_count				= $08BC
life_count				= $08BE
life_count_display			= $08C0
game_state_flags			= $08C2
game_state_flags_2			= $08C4
exiting_sub_level_flag			= $08C6
temp_level_number			= $08C8
banana_coin_count			= $08CA
token_count				= $08CC
dk_coin_count				= $08CE
competitor_dk_coin_count		= $08D0
completed_npc_dialogue			= $08D2
completed_cranky_dialogue		= $08D2
completed_cranky_lost_2_dialogue	= $08DB
completed_cranky_lost_3_dialogue	= $08DC
completed_cranky_lost_4_dialogue	= $08DD
completed_cranky_lost_5_dialogue	= $08DE
completed_cranky_lost_6_dialogue	= $08DF
completed_wrinkly_dialogue		= $08E0
completed_funky_dialogue		= $08E7
completed_swanky_dialogue		= $08F0
completed_lost_world_levels		= $08F9
klubba_payments				= $08FA
visited_kong_family_members		= $08FB
world_map_events			= $08FC
world_map_event_step_counter		= $08FE
kiosk_returning_world_number		= $0900
collected_kong_letters			= $0902	;Also uses a bit to flag if the ship cabin balloon was collected
completion_percentage			= $0904	;High byte unused but still written
UNUSED_0906				= $0906
;;;
;;; End Player Specific WRAM ($064A-$0906)
;;;
piracy_string_result			= $0907
enable_intro_bypass			= $090F
;;;
;;; Start Noncritical WRAM ($0911-$19D9)
;;;
player_action_held			= $0981
player_action_pressed			= $0983
RAM_0985				= $0985
RAM_0987				= $0987
glimmer_sprite				= $0989

intro_sparkle_x_position		= $098F
intro_sparkle_y_position		= $0991
player_skipped_demo			= $099B
kong_follow_buffer_recording_index	= $099D
kong_follow_buffer_playback_index	= $099F

kong_follow_last_rec_x_position		= $0A2A
kong_follow_last_rec_y_position		= $0A2C
kong_follow_last_rec_animation		= $0A2E
kong_follow_last_rec_x_speed		= $0A30
kong_follow_last_rec_max_x_speed	= $0A32
kong_follow_last_rec_ground_dist	= $0A34
time_stop_flags				= $0A36
time_stop_timer				= $0A38


current_interaction			= $0A82
current_interacting_sprite		= $0A84
interaction_RAM_0A86			= $0A86
interaction_RAM_0A88			= $0A88
interaction_RAM_0A8A			= $0A8A
interaction_RAM_0A8C			= $0A8C

RAM_0B02				= $0B02	;Possible future name: player_input_action_flags
sprite_vram_allocation_table		= $0B04
palette_upload_ring_buffer		= $0B24
active_sprite_palettes_table		= $0B64
sprite_palette_reference_count		= $0B74

held_rope_sprite			= $0BA0
held_rope_sprite_temp			= $0BA2

water_current_y_velocity		= $0D4A
water_target_y_velocity			= $0D50

current_held_sprite			= $0D7A
held_sprite_x_offset			= $0D7C
held_sprite_y_offset			= $0D7E

aux_sprite_table			= $0D84

;Sprite Structure (24 Instances)	= $0DE2-16B1
sprite_slots				= $0DE2
diddy_sprite_slot			= $0DE2
dixie_sprite_slot			= $0E40
non_kong_sprite_slots			= $0E9E
diddy_control_variables			= $16B2
dixie_control_variables			= $16D8
sprite_render_table			= $16FE	;Word Array[25]
next_sprite_dma_buffer_slot		= $1730	;Word
sprite_dma_buffer			= $1732	;(Word,Word,Double) Array[6]

last_squitter_web_shot_time		= $19A2
last_squitter_platform_shot_time	= $19A4
squitter_web_shot_count			= $19A6
invincibility_barrel_sprite		= $19A8	;This is weird, the sprite slot is probably null most of the time
zinger_loop_sound_enabler		= $19AA
flitter_loop_sound_enabler		= $19AB
wind_loop_sound_enabler			= $19AC
flotsam_loop_sound_enabler		= $19AC
RAM_19AD				= $19AD
invincible_loop_sound_enabler		= $19AE
barrel_roll_loop_sound_enabler		= $19AF

invincibility_sprite			= $19CE
kong_cutscene_number			= $19D0
kong_cutscene_script_index		= $19D2
kong_cutscene_command_timer		= $19D4
;;;
;;; End Noncritical WRAM ($0911-$19D9)
;;;
;;;
;;; End low WRAM ($0000-$1FFF)
;;;

;Used for level name tile data on map screens
;Used for text tile map in NPC screens
;Used for text tile map in ship cabin
;Used for bonus intro text tile data
text_VRAM_buffer			= $7E3E00	;largest observed size: $680 bytes
text_VRAM_buffer_2			= $7E4A00	;size: $180, used by funky/klubba when entering new area

player_1_RAM_buffer			= $7E5000
player_2_RAM_buffer			= $7E5365
sram_file_buffer			= $7E56CA
map_icon_unlocks_buffer			= $7E5972
map_path_unlocks_buffer			= $7E5992
collected_tokens_buffer			= $7E59B2
collected_dk_coins_buffer		= $7E59D2
completed_levels_buffer			= $7E59F2
sprite_spawn_lists			= $7E5A12
sprite_spawn_table			= $7E7A12
sprite_spawn_groups_temp		= $7E7E12

; HDMA buffers
; These buffers will have many overlapping addresses, some with structs, some without
; These may take awhile to get right and could end up fairly volatile until I figure it out

namespace hdma_intro
	bgmode = $7E8012
	color_math = $7E8022
	subscreen = $7E8032
namespace off

namespace hdma_menu
	windowing = $7E8012
namespace off
; end buffers

working_palette = $7E8928
primary_palette = $7E8C28

writable_palette_RAM = $7F9650


sprite_render_table_end = sprite_render_table+$30