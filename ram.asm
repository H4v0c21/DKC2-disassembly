;as a convention, any unused address will be named UNUSED_<address> and treated as a single byte
;Most addresses shall be assumed 2 bytes unless otherwise noted.  Single byte addresses won't be specifically
;noted as their addresses will carry that point.
;Duplicate addresses imply an address withg multiple contexts.
;Temporaries are named after the address they point to rather than a sequence.
;Temporaries used for any significant context should have local reassignment
;Temporaries are generally any addres used in multi contexts.

spc_transaction = $00

current_song = $1C
stereo_select = $1E
NMI_pointer = $20
UNUSED_22 = $22
UNUSED_23 = $23
gamemode_pointer = $24

temp_26 = $26
temp_27 = $27
temp_28 = $28
temp_29 = $29

active_frame_counter = $2A
global_frame_counter = $2C
rng_result = $2E
rng_seed_1 = $2F
rng_seed_2 = $30
rng_seed_3 = $31

temp_32 = $32
temp_33 = $33
temp_34 = $34
temp_35 = $35
temp_36 = $36
temp_37 = $37
temp_38 = $38
temp_39 = $39
temp_3A = $3A
temp_3B = $3B
temp_3C = $3C
temp_3D = $3D
temp_3E = $3E
temp_3F = $3F
temp_40 = $40
;the amount of temps here I have documented as 30, but I will reserve filling that out pending more evidence
;I suspect the latter are used rare enough that they may effectively be dedicated addresses

oam_size_index = $56


temp_5E = $5E
temp_5F = $5F
temp_60 = $60
temp_61 = $61

current_sprite = $64
current_kong_control_variables = $66
alternate_sprite = $68
UNKNOWN_6A = $6A
current_player_mount = $6C
animal_type = $6E
next_oam_slot = $70

current_sprite_constants = $8E
current_sprite_constants_bank = $90

nmi_submode = $94
gamemode_submode = $96

level_number = $D3
gameplay_frame_counter = $D5
gameplay_frame_counter_high = $D7


collision_mask_result = $EB

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
current_game_mode = $060D
active_controller = $060F
file_select_selection = $0611
file_select_action = $0613
file_select_file_to_copy = $0615
language_select = $0617

npc_screen_type = $0689
returning_map_node_number = $06A9
map_node_number = $06AB
world_number = $06B1

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