audio_core:
	incsrc "audio/audio_core.asm"
audio_core_end:

audio_engine:
	incsrc "audio/audio_engine.asm"
audio_engine_end:

sample_table:
	dl brr_sample_EECE62			;00
	dl brr_sample_EECFFC			;01
	dl brr_sample_EED1CC			;02
	dl brr_sample_EED47C			;03
	dl brr_sample_EED63A			;04
	dl brr_sample_EED87E			;05
	dl brr_sample_EEDC73			;06
	dl brr_sample_EEE055			;07
	dl brr_sample_EEE1AF			;08
	dl brr_sample_EEE8CE			;09
	dl brr_sample_EEE9A2			;0A
	dl brr_sample_EEEE4B			;0B
	dl brr_sample_EEF6B6			;0C
	dl brr_sample_EEF8C5			;0D
	dl brr_sample_EEFDC8			;0E
	dl brr_sample_EEFFDF			;0F
	dl brr_sample_EF001A			;10
	dl brr_sample_EF05BE			;11
	dl brr_sample_EF0997			;12
	dl brr_sample_EF120B			;13
	dl brr_sample_EF1EDC			;14
	dl brr_sample_EF288C			;15
	dl brr_sample_EF2F7E			;16
	dl brr_sample_EF3288			;17
	dl brr_sample_EF335C			;18
	dl brr_sample_EF35BC			;19
	dl brr_sample_EF37B0			;1A
	dl brr_sample_EF3A10			;1B
	dl brr_sample_EF3D5A			;1C
	dl brr_sample_EF4512			;1D
	dl brr_sample_EF4C79			;1E
	dl brr_sample_EF5053			;1F
	dl brr_sample_EF5910			;20
	dl brr_sample_EF5927			;21
	dl brr_sample_EF596B			;22
	dl brr_sample_EF5D96			;23
	dl brr_sample_EF63EF			;24
	dl brr_sample_EF66CD			;25
	dl brr_sample_EF66ED			;26
	dl brr_sample_EF6731			;27
	dl brr_sample_EF6748			;28
	dl brr_sample_EF69CC			;29
	dl brr_sample_EF720B			;2A
	dl brr_sample_EF72FA			;2B
	dl brr_sample_EF7A2B			;2C
	dl brr_sample_EF8006			;2D
	dl brr_sample_EF818E			;2E
	dl brr_sample_EF8880			;2F
	dl brr_sample_EF90BF			;30
	dl brr_sample_EF90D6			;31
	dl brr_sample_EF943B			;32
	dl brr_sample_EF9677			;33
	dl brr_sample_EFA228			;34
	dl brr_sample_EFA7E8			;35
	dl brr_sample_EFA81A			;36
	dl brr_sample_EFAC18			;37
	dl brr_sample_EFAC4A			;38
	dl brr_sample_EFAC7C			;39
	dl brr_sample_EFACAE			;3A
	dl brr_sample_EFACE0			;3B
	dl brr_sample_EFAD12			;3C
	dl brr_sample_EFAD44			;3D
	dl brr_sample_EFAD76			;3E
	dl brr_sample_EFADA8			;3F
	dl brr_sample_EFADDA			;40
	dl brr_sample_EFAE0C			;41
	dl brr_sample_EFAE3E			;42
	dl brr_sample_EFAE70			;43
	dl brr_sample_EFAEA2			;44
	dl brr_sample_EFAED4			;45
	dl brr_sample_EFAF06			;46
	dl brr_sample_EFAF38			;47
	dl brr_sample_EFAF6A			;48
	dl brr_sample_EFAF9C			;49
	dl brr_sample_EFAFCE			;4A
	dl brr_sample_EFB000			;4B
	dl brr_sample_EFB032			;4C
	dl brr_sample_EFB064			;4D
	dl brr_sample_EFB096			;4E
	dl brr_sample_EFB0C8			;4F
	dl brr_sample_EFB0FA			;50
	dl brr_sample_EFB11A			;51
	dl brr_sample_EFB13A			;52
	dl brr_sample_EFB15A			;53
	dl brr_sample_EFB17A			;54
	dl brr_sample_EFB19A			;55
	dl brr_sample_EFB1BA			;56
	dl brr_sample_EFB1DA			;57
	dl brr_sample_EFB1FA			;58
	dl brr_sample_EFB21A			;59
	dl brr_sample_EFB23A			;5A
	dl brr_sample_EFB26B			;5B
	dl brr_sample_EFB29C			;5C
	dl brr_sample_EFB2CD			;5D
	dl brr_sample_EFB2FE			;5E
	dl brr_sample_EFB32F			;5F
	dl brr_sample_EFB360			;60
	dl brr_sample_EFB391			;61
	dl brr_sample_EFB3C2			;62
	dl brr_sample_EFB3F3			;63
	dl brr_sample_EFB424			;64
	dl brr_sample_EFB455			;65
	dl brr_sample_EFB486			;66
	dl brr_sample_EFB4B7			;67
	dl brr_sample_EFB4E8			;68
	dl brr_sample_EFB519			;69
	dl brr_sample_EFB54A			;6A
	dl brr_sample_EFB57B			;6B
	dl brr_sample_EFB5AC			;6C
	dl brr_sample_EFB5DD			;6D
	dl brr_sample_EFB60E			;6E
	dl brr_sample_EFB63F			;6F
	dl brr_sample_EFB670			;70
	dl brr_sample_EFB6A1			;71
	dl brr_sample_EFB6D2			;72
	dl brr_sample_EFB703			;73
	dl brr_sample_EFB734			;74
	dl brr_sample_EFB765			;75
	dl brr_sample_EFB796			;76
	dl brr_sample_EFB7C7			;77
	dl brr_sample_EFB7F8			;78
	dl brr_sample_EFB829			;79
	dl brr_sample_EFB85A			;7A
	dl brr_sample_EFB912			;7B
	dl brr_sample_EFD404			;7C
	dl brr_sample_EFDB08			;7D
	dl brr_sample_EFE26F			;7E
	dl brr_sample_EFE8F5			;7F
	dl brr_sample_EFECBD			;80
	dl brr_sample_EFEDF4			;81
	dl brr_sample_EFEEF5			;82
	dl brr_sample_EFF035			;83
	dl brr_sample_EFF11B			;84
	dl brr_sample_EFF894			;85
	dl brr_sample_EFFAFC			;86
	dl brr_sample_EFFECD			;87
	dl brr_sample_F00162			;88
	dl brr_sample_F0062F			;89
	dl brr_sample_F00823			;8A
	dl brr_sample_F009FC			;8B
	dl brr_sample_F00A1C			;8C
	dl brr_sample_F00FAF			;8D
	dl brr_sample_F01674			;8E
	dl brr_sample_F01B6E			;8F
	dl brr_sample_F01BA9			;90
	dl brr_sample_F02667			;91
	dl brr_sample_F02800			;92
	dl brr_sample_F02988			;93
	dl brr_sample_F02C2F			;94
	dl brr_sample_F03A17			;95
	dl brr_sample_F03A5B			;96
	dl brr_sample_F03B1D			;97
	dl brr_sample_F03D2B			;98
	dl brr_sample_F04854			;99
	dl brr_sample_F057E3			;9A
	dl brr_sample_F05FFD			;9B
	dl brr_sample_F073F1			;9C
	dl brr_sample_F08A2D			;9D
	dl brr_sample_F09BFB			;9E
	dl brr_sample_F0A157			;9F
	dl brr_sample_F0A5FF			;A0
	dl brr_sample_F0AE2B			;A1
	dl brr_sample_F0B2B0			;A2
	dl brr_sample_F0B7FA			;A3
	dl brr_sample_F0BD45			;A4
	dl brr_sample_F0C93E			;A5
	dl brr_sample_F0CD45			;A6
	dl brr_sample_F0DC8C			;A7
	dl brr_sample_F0F65E			;A8
	dl brr_sample_F1078A			;A9
	dl brr_sample_F10F26			;AA
	dl brr_sample_F117C7			;AB
	dl brr_sample_F11EEE			;AC
	dl brr_sample_F11F0D			;AD
	dl brr_sample_F12A9A			;AE
	dl brr_sample_F133B1			;AF
	dl brr_sample_F139DC			;B0
	dl brr_sample_F14B98			;B1
	dl brr_sample_F14DA6			;B2
	dl brr_sample_F15542			;B3
	dl brr_sample_F15C0F			;B4
	dl brr_sample_F1663C			;B5
	dl brr_sample_F16F1C			;B6
	dl brr_sample_F179D9			;B7
	dl brr_sample_F18004			;B8
	dl brr_sample_F186E4			;B9
	dl brr_sample_F192E5			;BA
	dl brr_sample_F19304			;BB
	dl brr_sample_F19311			;BC
	dl brr_sample_F1946B			;BD
	dl brr_sample_F1A225			;BE
	dl brr_sample_F1A811			;BF
	dl brr_sample_F1AD5B			;C0
	dl brr_sample_F1B55A			;C1
	dl brr_sample_F1B795			;C2
	dl brr_sample_F1B9D0			;C3
	dl brr_sample_F1BC0B			;C4
	dl brr_sample_F1C03F			;C5
	dl brr_sample_F1C916			;C6
	dl brr_sample_F1CC05			;C7
	dl brr_sample_F1CD4E			;C8
	dl brr_sample_F1CFF6			;C9
	dl brr_sample_F1D190			;CA
	dl brr_sample_F1D68A			;CB
	dl brr_sample_F1DF7C			;CC
	dl brr_sample_F1E973			;CD
	dl brr_sample_F1EDA6			;CE
	dl brr_sample_F1F188			;CF
	dl brr_sample_F1F195			;D0
	dl brr_sample_F1F337			;D1
	dl brr_sample_F1F92C			;D2
	dl brr_sample_F20080			;D3
	dl brr_sample_F202BB			;D4
	dl brr_sample_F218D4			;D5
	dl brr_sample_F21E5D			;D6
	dl brr_sample_F22132			;D7
	dl brr_sample_F225B6			;D8
	dl brr_sample_F22C44			;D9
	dl brr_sample_F232D2			;DA
	dl !null_pointer			;DB
	dl !null_pointer			;DC
	dl !null_pointer			;DD
	dl !null_pointer			;DE
	dl !null_pointer			;DF
	dl !null_pointer			;E0
	dl !null_pointer			;E1
	dl !null_pointer			;E2
	dl !null_pointer			;E3
	dl !null_pointer			;E4
	dl !null_pointer			;E5
	dl !null_pointer			;E6
	dl !null_pointer			;E7
	dl !null_pointer			;E8
	dl !null_pointer			;E9
	dl !null_pointer			;EA
	dl !null_pointer			;EB
	dl !null_pointer			;EC
	dl !null_pointer			;ED
	dl !null_pointer			;EE
	dl !null_pointer			;EF
	dl !null_pointer			;F0
	dl !null_pointer			;F1
	dl !null_pointer			;F2
	dl !null_pointer			;F3
	dl !null_pointer			;F4
	dl !null_pointer			;F5
	dl !null_pointer			;F6
	dl !null_pointer			;F7
	dl !null_pointer			;F8
	dl !null_pointer			;F9
	dl !null_pointer			;FA
	dl !null_pointer			;FB
	dl !null_pointer			;FC
	dl !null_pointer			;FD
	dl !null_pointer			;FE
	dl !null_pointer			;FF

song_data:
	%offset(song_sample_maps, 3)
	dl null_song_data, null_sample_map			;00
	dl island_map_song_data, island_map_sample_map		;01
	dl main_theme_song_data, main_theme_sample_map		;02
	dl swamp_song_data, swamp_sample_map			;03
	dl swanky_song_data, swanky_sample_map			;04
	dl forest_song_data, forest_sample_map			;05
	dl ship_deck_song_data, ship_deck_sample_map		;06
	dl mine_song_data, mine_sample_map			;07
	dl funky_song_data, funky_sample_map			;08
	dl brambles_song_data, brambles_sample_map		;09
	dl klubba_song_data, klubba_sample_map			;0A
	dl wasp_hive_song_data, wasp_hive_sample_map		;0B
	dl wrinkly_song_data, wrinkly_sample_map		;0C
	dl lava_song_data, lava_sample_map			;0D
	dl roller_coaster_song_data, roller_coaster_sample_map	;0E
	dl bonus_song_data, bonus_sample_map			;0F
	dl ship_hold_song_data, ship_hold_sample_map		;10
	dl fanfare_song_data, fanfare_sample_map		;11
	dl ship_deck_2_song_data, ship_deck_2_sample_map	;12
	dl rescue_kong_song_data, rescue_kong_sample_map	;13
	dl game_over_song_data, game_over_sample_map		;14
	dl big_boss_song_data, big_boss_sample_map		;15
	dl castle_song_data, castle_sample_map			;16
	dl haunted_song_data, haunted_sample_map		;17
	dl file_select_song_data, file_select_sample_map	;18
	dl cranky_song_data, cranky_sample_map			;19
	dl ice_song_data, ice_sample_map			;1A
	dl jungle_song_data, jungle_sample_map			;1B
	dl lost_world_song_data, lost_world_sample_map		;1C
	dl rigging_song_data, rigging_sample_map		;1D
	dl credits_song_data, credits_sample_map		;1E
	dl krool_song_data, krool_sample_map			;1F
	dl bonus_song_data, bonus_sample_map_2			;20
	dl big_boss_song_data, big_boss_sample_map_2		;21
	dl bonus_song_data, bonus_sample_map			;22
	dl bonus_song_data, bonus_sample_map_3			;23
	dl secret_ending_song_data, secret_ending_sample_map	;24
	dl bonus_song_data, bonus_sample_map_4			;25
	dl DATA_F2E728, DATA_EE1935				;26
	dl DATA_F2E72C, DATA_EE1937				;27
	db $00, $00, $00

DATA_EE1179:
	db $00, $00

DATA_EE117B:
	%offset(DATA_EE117D, 2)
	dl dummy_sfx_data					;00
	dl dummy_sfx_data					;01
	dl dummy_sfx_data					;02
	dl swamp_forest_mine_brambles_hive_sfx_data		;03
	dl swamp_forest_mine_brambles_hive_sfx_data		;04
	dl swamp_forest_mine_brambles_hive_sfx_data		;05
	dl ship_ice_ending_sfx_data				;06
	dl swamp_forest_mine_brambles_hive_sfx_data		;07
	dl dummy_sfx_data					;08
	dl swamp_forest_mine_brambles_hive_sfx_data		;09
	dl boss_1_sfx_data					;0A
	dl swamp_forest_mine_brambles_hive_sfx_data		;0B
	dl dummy_sfx_data					;0C
	dl lava_castle_boss_2_sfx_data				;0D
	dl roller_coaster_sfx_data				;0E
	dl swamp_forest_mine_brambles_hive_sfx_data		;0F
	dl ship_ice_ending_sfx_data				;10
	dl dummy_sfx_data					;11
	dl ship_ice_ending_sfx_data				;12
	dl boss_1_sfx_data					;13
	dl dummy_sfx_data					;14
	dl boss_1_sfx_data					;15
	dl lava_castle_boss_2_sfx_data				;16
	dl roller_coaster_sfx_data				;17
	dl dummy_sfx_data					;18
	dl dummy_sfx_data					;19
	dl ship_ice_ending_sfx_data				;1A
	dl jungle_sfx_data					;1B
	dl dummy_sfx_data					;1C
	dl ship_ice_ending_sfx_data				;1D
	dl ship_ice_ending_sfx_data				;1E
	dl boss_1_sfx_data					;1F
	dl roller_coaster_sfx_data				;20
	dl lava_castle_boss_2_sfx_data				;21
	dl lava_castle_boss_2_sfx_data				;22
	dl ship_ice_ending_sfx_data				;23
	dl ship_ice_ending_sfx_data				;24
	dl ship_ice_ending_sfx_data				;25
	dl dummy_sfx_data					;26
	dl dummy_sfx_data					;27
	dl dummy_sfx_data					;28
	dl !null_pointer					;29


global_sample_map:
	dw !sample_01
	dw !sample_02
	dw !sample_03
	dw !sample_04
	dw !sample_06
	dw !sample_08
	dw !sample_07
	dw !sample_05
	dw !sample_00
	dw !sample_A5
	dw !sample_0C
	dw !sample_09
	dw !sample_11
	dw !sample_0A
	dw !sample_8B
	dw !sample_43
	dw !sample_47
	dw !sample_49
	dw !sample_4B
	dw !sample_4D
	dw $FFFF

null_sample_map:
	dw !sample_94
	dw !sample_15
	dw !sample_AB
	dw !sample_C4
	dw !sample_CD
	dw !sample_D3
	dw !sample_0D
	dw !sample_0E
	dw !sample_0B
	dw !sample_9A
	dw !sample_0F
	dw !sample_10
	dw !sample_2B
	dw !sample_D8
	dw !sample_BC
	dw !sample_A1
	dw !sample_9F
	dw !sample_C6
	dw !sample_9D
	dw !sample_CC
	dw $FFFF

island_map_sample_map:
	dw !sample_1D
	dw !sample_1C
	dw !sample_A2
	dw !sample_A3
	dw !sample_A4
	dw !sample_14
	dw !sample_9A
	dw !sample_94
	dw !sample_10
	dw !sample_8F
	dw $FFFF

main_theme_sample_map:
	dw !sample_1E
	dw !sample_1F
	dw !sample_20
	dw !sample_21
	dw !sample_22
	dw !sample_23
	dw !sample_24
	dw !sample_A2
	dw !sample_A4
	dw !sample_A3
	dw !sample_14
	dw !sample_2B
	dw $FFFF

swamp_sample_map:
	dw !sample_14
	dw !sample_15
	dw !sample_88
	dw !sample_89
	dw !sample_17
	dw !sample_26
	dw !sample_27
	dw !sample_1C
	dw !sample_25
	dw !sample_29
	dw !sample_22
	dw !sample_2B
	dw !sample_28
	dw !sample_2A
	dw !sample_2C
	dw !sample_50
	dw !sample_15
	dw !sample_18
	dw !sample_8F
	dw !sample_0E
	dw !sample_0B
	dw !sample_9A
	dw !sample_0D
	dw !sample_0F
	dw !sample_9F
	dw !sample_C6
	dw !sample_D3
	dw !sample_C4
	dw !sample_A1
	dw !sample_D7
	dw !sample_D8
	dw !sample_94
	dw !sample_10
	dw $FFFF

swanky_sample_map:
	dw !sample_14
	dw !sample_8C
	dw !sample_A2
	dw !sample_18
	dw !sample_19
	dw !sample_8D
	dw !sample_1B
	dw !sample_8E
	dw !sample_2B
	dw !sample_8F
	dw $FFFF

forest_sample_map:
	dw !sample_37
	dw !sample_39
	dw !sample_3B
	dw !sample_3D
	dw !sample_3F
	dw !sample_41
	dw !sample_45
	dw !sample_48
	dw !sample_4A
	dw !sample_4C
	dw !sample_4E
	dw !sample_4F
	dw !sample_2D
	dw !sample_8A
	dw !sample_14
	dw !sample_8D
	dw !sample_32
	dw !sample_A3
	dw !sample_2F
	dw !sample_2E
	dw !sample_21
	dw !sample_29
	dw !sample_15
	dw !sample_8F
	dw !sample_50
	dw !sample_51
	dw !sample_52
	dw !sample_53
	dw !sample_54
	dw !sample_55
	dw !sample_56
	dw !sample_57
	dw !sample_58
	dw !sample_59
	dw !sample_C4
	dw !sample_A1
	dw !sample_0B
	dw !sample_9A
	dw !sample_0E
	dw !sample_C6
	dw !sample_0F
	dw !sample_10
	dw !sample_D3
	dw !sample_9F
	dw !sample_0D
	dw !sample_D7
	dw !sample_9D
	dw $FFFF

ship_deck_sample_map:
	dw !sample_9E
	dw !sample_A8
	dw !sample_A7
	dw !sample_8F
	dw !sample_1E
	dw !sample_13
	dw !sample_A0
	dw !sample_21
	dw !sample_22
	dw !sample_24
	dw !sample_94
	dw !sample_9F
	dw !sample_0B
	dw !sample_9A
	dw !sample_0D
	dw !sample_9F
	dw !sample_C6
	dw !sample_53
	dw !sample_D8
	dw $FFFF

mine_sample_map:
	dw !sample_B3
	dw !sample_2F
	dw !sample_B2
	dw !sample_AD
	dw !sample_AE
	dw !sample_8B
	dw !sample_18
	dw !sample_14
	dw !sample_B4
	dw !sample_1A
	dw !sample_2B
	dw !sample_39
	dw !sample_3B
	dw !sample_3D
	dw !sample_3F
	dw !sample_41
	dw !sample_43
	dw !sample_45
	dw !sample_47
	dw !sample_48
	dw !sample_49
	dw !sample_4A
	dw !sample_4B
	dw !sample_4C
	dw !sample_4D
	dw !sample_4E
	dw !sample_4F
	dw !sample_8F
	dw !sample_9F
	dw !sample_0F
	dw !sample_10
	dw !sample_A1
	dw !sample_BC
	dw !sample_C6
	dw !sample_0E
	dw !sample_C4
	dw !sample_D7
	dw !sample_0B
	dw !sample_9A
	dw !sample_0D
	dw !sample_9D
	dw $FFFF

funky_sample_map:
	dw !sample_7A
	dw !sample_18
	dw !sample_7B
	dw !sample_7C
	dw !sample_7D
	dw !sample_7E
	dw !sample_7F
	dw !sample_80
	dw !sample_81
	dw !sample_82
	dw !sample_83
	dw !sample_84
	dw !sample_85
	dw !sample_2B
	dw !sample_8F
	dw $FFFF

brambles_sample_map:
	dw !sample_15
	dw !sample_14
	dw !sample_18
	dw !sample_2E
	dw !sample_34
	dw !sample_8E
	dw !sample_1B
	dw !sample_33
	dw !sample_35
	dw !sample_B3
	dw !sample_8F
	dw !sample_28
	dw !sample_A6
	dw !sample_50
	dw !sample_51
	dw !sample_52
	dw !sample_53
	dw !sample_54
	dw !sample_55
	dw !sample_56
	dw !sample_57
	dw !sample_58
	dw !sample_59
	dw !sample_37
	dw !sample_39
	dw !sample_3B
	dw !sample_3D
	dw !sample_3F
	dw !sample_41
	dw !sample_45
	dw !sample_48
	dw !sample_4A
	dw !sample_4C
	dw !sample_4E
	dw !sample_4F
	dw !sample_0D
	dw !sample_A1
	dw !sample_BC
	dw !sample_C6
	dw !sample_0E
	dw !sample_0B
	dw !sample_9A
	dw !sample_D3
	dw !sample_C4
	dw !sample_9D
	dw !sample_D8
	dw !sample_9F
	dw !sample_10
	dw !sample_0F
	dw $FFFF

klubba_sample_map:
	dw !sample_A2
	dw !sample_21
	dw !sample_14
	dw !sample_1E
	dw !sample_B6
	dw !sample_A4
	dw !sample_A5
	dw !sample_2B
	dw !sample_8F
	dw $FFFF

wasp_hive_sample_map:
	dw !sample_14
	dw !sample_15
	dw !sample_90
	dw !sample_28
	dw !sample_8F
	dw !sample_8E
	dw !sample_91
	dw !sample_92
	dw !sample_93
	dw !sample_2E
	dw !sample_D5
	dw !sample_B5
	dw !sample_1C
	dw !sample_0E
	dw !sample_0D
	dw !sample_0F
	dw !sample_C6
	dw !sample_10
	dw !sample_C6
	dw !sample_A1
	dw !sample_D7
	dw !sample_9F
	dw !sample_A9
	dw !sample_D8
	dw !sample_BC
	dw $FFFF

wrinkly_sample_map:
	dw !sample_B8
	dw !sample_D6
	dw !sample_C0
	dw !sample_D4
	dw !sample_D1
	dw !sample_C5
	dw !sample_88
	dw !sample_89
	dw !sample_97
	dw !sample_2B
	dw !sample_8F
	dw $FFFF

lava_sample_map:
	dw !sample_8D
	dw !sample_19
	dw !sample_18
	dw !sample_D4
	dw !sample_A0
	dw !sample_14
	dw !sample_8D
	dw !sample_AF
	dw !sample_8E
	dw !sample_21
	dw !sample_39
	dw !sample_3B
	dw !sample_3D
	dw !sample_3F
	dw !sample_41
	dw !sample_45
	dw !sample_48
	dw !sample_4A
	dw !sample_4C
	dw !sample_4E
	dw !sample_8F
	dw !sample_A9
	dw !sample_AA
	dw !sample_0E
	dw !sample_0D
	dw !sample_0B
	dw !sample_9A
	dw !sample_0F
	dw !sample_C6
	dw !sample_10
	dw !sample_D7
	dw !sample_9F
	dw $FFFF

roller_coaster_sample_map:
	dw !sample_14
	dw !sample_5A
	dw !sample_5B
	dw !sample_5C
	dw !sample_5D
	dw !sample_5E
	dw !sample_5F
	dw !sample_60
	dw !sample_61
	dw !sample_62
	dw !sample_63
	dw !sample_64
	dw !sample_65
	dw !sample_66
	dw !sample_67
	dw !sample_68
	dw !sample_69
	dw !sample_6A
	dw !sample_6B
	dw !sample_6C
	dw !sample_6D
	dw !sample_6E
	dw !sample_6F
	dw !sample_70
	dw !sample_71
	dw !sample_72
	dw !sample_73
	dw !sample_74
	dw !sample_75
	dw !sample_76
	dw !sample_77
	dw !sample_78
	dw !sample_79
	dw !sample_98
	dw !sample_95
	dw !sample_96
	dw !sample_97
	dw !sample_88
	dw !sample_89
	dw !sample_85
	dw !sample_3D
	dw !sample_3F
	dw !sample_41
	dw !sample_45
	dw !sample_48
	dw !sample_4A
	dw !sample_4F
	dw !sample_8F
	dw !sample_C6
	dw !sample_CC
	dw !sample_D0
	dw !sample_D1
	dw !sample_D2
	dw $FFFF

bonus_sample_map:
	dw !sample_B5
	dw !sample_B6
	dw !sample_B7
	dw !sample_B3
	dw !sample_B8
	dw !sample_33
	dw !sample_8D
	dw !sample_36
	dw !sample_8D
	dw !sample_A2
	dw !sample_19
	dw !sample_36
	dw !sample_2B
	dw !sample_0D
	dw !sample_0B
	dw !sample_9A
	dw !sample_C6
	dw !sample_0F
	dw !sample_10
	dw !sample_53
	dw !sample_0E
	dw !sample_15
	dw !sample_A1
	dw !sample_BC
	dw !sample_8F
	dw !sample_9F
	dw !sample_D8
	dw $FFFF

ship_hold_sample_map:
	dw !sample_15
	dw !sample_14
	dw !sample_1D
	dw !sample_24
	dw !sample_1E
	dw !sample_1C
	dw !sample_A6
	dw !sample_37
	dw !sample_39
	dw !sample_3B
	dw !sample_3D
	dw !sample_3F
	dw !sample_41
	dw !sample_43
	dw !sample_45
	dw !sample_47
	dw !sample_4F
	dw !sample_18
	dw !sample_2E
	dw !sample_8F
	dw !sample_0B
	dw !sample_9A
	dw !sample_0E
	dw !sample_0D
	dw !sample_53
	dw !sample_CD
	dw !sample_99
	dw !sample_0F
	dw !sample_10
	dw !sample_9B
	dw !sample_9F
	dw !sample_BC
	dw !sample_50
	dw !sample_DA
	dw $FFFF

fanfare_sample_map:
	dw !sample_14
	dw !sample_BE
	dw !sample_A2
	dw !sample_A4
	dw !sample_B5
	dw !sample_A0
	dw !sample_2B
	dw !sample_8F
	dw $FFFF

ship_deck_2_sample_map:
	dw !sample_14
	dw !sample_8E
	dw !sample_A5
	dw !sample_18
	dw !sample_21
	dw !sample_34
	dw !sample_1B
	dw !sample_33
	dw !sample_36
	dw !sample_8D
	dw !sample_2E
	dw !sample_24
	dw !sample_8F
	dw !sample_94
	dw !sample_9F
	dw !sample_0B
	dw !sample_9A
	dw !sample_0D
	dw !sample_9F
	dw !sample_C6
	dw !sample_53
	dw $FFFF

rescue_kong_sample_map:
	dw !sample_1D
	dw !sample_14
	dw !sample_AF
	dw !sample_B5
	dw !sample_1C
	dw !sample_A5
	dw !sample_33
	dw !sample_BC
	dw $FFFF

game_over_sample_map:
	dw !sample_8D
	dw !sample_24
	dw !sample_18
	dw !sample_14
	dw !sample_33
	dw !sample_2B
	dw !sample_8F
	dw $FFFF

big_boss_sample_map:
	dw !sample_14
	dw !sample_A5
	dw !sample_A2
	dw !sample_21
	dw !sample_22
	dw !sample_23
	dw !sample_1D
	dw !sample_24
	dw !sample_A3
	dw !sample_A4
	dw !sample_1E
	dw !sample_8F
	dw !sample_2E
	dw !sample_2B
	dw !sample_0D
	dw !sample_AB
	dw !sample_A1
	dw !sample_C4
	dw !sample_BC
	dw !sample_2B
	dw !sample_D7
	dw !sample_86
	dw !sample_9A
	dw !sample_94
	dw $FFFF

castle_sample_map:
	dw !sample_AF
	dw !sample_1D
	dw !sample_A2
	dw !sample_A4
	dw !sample_14
	dw !sample_B0
	dw !sample_24
	dw !sample_B1
	dw !sample_22
	dw !sample_AC
	dw !sample_8F
	dw !sample_2E
	dw !sample_9F
	dw !sample_C6
	dw !sample_0B
	dw !sample_9A
	dw !sample_0D
	dw !sample_C4
	dw !sample_A1
	dw !sample_BC
	dw !sample_0F
	dw !sample_10
	dw !sample_D7
	dw !sample_53
	dw !sample_0E
	dw !sample_D8
	dw !sample_A9
	dw $FFFF

haunted_sample_map:
	dw !sample_14
	dw !sample_B8
	dw !sample_BA
	dw !sample_BE
	dw !sample_B6
	dw !sample_A2
	dw !sample_B9
	dw !sample_BD
	dw !sample_1E
	dw !sample_A4
	dw !sample_3F
	dw !sample_28
	dw !sample_BB
	dw !sample_8F
	dw !sample_2E
	dw !sample_C6
	dw !sample_CC
	dw !sample_D0
	dw !sample_D1
	dw !sample_D2
	dw !sample_C1
	dw !sample_C2
	dw !sample_C3
	dw !sample_8E
	dw $FFFF

file_select_sample_map:
	dw !sample_0C
	dw !sample_17
	dw !sample_0D
	dw !sample_19
	dw !sample_18
	dw !sample_B7
	dw !sample_28
	dw !sample_87
	dw !sample_2B
	dw !sample_8F
	dw $FFFF

cranky_sample_map:
	dw !sample_B8
	dw !sample_28
	dw !sample_29
	dw !sample_AF
	dw !sample_2B
	dw !sample_16
	dw !sample_17
	dw !sample_19
	dw !sample_15
	dw !sample_9F
	dw !sample_2B
	dw !sample_8F
	dw $FFFF

ice_sample_map:
	dw !sample_12
	dw !sample_88
	dw !sample_37
	dw !sample_39
	dw !sample_3B
	dw !sample_3F
	dw !sample_41
	dw !sample_43
	dw !sample_45
	dw !sample_47
	dw !sample_48
	dw !sample_4A
	dw !sample_AF
	dw !sample_2C
	dw !sample_C5
	dw !sample_14
	dw !sample_C0
	dw !sample_8F
	dw !sample_2E
	dw !sample_0B
	dw !sample_9A
	dw !sample_0E
	dw !sample_0F
	dw !sample_10
	dw !sample_0D
	dw !sample_9F
	dw !sample_CD
	dw !sample_99
	dw !sample_C6
	dw !sample_2B
	dw !sample_53
	dw !sample_50
	dw !sample_D8
	dw !sample_DA
	dw $FFFF

jungle_sample_map:
	dw !sample_C8
	dw !sample_C9
	dw !sample_CA
	dw !sample_0D
	dw !sample_31
	dw !sample_29
	dw !sample_CB
	dw !sample_86
	dw !sample_C7
	dw !sample_28
	dw !sample_C0
	dw !sample_A6
	dw !sample_31
	dw !sample_96
	dw !sample_8F
	dw !sample_0F
	dw !sample_10
	dw !sample_0E
	dw !sample_0D
	dw !sample_C6
	dw !sample_D7
	dw !sample_0B
	dw !sample_9A
	dw !sample_9F
	dw !sample_D8
	dw !sample_53
	dw !sample_B8
	dw $FFFF

lost_world_sample_map:
	dw !sample_CE
	dw !sample_CF
	dw !sample_14
	dw !sample_1D
	dw !sample_21
	dw !sample_A6
	dw !sample_90
	dw !sample_BF
	dw !sample_9F
	dw $FFFF

rigging_sample_map:
	dw !sample_13
	dw !sample_1E
	dw !sample_36
	dw !sample_24
	dw !sample_21
	dw !sample_86
	dw !sample_A1
	dw !sample_9C
	dw !sample_9D
	dw !sample_14
	dw !sample_8F
	dw !sample_0B
	dw !sample_9A
	dw !sample_99
	dw !sample_0F
	dw !sample_10
	dw !sample_0E
	dw !sample_0D
	dw !sample_C6
	dw !sample_53
	dw !sample_D8
	dw !sample_9F
	dw !sample_DA
	dw $FFFF

credits_sample_map:
	dw !sample_CE
	dw !sample_CF
	dw !sample_C0
	dw !sample_A6
	dw !sample_90
	dw !sample_B8
	dw !sample_2E
	dw !sample_34
	dw !sample_8E
	dw !sample_B6
	dw !sample_5A
	dw !sample_5B
	dw !sample_5C
	dw !sample_5D
	dw !sample_5E
	dw !sample_5F
	dw !sample_60
	dw !sample_61
	dw !sample_62
	dw !sample_63
	dw !sample_64
	dw !sample_65
	dw !sample_66
	dw !sample_67
	dw !sample_68
	dw !sample_69
	dw !sample_6A
	dw !sample_6B
	dw !sample_6C
	dw !sample_6D
	dw !sample_6E
	dw !sample_6F
	dw !sample_70
	dw !sample_71
	dw !sample_72
	dw !sample_73
	dw !sample_74
	dw !sample_75
	dw !sample_76
	dw !sample_77
	dw !sample_78
	dw !sample_79
	dw !sample_37
	dw !sample_39
	dw !sample_3B
	dw !sample_3D
	dw !sample_3F
	dw !sample_41
	dw !sample_45
	dw !sample_48
	dw !sample_4A
	dw !sample_4C
	dw !sample_4E
	dw !sample_4F
	dw !sample_2B
	dw !sample_0D
	dw !sample_50
	dw !sample_53
	dw !sample_A1
	dw !sample_C6
	dw !sample_9F
	dw !sample_0F
	dw !sample_10
	dw !sample_CD
	dw !sample_D7
	dw !sample_99
	dw $FFFF

krool_sample_map:
	dw !sample_CE
	dw !sample_CF
	dw !sample_21
	dw !sample_A2
	dw !sample_BE
	dw !sample_2E
	dw !sample_90
	dw !sample_A6
	dw !sample_96
	dw !sample_8F
	dw !sample_14
	dw !sample_0D
	dw !sample_D9
	dw !sample_9D
	dw !sample_53
	dw !sample_BC
	dw !sample_D2
	dw !sample_86
	dw !sample_AD
	dw !sample_88
	dw !sample_94
	dw $FFFF

bonus_sample_map_2:
	dw !sample_B5
	dw !sample_B6
	dw !sample_B7
	dw !sample_B3
	dw !sample_B8
	dw !sample_33
	dw !sample_8D
	dw !sample_36
	dw !sample_8D
	dw !sample_A2
	dw !sample_19
	dw !sample_36
	dw !sample_8F
	dw !sample_0D
	dw !sample_C6
	dw !sample_CC
	dw !sample_D0
	dw !sample_D1
	dw !sample_D2
	dw !sample_67
	dw !sample_C1
	dw !sample_C2
	dw !sample_C3
	dw !sample_8E
	dw $FFFF

big_boss_sample_map_2:
	dw !sample_14
	dw !sample_A5
	dw !sample_A2
	dw !sample_21
	dw !sample_22
	dw !sample_23
	dw !sample_1D
	dw !sample_24
	dw !sample_A3
	dw !sample_A4
	dw !sample_1E
	dw !sample_8F
	dw !sample_2E
	dw !sample_0D
	dw !sample_D7
	dw !sample_86
	dw !sample_BD
	dw !sample_A9
	dw !sample_AA
	dw !sample_2B
	dw !sample_C6
	dw !sample_A1
	dw !sample_2F
	dw !sample_D9
	dw !sample_BC
	dw $FFFF
	
	dw $FFFF

bonus_sample_map_3:
	dw !sample_B5
	dw !sample_B6
	dw !sample_B7
	dw !sample_B3
	dw !sample_B8
	dw !sample_33
	dw !sample_8D
	dw !sample_36
	dw !sample_8D
	dw !sample_A2
	dw !sample_19
	dw !sample_36
	dw !sample_0D
	dw !sample_C6
	dw !sample_8F
	dw !sample_50
	dw !sample_99
	dw !sample_DA
	dw $FFFF

secret_ending_sample_map:
	dw !sample_A7
	dw !sample_9D
	dw !sample_D9
	dw !sample_88
	dw !sample_D3
	dw !sample_C1
	dw !sample_C2
	dw !sample_C3
	dw $FFFF

bonus_sample_map_4:
	dw !sample_B5
	dw !sample_B6
	dw !sample_B7
	dw !sample_B3
	dw !sample_B8
	dw !sample_33
	dw !sample_8D
	dw !sample_36
	dw !sample_8D
	dw !sample_A2
	dw !sample_19
	dw !sample_36
	dw !sample_0D
	dw !sample_0B
	dw !sample_9A
	dw !sample_C6
	dw !sample_0F
	dw !sample_10
	dw !sample_53
	dw !sample_0E
	dw !sample_8F
	dw !sample_9F
	dw !sample_D8
	dw !sample_94
	dw $FFFF

DATA_EE1935:
	dw $FFFF

DATA_EE1937:
	dw $FFFF

	incsrc "audio/music/null_song_data.asm"
	incsrc "audio/music/island_map_song_data.asm"
	incsrc "audio/music/main_theme_song_data.asm"
	incsrc "audio/music/swamp_song_data.asm"
	incsrc "audio/music/swanky_song_data.asm"
	incsrc "audio/music/forest_song_data.asm"
	incsrc "audio/music/ship_deck_song_data.asm"
	incsrc "audio/music/mine_song_data.asm"
	incsrc "audio/music/funky_song_data.asm"
	incsrc "audio/music/brambles_song_data.asm"
	incsrc "audio/music/klubba_song_data.asm"
	incsrc "audio/music/wasp_hive_song_data.asm"
	incsrc "audio/music/wrinkly_song_data.asm"
	incsrc "audio/music/lava_song_data.asm"
	incsrc "audio/music/roller_coaster_song_data.asm"
	incsrc "audio/music/bonus_song_data.asm"

check bankcross off
;$EECE62
brr_sample_EECE62:
	dw $0000
	dw datasize(brr_sample_EECE62)-4
	incbin "audio/samples/sample_EECE62.brr"

;$EECFFC
brr_sample_EECFFC:
	dw $0000
	dw datasize(brr_sample_EECFFC)-4
	incbin "audio/samples/sample_EECFFC.brr"

;$EED1CC
brr_sample_EED1CC:
	dw $0000
	dw datasize(brr_sample_EED1CC)-4
	incbin "audio/samples/sample_EED1CC.brr"

;$EED47C
brr_sample_EED47C:
	dw $0000
	dw datasize(brr_sample_EED47C)-4
	incbin "audio/samples/sample_EED47C.brr"

;$EED63A
brr_sample_EED63A:
	dw $0000
	dw datasize(brr_sample_EED63A)-4
	incbin "audio/samples/sample_EED63A.brr"

;$EED87E
brr_sample_EED87E:
	dw $0000
	dw datasize(brr_sample_EED87E)-4
	incbin "audio/samples/sample_EED87E.brr"

;$EEDC73
brr_sample_EEDC73:
	dw $0000
	dw datasize(brr_sample_EEDC73)-4
	incbin "audio/samples/sample_EEDC73.brr"

;$EEE055
brr_sample_EEE055:
	dw $0000
	dw datasize(brr_sample_EEE055)-4
	incbin "audio/samples/sample_EEE055.brr"

;$EEE1AF
brr_sample_EEE1AF:
	dw $0000
	dw datasize(brr_sample_EEE1AF)-4
	incbin "audio/samples/sample_EEE1AF.brr"

;$EEE8CE
brr_sample_EEE8CE:
	dw $0000
	dw datasize(brr_sample_EEE8CE)-4
	incbin "audio/samples/sample_EEE8CE.brr"

;$EEE9A2
brr_sample_EEE9A2:
	dw $0000
	dw datasize(brr_sample_EEE9A2)-4
	incbin "audio/samples/sample_EEE9A2.brr"

;$EEEE4B
brr_sample_EEEE4B:
	dw $0000
	dw datasize(brr_sample_EEEE4B)-4
	incbin "audio/samples/sample_EEEE4B.brr"

;$EEF6B6
brr_sample_EEF6B6:
	dw $0000
	dw datasize(brr_sample_EEF6B6)-4
	incbin "audio/samples/sample_EEF6B6.brr"

;$EEF8C5
brr_sample_EEF8C5:
	dw $0000
	dw datasize(brr_sample_EEF8C5)-4
	incbin "audio/samples/sample_EEF8C5.brr"

;$EEFDC8
brr_sample_EEFDC8:
	dw $0000
	dw datasize(brr_sample_EEFDC8)-4
	incbin "audio/samples/sample_EEFDC8.brr"

;$EEFFDF
brr_sample_EEFFDF:
	dw $0000
	dw datasize(brr_sample_EEFFDF)-4
	incbin "audio/samples/sample_EEFFDF.brr"

;$EF001A
brr_sample_EF001A:
	dw $0000
	dw datasize(brr_sample_EF001A)-4
	incbin "audio/samples/sample_EF001A.brr"

;$EF05BE
brr_sample_EF05BE:
	dw $0000
	dw datasize(brr_sample_EF05BE)-4
	incbin "audio/samples/sample_EF05BE.brr"

;$EF0997
brr_sample_EF0997:
	dw $076B
	dw datasize(brr_sample_EF0997)-4
	incbin "audio/samples/sample_EF0997.brr"

;$EF120B
brr_sample_EF120B:
	dw $0870
	dw datasize(brr_sample_EF120B)-4
	incbin "audio/samples/sample_EF120B.brr"

;$EF1EDC
brr_sample_EF1EDC:
	dw $0000
	dw datasize(brr_sample_EF1EDC)-4
	incbin "audio/samples/sample_EF1EDC.brr"

;$EF288C
brr_sample_EF288C:
	dw $0000
	dw datasize(brr_sample_EF288C)-4
	incbin "audio/samples/sample_EF288C.brr"

;$EF2F7E
brr_sample_EF2F7E:
	dw $02F4
	dw datasize(brr_sample_EF2F7E)-4
	incbin "audio/samples/sample_EF2F7E.brr"

;$EF3288
brr_sample_EF3288:
	dw $0000
	dw datasize(brr_sample_EF3288)-4
	incbin "audio/samples/sample_EF3288.brr"

;$EF335C
brr_sample_EF335C:
	dw $01F8
	dw datasize(brr_sample_EF335C)-4
	incbin "audio/samples/sample_EF335C.brr"

;$EF35BC
brr_sample_EF35BC:
	dw $018C
	dw datasize(brr_sample_EF35BC)-4
	incbin "audio/samples/sample_EF35BC.brr"

;$EF37B0
brr_sample_EF37B0:
	dw $0000
	dw datasize(brr_sample_EF37B0)-4
	incbin "audio/samples/sample_EF37B0.brr"

;$EF3A10
brr_sample_EF3A10:
	dw $0225
	dw datasize(brr_sample_EF3A10)-4
	incbin "audio/samples/sample_EF3A10.brr"

;$EF3D5A
brr_sample_EF3D5A:
	dw $0762
	dw datasize(brr_sample_EF3D5A)-4
	incbin "audio/samples/sample_EF3D5A.brr"

;$EF4512
brr_sample_EF4512:
	dw $0000
	dw datasize(brr_sample_EF4512)-4
	incbin "audio/samples/sample_EF4512.brr"

;$EF4C79
brr_sample_EF4C79:
	dw $0048
	dw datasize(brr_sample_EF4C79)-4
	incbin "audio/samples/sample_EF4C79.brr"

;$EF5053
brr_sample_EF5053:
	dw $0000
	dw datasize(brr_sample_EF5053)-4
	incbin "audio/samples/sample_EF5053.brr"

;$EF5910
brr_sample_EF5910:
	dw $0000
	dw datasize(brr_sample_EF5910)-4
	incbin "audio/samples/sample_EF5910.brr"

;$EF5927
brr_sample_EF5927:
	dw $0000
	dw datasize(brr_sample_EF5927)-4
	incbin "audio/samples/sample_EF5927.brr"

;$EF596B
brr_sample_EF596B:
	dw $0000
	dw datasize(brr_sample_EF596B)-4
	incbin "audio/samples/sample_EF596B.brr"

;$EF5D96
brr_sample_EF5D96:
	dw $0000
	dw datasize(brr_sample_EF5D96)-4
	incbin "audio/samples/sample_EF5D96.brr"

;$EF63EF
brr_sample_EF63EF:
	dw $029A
	dw datasize(brr_sample_EF63EF)-4
	incbin "audio/samples/sample_EF63EF.brr"

;$EF66CD
brr_sample_EF66CD:
	dw $0000
	dw datasize(brr_sample_EF66CD)-4
	incbin "audio/samples/sample_EF66CD.brr"

;$EF66ED
brr_sample_EF66ED:
	dw $0000
	dw datasize(brr_sample_EF66ED)-4
	incbin "audio/samples/sample_EF66ED.brr"

;$EF6731
brr_sample_EF6731:
	dw $0000
	dw datasize(brr_sample_EF6731)-4
	incbin "audio/samples/sample_EF6731.brr"

;$EF6748
brr_sample_EF6748:
	dw $0264
	dw datasize(brr_sample_EF6748)-4
	incbin "audio/samples/sample_EF6748.brr"

;$EF69CC
brr_sample_EF69CC:
	dw $071A
	dw datasize(brr_sample_EF69CC)-4
	incbin "audio/samples/sample_EF69CC.brr"

;$EF720B
brr_sample_EF720B:
	dw $00CF
	dw datasize(brr_sample_EF720B)-4
	incbin "audio/samples/sample_EF720B.brr"

;$EF72FA
brr_sample_EF72FA:
	dw $05FA
	dw datasize(brr_sample_EF72FA)-4
	incbin "audio/samples/sample_EF72FA.brr"

;$EF7A2B
brr_sample_EF7A2B:
	dw $0000
	dw datasize(brr_sample_EF7A2B)-4
	incbin "audio/samples/sample_EF7A2B.brr"

;$EF8006
brr_sample_EF8006:
	dw $0000
	dw datasize(brr_sample_EF8006)-4
	incbin "audio/samples/sample_EF8006.brr"

;$EF818E
brr_sample_EF818E:
	dw $0519
	dw datasize(brr_sample_EF818E)-4
	incbin "audio/samples/sample_EF818E.brr"

;$EF8880
brr_sample_EF8880:
	dw $0000
	dw datasize(brr_sample_EF8880)-4
	incbin "audio/samples/sample_EF8880.brr"

;$EF90BF
brr_sample_EF90BF:
	dw $0000
	dw datasize(brr_sample_EF90BF)-4
	incbin "audio/samples/sample_EF90BF.brr"

;$EF90D6
brr_sample_EF90D6:
	dw $0000
	dw datasize(brr_sample_EF90D6)-4
	incbin "audio/samples/sample_EF90D6.brr"

;$EF943B
brr_sample_EF943B:
	dw $0000
	dw datasize(brr_sample_EF943B)-4
	incbin "audio/samples/sample_EF943B.brr"

;$EF9677
brr_sample_EF9677:
	dw $07E0
	dw datasize(brr_sample_EF9677)-4
	incbin "audio/samples/sample_EF9677.brr"

;$EFA228
brr_sample_EFA228:
	dw $0000
	dw datasize(brr_sample_EFA228)-4
	incbin "audio/samples/sample_EFA228.brr"

;$EFA7E8
brr_sample_EFA7E8:
	dw $0000
	dw datasize(brr_sample_EFA7E8)-4
	incbin "audio/samples/sample_EFA7E8.brr"

;$EFA81A
brr_sample_EFA81A:
	dw $0384
	dw datasize(brr_sample_EFA81A)-4
	incbin "audio/samples/sample_EFA81A.brr"

;$EFAC18
brr_sample_EFAC18:
	dw $0000
	dw datasize(brr_sample_EFAC18)-4
	incbin "audio/samples/sample_EFAC18.brr"

;$EFAC4A
brr_sample_EFAC4A:
	dw $0000
	dw datasize(brr_sample_EFAC4A)-4
	incbin "audio/samples/sample_EFAC4A.brr"

;$EFAC7C
brr_sample_EFAC7C:
	dw $0000
	dw datasize(brr_sample_EFAC7C)-4
	incbin "audio/samples/sample_EFAC7C.brr"

;$EFACAE
brr_sample_EFACAE:
	dw $0000
	dw datasize(brr_sample_EFACAE)-4
	incbin "audio/samples/sample_EFACAE.brr"

;$EFACE0
brr_sample_EFACE0:
	dw $0000
	dw datasize(brr_sample_EFACE0)-4
	incbin "audio/samples/sample_EFACE0.brr"

;$EFAD12
brr_sample_EFAD12:
	dw $0000
	dw datasize(brr_sample_EFAD12)-4
	incbin "audio/samples/sample_EFAD12.brr"

;$EFAD44
brr_sample_EFAD44:
	dw $0000
	dw datasize(brr_sample_EFAD44)-4
	incbin "audio/samples/sample_EFAD44.brr"

;$EFAD76
brr_sample_EFAD76:
	dw $0000
	dw datasize(brr_sample_EFAD76)-4
	incbin "audio/samples/sample_EFAD76.brr"

;$EFADA8
brr_sample_EFADA8:
	dw $0000
	dw datasize(brr_sample_EFADA8)-4
	incbin "audio/samples/sample_EFADA8.brr"

;$EFADDA
brr_sample_EFADDA:
	dw $0000
	dw datasize(brr_sample_EFADDA)-4
	incbin "audio/samples/sample_EFADDA.brr"

;$EFAE0C
brr_sample_EFAE0C:
	dw $0000
	dw datasize(brr_sample_EFAE0C)-4
	incbin "audio/samples/sample_EFAE0C.brr"

;$EFAE3E
brr_sample_EFAE3E:
	dw $0000
	dw datasize(brr_sample_EFAE3E)-4
	incbin "audio/samples/sample_EFAE3E.brr"

;$EFAE70
brr_sample_EFAE70:
	dw $0000
	dw datasize(brr_sample_EFAE70)-4
	incbin "audio/samples/sample_EFAE70.brr"

;$EFAEA2
brr_sample_EFAEA2:
	dw $0000
	dw datasize(brr_sample_EFAEA2)-4
	incbin "audio/samples/sample_EFAEA2.brr"

;$EFAED4
brr_sample_EFAED4:
	dw $0000
	dw datasize(brr_sample_EFAED4)-4
	incbin "audio/samples/sample_EFAED4.brr"

;$EFAF06
brr_sample_EFAF06:
	dw $0000
	dw datasize(brr_sample_EFAF06)-4
	incbin "audio/samples/sample_EFAF06.brr"

;$EFAF38
brr_sample_EFAF38:
	dw $0000
	dw datasize(brr_sample_EFAF38)-4
	incbin "audio/samples/sample_EFAF38.brr"

;$EFAF6A
brr_sample_EFAF6A:
	dw $0000
	dw datasize(brr_sample_EFAF6A)-4
	incbin "audio/samples/sample_EFAF6A.brr"

;$EFAF9C
brr_sample_EFAF9C:
	dw $0000
	dw datasize(brr_sample_EFAF9C)-4
	incbin "audio/samples/sample_EFAF9C.brr"

;$EFAFCE
brr_sample_EFAFCE:
	dw $0000
	dw datasize(brr_sample_EFAFCE)-4
	incbin "audio/samples/sample_EFAFCE.brr"

;$EFB000
brr_sample_EFB000:
	dw $0000
	dw datasize(brr_sample_EFB000)-4
	incbin "audio/samples/sample_EFB000.brr"

;$EFB032
brr_sample_EFB032:
	dw $0000
	dw datasize(brr_sample_EFB032)-4
	incbin "audio/samples/sample_EFB032.brr"

;$EFB064
brr_sample_EFB064:
	dw $0000
	dw datasize(brr_sample_EFB064)-4
	incbin "audio/samples/sample_EFB064.brr"

;$EFB096
brr_sample_EFB096:
	dw $0000
	dw datasize(brr_sample_EFB096)-4
	incbin "audio/samples/sample_EFB096.brr"

;$EFB0C8
brr_sample_EFB0C8:
	dw $0000
	dw datasize(brr_sample_EFB0C8)-4
	incbin "audio/samples/sample_EFB0C8.brr"

;$EFB0FA
brr_sample_EFB0FA:
	dw $0000
	dw datasize(brr_sample_EFB0FA)-4
	incbin "audio/samples/sample_EFB0FA.brr"

;$EFB11A
brr_sample_EFB11A:
	dw $0000
	dw datasize(brr_sample_EFB11A)-4
	incbin "audio/samples/sample_EFB11A.brr"

;$EFB13A
brr_sample_EFB13A:
	dw $0000
	dw datasize(brr_sample_EFB13A)-4
	incbin "audio/samples/sample_EFB13A.brr"

;$EFB15A
brr_sample_EFB15A:
	dw $0000
	dw datasize(brr_sample_EFB15A)-4
	incbin "audio/samples/sample_EFB15A.brr"

;$EFB17A
brr_sample_EFB17A:
	dw $0000
	dw datasize(brr_sample_EFB17A)-4
	incbin "audio/samples/sample_EFB17A.brr"

;$EFB19A
brr_sample_EFB19A:
	dw $0000
	dw datasize(brr_sample_EFB19A)-4
	incbin "audio/samples/sample_EFB19A.brr"

;$EFB1BA
brr_sample_EFB1BA:
	dw $0000
	dw datasize(brr_sample_EFB1BA)-4
	incbin "audio/samples/sample_EFB1BA.brr"

;$EFB1DA
brr_sample_EFB1DA:
	dw $0000
	dw datasize(brr_sample_EFB1DA)-4
	incbin "audio/samples/sample_EFB1DA.brr"

;$EFB1FA
brr_sample_EFB1FA:
	dw $0000
	dw datasize(brr_sample_EFB1FA)-4
	incbin "audio/samples/sample_EFB1FA.brr"

;$EFB21A
brr_sample_EFB21A:
	dw $0000
	dw datasize(brr_sample_EFB21A)-4
	incbin "audio/samples/sample_EFB21A.brr"

;$EFB23A
brr_sample_EFB23A:
	dw $0000
	dw datasize(brr_sample_EFB23A)-4
	incbin "audio/samples/sample_EFB23A.brr"

;$EFB26B
brr_sample_EFB26B:
	dw $0000
	dw datasize(brr_sample_EFB26B)-4
	incbin "audio/samples/sample_EFB26B.brr"

;$EFB29C
brr_sample_EFB29C:
	dw $0000
	dw datasize(brr_sample_EFB29C)-4
	incbin "audio/samples/sample_EFB29C.brr"

;$EFB2CD
brr_sample_EFB2CD:
	dw $0000
	dw datasize(brr_sample_EFB2CD)-4
	incbin "audio/samples/sample_EFB2CD.brr"

;$EFB2FE
brr_sample_EFB2FE:
	dw $0000
	dw datasize(brr_sample_EFB2FE)-4
	incbin "audio/samples/sample_EFB2FE.brr"

;$EFB32F
brr_sample_EFB32F:
	dw $0000
	dw datasize(brr_sample_EFB32F)-4
	incbin "audio/samples/sample_EFB32F.brr"

;$EFB360
brr_sample_EFB360:
	dw $0000
	dw datasize(brr_sample_EFB360)-4
	incbin "audio/samples/sample_EFB360.brr"

;$EFB391
brr_sample_EFB391:
	dw $0000
	dw datasize(brr_sample_EFB391)-4
	incbin "audio/samples/sample_EFB391.brr"

;$EFB3C2
brr_sample_EFB3C2:
	dw $0000
	dw datasize(brr_sample_EFB3C2)-4
	incbin "audio/samples/sample_EFB3C2.brr"

;$EFB3F3
brr_sample_EFB3F3:
	dw $0000
	dw datasize(brr_sample_EFB3F3)-4
	incbin "audio/samples/sample_EFB3F3.brr"

;$EFB424
brr_sample_EFB424:
	dw $0000
	dw datasize(brr_sample_EFB424)-4
	incbin "audio/samples/sample_EFB424.brr"

;$EFB455
brr_sample_EFB455:
	dw $0000
	dw datasize(brr_sample_EFB455)-4
	incbin "audio/samples/sample_EFB455.brr"

;$EFB486
brr_sample_EFB486:
	dw $0000
	dw datasize(brr_sample_EFB486)-4
	incbin "audio/samples/sample_EFB486.brr"

;$EFB4B7
brr_sample_EFB4B7:
	dw $0000
	dw datasize(brr_sample_EFB4B7)-4
	incbin "audio/samples/sample_EFB4B7.brr"

;$EFB4E8
brr_sample_EFB4E8:
	dw $0000
	dw datasize(brr_sample_EFB4E8)-4
	incbin "audio/samples/sample_EFB4E8.brr"

;$EFB519
brr_sample_EFB519:
	dw $0000
	dw datasize(brr_sample_EFB519)-4
	incbin "audio/samples/sample_EFB519.brr"

;$EFB54A
brr_sample_EFB54A:
	dw $0000
	dw datasize(brr_sample_EFB54A)-4
	incbin "audio/samples/sample_EFB54A.brr"

;$EFB57B
brr_sample_EFB57B:
	dw $0000
	dw datasize(brr_sample_EFB57B)-4
	incbin "audio/samples/sample_EFB57B.brr"

;$EFB5AC
brr_sample_EFB5AC:
	dw $0000
	dw datasize(brr_sample_EFB5AC)-4
	incbin "audio/samples/sample_EFB5AC.brr"

;$EFB5DD
brr_sample_EFB5DD:
	dw $0000
	dw datasize(brr_sample_EFB5DD)-4
	incbin "audio/samples/sample_EFB5DD.brr"

;$EFB60E
brr_sample_EFB60E:
	dw $0000
	dw datasize(brr_sample_EFB60E)-4
	incbin "audio/samples/sample_EFB60E.brr"

;$EFB63F
brr_sample_EFB63F:
	dw $0000
	dw datasize(brr_sample_EFB63F)-4
	incbin "audio/samples/sample_EFB63F.brr"

;$EFB670
brr_sample_EFB670:
	dw $0000
	dw datasize(brr_sample_EFB670)-4
	incbin "audio/samples/sample_EFB670.brr"

;$EFB6A1
brr_sample_EFB6A1:
	dw $0000
	dw datasize(brr_sample_EFB6A1)-4
	incbin "audio/samples/sample_EFB6A1.brr"

;$EFB6D2
brr_sample_EFB6D2:
	dw $0000
	dw datasize(brr_sample_EFB6D2)-4
	incbin "audio/samples/sample_EFB6D2.brr"

;$EFB703
brr_sample_EFB703:
	dw $0000
	dw datasize(brr_sample_EFB703)-4
	incbin "audio/samples/sample_EFB703.brr"

;$EFB734
brr_sample_EFB734:
	dw $0000
	dw datasize(brr_sample_EFB734)-4
	incbin "audio/samples/sample_EFB734.brr"

;$EFB765
brr_sample_EFB765:
	dw $0000
	dw datasize(brr_sample_EFB765)-4
	incbin "audio/samples/sample_EFB765.brr"

;$EFB796
brr_sample_EFB796:
	dw $0000
	dw datasize(brr_sample_EFB796)-4
	incbin "audio/samples/sample_EFB796.brr"

;$EFB7C7
brr_sample_EFB7C7:
	dw $0000
	dw datasize(brr_sample_EFB7C7)-4
	incbin "audio/samples/sample_EFB7C7.brr"

;$EFB7F8
brr_sample_EFB7F8:
	dw $0000
	dw datasize(brr_sample_EFB7F8)-4
	incbin "audio/samples/sample_EFB7F8.brr"

;$EFB829
brr_sample_EFB829:
	dw $0000
	dw datasize(brr_sample_EFB829)-4
	incbin "audio/samples/sample_EFB829.brr"

;$EFB85A
brr_sample_EFB85A:
	dw $0000
	dw datasize(brr_sample_EFB85A)-4
	incbin "audio/samples/sample_EFB85A.brr"

;$EFB912
brr_sample_EFB912:
	dw $0000
	dw datasize(brr_sample_EFB912)-4
	incbin "audio/samples/sample_EFB912.brr"

;$EFD404
brr_sample_EFD404:
	dw $0000
	dw datasize(brr_sample_EFD404)-4
	incbin "audio/samples/sample_EFD404.brr"

;$EFDB08
brr_sample_EFDB08:
	dw $0000
	dw datasize(brr_sample_EFDB08)-4
	incbin "audio/samples/sample_EFDB08.brr"

;$EFE26F
brr_sample_EFE26F:
	dw $0000
	dw datasize(brr_sample_EFE26F)-4
	incbin "audio/samples/sample_EFE26F.brr"

;$EFE8F5
brr_sample_EFE8F5:
	dw $0000
	dw datasize(brr_sample_EFE8F5)-4
	incbin "audio/samples/sample_EFE8F5.brr"

;$EFECBD
brr_sample_EFECBD:
	dw $0000
	dw datasize(brr_sample_EFECBD)-4
	incbin "audio/samples/sample_EFECBD.brr"

;$EFEDF4
brr_sample_EFEDF4:
	dw $0000
	dw datasize(brr_sample_EFEDF4)-4
	incbin "audio/samples/sample_EFEDF4.brr"

;$EFEEF5
brr_sample_EFEEF5:
	dw $0000
	dw datasize(brr_sample_EFEEF5)-4
	incbin "audio/samples/sample_EFEEF5.brr"

;$EFF035
brr_sample_EFF035:
	dw $0000
	dw datasize(brr_sample_EFF035)-4
	incbin "audio/samples/sample_EFF035.brr"

;$EFF11B
brr_sample_EFF11B:
	dw $0000
	dw datasize(brr_sample_EFF11B)-4
	incbin "audio/samples/sample_EFF11B.brr"

;$EFF894
brr_sample_EFF894:
	dw $0000
	dw datasize(brr_sample_EFF894)-4
	incbin "audio/samples/sample_EFF894.brr"

;$EFFAFC
brr_sample_EFFAFC:
	dw $0000
	dw datasize(brr_sample_EFFAFC)-4
	incbin "audio/samples/sample_EFFAFC.brr"

;$EFFECD
brr_sample_EFFECD:
	dw $0195
	dw datasize(brr_sample_EFFECD)-4
	incbin "audio/samples/sample_EFFECD.brr"

;$F00162
brr_sample_F00162:
	dw $032A
	dw datasize(brr_sample_F00162)-4
	incbin "audio/samples/sample_F00162.brr"

;$F0062F
brr_sample_F0062F:
	dw $0000
	dw datasize(brr_sample_F0062F)-4
	incbin "audio/samples/sample_F0062F.brr"

;$F00823
brr_sample_F00823:
	dw $01B0
	dw datasize(brr_sample_F00823)-4
	incbin "audio/samples/sample_F00823.brr"

;$F009FC
brr_sample_F009FC:
	dw $0000
	dw datasize(brr_sample_F009FC)-4
	incbin "audio/samples/sample_F009FC.brr"

;$F00A1C
brr_sample_F00A1C:
	dw $0000
	dw datasize(brr_sample_F00A1C)-4
	incbin "audio/samples/sample_F00A1C.brr"

;$F00FAF
brr_sample_F00FAF:
	dw $029A
	dw datasize(brr_sample_F00FAF)-4
	incbin "audio/samples/sample_F00FAF.brr"

;$F01674
brr_sample_F01674:
	dw $04EC
	dw datasize(brr_sample_F01674)-4
	incbin "audio/samples/sample_F01674.brr"

;$F01B6E
brr_sample_F01B6E:
	dw $0000
	dw datasize(brr_sample_F01B6E)-4
	incbin "audio/samples/sample_F01B6E.brr"

;$F01BA9
brr_sample_F01BA9:
	dw $0000
	dw datasize(brr_sample_F01BA9)-4
	incbin "audio/samples/sample_F01BA9.brr"

;$F02667
brr_sample_F02667:
	dw $0000
	dw datasize(brr_sample_F02667)-4
	incbin "audio/samples/sample_F02667.brr"

;$F02800
brr_sample_F02800:
	dw $0000
	dw datasize(brr_sample_F02800)-4
	incbin "audio/samples/sample_F02800.brr"

;$F02988
brr_sample_F02988:
	dw $0000
	dw datasize(brr_sample_F02988)-4
	incbin "audio/samples/sample_F02988.brr"

;$F02C2F
brr_sample_F02C2F:
	dw $0711
	dw datasize(brr_sample_F02C2F)-4
	incbin "audio/samples/sample_F02C2F.brr"

;$F03A17
brr_sample_F03A17:
	dw $0000
	dw datasize(brr_sample_F03A17)-4
	incbin "audio/samples/sample_F03A17.brr"

;$F03A5B
brr_sample_F03A5B:
	dw $0000
	dw datasize(brr_sample_F03A5B)-4
	incbin "audio/samples/sample_F03A5B.brr"

;$F03B1D
brr_sample_F03B1D:
	dw $0087
	dw datasize(brr_sample_F03B1D)-4
	incbin "audio/samples/sample_F03B1D.brr"

;$F03D2B
brr_sample_F03D2B:
	dw $0654
	dw datasize(brr_sample_F03D2B)-4
	incbin "audio/samples/sample_F03D2B.brr"

;$F04854
brr_sample_F04854:
	dw $0000
	dw datasize(brr_sample_F04854)-4
	incbin "audio/samples/sample_F04854.brr"

;$F057E3
brr_sample_F057E3:
	dw $0000
	dw datasize(brr_sample_F057E3)-4
	incbin "audio/samples/sample_F057E3.brr"

;$F05FFD
brr_sample_F05FFD:
	dw $0000
	dw datasize(brr_sample_F05FFD)-4
	incbin "audio/samples/sample_F05FFD.brr"

;$F073F1
brr_sample_F073F1:
	dw $0000
	dw datasize(brr_sample_F073F1)-4
	incbin "audio/samples/sample_F073F1.brr"

;$F08A2D
brr_sample_F08A2D:
	dw $0000
	dw datasize(brr_sample_F08A2D)-4
	incbin "audio/samples/sample_F08A2D.brr"

;$F09BFB
brr_sample_F09BFB:
	dw $0402
	dw datasize(brr_sample_F09BFB)-4
	incbin "audio/samples/sample_F09BFB.brr"

;$F0A157
brr_sample_F0A157:
	dw $0000
	dw datasize(brr_sample_F0A157)-4
	incbin "audio/samples/sample_F0A157.brr"

;$F0A5FF
brr_sample_F0A5FF:
	dw $069C
	dw datasize(brr_sample_F0A5FF)-4
	incbin "audio/samples/sample_F0A5FF.brr"

;$F0AE2B
brr_sample_F0AE2B:
	dw $0000
	dw datasize(brr_sample_F0AE2B)-4
	incbin "audio/samples/sample_F0AE2B.brr"

;$F0B2B0
brr_sample_F0B2B0:
	dw $052B
	dw datasize(brr_sample_F0B2B0)-4
	incbin "audio/samples/sample_F0B2B0.brr"

;$F0B7FA
brr_sample_F0B7FA:
	dw $0000
	dw datasize(brr_sample_F0B7FA)-4
	incbin "audio/samples/sample_F0B7FA.brr"

;$F0BD45
brr_sample_F0BD45:
	dw $0816
	dw datasize(brr_sample_F0BD45)-4
	incbin "audio/samples/sample_F0BD45.brr"

;$F0C93E
brr_sample_F0C93E:
	dw $0000
	dw datasize(brr_sample_F0C93E)-4
	incbin "audio/samples/sample_F0C93E.brr"

;$F0CD45
brr_sample_F0CD45:
	dw $0C7B
	dw datasize(brr_sample_F0CD45)-4
	incbin "audio/samples/sample_F0CD45.brr"

;$F0DC8C
brr_sample_F0DC8C:
	dw $0000
	dw datasize(brr_sample_F0DC8C)-4
	incbin "audio/samples/sample_F0DC8C.brr"

;$F0F65E
brr_sample_F0F65E:
	dw $0000
	dw datasize(brr_sample_F0F65E)-4
	incbin "audio/samples/sample_F0F65E.brr"

;$F1078A
brr_sample_F1078A:
	dw $0000
	dw datasize(brr_sample_F1078A)-4
	incbin "audio/samples/sample_F1078A.brr"

;$F10F26
brr_sample_F10F26:
	dw $0000
	dw datasize(brr_sample_F10F26)-4
	incbin "audio/samples/sample_F10F26.brr"

;$F117C7
brr_sample_F117C7:
	dw $0001
	dw datasize(brr_sample_F117C7)-4
	incbin "audio/samples/sample_F117C7.brr"

;$F11EEE
brr_sample_F11EEE:
	dw $0000
	dw datasize(brr_sample_F11EEE)-4
	incbin "audio/samples/sample_F11EEE.brr"

;$F11F0D
brr_sample_F11F0D:
	dw $0000
	dw datasize(brr_sample_F11F0D)-4
	incbin "audio/samples/sample_F11F0D.brr"

;$F12A9A
brr_sample_F12A9A:
	dw $0000
	dw datasize(brr_sample_F12A9A)-4
	incbin "audio/samples/sample_F12A9A.brr"

;$F133B1
brr_sample_F133B1:
	dw $0603
	dw datasize(brr_sample_F133B1)-4
	incbin "audio/samples/sample_F133B1.brr"

;$F139DC
brr_sample_F139DC:
	dw $054F
	dw datasize(brr_sample_F139DC)-4
	incbin "audio/samples/sample_F139DC.brr"

;$F14B98
brr_sample_F14B98:
	dw $01EF
	dw datasize(brr_sample_F14B98)-4
	incbin "audio/samples/sample_F14B98.brr"

;$F14DA6
brr_sample_F14DA6:
	dw $0000
	dw datasize(brr_sample_F14DA6)-4
	incbin "audio/samples/sample_F14DA6.brr"

;$F15542
brr_sample_F15542:
	dw $06AE
	dw datasize(brr_sample_F15542)-4
	incbin "audio/samples/sample_F15542.brr"

;$F15C0F
brr_sample_F15C0F:
	dw $0000
	dw datasize(brr_sample_F15C0F)-4
	incbin "audio/samples/sample_F15C0F.brr"

;$F1663C
brr_sample_F1663C:
	dw $0000
	dw datasize(brr_sample_F1663C)-4
	incbin "audio/samples/sample_F1663C.brr"

;$F16F1C
brr_sample_F16F1C:
	dw $0A8C
	dw datasize(brr_sample_F16F1C)-4
	incbin "audio/samples/sample_F16F1C.brr"

;$F179D9
brr_sample_F179D9:
	dw $0603
	dw datasize(brr_sample_F179D9)-4
	incbin "audio/samples/sample_F179D9.brr"

;$F18004
brr_sample_F18004:
	dw $065D
	dw datasize(brr_sample_F18004)-4
	incbin "audio/samples/sample_F18004.brr"

;$F186E4
brr_sample_F186E4:
	dw $0000
	dw datasize(brr_sample_F186E4)-4
	incbin "audio/samples/sample_F186E4.brr"

;$F192E5
brr_sample_F192E5:
	dw $0000
	dw datasize(brr_sample_F192E5)-4
	incbin "audio/samples/sample_F192E5.brr"

;$F19304
brr_sample_F19304:
	dw $0000
	dw datasize(brr_sample_F19304)-4
	incbin "audio/samples/sample_F19304.brr"

;$F19311
brr_sample_F19311:
	dw $0000
	dw datasize(brr_sample_F19311)-4
	incbin "audio/samples/sample_F19311.brr"

;$F1946B
brr_sample_F1946B:
	dw $0912
	dw datasize(brr_sample_F1946B)-4
	incbin "audio/samples/sample_F1946B.brr"

;$F1A225
brr_sample_F1A225:
	dw $0000
	dw datasize(brr_sample_F1A225)-4
	incbin "audio/samples/sample_F1A225.brr"

;$F1A811
brr_sample_F1A811:
	dw $0000
	dw datasize(brr_sample_F1A811)-4
	incbin "audio/samples/sample_F1A811.brr"

;$F1AD5B
brr_sample_F1AD5B:
	dw $0000
	dw datasize(brr_sample_F1AD5B)-4
	incbin "audio/samples/sample_F1AD5B.brr"

;$F1B55A
brr_sample_F1B55A:
	dw $0000
	dw datasize(brr_sample_F1B55A)-4
	incbin "audio/samples/sample_F1B55A.brr"

;$F1B795
brr_sample_F1B795:
	dw $0000
	dw datasize(brr_sample_F1B795)-4
	incbin "audio/samples/sample_F1B795.brr"

;$F1B9D0
brr_sample_F1B9D0:
	dw $0000
	dw datasize(brr_sample_F1B9D0)-4
	incbin "audio/samples/sample_F1B9D0.brr"

;$F1BC0B
brr_sample_F1BC0B:
	dw $0000
	dw datasize(brr_sample_F1BC0B)-4
	incbin "audio/samples/sample_F1BC0B.brr"

;$F1C03F
brr_sample_F1C03F:
	dw $0708
	dw datasize(brr_sample_F1C03F)-4
	incbin "audio/samples/sample_F1C03F.brr"

;$F1C916
brr_sample_F1C916:
	dw $0000
	dw datasize(brr_sample_F1C916)-4
	incbin "audio/samples/sample_F1C916.brr"

;$F1CC05
brr_sample_F1CC05:
	dw $0000
	dw datasize(brr_sample_F1CC05)-4
	incbin "audio/samples/sample_F1CC05.brr"

;$F1CD4E
brr_sample_F1CD4E:
	dw $0000
	dw datasize(brr_sample_F1CD4E)-4
	incbin "audio/samples/sample_F1CD4E.brr"

;$F1CFF6
brr_sample_F1CFF6:
	dw $0000
	dw datasize(brr_sample_F1CFF6)-4
	incbin "audio/samples/sample_F1CFF6.brr"

;$F1D190
brr_sample_F1D190:
	dw $0372
	dw datasize(brr_sample_F1D190)-4
	incbin "audio/samples/sample_F1D190.brr"

;$F1D68A
brr_sample_F1D68A:
	dw $0000
	dw datasize(brr_sample_F1D68A)-4
	incbin "audio/samples/sample_F1D68A.brr"

;$F1DF7C
brr_sample_F1DF7C:
	dw $0000
	dw datasize(brr_sample_F1DF7C)-4
	incbin "audio/samples/sample_F1DF7C.brr"

;$F1E973
brr_sample_F1E973:
	dw $0000
	dw datasize(brr_sample_F1E973)-4
	incbin "audio/samples/sample_F1E973.brr"

;$F1EDA6
brr_sample_F1EDA6:
	dw $03D5
	dw datasize(brr_sample_F1EDA6)-4
	incbin "audio/samples/sample_F1EDA6.brr"

;$F1F188
brr_sample_F1F188:
	dw $0000
	dw datasize(brr_sample_F1F188)-4
	incbin "audio/samples/sample_F1F188.brr"

;$F1F195
brr_sample_F1F195:
	dw $0000
	dw datasize(brr_sample_F1F195)-4
	incbin "audio/samples/sample_F1F195.brr"

;$F1F337
brr_sample_F1F337:
	dw $037B
	dw datasize(brr_sample_F1F337)-4
	incbin "audio/samples/sample_F1F337.brr"

;$F1F92C
brr_sample_F1F92C:
	dw $0000
	dw datasize(brr_sample_F1F92C)-4
	incbin "audio/samples/sample_F1F92C.brr"

;$F20080
brr_sample_F20080:
	dw $0000
	dw datasize(brr_sample_F20080)-4
	incbin "audio/samples/sample_F20080.brr"

;$F202BB
brr_sample_F202BB:
	dw $13E6
	dw datasize(brr_sample_F202BB)-4
	incbin "audio/samples/sample_F202BB.brr"

;$F218D4
brr_sample_F218D4:
	dw $0000
	dw datasize(brr_sample_F218D4)-4
	incbin "audio/samples/sample_F218D4.brr"

;$F21E5D
brr_sample_F21E5D:
	dw $01C2
	dw datasize(brr_sample_F21E5D)-4
	incbin "audio/samples/sample_F21E5D.brr"

;$F22132
brr_sample_F22132:
	dw $0000
	dw datasize(brr_sample_F22132)-4
	incbin "audio/samples/sample_F22132.brr"

;$F225B6
brr_sample_F225B6:
	dw $0465
	dw datasize(brr_sample_F225B6)-4
	incbin "audio/samples/sample_F225B6.brr"

;$F22C44
brr_sample_F22C44:
	dw $0000
	dw datasize(brr_sample_F22C44)-4
	incbin "audio/samples/sample_F22C44.brr"

;$F232D2
brr_sample_F232D2:
	dw $0000
	dw datasize(brr_sample_F232D2)-4
	incbin "audio/samples/sample_F232D2.brr"

check bankcross full
	incsrc "audio/music/ship_hold_song_data.asm"
	incsrc "audio/music/fanfare_song_data.asm"
	incsrc "audio/music/ship_deck_2_song_data.asm"
	incsrc "audio/music/rescue_kong_song_data.asm"
	incsrc "audio/music/game_over_song_data.asm"
	incsrc "audio/music/big_boss_song_data.asm"
	incsrc "audio/music/castle_song_data.asm"
	incsrc "audio/music/haunted_song_data.asm"
	incsrc "audio/music/file_select_song_data.asm"
	incsrc "audio/music/cranky_song_data.asm"
	incsrc "audio/music/ice_song_data.asm"
	incsrc "audio/music/jungle_song_data.asm"
	incsrc "audio/music/lost_world_song_data.asm"
	incsrc "audio/music/rigging_song_data.asm"
	incsrc "audio/music/credits_song_data.asm"
	incsrc "audio/music/krool_song_data.asm"

DATA_F2E691:
namespace APU
	dw song_data, $0000	;Unused placeholder for track $20 (reuses track $0F data instead)
namespace off

DATA_F2E695:
namespace APU
	dw song_data, $0000	;Unused placeholder for track $21 (reuses track $15 data instead)
namespace off

DATA_F2E699:
namespace APU
	dw song_data, $0000	;Unused placeholder for track $22 (reuses track $0F data instead)
namespace off

DATA_F2E69D:
namespace APU
	dw song_data, $0000	;Unused placeholder for track $23 (reuses track $0F data instead)
namespace off

	incsrc "audio/music/secret_ending_song_data.asm"

DATA_F2E724:
namespace APU
	dw song_data, $0000	;Unused placeholder for track $25 (reuses track $0F data instead)
namespace off

DATA_F2E728:
namespace APU
	dw song_data, $0000	;Placeholder for track $26
namespace off

DATA_F2E72C:
namespace APU
	dw song_data, $0000	;Placeholder for track $27
namespace off

	incsrc "audio/sound_effects/global_sfx_data.asm"
	incsrc "audio/sound_effects/dummy_sfx_data.asm"
	incsrc "audio/sound_effects/roller_coaster_sfx_data.asm"
	incsrc "audio/sound_effects/ship_ice_ending_sfx_data.asm"
	incsrc "audio/sound_effects/swamp_forest_mine_brambles_hive_sfx_data.asm"
	incsrc "audio/sound_effects/unused_krockhead_sfx_data.asm"
	incsrc "audio/sound_effects/jungle_sfx_data.asm"
	incsrc "audio/sound_effects/boss_1_sfx_data.asm"
	incsrc "audio/sound_effects/lava_castle_boss_2_sfx_data.asm"

DATA_F2FB66:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $08
namespace off

DATA_F2FB6A:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $09
namespace off

DATA_F2FB6E:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0A
namespace off

DATA_F2FB72:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0B
namespace off

DATA_F2FB76:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0C
namespace off

DATA_F2FB7A:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0D
namespace off

DATA_F2FB7E:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0E
namespace off

DATA_F2FB82:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0F
namespace off
