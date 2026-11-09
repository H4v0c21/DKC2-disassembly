;as a convention, any unused address will be named UNUSED_<address> and treated as a single byte
;Most addresses shall be assumed 2 bytes unless otherwise noted.  Single byte addresses won't be specifically
;noted as their addresses will carry that point.
;Duplicate addresses imply an address with multiple contexts.
;Temporaries are named after the address they point to rather than a sequence.
;Temporaries used for any significant context should have local reassignment
;Temporaries are generally any address used in multi contexts.

wram_base = $7E0000
wram_base_high = $7F0000

;;;
;;; Start Direct Page WRAM ($00-$FF)
;;;
spc_transaction				= $00		;word	counter	incomplete name
spc_sample_dir_destination_1		= $02		;word	pointer	incomplete name
spc_sample_dir_destination_2		= $04		;word	pointer	incomplete name
spc_sample_destination_1		= $06		;word	pointer	incomplete name
spc_sample_destination_2		= $08		;word	pointer	incomplete name
sample_counter_1			= $0A		;word	counter	incomplete name
sample_counter_2			= $0C		;word	counter	incomplete name
sample_map				= $0E		;long	pointer	incomplete name
UNKNOWN_12				= $12		;word	unknown	set to FFFF
UNKNOWN_14				= $14		;byte	unknown appears to always be 0
UNKNOWN_15				= $15		;byte	unknown appears to always be 0
UNKNOWN_16				= $16		;byte	unknown appears to always be 0
UNKNOWN_17				= $17		;byte	unknown appears to always be 0
UNKNOWN_18				= $18		;byte	unknown appears to always be 0
UNKNOWN_19				= $19		;byte	unknown appears to always be 0
UNKNOWN_1A				= $1A		;word	unknown appears to always be 0
current_song				= $1C		;word	index
stereo_select				= $1E		;word	boolean
nmi_pointer				= $20		;word	pointer
UNUSED_22				= $22		;byte	unused
UNUSED_23				= $23		;byte	unused
game_mode_pointer			= $24		;word	pointer
temp_26					= $26		;byte	temp
temp_27					= $27		;byte	temp
temp_28					= $28		;byte	temp
temp_29					= $29		;byte	temp
active_frame_counter			= $2A		;word	counter
global_frame_counter			= $2C		;word	counter
rng_result				= $2E		;byte	rng
rng_seed_1				= $2F		;byte	rng
rng_seed_2				= $30		;byte	rng
rng_seed_3				= $31		;byte	rng
temp_32					= $32		;byte	temp
temp_33					= $33		;byte	temp
temp_34					= $34		;byte	temp
temp_35					= $35		;byte	temp
temp_36					= $36		;byte	temp
temp_37					= $37		;byte	temp
temp_38					= $38		;byte	temp
temp_39					= $39		;byte	temp
temp_3A					= $3A		;byte	temp
temp_3B					= $3B		;byte	temp
temp_3C					= $3C		;byte	temp
temp_3D					= $3D		;byte	temp
temp_3E					= $3E		;byte	temp
temp_3F					= $3F		;byte	temp
temp_40					= $40		;byte	temp

oam_size_index				= $56		;word	index

temp_5E					= $5E		;byte	temp
temp_5F					= $5F		;byte	temp
temp_60					= $60		;byte	temp
temp_61					= $61		;byte	temp
UNKNOWN_62				= $62		;byte	unknown
UNKNOWN_63				= $63		;byte	unknown
current_sprite				= $64		;word	pointer
current_kong_control_variables		= $66		;word	pointer
alternate_sprite			= $68		;word	pointer
colliding_sprite			= $6A		;word	pointer
current_player_mount			= $6C		;word	pointer
animal_type				= $6E		;word	index
next_oam_slot				= $70		;word	index

sprite_dma_buffer_limit			= $78

slope_slide_threshold			= $88

current_sprite_constants		= $8E		;\ long	pointer
current_sprite_constants_bank		= $90		;/
current_player_action			= $92		;word	index
nmi_sub_mode				= $94		;word	index
game_sub_mode				= $96		;word	index
level_tilemap				= $98		;dword	pointer
level_tilemap_bank			= $9A
level_collision_tilemap			= $9C		;dword	pointer
level_collision_tilemap_bank		= $9E
terrain_collision_tile_count		= $A0
level_tile_local_x_offset		= $A2
RAM_A4					= $A4
level_tile_global_x_offset		= $A6
level_tile				= $A8
collision_tile_ground_routine		= $AA
collision_tile				= $AC
RAM_AE					= $AE
RAM_B0					= $B0
RAM_B2					= $B2

level_number				= $D3		;word	index
gameplay_frame_counter			= $D5		;\ dword	counter
gameplay_frame_counter_high		= $D7		;/
;;;
;;; Start Non-critical Direct Page WRAM ($D9-$FD)
;;;
UNKNOWN_D9				= $D9		;temp clipping left/SRAM copy address/other uses

current_held_sprite_temp		= $E9
collision_mask_result			= $EB		;word
UNUSED_ED				= $ED
UNUSED_EE				= $EE
previous_palette_buffer_slot		= $EF		;word
current_palette_buffer_slot		= $F1		;word
spawned_sprite_parameter		= $F3
spawned_sprite_x_position		= $F5
spawned_sprite_y_position		= $F7
spawned_sprite_script_base_addr		= $F9
spawned_sprite_placement_number		= $FB
platform_sprite_y_position_temp		= $FD
UNUSED_FF				= $FF
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
main_level_config			= $0515
alt_level_config			= $0553
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
current_game_mode			= $060D		;Also doubles as cursor position in mode select screen
active_controller			= $060F
file_select_selection			= $0611
file_select_action			= $0613
file_select_file_to_copy		= $0615
language_select				= $0617
sound_effect_buffer			= $0619		;Byte Array[8]
used_sound_effect_channels		= $0621		;Byte
spc_command_buffer			= $0622		;Word Array[8]
current_sound_effect_slot		= $0632		;Word
next_sound_effect_slot			= $0634		;Word
last_spc_command_transfer_time		= $0636		;Word
next_firework_sprite_buffer_slot	= $0638		;Word
firework_sprite_buffer			= $063A		;Word Array[8]
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
collected_kong_letters			= $0902		;Also uses a bit to flag if ship cabin balloon was collected
completion_percentage			= $0904		;High byte unused but still written
UNUSED_0906				= $0906
;;;
;;; End Player Specific WRAM ($064A-$0906)
;;;
piracy_string_result			= $0907
enable_intro_bypass			= $090F
;;;
;;; Start Noncritical WRAM ($0911-$19D9)
;;;
sunset_x_position			= $0911
sunset_and_water_color			= $0913
water_safe_timer			= $0915
water_safe_visual_timer			= $0917
krool_gas_effects_1			= $0919
krool_gas_effects_2			= $091A
kong_palette_effects			= $091B
krool_gas_effects_4			= $091C
castle_torch_swanky_lights_index	= $091D
freeze_gas_button_mash_counter		= $091F
air_bubble_oam_property			= $0921
conditional_sprite_spawning_flag	= $0923
slow_gas_input_physics_tick_rate	= $0925
slow_gas_input_physics_tick_timer	= $0927
firework_cgram_palette_address		= $0929
next_free_firework_slot			= $092B
firework_sprite_limit			= $092D
firework_sprite_count			= $092E
follower_kong_animation			= $092F
follower_kong_facing_direction		= $0931
follower_kong_animation_state		= $0933
kongs_highest_y_position		= $0935
;Likely Unused				= $0937-$0956
lava_bubble_gfx_index			= $0957
geyser_position_data_starting_index	= $0959
RAM_095B				= $095B
RAM_0963				= $0963
banana_counter_current			= $096B
RAM_096C				= $096C
banana_counter_final			= $096D
banana_display_timer			= $096F
lives_to_give_count			= $0971
lives_to_take_count			= $0972
life_display_timer			= $0973
life_display_graphic			= $0975
life_display_graphic_copy		= $0977
life_display_y_position			= $0979
collected_kong_letter_sprite		= $097B
collected_coin_sprite			= $097D
bonus_timer_sprite			= $097F
player_action_held			= $0981
player_action_pressed			= $0983
RAM_0985				= $0985
RAM_0987				= $0987
glimmer_sprite				= $0989
UNUSED_098B				= $098B
UNUSED_098C				= $098C
intro_sparkle_random_offset		= $098D
intro_sparkle_x_position		= $098F
intro_sparkle_y_position		= $0991
intro_sparkle_timer			= $0993
;Likely Unused				= $0995-$099A
player_skipped_demo			= $099B
kong_follow_buffer_recording_index	= $099D
kong_follow_buffer_playback_index	= $099F
rope_grab_cooldown_timer		= $09A1
;Sprite Clipping Struct (10 Instances)	= $09A3-$09F2
;Likely Unused				= $09F3
sprite_collision_result			= $09F5
sprite_collision_flags			= $09F7
sprite_collision_routine_address	= $09F9
sprite_collision_routine_addr_high	= $09FA
next_platform_sprite_slot		= $09FC
platform_sprite_table			= $09FE
platform_sprite_left_edge_position	= $0A26
platform_sprite_right_edge_position	= $0A28
kong_follow_last_rec_x_position		= $0A2A
kong_follow_last_rec_y_position		= $0A2C
kong_follow_last_rec_animation		= $0A2E
kong_follow_last_rec_x_speed		= $0A30
kong_follow_last_rec_max_x_speed	= $0A32
kong_follow_last_rec_ground_dist	= $0A34
time_stop_flags				= $0A36
time_stop_timer				= $0A38
UNUSED_0A3A				= $0A3A
RAM_0A3C				= $0A3C
contact_flash_x_position		= $0A3E
contact_flash_y_position		= $0A40
spawn_group_manager_table		= $0A42
current_interaction			= $0A82
current_interacting_sprite		= $0A84
interaction_RAM_0A86			= $0A86
interaction_RAM_0A88			= $0A88
interaction_RAM_0A8A			= $0A8A
interaction_RAM_0A8C			= $0A8C
level_palette_address			= $0A8E
camera_anti_piracy_counter		= $0A90
camera_0A92				= $0A92
camera_0A93				= $0A93
camera_0A94				= $0A94
camera_0A96				= $0A96
camera_0A98				= $0A98
camera_0A9A				= $0A9A
camera_0A9C				= $0A9C
camera_0A9E				= $0A9E
camera_0A9F				= $0A9F
camera_0AA0				= $0AA0
camera_0AA2				= $0AA2
camera_0AA4				= $0AA4
camera_0AA5				= $0AA5
camera_0AA6				= $0AA6
camera_0AA7				= $0AA7
camera_0AA8				= $0AA8
camera_0AAA				= $0AAA
camera_0AAC				= $0AAC
camera_0AAE				= $0AAE
camera_0AB0				= $0AB0
camera_0AB2				= $0AB2
camera_0AB4				= $0AB4
camera_0AB6				= $0AB6
camera_0AB8				= $0AB8
camera_0ABA				= $0ABA
camera_0ABC				= $0ABC
camera_0ABE				= $0ABE
camera_0ABF				= $0ABF
camera_0AC0				= $0AC0
camera_0AC2				= $0AC2
camera_0AC3				= $0AC3
camera_0AC4				= $0AC4
camera_0AC6				= $0AC6
camera_0AC8				= $0AC8
camera_0AC9				= $0AC9
camera_0ACA				= $0ACA
camera_0ACC				= $0ACC
camera_0ACD				= $0ACD
camera_0ACE				= $0ACE
camera_0AD0				= $0AD0
camera_0AD2				= $0AD2
camera_0AD4				= $0AD4
camera_0AD6				= $0AD6
camera_0AD7				= $0AD7
camera_0AD8				= $0AD8
camera_0ADA				= $0ADA
camera_0ADB				= $0ADB
camera_0ADC				= $0ADC
camera_0ADE				= $0ADE
camera_0ADF				= $0ADF
camera_0AE0				= $0AE0
camera_0AE2				= $0AE2
camera_0AE3				= $0AE3
camera_0AE4				= $0AE4
camera_0AE6				= $0AE6
camera_0AE8				= $0AE8
camera_0AEA				= $0AEA
camera_0AEC				= $0AEC
camera_0AEE				= $0AEE
camera_0AF0				= $0AF0
camera_0AF2				= $0AF2
camera_0AF4				= $0AF4
camera_0AF6				= $0AF6
camera_0AF8				= $0AF8
camera_0AFA				= $0AFA
camera_0AFC				= $0AFC
camera_0AFD				= $0AFD
camera_0AFE				= $0AFE
sprite_dma_buffer_limit_temp		= $0B00
RAM_0B02				= $0B02		;TODO: potential name: player_input_action_flags
sprite_vram_allocation_table		= $0B04
sprite_palette_dma_buffer		= $0B24
active_sprite_palettes_table		= $0B64
sprite_palette_reference_count		= $0B74
level_dimensions_address		= $0B84
level_compression_settings		= $0B86
RAM_0B88				= $0B88
RAM_0B8A				= $0B8A
RAM_0B8C				= $0B8C
RAM_0B8E				= $0B8E
RAM_0B90				= $0B90
RAM_0B92				= $0B92
RAM_0B94				= $0B94
RAM_0B96				= $0B96
RAM_0B98				= $0B98
RAM_0B9A				= $0B9A
RAM_0B9C				= $0B9C
RAM_0B9E				= $0B9E
held_rope_sprite			= $0BA0
held_rope_sprite_temp			= $0BA2
RAM_0BA4				= $0BA4
sprite_spawn_list_table			= $0BA6		;Size: $180 contains index for each list in sprite_spawn_lists
dummy_level_sprite_table		= $0D26		;Not sprite, act as base to run sprite code on water/crush floor
RAM_0D26				= $0D26
RAM_0D28				= $0D28
RAM_0D2A				= $0D2A
banana_oam_property			= $0D2C
RAM_0D2E				= $0D2E
banana_enable_flag			= $0D30
banana_clipping_sprite_unused		= $0D32		;Unused, supposed to be active kong but load from wrong RAM bank
UNUSED_0D34				= $0D34
UNUSED_0D35				= $0D35
banana_unused_0D36			= $0D36		;Unused, set to 1 in banana code but never read
sprite_banana_clipping_slot_index	= $0D38		;Unused but set to 2 when 2nd banana clipping slot is used
sprite_banana_clipping_x_position	= $0D3A
sprite_banana_clipping_y_position	= $0D3E
sprite_banana_clipping_box_width	= $0D42
sprite_banana_clipping_box_height	= $0D46
water_current_y_speed			= $0D4A
water_y_position			= $0D4E
water_target_y_speed			= $0D50
water_target_y_position			= $0D52
crush_floor_y_position			= $0D54
crush_floor_stop_reverse_flags		= $0D56
krockhead_barrel_sprite			= $0D58
kackle_sprite				= $0D5A
kackle_sprite_high			= $0D5B		;Used in a strange way to check for race/kackle at the same time
rickety_race_placement_in_race		= $0D5C
rickety_race_placement_in_race_flag	= $0D5D
ridden_skull_cart_sprite		= $0D5E
kong_swap_underwater_x_speed		= $0D60
kong_swap_underwater_y_speed		= $0D62
kong_swap_underwater_timer		= $0D64
kong_swap_position_temp_1		= $0D66
kong_swap_position_temp_2		= $0D68
kong_swap_position_temp_3		= $0D6A
kong_swap_position_temp_4		= $0D6C
kong_follow_buffer_caught_up_index	= $0D6E		;Marker which marks the most recent entry from the leader kong
ppu_config_number			= $0D70		;Not actually used for anything but holds the PPU config ID
animal_ride_x_offset_base		= $0D72		;Position offset before adding animation offset
animal_ride_y_offset_base		= $0D74		;Position offset before adding animation offset
animal_ride_x_offset_final		= $0D76		;Position offset after adding animation offset
animal_ride_y_offset_final		= $0D78		;Position offset after adding animation offset
current_held_sprite			= $0D7A
held_sprite_x_offset			= $0D7C
held_sprite_y_offset			= $0D7E
held_sprite_render_order_modifier	= $0D80
hook_sprite				= $0D82

;TODO: make this use sizeof(sprite) instead of hardcoded $5E
struct sprite_table $0D84
	.slot_0:			skip $5E	;$0D84 (aux)
	.slot_1:			skip $5E	;$0DE2 (diddy)
	.slot_2:			skip $5E	;$0E40 (dixie)
	.slot_3:			skip $5E	;$0E9E
	.slot_4:			skip $5E	;$0EFC
	.slot_5:			skip $5E	;$0F5A
	.slot_6:			skip $5E	;$0FB8
	.slot_7:			skip $5E	;$1016
	.slot_8:			skip $5E	;$1074
	.slot_9:			skip $5E	;$10D2
	.slot_10:			skip $5E	;$1130
	.slot_11:			skip $5E	;$118E
	.slot_12:			skip $5E	;$11EC
	.slot_13:			skip $5E	;$124A
	.slot_14:			skip $5E	;$12A8
	.slot_15:			skip $5E	;$1306
	.slot_16:			skip $5E	;$1364
	.slot_17:			skip $5E	;$13C2
	.slot_18:			skip $5E	;$1420
	.slot_19:			skip $5E	;$147E
	.slot_20:			skip $5E	;$14DC
	.slot_21:			skip $5E	;$153A
	.slot_22:			skip $5E	;$1598
	.slot_23:			skip $5E	;$15F6
	.slot_24:			skip $5E	;$1654
	.end:
endstruct

diddy_control_variables			= $16B2
dixie_control_variables			= $16D8
sprite_render_table			= $16FE		;Word Array[25]
next_sprite_dma_buffer_slot		= $1730		;Word
sprite_dma_buffer			= $1732		;(Word,Word,Double) Array[6]
terrain_collision_routine_address	= $17B2		;Pointer to code to run for terrain collision
level_8x8_tilemap_address		= $17B4
level_tilemap_vram_address		= $17B6
screen_scroll_x_sub_position_low	= $17B8
screen_scroll_x_sub_position		= $17B9
screen_scroll_x_position		= $17BA
screen_scroll_x_screen			= $17BB
layer_screen_scroll_x_position		= $17BC
UNUSED_17BE				= $17BE		;Was probably meant to be layer_screen_scroll_x_final
UNUSED_17BF				= $17BF		;Was probably meant to be layer_screen_scroll_x_final_high
screen_scroll_y_position		= $17C0
screen_scroll_y_position_final		= $17C2		;Same as screen_scroll_y_position -1 (for scroll register)
screen_scroll_y_position_final_high	= $17C3
layer_screen_scroll_y_position		= $17C4
layer_screen_scroll_y_final		= $17C6
layer_screen_scroll_y_final_high	= $17C7
RAM_17C8				= $17C8
screen_scroll_tile_x_position		= $17CA		;Screen scroll position rounded to nearest 8x8 tile
UNUSED_17CC				= $17CC
UNUSED_17CD				= $17CD
screen_scroll_tile_y_position		= $17CE		;Screen scroll position rounded to nearest 8x8 tile
UNUSED_17D0				= $17D0
UNUSED_17D1				= $17D1
tilemap_y_stream_flag			= $17D2
UNUSED_17D4				= $17D4
UNUSED_17D5				= $17D5
tilemap_x_stream_flag			= $17D6
UNUSED_17D8				= $17D8
UNUSED_17D9				= $17D9
level_row_left_dma_buffer		= $17DA
level_row_right_dma_buffer		= $181A
level_column_dma_buffer			= $185A
layer_column_dma_buffer			= $189A		;Used by ship deck rigging
layer_row_left_dma_buffer		= $18DA		;Used by ship deck rigging
layer_row_right_dma_buffer		= $191A		;Used by ship deck rigging
column_row_temp_buffer			= $195A
last_squitter_web_shot_time		= $19A2
last_squitter_platform_shot_time	= $19A4
squitter_web_shot_count			= $19A6
invincibility_barrel_sprite		= $19A8
zinger_loop_sound_enabler		= $19AA
flitter_loop_sound_enabler		= $19AB
wind_loop_sound_enabler			= $19AC
flotsam_loop_sound_enabler		= $19AC
RAM_19AD				= $19AD
invincible_loop_sound_enabler		= $19AE
barrel_roll_loop_sound_enabler		= $19AF
skull_cart_loop_sound_flags		= $19B0
giant_tire_loop_sound_flags		= $19B2
giant_tire_loop_sound_flags_high	= $19B3
giant_tire_vram_addresses		= $19B4
defeated_enemy_counter			= $19BA
lives_taken_by_klobber			= $19BC
wind_scroll_speed_firework_timer	= $19BE
wind_direction_firework_counter		= $19C0
RAM_19C2				= $19C2		;Set to 0 in Gusty Glade graphics init but not used
vertical_wind_changer_sprite		= $19C4
dropped_sprite_x_position		= $19C6
dropped_sprite_y_position		= $19C8
RAM_19CA				= $19CA
UNUSED_19CC				= $19CC
UNUSED_19CD				= $19CD
invincibility_sprite			= $19CE
kong_cutscene_number			= $19D0
kong_cutscene_script_index		= $19D2
kong_cutscene_command_timer		= $19D4
level_exit_cheat_input_index		= $19D6
banana_count_before_star_bonus		= $19D8

;;;
;;; End Noncritical WRAM ($0911-$19D9)
;;;
;;;
;;; End low WRAM ($0000-$1FFF)
;;;
low_nibble_lookup_table			= $7E2000	;Used for decompression to get low nibble of byte
high_nibble_lookup_table		= $7E2100	;Used for decompression to get high nibble of byte
sample_table_buffer			= $7E2200	;Size: $2B0, Note: this might have been allocated $800 bytes
RAM_7E2A00				= $7E2A00	;Size: $1B0, Note: this might have been allocated $800 bytes
RAM_7E3200				= $7E3200	;Size: $1E0, Note: this might have been allocated $800 bytes
RAM_7E3A00				= $7E3A00	;Size: $90, Note: this might have been allocated $400 bytes
;Used for level name tile data on map screens
;Used for text tile map in NPC screens
;Used for text tile map in ship cabin
;Used for bonus intro text tile data
text_vram_buffer			= $7E3E00	;Largest observed size: $680 bytes
text_vram_buffer_2			= $7E4A00	;Size: $180, used by funky/klubba when entering new area

player_1_ram_buffer			= $7E5000
player_2_ram_buffer			= $7E5365
sram_file_buffer			= $7E56CA
map_icon_unlocks_buffer			= $7E5972
map_path_unlocks_buffer			= $7E5992
collected_tokens_buffer			= $7E59B2
collected_dk_coins_buffer		= $7E59D2
completed_levels_buffer			= $7E59F2
sprite_spawn_lists			= $7E5A12
sprite_spawn_table			= $7E7A12
sprite_spawn_groups_temp		= $7E7E12	;Size: $200
; HDMA buffers
; These buffers will have many overlapping addresses, some with structs, some without
; These may take awhile to get right and could end up fairly volatile until I figure it out
namespace hdma_intro
	bgmode				= $7E8012
	color_math			= $7E8022
	subscreen			= $7E8032
namespace off

namespace hdma_menu
	windowing			= $7E8012
namespace off
; end buffers

working_palette				= $7E8928	;Size: $300
primary_palette				= $7E8C28
RAM_7E8D28				= $7E8D28	;Camera buffer
RAM_7E8E28				= $7E8E28	;Camera buffer
RAM_7E8F28				= $7E8F28	;Camera buffer
RAM_7E9028				= $7E9028	;Camera buffer
RAM_7E9128				= $7E9128	;Camera buffer
RAM_7E9228				= $7E9228	;Camera buffer
RAM_7E9328				= $7E9328	;Camera buffer
RAM_7E9428				= $7E9428	;Camera buffer

writable_palette_ram			= $7F9650

kong_follow_x_position_buffer		= $7FA532
kong_follow_y_position_buffer		= $7FA572
kong_follow_facing_buffer		= $7FA5B2
kong_follow_animation_buffer		= $7FA5F2

sprite_render_table_end = sprite_render_table+$30