;DKC 2 HOOKS
if !game_version == 0
	sprite_return_handle_despawn = $B38000
	sprite_return_no_despawn = $B38004
	spawn_barrel_debris_with_smoke = $B39742
	spawn_barrel_debris = $B39746
	initialize_platform_sprite = $B3D446
	set_platform_hitbox_position = $B3D45F
	set_platform_hitbox_size = $B3D488
	queue_sound_effect = $B58003
	check_if_sprite_submerged = $B8B5B6
	use_default_player_gravity = $B8CDAD
	use_default_player_terminal_velocity = $B8CDCE
	apply_position_from_velocity = $B8CE97
	interpolate_y_velocity = $B8CEEC
	interpolate_x_velocity = $B8CF28
	freeze_time = $B8D0FC
	unfreeze_time = $B8D108
	disable_kong_damage = $B8D113
	process_terrain_collision = $B8D4F8
	set_sprite_interaction = $B8D7D2
	set_inactive_kong_animation_handle_dixie = $B9D000
	set_inactive_kong_animation = $B9D01D
	set_animal_animation = $B9D07B
	set_animal_animation_handle_dixie = $B9D08C
	set_alternate_sprite_animation = $B9D09B
	set_kong_animation = $B9D0B8
	set_sprite_animation = $B9D0C6
	process_animation = $B9D100
	turn_sprite_if_needed = $B9F0FD
	flip_sprite_direction = $B9F101
	delete_sprite = $BB82B8
	spawn_vanilla_sprite_from_index = $BB842C
	spawn_vanilla_sprite_from_address = $BB8432
	request_sprite_palette_from_index = $BB8A61
	request_palette_from_address = $BB8A65
	set_sprite_palette_from_address = $BB8C40
	set_sprite_palette_from_index = $BB8C44
	check_if_off_screen = $BBBB6E
	spawn_ex_sprite_direct = $BBC900
	spawn_big_ex_sprite_direct = $BBC928
	populate_sprite_clipping = $BCFB58
	check_sprite_collision = $BEBD83
	check_throwable_collision = $BEBE09
	check_simple_player_collision = $BEBE62
	check_complex_player_collision = $BEBE80
	process_current_movement = $BEF05C
	process_alternate_movement = $BEF060
	use_vanilla_constants = $00813B
	use_ex_constants = $008141
	ex_sprite_state_handler = $028003
	ex_sprite_state_safe_handler = $028022
else
	sprite_return_handle_despawn = $B38000
	sprite_return_no_despawn = $B38004
	spawn_barrel_debris_with_smoke = $B3975C
	spawn_barrel_debris = $B39760
	initialize_platform_sprite = $B3D46C
	set_platform_hitbox_position = $B3D485
	set_platform_hitbox_size = $B3D4AE
	queue_sound_effect = $B58003
	check_if_sprite_submerged = $B8B6A3
	use_default_player_gravity = $B8CE95
	use_default_player_terminal_velocity = $B8CEB6
	apply_position_from_velocity = $B8CF7F
	interpolate_y_velocity = $B8CFD4
	interpolate_x_velocity = $B8D010
	freeze_time = $B8D1E4
	unfreeze_time = $B8D1F0
	disable_kong_damage = $B8D1FB
	process_terrain_collision = $B8D5E0
	set_sprite_interaction = $B8D8BA
	set_inactive_kong_animation_handle_dixie = $B9D000
	set_inactive_kong_animation = $B9D01D
	set_animal_animation = $B9D07B
	set_animal_animation_handle_dixie = $B9D08C
	set_alternate_sprite_animation = $B9D09B
	set_kong_animation = $B9D0B8
	set_sprite_animation = $B9D0C6
	process_animation = $B9D100
	turn_sprite_if_needed = $B9F0FD
	flip_sprite_direction = $B9F101
	delete_sprite = $BB82B8
	spawn_vanilla_sprite_from_index = $BB842C
	spawn_vanilla_sprite_from_address = $BB8432
	request_sprite_palette_from_index = $BB8A61
	request_palette_from_address = $BB8A65
	set_sprite_palette_from_address = $BB8C40
	set_sprite_palette_from_index = $BB8C44
	check_if_off_screen = $BBBB7B
	spawn_ex_sprite_direct = $BBC900
	spawn_big_ex_sprite_direct = $BBC928
	populate_sprite_clipping = $BCFB58
	check_sprite_collision = $BEBD8E
	check_throwable_collision = $BEBE14
	check_simple_player_collision = $BEBE6D
	check_complex_player_collision = $BEBE8B
	process_current_movement = $BEF039
	process_alternate_movement = $BEF03D
	use_vanilla_constants = $00813B
	use_ex_constants = $008141
	ex_sprite_state_handler = $028003
	ex_sprite_state_safe_handler = $028022
endif

;RAM

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

global_frame_counter = $2A
active_frame_counter = $2C
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
current_colliding_sprite = $6A
current_animal_sprite = $6C
current_animal_type = $6E
next_oam_slot = $70

player_action = $92
nmi_submode = $94
gamemode_submode = $96

level_number = $D3


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
active_player_held = $050E
active_player_pressed = $0510

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

sprite_return_address = $05A9

cheats_enabled = $060B
game_type = $060D
controller_number = $060F
file_select_selection = $0611
file_select_action = $0613
file_select_file_to_copy = $0615

language_select = $0617

piracy_string_result = $0907
enable_intro_bypass = $090F

player_skipped_demo = $099B

aux_sprite_table = $0D84
main_sprite_table = $0DE2
main_sprite_table_end = $0DE2+(sizeof(sprite)*24)

sprite_render_table = $16FE
sprite_render_table_end = $16FE+$30

wram_base = $7E0000
wram_base_high = $7F0000

sram_file_buffer = $7E56CA

working_palette = $7E8928
primary_palette = $7E8C28

function sound(channel, effect) = channel<<8|effect

