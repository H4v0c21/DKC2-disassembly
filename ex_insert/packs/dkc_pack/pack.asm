;namespace dkc_pack

%insert_sprite_hitboxes("packs/dkc_pack/hitboxes/gnawty_hitboxes.asm")

%insert_sprite_animation_code("packs/dkc_pack/animations/animation_code.asm")

%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/turn/gnawty_turn_1.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/turn/gnawty_turn_2.bin", gnawty_hitbox)

%insert_sprite_animation("packs/dkc_pack/animations/gnawty_turn.asm", $0000)

%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/walk/gnawty_walk_1.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/walk/gnawty_walk_2.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/walk/gnawty_walk_3.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/walk/gnawty_walk_4.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/walk/gnawty_walk_5.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/walk/gnawty_walk_6.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/walk/gnawty_walk_7.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/walk/gnawty_walk_8.bin", gnawty_hitbox)

%insert_sprite_animation("packs/dkc_pack/animations/gnawty_walk.asm", $0000)

%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/defeat/gnawty_defeat_1.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/defeat/gnawty_defeat_2.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/defeat/gnawty_defeat_3.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/defeat/gnawty_defeat_4.bin", gnawty_hitbox)
%insert_sprite_graphic("packs/dkc_pack/graphics/gnawty/defeat/gnawty_defeat_5.bin", gnawty_hitbox)

%insert_sprite_animation("packs/dkc_pack/animations/gnawty_defeat.asm", $0000)

%insert_sprite_constants("packs/dkc_pack/constants/gnawty_constants.asm")
%insert_sprite_code("packs/dkc_pack/code/gnawty_main.asm", $0000)

%insert_sprite_spawn_script("packs/dkc_pack/spawn/gnawty_spawn_script.asm")
print "Example Sprite inserted with spawn id: $",hex(!last_used_spawn_id)

%insert_sprite_spawn_script("packs/dkc_pack/spawn/gnawty_2_spawn_script.asm")
print "Example Sprite inserted with spawn id: $",hex(!last_used_spawn_id)

;namespace off