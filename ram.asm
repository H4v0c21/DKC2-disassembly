;as a convention, any unused address will be named UNUSED_<address> and treated as a single byte
;Most addresses shall be assumed 2 bytes unless otherwise noted.  Single byte addresses won't be specifically
;noted as their addresses will carry that point.
;Duplicate addresses imply an address withg multiple contexts.
;Temporaries are named after the address they point to rather than a sequence.
;Temporaries used for any significant context should have local reassignment
;Temporaries are generally any addres used in multi contexts.

spc_transaction			= $00	;word	counter	incomplete name
spc_sample_dir_destination_1	= $02	;word	pointer	incomplete name
spc_sample_dir_destination_2	= $04	;word	pointer	incomplete name
spc_sample_destination_1	= $06	;word	pointer	incomplete name
spc_sample_destination_2	= $08	;word	pointer	incomplete name
sample_counter_1		= $0A	;word	counter	incomplete name
sample_counter_2		= $0C	;word	counter	incomplete name
sample_map			= $0E	;long	pointer	incomplete name
UNKNOWN_12			= $12	;word	unknown	set to FFFF
UNKNOWN_14			= $14	;byte	unknown appears to always be 0
UNKNOWN_15			= $15	;byte	unknown appears to always be 0
UNKNOWN_16			= $16	;byte	unknown appears to always be 0
UNKNOWN_17			= $17	;byte	unknown appears to always be 0
UNKNOWN_18			= $18	;byte	unknown appears to always be 0
UNKNOWN_19			= $19	;byte	unknown appears to always be 0
UNKNOWN_1A			= $1A	;word	unknown appears to always be 0
current_song			= $1C	;word	index
stereo_select			= $1E	;word	boolean
NMI_pointer			= $20	;word	pointer
UNUSED_22			= $22	;byte	unused
UNUSED_23			= $23	;byte	unused
gamemode_pointer		= $24	;word	pointer
temp_26				= $26	;byte	temp
temp_27				= $27	;byte	temp
temp_28				= $28	;byte	temp
temp_29				= $29	;byte	temp
active_frame_counter		= $2A	;word	counter
global_frame_counter		= $2C	;word	counter
rng_result			= $2E	;byte	rng
rng_seed_1			= $2F	;byte	rng
rng_seed_2			= $30	;byte	rng
rng_seed_3			= $31	;byte	rng
temp_32				= $32	;byte	temp
temp_33				= $33	;byte	temp
temp_34				= $34	;byte	temp
temp_35				= $35	;byte	temp
temp_36				= $36	;byte	temp
temp_37				= $37	;byte	temp
temp_38				= $38	;byte	temp
temp_39				= $39	;byte	temp
temp_3A				= $3A	;byte	temp
temp_3B				= $3B	;byte	temp
temp_3C				= $3C	;byte	temp
temp_3D				= $3D	;byte	temp
temp_3E				= $3E	;byte	temp
temp_3F				= $3F	;byte	temp
temp_40				= $40	;byte	temp

oam_size_index			= $56	;word	index


temp_5E				= $5E	;byte	temp
temp_5F				= $5F	;byte	temp
temp_60				= $60	;byte	temp
temp_61				= $61	;byte	temp
UNKNOWN_62			= $62	;byte	unknown
UNKNOWN_63			= $63	;byte	unknown
current_sprite			= $64	;word	pointer
current_kong_control_variables	= $66	;word	pointer
alternate_sprite		= $68	;word	pointer
UNKNOWN_6A			= $6A	;word	pointer
current_player_mount		= $6C	;word	pointer
animal_type			= $6E	;word	index
next_oam_slot			= $70	;word	index

current_sprite_constants	= $8E	;\ long	pointer
current_sprite_constants_bank	= $90	;/
current_player_action		= $92	;word	index
nmi_submode			= $94	;word	index
gamemode_submode		= $96	;word	index
level_tilemap			= $98	;long	pointer
level_collision_tilemap		= $9C	;long	pointer

level_number			= $D3	;word	index
gameplay_frame_counter		= $D5	;\ double	counter
gameplay_frame_counter_high	= $D7	;/

collision_mask_result		= $EB	;word

;;;
;;; End direct page
;;;

stack_end = $0100
stack = $01FF
oam_table = $0200
oam_attribute_table = $0400

;controller logic
;Note there is no released state for active player
player_1_held = $0502
player_1_pressed = $0504
player_1_released = $0506
player_2_held = $0508
player_2_pressed = $050A
player_2_released = $050C
player_active_held = $050E
player_active_pressed = $0510
player_active_pressed_high = $0511

;brightness control
screen_brightness = $0512
screen_fade_speed = $0513
screen_fade_timer = $0514

;level logic (starts at $0515)
level_config_table = $0515

active_kong_sprite = $0593
active_kong_control_variables = $0595
inactive_kong_sprite = $0597
inactive_kong_control_variables = $0599
pending_dma_hdma_channels = $059B
level_destination_number = $059D
destination_level_entrance_number = $059F
level_exit_trigger_x_position = $05A1
returning_level_number = $05A3
returning_entrance_number = $05A5

sprite_return_address = $05A9
sprite_return_bank = $05AB

debug_flags = $05BB

cheat_enable_flags = $060B
current_game_mode = $060D		;Also doubles as cursor position in mode select screen
active_controller = $060F
file_select_selection = $0611
file_select_action = $0613
file_select_file_to_copy = $0615
language_select = $0617

npc_screen_type = $0689
returning_map_node_number = $06A9
map_node_number = $06AB
world_number = $06B1

active_kong_number = $08A4

parent_level_number = $08A8

banana_coin_count = $08CA
kremcoin_count = $08CC
dk_coin_count = $08CE

completed_lost_world_levels = $08F9

kiosk_returning_world_number = $0900

completion_percentage = $0904

piracy_string_result = $0907
enable_intro_bypass = $090F

intro_sparkle_x_position = $098F
intro_sparkle_y_position = $0991
player_skipped_demo = $099B
kong_follow_buffer_recording_index = $099D
kong_follow_buffer_playback_index = $099F

kong_follow_last_rec_x_position = $0A2A
kong_follow_last_rec_y_position = $0A2C
kong_follow_last_rec_animation = $0A2E
kong_follow_last_rec_x_speed = $0A30
kong_follow_last_rec_max_x_speed = $0A32
kong_follow_last_rec_ground_dist = $0A34
time_stop_flags = $0A36
time_stop_timer = $0A38

sprite_vram_allocation_table = $0B04
palette_upload_ring_buffer = $0B24
active_sprite_palettes_table = $0B64
sprite_palette_reference_count = $0B74

water_current_y_velocity = $0D4A
water_target_y_velocity = $0D50

current_held_sprite = $0D7A
held_sprite_x_offset = $0D7C
held_sprite_y_offset = $0D7E


aux_sprite_table = $0D84

sprite_slots = $0DE2
diddy_sprite_slot = $0DE2
dixie_sprite_slot = $0E40
non_kong_sprite_slots = $0E9E

sprite_render_table = $16FE
sprite_render_table_end = $16FE+$30

next_sprite_dma_buffer_slot = $1730
sprite_dma_buffer = $1732

diddy_control_variables = $16B2
dixie_control_variables = $16D8



zinger_loop_sound_enabler = $19AA
flitter_loop_sound_enabler = $19AB
wind_loop_sound_enabler = $19AC
flotsam_loop_sound_enabler = $19AC
unknown_19AD = $19AD
invincible_loop_sound_enabler = $19AE
barrel_roll_loop_sound_enabler = $19AF

kong_cutscene_number = $19D0
kong_cutscene_script_index = $19D2
kong_cutscene_command_timer = $19D4

;;;
;;; End low WRAM region
;;;
wram_base = $7E0000
wram_base_high = $7F0000

sram_file_buffer = $7E56CA


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