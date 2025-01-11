if !ex_patch == 1
	!level_logic_done = post_logic_hook
else
	!level_logic_done = CODE_808CA2
endif

if !ex_patch == 1
	!ex_sprite_spawn_id_start = $1048
	!ex_sprite_id_start = $0320
	!ex_sprite_animation_id_start = $0340
	!ex_sprite_graphics_id_start = $3600
	!ex_sprite_palette_id_start = $00EB
	
	!ex_sprite_main_table_size =		$1000
	!ex_sprite_spawn_script_table_size =	$1000
	!ex_sprite_animation_table_size =	$1000
	!ex_sprite_graphics_table_size =	$1000
	!ex_sprite_hitbox_table_size =		$1000
	!ex_sprite_palette_table_size =		$1000
	
endif