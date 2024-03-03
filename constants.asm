!null_pointer = $000000

;sprite init command constants
!initcommand_success = $8000
!initcommand_set_animation = $8100
!initcommand_skip = $2000
!initcommand_load_subconfig = $8300
!initcommand_set_palette = $8400
!initcommand_set_oam = $8500
!initcommand_spawn_relative = $8600
!initcommand_set_directional = $8700
!initcommand_set_position = $8800
!initcommand_setup_static = $8900
!initcommand_bulk_set = $8A00
!initcommand_set_oam_special = $8B00
!initcommand_set_palette2 = $8C00
!initcommand_set_alt_palette = $8D00
!initcommand_setup_static2 = $8E00


;sprite animation command constants
!animation_command_80 = $80
!animation_command_81 = $81
!animation_command_82 = $82
!animation_command_83 = $83
!animation_command_84 = $84
!animation_command_85 = $85
!animation_command_86 = $86
!animation_command_87 = $87
!animation_command_88 = $88
!animation_command_89 = $89
!animation_command_8A = $8A
!animation_command_8B = $8B
!animation_command_8C = $8C
!animation_command_8D = $8D
!animation_command_8E = $8E
!animation_command_8F = $8F
!animation_command_90 = $90
!animation_command_91 = $91
!animation_command_92 = $92
!animation_command_93 = $93
!animation_command_94 = $94

!boss_command_fly_to = $00
!boss_command_01 = $01
!boss_command_goto_or_reset = $02
!boss_command_03 = $03
!boss_command_layer_priority = $04
!boss_command_krow_animation = $05
!boss_command_grab_egg = $06
!boss_command_drop_egg = $07
!boss_command_animated_wait_for_egg = $08
!boss_command_lock_camera = $09
!boss_command_0A = $0A
!boss_command_shake_screen = $0B
!boss_command_fly_to_egg_drop = $0C
!boss_command_set_pattern = $0D
!boss_command_rain_eggs = $0E
!boss_command_0F = $0F
!boss_command_10 = $10
!boss_command_11 = $11
!boss_command_face = $12
!boss_command_13 = $13
!boss_command_select_goto = $14
!boss_command_15 = $15
!boss_command_16 = $16
!boss_command_17 = $17
!boss_command_18 = $18
!boss_command_19 = $19
!boss_command_animated_wait = $1A
!boss_command_egg_layer_priority = $1B
!boss_command_1C = $1C
!boss_command_1D = $1D
!boss_command_1E = $1E
!boss_command_1F = $1F
!boss_command_20 = $20
!boss_command_21 = $21
!boss_command_22 = $22
!boss_command_23 = $23
!boss_command_24 = $24
!boss_command_25 = $25
!boss_command_26 = $26
!boss_command_27 = $27
!boss_command_wait = $28
!boss_command_dash = $29
!boss_command_shoot = $2A
!boss_command_vacuum = $2B
!boss_command_retract_spikes = $2C
!boss_command_goto_if = $2D
!boss_command_spawn_sprite = $2E
!boss_command_shoot_gas = $2F
!boss_command_clear_gas_effect = $30
!boss_command_31 = $31
!boss_command_32 = $32
!boss_command_set_visibility = $33
!boss_command_teleport = $34
!boss_command_timed_vacuum = $35
!boss_command_wait_if_gas_hit = $36
!boss_command_fade = $37
!boss_command_disable_damage = $38
!boss_command_enable_damage = $39
!boss_command_fall = $3A
!boss_command_rise = $3B
!boss_command_swing_club = $3C
!boss_command_3D = $3D
!boss_command_stun_player = $3E
!boss_command_destroy_tnt = $3F
!boss_command_hop = $40
!boss_command_get_hit_or_timeout = $41
!boss_command_42 = $42
!boss_command_43 = $43
!boss_command_jump = $44
!boss_command_dk_intro = $45
!boss_command_melee_dk = $46
!boss_command_shoot_dk = $47
!boss_command_set_projectiles = $48
!boss_command_shoot_fish = $49

;Global sounds
!sound_nothing				= $00	;00: -Nothing-
!sound_01				= $01	;01: -Nothing?-
!sound_knock				= $02	;02: Klomp walking, bumped by Klobber
!sound_get_kong				= $03	;03: Kong chant (unused)
!sound_neek_hit				= $04	;04: Neek defeated
!sound_swap_kongs			= $05	;05: Swap Kongs
!sound_diddy_hit			= $06	;06: Diddy hit
!sound_dixie_hit			= $07	;07: Dixie hit
!sound_banana				= $08	;08: Collect Banana
!sound_banana_bunch			= $09	;09: Collect Banana Bunch (unused)
!sound_diddy_dizzy			= $0A	;0A: Dizzy stars spinning around Diddy's head
!sound_rambi_charge			= $0B	;0B: Rambi scuffing foot on ground (readying to charge)
!sound_0C				= $0C	;0C: Something breaking (unused?)
!sound_0D				= $0D	;0D: Jumping sound? (unused?)
!sound_zinger_flitter_hit		= $0E	;0E: Zinger defeated
!sound_click_clack_walk			= $0F	;0F: Click Clack walking
!sound_click_clack_hit			= $10	;10: Click Clack defeated
!sound_klobber_skid			= $11	;11: Klobber skidding
!sound_klobber_awaken			= $12	;12: Klobber waking up
!sound_hit_ground			= $13	;13: Diddy/Dixie hitting ground when defeated/Rattly bouncing while idle
!sound_boom				= $14	;14: Boom
!sound_explosion			= $15	;15: Explosion
!sound_klampon_lockjaw_bite		= $16	;16: Lockjaw/Klampon/Snapjaw biting
!sound_klampon_lockjaw_snap		= $17	;17: Klampon clamping teeth while walking/Lockjaw and Snapjaw clamping teeth while preparing to bite
!sound_kremling_hit_1			= $18	;18: Klomp/Klobber/Klampon/Kaboing/Kannon defeated, Rambi hit
!sound_wall_break			= $19	;19: Wall breaking (usually played with 15)
!sound_barrel_blast			= $1A	;1A: Busting Barrel, Barrel Cannon shot, Klobber slamming into walls
!sound_kong_dk_barrel			= $1B	;1B: Kong held captive in DK barrel
!sound_clock_tick			= $1C	;1C: Clock ticking
!sound_rambi_jump			= $1D	;1D: Rambi jump
!sound_blade_swing			= $1E	;1E: Kutlass swinging cutlass/Kleever swinging
!sound_klinger_slide			= $1F	;1F: Klinger sliding down
!sound_dixie_cry			= $20	;20: Dixie crying
!sound_kremkoin_appear_fizz		= $21	;21: Kremkoin appearing (fizz)
!sound_kremkoin_appear_echo		= $22	;22: Kremkoin appearing (echo)
!sound_diddy_juggle			= $23	;23: Diddy juggling
!sound_neek_squeak			= $24	;24: Neek squeaking
!sound_dixie_sip			= $25	;25: Dixie sipping through straw
!sound_dixie_bubble			= $26	;26: Dixie blowing bubble
!sound_letter_k				= $27	;27: Collect KONG letter K
!sound_letter_o				= $28	;28: Collect KONG letter O
!sound_letter_n				= $29	;29: Collect KONG letter N
!sound_letter_g				= $2A	;2A: Collect KONG letter G
!sound_lose_life			= $2B	;2B: Lose life/balloon popping
!sound_life_balloon			= $2C	;2C: Collect Extra Life Balloon
!sound_banana_coin			= $2D	;2D: Collect Banana Coin
!sound_k_rool_note			= $2E	;2E: Read K. Rool's note
!sound_squawks_spit			= $2F	;2F: Squawks spitting
!sound_squawks_flap_1			= $30	;30: Squawks flapping wings 1
!sound_squawks_flap_2			= $31	;31: Squawks flapping wings 2 (lower pitch)
!sound_necky_attack			= $32	;32: Necky ready to dive
!sound_menu_move			= $33	;33: Menu cursor movement
!sound_menu_select			= $34	;34: Menu confirmation
!sound_kremkoin_appear			= $35	;35: Kremkoin appearing
!sound_kremkoin				= $36	;36: Collect Kremkoin
!sound_click_clack_recover		= $37	;37: Click Clack recovering
!sound_gain_life			= $38	;38: Gain life
!sound_animal_crate_break_a		= $39	;39: Animal crate busted (channel 1)
!sound_animal_crate_break_b		= $3A	;3A: Animal crate busted (channel 2)
!sound_animal_crate_break_c		= $3B	;3B: Animal crate busted (channel 3)
!sound_animal_crate_break_d		= $3C	;3C: Animal crate busted (channel 4)
!sound_zinger_drone			= $3D	;3D: Zinger droning
!sound_tempo_up				= $3E	;3E: Increase music tempo by 5 units (used in bonus areas)
!sound_flitter_drone			= $3F	;3F: Flitter droning
!sound_team_up_mount_animal		= $40	;40: Kongs teaming up
!sound_morph_from_animal_a		= $41	;41: Animal buddy becoming item (channel 1)
!sound_morph_from_animal_b		= $42	;42: Animal buddy becoming item (channel 2)
!sound_morph_from_animal_c		= $43	;43: Animal buddy becoming item (channel 3)
!sound_morph_from_animal_d		= $44	;44: Animal buddy becoming item (channel 4)
!sound_squitter_rattly_hit		= $45	;45: Squitter/Rattly hit
!sound_squitter_attack_web		= $46	;46: Squitter shooting an attack web
!sound_squitter_platform_web		= $47	;47: Squitter shooting a platform web
!sound_rattly_hop			= $48	;48: Rattly hopping
!sound_rattly_leap			= $49	;49: Rattly leaping
!sound_cannon_load			= $4A	;4A: Loading Cannon
!sound_cannon_shoot			= $4B	;4B: Firing Cannon
!sound_cannonball_drop			= $4C	;4C: Dropping Cannonball
!sound_squitter_jump			= $4D	;4D: Squitter jumping
!sound_spiny_walk			= $4E	;4E: Spiny walking
!sound_squawks_hit			= $4F	;4F: Squawks hit
!sound_invincibility			= $50	;50: Invincibility
!sound_kruncha_angry			= $51	;51: Kruncha angered
!sound_barrel_roll			= $52	;52: Barrel rolling
!sound_rambi_attack			= $53	;53: Rambi attacking
!sound_rambi_footstep			= $54	;54: Rambi footstep
!sound_morph_to_animal			= $55	;55: Kongs transforming into animal (semi-unused)
!sound_hero_coin			= $56	;56: Collect Hero Coin
!sound_necky_hit			= $57	;57: Necky defeated
!sound_cat_o_9_tails_hit		= $58	;58: Cat O' 9 Tails defeated
!sound_kudgel_hit			= $59	;59: Kudgel hit
!sound_k_rool_down			= $5A	;5A: K. Rool down
!sound_k_rool_splash_1			= $5B	;5B: Kudgel/K. Rool falling into water (channel 1)
!sound_k_rool_splash_2			= $5C	;5C: Kudgel/K. Rool falling into water (channel 2)
!sound_kremling_hit_2 			= $5D	;5D: Klinger/Krook/Kloak defeated
!sound_pause				= $5E	;5E: Pause/unpause game
!sound_wrong_answer 	 		= $5F	;5F: Incorrect answer/unavailable option

;Non-global sounds
;Roller Coaster/Kackle "Coaster"
!sound_coaster_move 			= $60	;60: Roller coaster moving
!sound_barrel_good 			= $61	;61: Breaking Check/+ Barrel
!sound_barrel_bad			= $62	;62: Breaking X/- Barrel
!sound_coaster_race_rank_up		= $63	;63: Climbing in rank (Rickety Race)
!sound_coaster_land			= $64	;64: Roller coaster landing on track
!sound_coaster_move_echo		= $65	;65: Roller coaster moving (echo?)
!sound_firework_fizz			= $66	;66: Firework fizz
!sound_firework_pop			= $67	;67: Firework pop
!sound_firework_whistle			= $68	;68: Firework whistle
!sound_firework_blast			= $69	;69: Firework blast
!sound_coaster_jump			= $6A	;6A: Roller coaster jumping off track
!sound_kackle				= $6D	;6D: Kackle doing what he's named for
!sound_coaster_gate_open		= $6E	;6E: Gate opening (Haunted Hall)

;Ship/Ice/Endings "Aquatic"
!sound_kong_enter_water			= $62	;62: Kong jumping into water
!sound_clapper_bark			= $63	;63: Clapper barking
!sound_enguarde_charge			= $65	;65: Enguarde bill attack 
!sound_enguarde_hit			= $66	;66: Enguarde hit
!sound_clock_tick_copy			= $67	;67: Clock ticking (identical to $1C)
!sound_flotsam_move			= $68	;68: Flotsam moving
!sound_puftup_inflate			= $69	;69: Puftup puffing up
!sound_puftup_burst			= $6A	;6A: Puftup bursting
!sound_kong_swim			= $6B	;6B: Kong paddling
!sound_shuri_spin			= $6C	;6C: Shuri spinning
!sound_clapper_clap			= $6D	;6D: Clapper clapping/hurt by lava (Lava Lagoon)
!sound_clapper_spit			= $6E	;6E: Clapper spitting ice
!sound_ending_boom			= $6F	;6F: Crocodile Isle sinking (channel 1)
!sound_ending_boom_shake		= $70	;70: Crocodile Isle sinking (channel 2)
!sound_ending_beam			= $71	;71: Krocodile Kore beam
!sound_ending_fire			= $72	;72: Krocodile Kore beam (noise channel)
!sound_ending_beam_die			= $73	;73: Krocodile Kore beam dying
!sound_ending_fire_die			= $74	;74: Krocodile Kore beam dying (noise channel)
!sound_ending_k_rool_laugh		= $75	;75: K. Rool laughing
!sound_ending_k_rool_laugh_echo 	= $76	;76: K. Rool laughing (echo)

;Swamp/Enchanted Wood/Mine/Brambles/Wasp Hive "Nature"
!sound_kloak_laugh 			= $64	;64: Kloak laughing
!sound_wind 				= $65	;65: Wind
!sound_splash_1_copy 			= $66	;66: Identical to 60
!sound_splash_2_copy 			= $67	;67: Identical to 61
!sound_stick_honey 			= $68	;68: Sticking to honey
!sound_krockhead_rise_sink		= $6D	;6D: Krockhead rising/sinking
!sound_ghost_rope_appear 		= $70	;70: Ghost rope appearing
!sound_ghost_rope_appear_echo 		= $71	;71: Ghost rope appearing (echo)
!sound_ghost_rope_vanish 		= $72	;72: Ghost rope disappearing
!sound_ghost_rope_vanish_echo 		= $73	;73: Ghost rope disappearing (echo)

;Coaster/Nature
!sound_starting_light_1			= $6B	;6B: Red starting light (Rickety Race/)
!sound_starting_light_2			= $6C	;6C: Green starting light

;Aquatic/Nature
!sound_splash_1 			= $60	;60: Splash
!sound_splash_2 			= $61	;61: Splash (deeper)

;Jungle
!sound_kong_tire_bounce 		= $60	;60: Kong bouncing off of tire
!sound_tire_wall_bounce 		= $61	;61: Tire deflected off of a wall
!sound_tire_appear 			= $62	;62: Tire spawning
!sound_tire_roll			= $63	;63: Tire rolling

;Krow/Kudgel/Kreepy Krow/K. Rool "Boss 1"
!sound_egg_crack			= $60	;60: Egg cracking
!sound_krow_flap			= $61	;61: Krow flapping wings
!sound_krow_hit				= $62	;62: Krow hit with egg
!sound_krow_defeated			= $63	;63: Krow defeated
!sound_krow_grab_egg			= $64	;64: Krow pulling egg from nest
!sound_egg_kudgel_fall			= $65	;65: Egg/Kudgel falling
!sound_k_rool_gun_exhaust		= $68	;68: Blunderbuss flame (short)
!sound_k_rool_cannonball_spikes		= $69	;69: Spikes protruding from/retracting into cannonball
!sound_k_rool_ammo_swirl		= $6A	;6A: K.Rool projectile swirling
!sound_k_rool_ammo_bounce		= $6B	;6B: K.Rool projectile bouncing
!sound_k_rool_gun_exhaust_loop		= $6C	;6C: Blunderbuss flame (repeats indefinitely)
!sound_kudgel_land			= $6D	;6D: Kudgel landing
!sound_klubba_kudgel_swing		= $6F	;6F: Klubba/Kudgel swinging club
!sound_k_rool_gun_suck_whoosh		= $70	;70: K. Rool using blunderbuss as a vacuum (whoosh channel)
!sound_dk_punch_k_rool			= $71	;71: D.K. punching K. Rool
!sound_dk_oof				= $72	;72: D.K. hit
!sound_k_rool_blink			= $73	;73: K. Rool blinking eyes
!sound_k_rool_gun_backfire		= $74	;74: K. Rool's blunderbuss backfiring
!sound_dk_grunt				= $75	;75: Donkey Kong struggling
!sound_k_rool_gun_suck_vroom		= $76	;76: K. Rool using blunderbuss as a vacuum (vroom channel)
!sound_krow_caw				= $79	;79: Krow cawing
!sound_kudgel_defeat_airborne		= $7A	;7A: Kudgel/K. Rool (Krocodile Kore) airborne after defeat
!sound_boss_1_7B			= $7B	;7B: Similar to 1A (unused?)
!sound_kreepy_krow_defeated		= $7C	;7C: Kreepy Krow destroyed

;Lava/Castle/Kleever/King Zing "Boss 2"
!sound_kleever_defeat_spin		= $68	;68: Broken Kleever spiraling to his demise
!sound_lava_bubble_1			= $69	;69: Lava bubbling 1
!sound_lava_bubble_2			= $6A	;6A: Lava bubbling 2
!sound_kleever_hit			= $6B	;6B: Kleever hit with cannonball
!sound_kleever_fireball_1		= $6C	;6C: Fireball flying
!sound_lava_bubble_3			= $6D	;6D: Lava bubbling 3
!sound_kleever_fireball_2		= $79	;79: Fireball sound
!sound_king_zing_hit			= $7A	;7A: King Zing hit
!sound_king_zing_spawn_zingers		= $7B	;7B: King Zing spawning Zingers
!sound_king_zing_spike_shot		= $7C	;7C: King Zing firing spikes
!sound_king_zing_egg_bounce		= $7D	;7D: Squawks egg bouncing off King Zing
!sound_lava_bubble_4			= $7E	;7E: Lava bubbling 4
!sound_king_zing_defeated		= $7F	;7F: King Zing defeated

;Nature/Boss 2
!sound_krockhead_green 			= $6E	;6E: Landing on a Green Krockhead
!sound_krockhead_brown 			= $6F	;6F: Bouncing on a Brown Krockhead

;Boss 1/Boss 2
!sound_hooks_appear			= $66	;66: Hanging hooks appearing (Kleever's Kiln/Kreepy Krow)
!sound_debris_fall			= $67	;67: Piece of debris falling (Kleever's Kiln/K. Rool Duel)
!sound_kongs_scared			= $78	;78: Kongs scared

!music_null				= $0000
!music_island_map			= $0001
!music_main_theme			= $0002
!music_swamp				= $0003
!music_swanky				= $0004
!music_forest				= $0005
!music_ship_deck			= $0006
!music_mine				= $0007
!music_funky				= $0008
!music_brambles				= $0009
!music_klubba				= $000A
!music_wasp_hive			= $000B
!music_wrinkly				= $000C
!music_lava				= $000D
!music_roller_coaster			= $000E
!music_bonus				= $000F
!music_ship_hold			= $0010
!music_fanfare				= $0011
!music_ship_deck_2			= $0012
!music_rescue_kong			= $0013
!music_game_over			= $0014
!music_big_boss				= $0015
!music_castle				= $0016
!music_haunted				= $0017
!music_file_select			= $0018
!music_cranky				= $0019
!music_ice				= $001A
!music_jungle				= $001B
!music_lost_world			= $001C
!music_rigging				= $001D
!music_credits				= $001E
!music_k_rool				= $001F
!music_bonus_2				= $0020
!music_big_boss_2			= $0021
!music_bonus_3				= $0022
!music_bonus_4				= $0023
!music_secret_ending			= $0024

!level_web_woods_unused			= $0000
!level_glimmers_galleon			= $0001
!level_rambi_rumble			= $0002
!level_pirate_panic			= $0003
!level_gangplank_galley			= $0004
!level_rattle_battle			= $0005
!level_glimmers_galleon_exit_room	= $0006
!level_hot_head_hop			= $0007
!level_red_hot_ride			= $0008
!level_krows_nest			= $0009
!level_slime_climb			= $000A
!level_topsail_trouble			= $000B
!level_mainbrace_mayhem			= $000C
!level_kreepy_krow			= $000D
!level_target_terror			= $000E
!level_rickety_race			= $000F
!level_haunted_hall			= $0010
!level_hornet_hole			= $0011
!level_rambi_rumble_rambi_room		= $0012
!level_parrot_chute_panic		= $0013
!level_lava_lagoon			= $0014
!level_lockjaws_locker			= $0015
!level_fiery_furnace			= $0016
!level_web_woods			= $0017
!level_gusty_glade			= $0018
!level_ghostly_grove			= $0019
!level_topsail_trouble_warp_room	= $001A
!level_pirate_panic_k_rools_cabin	= $001B
!level_hot_head_hop_bonus_2		= $001C
!level_pirate_panic_warp_room		= $001D
!level_target_terror_exit_room		= $001E
!level_web_woods_room_unused		= $001F
!level_mainbrace_mayhem_warp_room	= $0020
!level_kleevers_kiln			= $0021
!level_rattle_battle_rattly_room	= $0022
!level_windy_well			= $0023
!level_squawks_shaft			= $0024
!level_kannons_klaim			= $0025
!level_parrot_chute_panic_warp_room	= $0026
!level_kannons_klaim_warp_room		= $0027
!level_barrel_bayou			= $0028
!level_krockhead_klamber		= $0029
!level_web_woods_squitter_room		= $002A
!level_barrel_bayou_warp_room		= $002B
!level_mudhole_marsh			= $002C
!level_bramble_blast			= $002D
!level_bramble_scramble			= $002E
!level_screechs_sprint			= $002F
!level_30				= $0030
!level_31				= $0031
!level_32				= $0032
!level_33				= $0033
!level_34				= $0034
!level_35				= $0035
!level_36				= $0036
!level_37				= $0037
!level_38				= $0038
!level_39				= $0039
!level_3A				= $003A
!level_3B				= $003B
!level_3C				= $003C
!level_3D				= $003D
!level_3E				= $003E
!level_3F				= $003F
!level_40				= $0040
!level_41				= $0041
!level_42				= $0042
!level_43				= $0043
!level_44				= $0044
!level_45				= $0045
!level_46				= $0046
!level_47				= $0047
!level_48				= $0048
!level_49				= $0049
!level_4A				= $004A
!level_4B				= $004B
!level_4C				= $004C
!level_4D				= $004D
!level_4E				= $004E
!level_4F				= $004F
!level_50				= $0050
!level_51				= $0051
!level_52				= $0052
!level_53				= $0053
!level_54				= $0054
!level_55				= $0055
!level_56				= $0056
!level_57				= $0057
!level_58				= $0058
!level_59				= $0059
!level_5A				= $005A
!level_5B				= $005B
!level_5C				= $005C
!level_5D				= $005D
!level_5E				= $005E
!level_5F				= $005F
!level_king_zing_sting			= $0060
!level_k_rool_duel			= $0061
!level_castle_crush			= $0062
!level_kudgels_kontest			= $0063
!level_64				= $0064
!level_65				= $0065
!level_66				= $0066
!level_67				= $0067
!level_lockjaws_locker_warp_room	= $0068
!level_lava_lagoon_warp_room		= $0069
!level_squawks_shaft_warp_room		= $006A
!level_krocodile_kore			= $006B
!level_arctic_abyss			= $006C
!level_chain_link_chamber		= $006D
!level_toxic_tower			= $006E
!level_pirate_panic_bonus_1		= $006F
!level_pirate_panic_bonus_2		= $0070
!level_gangplank_galley_bonus_2		= $0071
!level_rattle_battle_bonus_1		= $0072
!level_rattle_battle_bonus_3		= $0073
!level_hot_head_hop_bonus_3		= $0074
!level_hot_head_hop_bonus_1		= $0075
!level_red_hot_ride_bonus_1		= $0076
!level_red_hot_ride_bonus_2		= $0077
!level_mainbrace_mayhem_bonus_1		= $0078
!level_mainbrace_mayhem_bonus_2		= $0079
!level_slime_climb_bonus_1		= $007A
!level_topsail_trouble_bonus_1		= $007B
!level_topsail_trouble_bonus_2		= $007C
!level_mainbrace_mayhem_bonus_3		= $007D
!level_slime_climb_bonus_2		= $007E
!level_rattle_battle_bonus_2		= $007F
!level_klobber_karnage			= $0080
!level_lockjaws_locker_bonus_1		= $0081
!level_glimmers_galleon_bonus_2		= $0082
!level_lava_lagoon_bonus_1		= $0083
!level_glimmers_galleon_bonus_1		= $0084
!level_ghostly_grove_bonus_1		= $0085
!level_gusty_glade_bonus_1		= $0086
!level_gusty_glade_bonus_2		= $0087
!level_ghostly_grove_bonus_2		= $0088
!level_barrel_bayou_bonus_1		= $0089
!level_barrel_bayou_bonus_2		= $008A
!level_krockhead_klamber_bonus_1	= $008B
!level_mudhole_marsh_bonus_1		= $008C
!level_mudhole_marsh_bonus_2		= $008D
!level_hot_head_hop_warp_room		= $008E
!level_clappers_cavern			= $008F
!level_animal_antics_enguarde_area	= $0090
!level_clappers_cavern_bonus_1		= $0091
!level_clappers_cavern_bonus_2		= $0092
!level_arctic_abyss_bonus_1		= $0093
!level_black_ice_battle_bonus_1		= $0094
!level_arctic_abyss_bonus_2		= $0095
!level_black_ice_battle			= $0096
!level_klobber_karnage_bonus_1		= $0097
!level_jungle_jinx_bonus_1		= $0098
!level_jungle_jinx			= $0099
!level_animal_antics_rambi_area		= $009A
!level_animal_antics_squitter_area	= $009B
!level_animal_antics_rattly_area	= $009C
!level_animal_antics_bonus_1		= $009D
!level_fiery_furnace_bonus_1		= $009E
!level_animal_antics_squawks_area	= $009F
!level_bramble_blast_bonus_2		= $00A0
!level_target_terror_bonus_1		= $00A1
!level_bramble_scramble_bonus_1		= $00A2
!level_windy_well_bonus_2		= $00A3
!level_web_woods_bonus_1		= $00A4
!level_toxic_tower_bonus_1		= $00A5
!level_bramble_blast_bonus_1		= $00A6
!level_screechs_sprint_bonus_1		= $00A7
!level_gangplank_galley_bonus_1		= $00A8
!level_squawks_shaft_bonus_3		= $00A9
!level_kannons_klaim_bonus_3		= $00AA
!level_kannons_klaim_bonus_1		= $00AB
!level_squawks_shaft_bonus_1		= $00AC
!level_kannons_klaim_bonus_2		= $00AD
!level_hornet_hole_bonus_1		= $00AE
!level_parrot_chute_panic_bonus_2	= $00AF
!level_hornet_hole_bonus_3		= $00B0
!level_parrot_chute_panic_bonus_1	= $00B1
!level_rambi_rumble_bonus_2		= $00B2
!level_hornet_hole_bonus_2		= $00B3
!level_rambi_rumble_bonus_1		= $00B4
!level_chain_link_chamber_bonus_1	= $00B5
!level_chain_link_chamber_bonus_2	= $00B6
!level_castle_crush_bonus_1		= $00B7
!level_castle_crush_bonus_2		= $00B8
!level_stronghold_showdown		= $00B9
!level_squawks_shaft_bonus_2		= $00BA
!level_web_woods_bonus_2		= $00BB
!level_windy_well_bonus_1		= $00BC
!level_haunted_hall_bonus_1		= $00BD
!level_rickety_race_exit		= $00BE
!level_haunted_hall_exit		= $00BF
!level_haunted_hall_bonus_3		= $00C0
!level_target_terror_bonus_2		= $00C1
!level_haunted_hall_bonus_2		= $00C2
!level_rickety_race_bonus_1		= $00C3
!level_C4				= $00C4
!level_C5				= $00C5
!level_C6				= $00C6
!level_C7				= $00C7
!level_C8				= $00C8
!level_C9				= $00C9
!level_CA				= $00CA
!level_CB				= $00CB
!level_CC				= $00CC
!level_CD				= $00CD
!level_CE				= $00CE
!level_CF				= $00CF
!level_D0				= $00D0
!level_D1				= $00D1
!level_D2				= $00D2
!level_D3				= $00D3
!level_D4				= $00D4
!level_D5				= $00D5
!level_D6				= $00D6
!level_D7				= $00D7
!level_D8				= $00D8
!level_D9				= $00D9
!level_DA				= $00DA
!level_DB				= $00DB
!level_DC				= $00DC
!level_DD				= $00DD
!level_DE				= $00DE
!level_DF				= $00DF