;namespace example_pack

%insert_sprite_hitboxes("packs/example_pack/hitboxes/example_sprite_hitboxes.asm")

%insert_sprite_graphic("packs/example_pack/graphics/example_graphic_1.bin", example_sprite_hitbox_a)
%insert_sprite_graphic("packs/example_pack/graphics/example_graphic_2.bin", example_sprite_hitbox_a)
%insert_sprite_graphic("packs/example_pack/graphics/example_graphic_3.bin", example_sprite_hitbox_a)
%insert_sprite_graphic("packs/example_pack/graphics/example_graphic_4.bin", example_sprite_hitbox_a)

%insert_sprite_animation("packs/example_pack/animation/example_sprite_animation.asm", $0000)

%insert_sprite_constants("packs/example_pack/constants/example_sprite_constants.asm")
%insert_sprite_code("packs/example_pack/code/example_sprite_code.asm", $0000)
%insert_sprite_spawn_script("packs/example_pack/spawn/example_sprite_spawn_script.asm")

print "Example Sprite inserted with spawn id: $",hex(!last_used_spawn_id)

;namespace off
