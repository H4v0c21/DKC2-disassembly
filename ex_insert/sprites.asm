
;general rules:
;always insert sprite main and sprite constants before spawn scripts, this is in case spawn scripts use built in defines to find the sprite id or constants pointer
;sprites with execution condition $0001 will process even when time is stopped


%insert_sprite_code("sprites/code/example_sprite_code.asm", $0000)
%insert_sprite_constants("sprites/constants/example_sprite_constants.asm")
%insert_sprite_spawn_script("sprites/spawn/example_sprite_spawn_script.asm")

%insert_sprite_code("sprites/code/example_sprite_2_code.asm", $0000)
%insert_sprite_constants("sprites/constants/example_sprite_2_constants.asm")
%insert_sprite_spawn_script("sprites/spawn/example_sprite_2_spawn_script.asm")