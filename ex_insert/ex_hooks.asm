if !version == 1
	check_sprite_underwater = $B8B6A3
	update_position_from_velocity = $B8CF7F
	interpolate_x_velocity = $B8D010
	interpolate_y_velocity = $B8CFD4
	disable_enemy_damage = $B8D1FB
	process_terrain_collision = $B8D5E0
	check_for_sprite_collision = $BEBD8E
	check_for_player_collision = $BEBE6D
	check_for_player_collision_with_flags = $BEBE80
	process_current_movement = $BEF039
	process_alternate_movement = $BEF03D
else
	check_sprite_underwater = $B8B5B6
	update_position_from_velocity = $B8CE97
	interpolate_x_velocity = $B8CF28
	interpolate_y_velocity = $B8CEEC
	disable_enemy_damage = $B8D113
	process_terrain_collision = $B8D4F8
	check_for_sprite_collision = $BEBD83
	check_for_player_collision = $BEBE62
	check_for_player_collision_with_flags = $BEBE8B
	process_current_movement = $BEF05C
	process_alternate_movement = $BEF060
endif

	sprite_return_with_despawn = $B38000
	set_standable_hitbox_pos = $B3D485
	set_standable_hitbox_range = $B3D4AE
	queue_sound_effect = $B58003
	set_inactive_kong_animation_with_kong_offset = $B9D000
	set_inactive_kong_animation = $B9D01D
	set_carryable_animation = $B9D03A
	set_animal_animation = $B9D07B
	set_kong_animal_animation = $B9D08C
	set_alt_sprite_animation = $B9D09B
	set_kong_animation = $B9D0B8
	set_sprite_animation = $B9D0C6
	process_animations = $B9D100
	kill_sprite = $BB82B8
	spawn_sprite_from_index = $BB8412
	spawn_sprite_from_pointer = $BB8418
	prepare_sprite_collision = $BCFB58