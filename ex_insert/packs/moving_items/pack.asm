;namespace moving_items

;%insert_sprite_hitboxes("packs/moving_items/hitboxes/example_sprite_hitboxes.asm")
;
;%insert_sprite_graphic("packs/moving_items/graphics/example_graphic_1.bin", example_sprite_hitbox_a)
;%insert_sprite_graphic("packs/moving_items/graphics/example_graphic_2.bin", example_sprite_hitbox_a)
;%insert_sprite_graphic("packs/moving_items/graphics/example_graphic_3.bin", example_sprite_hitbox_a)
;%insert_sprite_graphic("packs/moving_items/graphics/example_graphic_4.bin", example_sprite_hitbox_a)
;
;%insert_sprite_animation("packs/moving_items/animation/example_sprite_animation.asm", $0000)

; Include sprite constants for moving item
%insert_sprite_constants("packs/moving_items/moving_item_constants.asm")

; Include main sprite logic for moving item
%insert_sprite_code("packs/moving_items/moving_item_main.asm", $0000)

; Include generic spawn scripts that will be referenced by the spawnable sprites
%insert_sprite_spawn_script("packs/moving_items/spawning/generic_item.asm")

; Include spawn scripts and print their IDs to the console
%insert_sprite_spawn_script("packs/moving_items/spawning/banana_wander_medium.asm")
print "Medium Wandering Banana inserted with spawn id: $",hex(!last_used_spawn_id)

%insert_sprite_spawn_script("packs/moving_items/spawning/banana_orbit_medium.asm")
print "Medium Orbiting Banana inserted with spawn id: $",hex(!last_used_spawn_id)

;namespace off
