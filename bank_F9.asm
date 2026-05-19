
animation_scripts_table:
	%offset(animation_flags_table, 2)
namespace animation
	dw DATA_F94668,					$0000	;0000	$F94668	DATA_F94668
	dw diddy_idle,					$0000	;0001	$F90D00	diddy_idle
	dw diddy_turn,					$0000	;0002	$F91411	diddy_turn
	dw diddy_walk,					$0000	;0003	$F91B62	diddy_walk
	dw diddy_run,					$0000	;0004	$F91C73	diddy_run
	dw diddy_jump,					$0003	;0005	$F91D0C	diddy_jump
	dw diddy_air,					$3000	;0006	$F91D17	diddy_air
	dw diddy_fall,					$3000	;0007	$F91D66	diddy_fall
	dw diddy_land,					$0000	;0008	$F91DA2	diddy_land
	dw diddy_roll,					$5802	;0009	$F91DB9	diddy_roll
	dw diddy_death,					$0000	;000A	$F91E1A	diddy_death
	dw DATA_F91EB2,					$0000	;000B	$F91EB2	DATA_F91EB2
	dw diddy_crouch_start,				$0000	;000C	$F91AD6	diddy_crouch_start
	dw diddy_crouch_loop,				$0000	;000D	$F91AEA	diddy_crouch_loop
	dw diddy_crouch_end,				$0000	;000E	$F91B19	diddy_crouch_end
	dw diddy_carry_pickup,				$0004	;000F	$F91958	diddy_carry_pickup
	dw diddy_carry_idle,				$0000	;0010	$F91A1B	diddy_carry_idle
	dw diddy_carry_walk,				$0000	;0011	$F91A28	diddy_carry_walk
	dw diddy_carry_turn,				$0000	;0012	$F91A73	diddy_carry_turn
	dw diddy_carry_drop,				$0004	;0013	$F91988	diddy_carry_drop
	dw diddy_carry_throw,				$2004	;0014	$F919C3	diddy_carry_throw
	dw diddy_carry_jump,				$0001	;0015	$F91A8B	diddy_carry_jump
	dw diddy_carry_air,				$3000	;0016	$F91A98	diddy_carry_air
	dw diddy_carry_fall,				$3000	;0017	$F91AB0	diddy_carry_fall
	dw diddy_carry_land,				$0000	;0018	$F91AC6	diddy_carry_land
	dw diddy_tumble_air,				$3000	;0019	$F91316	diddy_tumble_air
	dw diddy_slope_slide,				$3000	;001A	$F91D7D	diddy_slope_slide
	dw diddy_bounce_back,				$3000	;001B	$F91D8E	diddy_bounce_back
	dw diddy_bounce_up,				$3000	;001C	$F91351	diddy_bounce_up
	dw diddy_team_bottom_idle,			$0000	;001D	$F91425	diddy_team_bottom_idle
	dw diddy_team_bottom_turn,			$0000	;001E	$F91768	diddy_team_bottom_turn
	dw diddy_team_bottom_walk,			$0000	;001F	$F91790	diddy_team_bottom_walk
	dw diddy_team_top_idle,				$0000	;0020	$F918EA	diddy_team_top_idle
	dw diddy_team_bottom_jump,			$0001	;0021	$F91809	diddy_team_bottom_jump
	dw diddy_team_bottom_air,			$3000	;0022	$F91818	diddy_team_bottom_air
	dw diddy_team_bottom_fall,			$3000	;0023	$F9182A	diddy_team_bottom_fall
	dw diddy_team_bottom_land,			$0000	;0024	$F91842	diddy_team_bottom_land
	dw diddy_team_bottom_bounce_up,			$3000	;0025	$F91854	diddy_team_bottom_bounce_up
	dw diddy_team_bottom_throw,			$0000	;0026	$F91866	diddy_team_bottom_throw
	dw diddy_team_top_air,				$9800	;0027	$F9138C	diddy_team_top_air
	dw diddy_team_top_stunned,			$0000	;0028	$F913BE	diddy_team_top_stunned
	dw diddy_hurt,					$0000	;0029	$F91C59	diddy_hurt
	dw diddy_hurt_jump_off_screen,			$0000	;002A	$F91CDA	diddy_hurt_jump_off_screen
	dw diddy_honey_wall_idle,			$0000	;002B	$F91F18	diddy_honey_wall_idle
	dw diddy_honey_floor_idle,			$0000	;002C	$F91FA0	diddy_honey_floor_idle
	dw diddy_honey_floor_walk,			$0000	;002D	$F91F8C	diddy_honey_floor_walk
	dw diddy_honey_floor_carry_idle,		$0000	;002E	$F91FE4	diddy_honey_floor_carry_idle
	dw diddy_rope_vertical_single_idle,		$0000	;002F	$F92019	diddy_rope_vertical_single_idle
	dw diddy_rope_vertical_single_up,		$0000	;0030	$F9204D	diddy_rope_vertical_single_up
	dw diddy_rope_vertical_single_down,		$0000	;0031	$F92021	diddy_rope_vertical_single_down
	dw diddy_rope_vertical_single_turn,		$0000	;0032	$F92079	diddy_rope_vertical_single_turn
	dw DATA_F92093,					$0000	;0033	$F92093	DATA_F92093
	dw diddy_rope_vertical_single_to_double,	$0000	;0034	$F920B9	diddy_rope_vertical_single_to_double
	dw diddy_rope_vertical_double_to_single,	$0000	;0035	$F920E2	diddy_rope_vertical_double_to_single
	dw diddy_rope_vertical_double_idle,		$0000	;0036	$F9210B	diddy_rope_vertical_double_idle
	dw diddy_rope_vertical_double_up,		$0000	;0037	$F92113	diddy_rope_vertical_double_up
	dw diddy_rope_vertical_double_down,		$0000	;0038	$F92133	diddy_rope_vertical_double_down
	dw diddy_rope_horizontal_idle,			$0000	;0039	$F92153	diddy_rope_horizontal_idle
	dw diddy_rope_horizontal_move,			$0000	;003A	$F921B8	diddy_rope_horizontal_move
	dw diddy_follow_walk,				$0000	;003B	$F91B30	diddy_follow_walk
	dw diddy_follow_walk,				$0000	;003C	$F91B30	diddy_follow_walk
	dw diddy_follow_run,				$0000	;003D	$F91BA9	diddy_follow_run
	dw diddy_follow_jump,				$0000	;003E	$F91CA8	diddy_follow_jump
	dw diddy_follow_air,				$0000	;003F	$F91D55	diddy_follow_air
	dw diddy_team_top_air,				$0000	;0040	$F9138C	diddy_team_top_air
	dw diddy_turn,					$0000	;0041	$F91411	diddy_turn
	dw diddy_hook_idle,				$0000	;0042	$F921FF	diddy_hook_idle
	dw diddy_swim_idle,				$0000	;0043	$F9224C	diddy_swim_idle
	dw diddy_swim_turn,				$0000	;0044	$F9227E	diddy_swim_turn
	dw diddy_celebrate,				$0000	;0045	$F91054	diddy_celebrate
	dw diddy_level_end_run,				$0000	;0046	$F912D7	diddy_level_end_run
	dw DATA_F91309,					$0000	;0047	$F91309	DATA_F91309
	dw DATA_F9130E,					$0000	;0048	$F9130E	DATA_F9130E
	dw diddy_swap_to,				$0000	;0049	$F9466D	diddy_swap_to
	dw diddy_swap_idle,				$0000	;004A	$F947CA	diddy_swap_idle
	dw diddy_tumble_air,				$0000	;004B	$F91316	diddy_tumble_air
	dw diddy_krockhead_bounce,			$0000	;004C	$F90FEF	diddy_krockhead_bounce
	dw diddy_carry_krockhead_bounce,		$0000	;004D	$F90FFD	diddy_carry_krockhead_bounce
	dw diddy_skull_cart,				$0000	;004E	$F94D19	diddy_skull_cart
	dw diddy_squitter_mount,			$0000	;004F	$F91EB7	diddy_squitter_mount
	dw diddy_rattly_idle,				$0000	;0050	$F91EC2	diddy_rattly_idle
	dw diddy_squawks_idle,				$0000	;0051	$F91EF8	diddy_squawks_idle
	dw diddy_animal_mount,				$0000	;0052	$F91ECA	diddy_animal_mount
	dw diddy_animal_mount,				$0000	;0053	$F91ECA	diddy_animal_mount
	dw diddy_animal_idle,				$0000	;0054	$F91ED2	diddy_animal_idle
	dw diddy_animal_idle,				$0000	;0055	$F91ED2	diddy_animal_idle
	dw diddy_animal_idle,				$0000	;0056	$F91ED2	diddy_animal_idle
	dw diddy_animal_idle,				$0000	;0057	$F91ED2	diddy_animal_idle
	dw diddy_animal_idle,				$0000	;0058	$F91ED2	diddy_animal_idle
	dw animal_attack,				$0000	;0059	$F949EB	animal_attack
	dw animal_attack,				$0000	;005A	$F949EB	animal_attack
	dw animal_attack,				$0000	;005B	$F949EB	animal_attack
	dw animal_attack,				$0000	;005C	$F949EB	animal_attack
	dw animal_attack,				$0000	;005D	$F949EB	animal_attack
	dw squitter_idle,				$0000	;005E	$F92292	squitter_idle
	dw rattly_diddy_idle,				$C000	;005F	$F92845	rattly_diddy_idle
	dw squawks_idle,				$0000	;0060	$F92C08	squawks_idle
	dw rambi_idle,					$A000	;0061	$F92E59	rambi_idle
	dw enguarde_idle,				$0000	;0062	$F948E6	enguarde_idle
	dw squitter_turn,				$0000	;0063	$F922B7	squitter_turn
	dw DATA_F927DF,					$C000	;0064	$F927DF	DATA_F927DF
	dw squawks_turn,				$0000	;0065	$F92C7D	squawks_turn
	dw rambi_turn,					$0000	;0066	$F92EAE	rambi_turn
	dw enguarde_turn,				$0000	;0067	$F94948	enguarde_turn
	dw squitter_walk,				$0000	;0068	$F922CB	squitter_walk
	dw rattly_diddy_idle,				$C000	;0069	$F92845	rattly_diddy_idle
	dw squawks_idle,				$0000	;006A	$F92C08	squawks_idle
	dw rambi_walk,					$A800	;006B	$F92EC2	rambi_walk
	dw enguarde_idle,				$0000	;006C	$F948E6	enguarde_idle
	dw squitter_jump,				$0001	;006D	$F923F9	squitter_jump
	dw rattly_diddy_jump,				$C001	;006E	$F9298B	rattly_diddy_jump
	dw squawks_idle,				$0000	;006F	$F92C08	squawks_idle
if !version == 0
	dw rambi_diddy_jump,				$0001	;0070	$F93036	rambi_diddy_jump
else
	dw rambi_diddy_jump,				$C001	;0070	$F93036	rambi_diddy_jump
endif
	dw enguarde_idle,				$0000	;0071	$F948E6	enguarde_idle
	dw squitter_air,				$0000	;0072	$F9240C	squitter_air
	dw rattly_diddy_air,				$C000	;0073	$F9299D	rattly_diddy_air
	dw squawks_idle,				$0000	;0074	$F92C08	squawks_idle
	dw rambi_diddy_air,				$C000	;0075	$F93048	rambi_diddy_air
	dw enguarde_idle,				$0000	;0076	$F948E6	enguarde_idle
	dw squitter_fall,				$0000	;0077	$F92457	squitter_fall
	dw DATA_F927F3,					$C000	;0078	$F927F3	DATA_F927F3
	dw squawks_idle,				$0000	;0079	$F92C08	squawks_idle
	dw rambi_diddy_fall,				$C800	;007A	$F930B4	rambi_diddy_fall
	dw enguarde_idle,				$0000	;007B	$F948E6	enguarde_idle
	dw squitter_land,				$0000	;007C	$F92449	squitter_land
	dw rattly_diddy_land,				$0000	;007D	$F92AF8	rattly_diddy_land
	dw squawks_idle,				$0000	;007E	$F92C08	squawks_idle
	dw rambi_diddy_land,				$C800	;007F	$F93092	rambi_diddy_land
	dw enguarde_idle,				$0000	;0080	$F948E6	enguarde_idle
	dw squitter_mount,				$0000	;0081	$F92471	squitter_mount
	dw rattly_mount,				$0000	;0082	$F9281F	rattly_mount
	dw squawks_mount,				$0000	;0083	$F92C91	squawks_mount
	dw rambi_diddy_mount,				$0000	;0084	$F92FFC	rambi_diddy_mount
	dw enguarde_diddy_mount,			$0000	;0085	$F9496C	enguarde_diddy_mount
	dw squawks_attack,				$0008	;0086	$F92CA8	squawks_attack
	dw rattly_diddy_charge,				$0008	;0087	$F94A9C	rattly_diddy_charge
	dw squawks_attack,				$0008	;0088	$F92CA8	squawks_attack
	dw rambi_charge,				$A000	;0089	$F9481B	rambi_charge
	dw enguarde_charge,				$A000	;008A	$F94A08	enguarde_charge
	dw squawks_attack_2,				$0008	;008B	$F92D73	squawks_attack_2
	dw squawks_attack_2,				$0008	;008C	$F92D73	squawks_attack_2
	dw squawks_attack_2,				$0008	;008D	$F92D73	squawks_attack_2
	dw rambi_attack,				$A801	;008E	$F947D4	rambi_attack
	dw enguarde_attack,				$0000	;008F	$F94997	enguarde_attack
	dw squitter_barrel_cannon_air,			$0000	;0090	$F92484	squitter_barrel_cannon_air
	dw rattly_barrel_cannon_air,			$0000	;0091	$F92835	rattly_barrel_cannon_air
	dw squawks_idle,				$0000	;0092	$F92C08	squawks_idle
	dw rambi_barrel_cannon_air,			$A800	;0093	$F9317E	rambi_barrel_cannon_air
	dw enguarde_idle,				$0000	;0094	$F948E6	enguarde_idle
	dw squitter_hurt,				$0000	;0095	$F94C5A	squitter_hurt
	dw rattly_hurt,					$0000	;0096	$F94C62	rattly_hurt
	dw squawks_hurt,				$0000	;0097	$F94C6A	squawks_hurt
	dw rambi_hurt,					$0000	;0098	$F94C72	rambi_hurt
	dw enguarde_hurt,				$0000	;0099	$F94C7A	enguarde_hurt
	dw squitter_exit,				$0000	;009A	$F92356	squitter_exit
	dw rattly_diddy_exit,				$0000	;009B	$F92848	rattly_diddy_exit
	dw squawks_exit,				$0000	;009C	$F92B75	squawks_exit
	dw rambi_exit,					$0000	;009D	$F92F53	rambi_exit
	dw enguarde_exit,				$0000	;009E	$F94908	enguarde_exit
	dw diddy_scared,				$0000	;009F	$F91007	diddy_scared
	dw diddy_stunned,				$0000	;00A0	$F91C4E	diddy_stunned
	dw diddy_bonus_exit,				$0000	;00A1	$F91BD2	diddy_bonus_exit
	dw diddy_wind_float,				$0000	;00A2	$F90F96	diddy_wind_float
	dw diddy_bonus_exit_swim,			$0000	;00A3	$F91C0D	diddy_bonus_exit_swim
	dw dixie_idle,					$0000	;00A4	$F93188	dixie_idle
	dw dixie_turn,					$0000	;00A5	$F93BD1	dixie_turn
	dw dixie_walk,					$0000	;00A6	$F9379A	dixie_walk
	dw dixie_run,					$0000	;00A7	$F937D8	dixie_run
	dw dixie_jump,					$0003	;00A8	$F93977	dixie_jump
	dw dixie_air,					$2000	;00A9	$F93982	dixie_air
	dw dixie_fall,					$2000	;00AA	$F93A3D	dixie_fall
	dw dixie_land,					$0000	;00AB	$F93A90	dixie_land
	dw dixie_roll,					$4002	;00AC	$F9418B	dixie_roll
	dw dixie_death,					$0000	;00AD	$F940F3	dixie_death
	dw dixie_glide,					$3000	;00AE	$F94215	dixie_glide
	dw dixie_crouch_start,				$0000	;00AF	$F93738	dixie_crouch_start
	dw dixie_crouch_loop,				$0000	;00B0	$F9374C	dixie_crouch_loop
	dw dixie_crouch_end,				$0000	;00B1	$F93757	dixie_crouch_end
	dw dixie_carry_pickup,				$0004	;00B2	$F93E14	dixie_carry_pickup
	dw dixie_carry_idle,				$0000	;00B3	$F93F4A	dixie_carry_idle
	dw dixie_carry_walk,				$0000	;00B4	$F93F92	dixie_carry_walk
	dw dixie_carry_turn,				$0000	;00B5	$F9401D	dixie_carry_turn
	dw dixie_carry_drop,				$0004	;00B6	$F93E64	dixie_carry_drop
	dw dixie_carry_throw,				$2004	;00B7	$F93EBF	dixie_carry_throw
	dw dixie_carry_jump,				$0001	;00B8	$F94035	dixie_carry_jump
	dw dixie_carry_air,				$2000	;00B9	$F94042	dixie_carry_air
	dw dixie_carry_fall,				$2000	;00BA	$F940CA	dixie_carry_fall
	dw dixie_carry_land,				$0000	;00BB	$F940E3	dixie_carry_land
	dw dixie_barrel_cannon_air,			$2000	;00BC	$F93ADF	dixie_barrel_cannon_air
	dw dixie_slope_slide,				$2000	;00BD	$F93A5B	dixie_slope_slide
	dw dixie_bounce_back,				$2000	;00BE	$F93A72	dixie_bounce_back
	dw dixie_bounce_up,				$2000	;00BF	$F93B11	dixie_bounce_up
	dw dixie_team_bottom_idle,			$0000	;00C0	$F93BE5	dixie_team_bottom_idle
	dw dixie_team_bottom_turn,			$0000	;00C1	$F93C0A	dixie_team_bottom_turn
	dw dixie_team_bottom_walk,			$0000	;00C2	$F93C32	dixie_team_bottom_walk
	dw dixie_team_top_idle,				$0000	;00C3	$F93DF1	dixie_team_top_idle
	dw dixie_team_bottom_jump,			$0001	;00C4	$F93C95	dixie_team_bottom_jump
	dw dixie_team_bottom_air,			$3000	;00C5	$F93CA2	dixie_team_bottom_air
	dw dixie_team_bottom_fall,			$3000	;00C6	$F93CBA	dixie_team_bottom_fall
	dw dixie_team_bottom_land,			$0000	;00C7	$F93CD0	dixie_team_bottom_land
	dw dixie_team_bottom_bounce_up,			$3000	;00C8	$F93CE0	dixie_team_bottom_bounce_up
	dw dixie_team_bottom_throw,			$0000	;00C9	$F93D3A	dixie_team_bottom_throw
	dw dixie_team_top_air,				$9800	;00CA	$F93B43	dixie_team_top_air
	dw dixie_team_top_stunned,			$0000	;00CB	$F93B75	dixie_team_top_stunned
	dw dixie_hurt,					$0000	;00CC	$F938DB	dixie_hurt
	dw dixie_hurt_jump_off_screen,			$0000	;00CD	$F93933	dixie_hurt_jump_off_screen
	dw dixie_honey_wall_idle,			$0000	;00CE	$F942FA	dixie_honey_wall_idle
	dw dixie_honey_floor_idle,			$0000	;00CF	$F943E8	dixie_honey_floor_idle
	dw dixie_honey_floor_walk,			$0000	;00D0	$F943D4	dixie_honey_floor_walk
	dw dixie_honey_floor_carry_idle,		$0000	;00D1	$F943F9	dixie_honey_floor_carry_idle
	dw dixie_rope_vertical_single_idle,		$0000	;00D2	$F94446	dixie_rope_vertical_single_idle
	dw dixie_rope_vertical_single_up,		$0000	;00D3	$F9447A	dixie_rope_vertical_single_up
	dw dixie_rope_vertical_single_down,		$0000	;00D4	$F9444E	dixie_rope_vertical_single_down
	dw dixie_rope_vertical_single_turn,		$0000	;00D5	$F944A6	dixie_rope_vertical_single_turn
	dw DATA_F944C6,					$0000	;00D6	$F944C6	DATA_F944C6
	dw dixie_rope_vertical_single_to_double,	$0000	;00D7	$F944E6	dixie_rope_vertical_single_to_double
	dw dixie_rope_vertical_double_to_single,	$0000	;00D8	$F94509	dixie_rope_vertical_double_to_single
	dw dixie_rope_vertical_double_idle,		$0000	;00D9	$F9452C	dixie_rope_vertical_double_idle
	dw dixie_rope_vertical_double_up,		$0000	;00DA	$F94534	dixie_rope_vertical_double_up
	dw dixie_rope_vertical_double_down,		$0000	;00DB	$F94554	dixie_rope_vertical_double_down
	dw dixie_rope_horizontal_idle,			$0000	;00DC	$F94574	dixie_rope_horizontal_idle
	dw dixie_rope_horizontal_move,			$0000	;00DD	$F94591	dixie_rope_horizontal_move
	dw dixie_follow_walk,				$0000	;00DE	$F93768	dixie_follow_walk
	dw dixie_follow_walk,				$0000	;00DF	$F93768	dixie_follow_walk
	dw dixie_follow_run,				$0000	;00E0	$F93816	dixie_follow_run
	dw dixie_follow_jump,				$0000	;00E1	$F938F5	dixie_follow_jump
	dw dixie_follow_air,				$0000	;00E2	$F93A26	dixie_follow_air
	dw dixie_bounce_up,				$0000	;00E3	$F93B11	dixie_bounce_up
	dw dixie_turn,					$0000	;00E4	$F93BD1	dixie_turn
	dw dixie_hook_idle,				$0000	;00E5	$F945D2	dixie_hook_idle
	dw dixie_swim_idle,				$0000	;00E6	$F9461F	dixie_swim_idle
	dw dixie_swim_turn,				$0000	;00E7	$F94654	dixie_swim_turn
	dw dixie_celebrate,				$0000	;00E8	$F93470	dixie_celebrate
	dw dixie_level_end_run,				$0000	;00E9	$F936F0	dixie_level_end_run
	dw DATA_F9372B,					$0000	;00EA	$F9372B	DATA_F9372B
	dw DATA_F93730,					$0000	;00EB	$F93730	DATA_F93730
	dw dixie_swap_to,				$0000	;00EC	$F94747	dixie_swap_to
	dw dixie_swap_idle,				$0000	;00ED	$F947CF	dixie_swap_idle
	dw dixie_swap_air,				$0000	;00EE	$F93AAD	dixie_swap_air
	dw dixie_krockhead_bounce,			$0000	;00EF	$F933DA	dixie_krockhead_bounce
	dw dixie_carry_krockhead_bounce,		$0000	;00F0	$F933E8	dixie_carry_krockhead_bounce
	dw dixie_skull_cart,				$0000	;00F1	$F94C82	dixie_skull_cart
	dw dixie_squitter_mount,			$0000	;00F2	$F9423E	dixie_squitter_mount
	dw dixie_rattly_idle,				$0000	;00F3	$F94287	dixie_rattly_idle
	dw dixie_squawks_idle,				$0000	;00F4	$F942E0	dixie_squawks_idle
	dw dixie_animal_mount,				$0000	;00F5	$F9428F	dixie_animal_mount
	dw dixie_animal_mount,				$0000	;00F6	$F9428F	dixie_animal_mount
	dw dixie_animal_idle,				$0000	;00F7	$F94297	dixie_animal_idle
	dw dixie_animal_idle,				$0000	;00F8	$F94297	dixie_animal_idle
	dw dixie_animal_idle,				$0000	;00F9	$F94297	dixie_animal_idle
	dw dixie_animal_idle,				$0000	;00FA	$F94297	dixie_animal_idle
	dw dixie_animal_idle,				$0000	;00FB	$F94297	dixie_animal_idle
	dw animal_attack,				$0000	;00FC	$F949EB	animal_attack
	dw animal_attack,				$0000	;00FD	$F949EB	animal_attack
	dw animal_attack,				$0000	;00FE	$F949EB	animal_attack
	dw animal_attack,				$0000	;00FF	$F949EB	animal_attack
	dw animal_attack,				$0000	;0100	$F949EB	animal_attack
	dw squitter_idle,				$0000	;0101	$F92292	squitter_idle
	dw rattly_dixie_idle,				$C000	;0102	$F9248E	rattly_dixie_idle
	dw squawks_idle,				$0000	;0103	$F92C08	squawks_idle
	dw rambi_idle,					$A000	;0104	$F92E59	rambi_idle
	dw enguarde_idle,				$0000	;0105	$F948E6	enguarde_idle
	dw squitter_turn,				$0000	;0106	$F922B7	squitter_turn
	dw DATA_F927DF,					$C000	;0107	$F927DF	DATA_F927DF
	dw squawks_turn,				$0000	;0108	$F92C7D	squawks_turn
	dw rambi_turn,					$0000	;0109	$F92EAE	rambi_turn
	dw enguarde_turn,				$0000	;010A	$F94948	enguarde_turn
	dw squitter_walk,				$0000	;010B	$F922CB	squitter_walk
	dw rattly_dixie_idle,				$C000	;010C	$F9248E	rattly_dixie_idle
	dw squawks_idle,				$0000	;010D	$F92C08	squawks_idle
	dw rambi_walk,					$A800	;010E	$F92EC2	rambi_walk
	dw enguarde_idle,				$0000	;010F	$F948E6	enguarde_idle
	dw squitter_jump,				$0001	;0110	$F923F9	squitter_jump
	dw rattly_dixie_jump,				$C001	;0111	$F925D7	rattly_dixie_jump
	dw squawks_idle,				$0000	;0112	$F92C08	squawks_idle
if !version == 0
	dw rambi_dixie_jump,				$0001	;0113	$F930F4	rambi_dixie_jump
else
	dw rambi_dixie_jump,				$C001	;0113	$F930F4	rambi_dixie_jump
endif
	dw enguarde_idle,				$0000	;0114	$F948E6	enguarde_idle
	dw squitter_air,				$0000	;0115	$F9240C	squitter_air
	dw rattly_dixie_air,				$C000	;0116	$F925E9	rattly_dixie_air
	dw squawks_idle,				$0000	;0117	$F92C08	squawks_idle
	dw rambi_dixie_air,				$C800	;0118	$F93104	rambi_dixie_air
	dw enguarde_idle,				$0000	;0119	$F948E6	enguarde_idle
	dw squitter_fall,				$0000	;011A	$F92457	squitter_fall
	dw DATA_F927F3,					$C000	;011B	$F927F3	DATA_F927F3
	dw squawks_idle,				$0000	;011C	$F92C08	squawks_idle
	dw rambi_dixie_fall,				$C800	;011D	$F9315D	rambi_dixie_fall
	dw enguarde_idle,				$0000	;011E	$F948E6	enguarde_idle
	dw squitter_land,				$0000	;011F	$F92449	squitter_land
	dw rattly_dixie_land,				$0000	;0120	$F92762	rattly_dixie_land
	dw squawks_idle,				$0000	;0121	$F92C08	squawks_idle
	dw rambi_dixie_land,				$C800	;0122	$F93142	rambi_dixie_land
	dw enguarde_idle,				$0000	;0123	$F948E6	enguarde_idle
	dw squitter_mount,				$0000	;0124	$F92471	squitter_mount
	dw rattly_mount,				$0000	;0125	$F9281F	rattly_mount
	dw squawks_mount,				$0000	;0126	$F92C91	squawks_mount
	dw rambi_dixie_mount,				$0000	;0127	$F93171	rambi_dixie_mount
	dw enguarde_dixie_mount,			$0000	;0128	$F9495C	enguarde_dixie_mount
	dw squawks_attack,				$0008	;0129	$F92CA8	squawks_attack
	dw rattly_dixie_charge,				$0008	;012A	$F94B80	rattly_dixie_charge
	dw squawks_attack,				$0008	;012B	$F92CA8	squawks_attack
	dw rambi_charge,				$A000	;012C	$F9481B	rambi_charge
	dw enguarde_charge,				$0000	;012D	$F94A08	enguarde_charge
	dw squawks_attack_2,				$0008	;012E	$F92D73	squawks_attack_2
	dw squawks_attack_2,				$0008	;012F	$F92D73	squawks_attack_2
	dw squawks_attack_2,				$0008	;0130	$F92D73	squawks_attack_2
	dw rambi_attack,				$A801	;0131	$F947D4	rambi_attack
	dw enguarde_attack,				$0000	;0132	$F94997	enguarde_attack
	dw squitter_barrel_cannon_air,			$0000	;0133	$F92484	squitter_barrel_cannon_air
	dw rattly_barrel_cannon_air,			$0000	;0134	$F92835	rattly_barrel_cannon_air
	dw squawks_idle,				$0000	;0135	$F92C08	squawks_idle
	dw rambi_barrel_cannon_air,			$A800	;0136	$F9317E	rambi_barrel_cannon_air
	dw enguarde_idle,				$0000	;0137	$F948E6	enguarde_idle
	dw squitter_hurt,				$0000	;0138	$F94C5A	squitter_hurt
	dw rattly_hurt,					$0000	;0139	$F94C62	rattly_hurt
	dw squawks_hurt,				$0000	;013A	$F94C6A	squawks_hurt
	dw rambi_hurt,					$0000	;013B	$F94C72	rambi_hurt
	dw enguarde_hurt,				$0000	;013C	$F94C7A	enguarde_hurt
	dw squitter_exit,				$0000	;013D	$F92356	squitter_exit
	dw rattly_dixie_exit,				$0000	;013E	$F92491	rattly_dixie_exit
	dw squawks_exit,				$0000	;013F	$F92B75	squawks_exit
	dw rambi_exit,					$0000	;0140	$F92F53	rambi_exit
	dw enguarde_exit,				$0000	;0141	$F94908	enguarde_exit
	dw dixie_scared,				$0000	;0142	$F93402	dixie_scared
	dw dixie_stunned,				$0000	;0143	$F938D0	dixie_stunned
	dw dixie_bonus_exit,				$0000	;0144	$F93848	dixie_bonus_exit
	dw dixie_wind_float,				$0000	;0145	$F93379	dixie_wind_float
	dw dixie_bonus_exit_swim,			$0000	;0146	$F9388C	dixie_bonus_exit_swim
	dw squitter_no_player_idle,			$0000	;0147	$F96784	squitter_no_player_idle
	dw rattly_no_player_idle,			$0000	;0148	$F96805	rattly_no_player_idle
	dw squawks_no_player_idle,			$0000	;0149	$F9690D	squawks_no_player_idle
	dw rambi_no_player_idle,			$0000	;014A	$F96941	rambi_no_player_idle
	dw enguarde_no_player_idle,			$0000	;014B	$F970B1	enguarde_no_player_idle
	dw squitter_hurt_run,				$0000	;014C	$F967C4	squitter_hurt_run
	dw rattly_hurt_run,				$0000	;014D	$F968A8	rattly_hurt_run
	dw squawks_hurt_run,				$0000	;014E	$F96939	squawks_hurt_run
	dw rambi_hurt_run,				$0000	;014F	$F96A8A	rambi_hurt_run
	dw enguarde_hurt_run,				$0000	;0150	$F970CB	enguarde_hurt_run
	dw rain_cloud_spawn,				$0000	;0151	$F97006	rain_cloud_spawn
	dw rain_cloud_loop,				$0000	;0152	$F96FF5	rain_cloud_loop
	dw unused_dixie_tears,				$0000	;0153	$F97026	unused_dixie_tears
	dw unused_rock,					$0000	;0154	$F966DB	unused_rock
	dw DATA_F966F8,					$0000	;0155	$F966F8	DATA_F966F8
	dw squawks_egg_projectile,			$0000	;0156	$F96712	squawks_egg_projectile
	dw cannon_ball_fragment,			$0000	;0157	$F9672C	cannon_ball_fragment
	dw krow_egg_fragment,				$0000	;0158	$F96746	krow_egg_fragment
	dw krow_egg_fragment_2,				$0000	;0159	$F96760	krow_egg_fragment_2
	dw DATA_F966D9,					$0000	;015A	$F966D9	DATA_F966D9
	dw DATA_F94DE7,					$0000	;015B	$F94DE7	DATA_F94DE7
	dw dixie_hurt_tears,				$0000	;015C	$F94DB3	dixie_hurt_tears
	dw diddy_hurt_birds,				$0000	;015D	$F94DDC	diddy_hurt_birds
	dw DATA_F9677F,					$0000	;015E	$F9677F	DATA_F9677F
	dw gangplank_galley_sun,			$0000	;015F	$F9677A	gangplank_galley_sun
	dw klomp_walk,					$0000	;0160	$F953CE	klomp_walk
	dw klomp_turn,					$0000	;0161	$F953F7	klomp_turn
	dw klomp_death,					$0000	;0162	$F95416	klomp_death
	dw click_clack_walk,				$0000	;0163	$F94F6F	click_clack_walk
	dw click_clack_stunned_airborne,		$0000	;0164	$F94FA8	click_clack_stunned_airborne
	dw click_clack_turn,				$0000	;0165	$F94F8F	click_clack_turn
	dw click_clack_stunned,				$0000	;0166	$F94FCA	click_clack_stunned
	dw click_clack_recover,				$0000	;0167	$F94FE4	click_clack_recover
	dw collision_spark_effect,			$0000	;0168	$F96C9A	collision_spark_effect
	dw kutlass_walk,				$0000	;0169	$F95D3E	kutlass_walk
	dw kutlass_turn,				$0000	;016A	$F95D61	kutlass_turn
	dw kutlass_chase_turn,				$0000	;016B	$F95D77	kutlass_chase_turn
	dw kutlass_chase_run,				$0000	;016C	$F95D8D	kutlass_chase_run
	dw kutlass_attack,				$0000	;016D	$F95DAD	kutlass_attack
	dw kutlass_death,				$0000	;016E	$F95E33	kutlass_death
	dw neek_walk,					$0000	;016F	$F94F1F	neek_walk
	dw neek_turn,					$0000	;0170	$F94F3C	neek_turn
	dw neek_death,					$0000	;0171	$F94F58	neek_death
	dw kruncha_walk,				$0000	;0172	$F9542D	kruncha_walk
	dw kruncha_turn,				$0000	;0173	$F95459	kruncha_turn
	dw kruncha_death,				$0000	;0174	$F95472	kruncha_death
	dw kruncha_angry,				$0000	;0175	$F9548F	kruncha_angry
	dw kruncha_calm,				$0000	;0176	$F954FC	kruncha_calm
	dw lockjaw_swim,				$0000	;0177	$F95706	lockjaw_swim
	dw lockjaw_turn,				$0000	;0178	$F9572F	lockjaw_turn
	dw lockjaw_chomp_left,				$0000	;0179	$F9574B	lockjaw_chomp_left
	dw lockjaw_death,				$0000	;017A	$F957F7	lockjaw_death
	dw lockjaw_chomp_right,				$0000	;017B	$F95802	lockjaw_chomp_right
	dw lockjaw_attack,				$0000	;017C	$F95849	lockjaw_attack
	dw kannon_shoot_horizontal,			$0000	;017D	$F95C54	kannon_shoot_horizontal
	dw kannon_shoot_down,				$0000	;017E	$F95C8F	kannon_shoot_down
	dw kannon_death,				$0000	;017F	$F95C3D	kannon_death
	dw shuri_idle,					$0000	;0180	$F958FB	shuri_idle
	dw shuri_spin,					$0000	;0181	$F95915	shuri_spin
	dw shuri_death,					$0000	;0182	$F95947	shuri_death
	dw puftup_swim,					$0000	;0183	$F95F40	puftup_swim
	dw puftup_turn_inflate,				$0000	;0184	$F95F69	puftup_turn_inflate
	dw puftup_turn_deflate,				$0000	;0185	$F95F82	puftup_turn_deflate
	dw puftup_inflate,				$0000	;0186	$F95FBC	puftup_inflate
	dw puftup_deflate,				$0000	;0187	$F95FE8	puftup_deflate
	dw puftup_explode,				$0000	;0188	$F96010	puftup_explode
	dw puftup_death,				$0000	;0189	$F96040	puftup_death
	dw puftup_spike,				$0000	;018A	$F96054	puftup_spike
	dw cat_o_9_tails_idle,				$0000	;018B	$F9606E	cat_o_9_tails_idle
	dw cat_o_9_tails_stand,				$0000	;018C	$F96133	cat_o_9_tails_stand
	dw cat_o_9_tails_chase,				$0000	;018D	$F96113	cat_o_9_tails_chase
	dw cat_o_9_tails_spin,				$0000	;018E	$F9614F	cat_o_9_tails_spin
	dw cat_o_9_tails_death,				$0000	;018F	$F96175	cat_o_9_tails_death
	dw kaboing_jump,				$0000	;0190	$F95952	kaboing_jump
	dw kaboing_jump_2,				$0000	;0191	$F959E3	kaboing_jump_2
	dw kaboing_death,				$0000	;0192	$F95A4D	kaboing_death
	dw mini_necky_idle,				$0000	;0193	$F95536	mini_necky_idle
	dw mini_necky_swoop,				$0000	;0194	$F9555F	mini_necky_swoop
	dw mini_necky_death,				$0000	;0195	$F95594	mini_necky_death
	dw zinger_horizontal,				$0000	;0196	$F95A81	zinger_horizontal
	dw zinger_idle,					$0000	;0197	$F95A67	zinger_idle
	dw zinger_turn,					$0000	;0198	$F95A9E	zinger_turn
	dw zinger_death,				$0000	;0199	$F95AB4	zinger_death
	dw flitter_horizontal,				$0000	;019A	$F95B1B	flitter_horizontal
	dw flitter_idle,				$0000	;019B	$F95B01	flitter_idle
	dw flitter_turn,				$0000	;019C	$F95B38	flitter_turn
	dw flitter_death,				$0000	;019D	$F95B57	flitter_death
	dw unused_honey_splash,				$0000	;019E	$F96DA7	unused_honey_splash
	dw klampon_walk,				$0000	;019F	$F955AB	klampon_walk
	dw klampon_turn,				$0000	;01A0	$F955D7	klampon_turn
	dw klampon_death,				$0000	;01A1	$F955F0	klampon_death
	dw klampon_bite,				$0000	;01A2	$F9560A	klampon_bite
	dw spiny_walk,					$0000	;01A3	$F95669	spiny_walk
	dw spiny_turn,					$0000	;01A4	$F9568C	spiny_turn
	dw spiny_death,					$0000	;01A5	$F956A2	spiny_death
	dw klinger_idle,				$0000	;01A6	$F95B96	klinger_idle
	dw klinger_death,				$0000	;01A7	$F95C26	klinger_death
	dw DATA_F95B77,					$0000	;01A8	$F95B77	DATA_F95B77
	dw flotsam_swim,				$0000	;01A9	$F95896	flotsam_swim
	dw flotsam_turn,				$0000	;01AA	$F958BF	flotsam_turn
	dw flotsam_death,				$0000	;01AB	$F958E7	flotsam_death
	dw haunted_hall_gate,				$0000	;01AC	$F96446	haunted_hall_gate
	dw haunted_hall_gate_2,				$0000	;01AD	$F9649C	haunted_hall_gate_2
	dw target_terror_gate,				$0000	;01AE	$F964EC	target_terror_gate
	dw klank_idle,					$0000	;01AF	$F96501	klank_idle
	dw klank_death,					$0000	;01B0	$F9655A	klank_death
	dw skull_cart_spark,				$0000	;01B1	$F96571	skull_cart_spark
	dw plus_barrel_idle,				$0000	;01B2	$F965A0	plus_barrel_idle
	dw minus_barrel_idle,				$0000	;01B3	$F965A5	minus_barrel_idle
	dw plus_barrel_idle_2,				$0000	;01B4	$F965AA	plus_barrel_idle_2
	dw ship_deck_water_splash,			$0000	;01B5	$F94EE4	ship_deck_water_splash
	dw water_surface_splash,			$0000	;01B6	$F96FDE	water_surface_splash
	dw clapper_idle,				$0000	;01B7	$F970D3	clapper_idle
	dw clapper_interact,				$0000	;01B8	$F97129	clapper_interact
	dw dixie_map,					$0000	;01B9	$F96AE2	dixie_map
	dw diddy_map,					$0000	;01BA	$F96AC8	diddy_map
	dw smoke_cloud,					$0000	;01BB	$F96AFC	smoke_cloud
	dw fireball_explosion,				$0000	;01BC	$F94E95	fireball_explosion
	dw firework_1,					$0000	;01BD	$F96B9B	firework_1
	dw firework_2,					$0000	;01BE	$F96BE2	firework_2
	dw smoke_cloud_2,				$0000	;01BF	$F95CB8	smoke_cloud_2
	dw DATA_F95CE4,					$0000	;01C0	$F95CE4	DATA_F95CE4
	dw banana_coin_idle,				$0000	;01C1	$F96B19	banana_coin_idle
	dw krem_coin_idle,				$0000	;01C2	$F96B33	krem_coin_idle
	dw dk_coin_idle,				$0000	;01C3	$F96B4D	dk_coin_idle
	dw krem_coin_collected,				$0000	;01C4	$F9707E	krem_coin_collected
	dw dk_coin_collected,				$0000	;01C5	$F97083	dk_coin_collected
	dw tire_idle,					$0000	;01C6	$F965EE	tire_idle
	dw cranky_idle,					$0000	;01C7	$F98B38	cranky_idle
	dw cranky_shake_cane,				$0000	;01C8	$F98B4C	cranky_shake_cane
	dw cranky_lean,					$0000	;01C9	$F98BBA	cranky_lean
	dw funky_surf,					$0000	;01CA	$F98BE0	funky_surf
	dw funky_board_surf,				$0000	;01CB	$F98C0F	funky_board_surf
	dw funky_idle,					$0000	;01CC	$F98C3E	funky_idle
	dw funky_idle_to_surf,				$0000	;01CD	$F98C52	funky_idle_to_surf
	dw funky_surf_to_idle,				$0000	;01CE	$F98C6C	funky_surf_to_idle
	dw funky_board_idle,				$0000	;01CF	$F98C83	funky_board_idle
	dw funky_board_idle_to_surf,			$0000	;01D0	$F98C97	funky_board_idle_to_surf
	dw funky_board_surf_to_idle,			$0000	;01D1	$F98CB1	funky_board_surf_to_idle
	dw swanky_point,				$0000	;01D2	$F98CC8	swanky_point
	dw swanky_idle,					$0000	;01D3	$F98D3C	swanky_idle
	dw swanky_touch_hair,				$0000	;01D4	$F98D59	swanky_touch_hair
	dw swanky_touch_hair_to_idle,			$0000	;01D5	$F98D76	swanky_touch_hair_to_idle
	dw swanky_idle_2,				$0000	;01D6	$F98D87	swanky_idle_2
	dw swanky_idle_3,				$0000	;01D7	$F98D92	swanky_idle_3
	dw klubba_barrel,				$0000	;01D8	$F98B30	klubba_barrel
	dw wrinkly_open_book,				$0000	;01D9	$F98DCD	wrinkly_open_book
	dw wrinkly_read,				$0000	;01DA	$F98E11	wrinkly_read
	dw wrinkly_turn_page_forward,			$0000	;01DB	$F98E25	wrinkly_turn_page_forward
	dw wrinkly_read_2,				$0000	;01DC	$F98E4E	wrinkly_read_2
	dw wrinkly_turn_page_back,			$0000	;01DD	$F98E5F	wrinkly_turn_page_back
	dw wrinkly_read_3,				$0000	;01DE	$F98E88	wrinkly_read_3
	dw wrinkly_turn_page_fast,			$0000	;01DF	$F98E93	wrinkly_turn_page_fast
	dw wrinkly_shirt_open_book,			$0000	;01E0	$F98EBC	wrinkly_shirt_open_book
	dw wrinkly_shirt_read,				$0000	;01E1	$F98F00	wrinkly_shirt_read
	dw wrinkly_shirt_turn_page_forward,		$0000	;01E2	$F98F14	wrinkly_shirt_turn_page_forward
	dw wrinkly_shirt_read_2,			$0000	;01E3	$F98F3D	wrinkly_shirt_read_2
	dw wrinkly_shirt_turn_page_back,		$0000	;01E4	$F98F4E	wrinkly_shirt_turn_page_back
	dw wrinkly_shirt_read_3,			$0000	;01E5	$F98F77	wrinkly_shirt_read_3
	dw wrinkly_shirt_turn_page_fast,		$0000	;01E6	$F98F82	wrinkly_shirt_turn_page_fast
	dw klubba_attack,				$0000	;01E7	$F972DC	klubba_attack
	dw klubba_club_attack,				$0000	;01E8	$F9730D	klubba_club_attack
	dw funky_barrel_wings,				$0000	;01E9	$F98B07	funky_barrel_wings
	dw funky_barrel,				$0000	;01EA	$F98B0F	funky_barrel
	dw funky_barrel_propeller,			$0000	;01EB	$F98B17	funky_barrel_propeller
	dw funky_barrel_map,				$0000	;01EC	$F98B25	funky_barrel_map
	dw krook_idle,					$0000	;01ED	$F95E4A	krook_idle
	dw krook_walk,					$0000	;01EE	$F95E58	krook_walk
	dw krook_turn,					$0000	;01EF	$F95E87	krook_turn
	dw krook_turn_throw,				$0000	;01F0	$F95E9D	krook_turn_throw
	dw krook_throw,					$0000	;01F1	$F95EB3	krook_throw
	dw krook_death,					$0000	;01F2	$F95F06	krook_death
	dw krook_thrown_hook,				$0000	;01F3	$F95F20	krook_thrown_hook
	dw klobber_wake,				$0000	;01F4	$F950B2	klobber_wake
	dw klobber_run,					$0000	;01F5	$F95302	klobber_run
	dw klobber_turn,				$0000	;01F6	$F95195	klobber_turn
	dw klobber_hide,				$0000	;01F7	$F951EC	klobber_hide
	dw dust_particle,				$0000	;01F8	$F94ECA	dust_particle
	dw lava_splash,					$0000	;01F9	$F95CF5	lava_splash
	dw kreepy_krow_head_yell,			$0000	;01FA	$F986D6	kreepy_krow_head_yell
	dw kudgel_attack_land,				$0000	;01FB	$F972AF	kudgel_attack_land
	dw kreepy_krow_head_final_hit,			$0000	;01FC	$F989E6	kreepy_krow_head_final_hit
	dw krow_body_credits,				$0000	;01FD	$F98741	krow_body_credits
	dw kreepy_krow_death_spark,			$0000	;01FE	$F9864F	kreepy_krow_death_spark
	dw kreepy_krow_death_spark_2,			$0000	;01FF	$F98684	kreepy_krow_death_spark_2
	dw krow_body_idle,				$0000	;0200	$F98709	krow_body_idle
	dw krow_body_fly,				$0000	;0201	$F9875E	krow_body_fly
	dw krow_body_final_hit,				$0000	;0202	$F98778	krow_body_final_hit
	dw krow_body_turn,				$0000	;0203	$F98798	krow_body_turn
	dw krow_head_idle,				$0000	;0204	$F987C1	krow_head_idle
	dw krow_head_swoop_attack,			$0000	;0205	$F987C9	krow_head_swoop_attack
	dw krow_head_turn,				$0000	;0206	$F987F9	krow_head_turn
	dw krow_body_hurt,				$0000	;0207	$F986EF	krow_body_hurt
	dw krow_head_hurt,				$0000	;0208	$F986BA	krow_head_hurt
	dw krow_angry_head,				$0000	;0209	$F987D9	krow_angry_head
	dw krow_head_final_hit,				$0000	;020A	$F98A18	krow_head_final_hit
	dw krow_body_defeat,				$0000	;020B	$F98A56	krow_body_defeat
	dw krow_head_defeat,				$0000	;020C	$F98A6F	krow_head_defeat
	dw krow_body_struggle,				$0000	;020D	$F98A8E	krow_body_struggle
	dw krow_head_struggle,				$0000	;020E	$F98AC6	krow_head_struggle
	dw kleever_shoot_fire_trail,			$0000	;020F	$F982C8	kleever_shoot_fire_trail
	dw kleever_idle,				$0000	;0210	$F98416	kleever_idle
	dw kleever_arm_idle,				$0000	;0211	$F983FC	kleever_arm_idle
	dw kleever_shoot_fireball,			$0000	;0212	$F9831D	kleever_shoot_fireball
	dw kleever_arm_shoot_fireball,			$0000	;0213	$F98399	kleever_arm_shoot_fireball
	dw kleever_fireball,				$0000	;0214	$F983E2	kleever_fireball
	dw kleever_turn,				$0000	;0215	$F9841E	kleever_turn
	dw kleever_arm_turn,				$0000	;0216	$F98441	kleever_arm_turn
	dw kleever_charge_attack,			$0000	;0217	$F98468	kleever_charge_attack
	dw kleever_lava_bubbles,			$0000	;0218	$F98303	kleever_lava_bubbles
	dw kleever_charge_wait,				$0000	;0219	$F98457	kleever_charge_wait
	dw kleever_attack,				$0000	;021A	$F984BA	kleever_attack
	dw kleever_fragment,				$0000	;021B	$F9850D	kleever_fragment
	dw kleever_fragment_2,				$0000	;021C	$F98521	kleever_fragment_2
	dw kleever_fragment_3,				$0000	;021D	$F98601	kleever_fragment_3
	dw kleever_fragment_4,				$0000	;021E	$F98535	kleever_fragment_4
	dw kleever_fragment_5,				$0000	;021F	$F98567	kleever_fragment_5
	dw kleever_fragment_6,				$0000	;0220	$F98599	kleever_fragment_6
	dw kleever_fragment_7,				$0000	;0221	$F985B3	kleever_fragment_7
	dw kleever_fragment_8,				$0000	;0222	$F985CD	kleever_fragment_8
	dw kleever_fragment_9,				$0000	;0223	$F985E7	kleever_fragment_9
	dw krool_soaked_puddle,				$0000	;0224	$F975D4	krool_soaked_puddle
	dw krool_water_drop,				$0000	;0225	$F975DC	krool_water_drop
	dw krool_water_drop_2,				$0000	;0226	$F975E6	krool_water_drop_2
	dw krool_water_drop_3,				$0000	;0227	$F975F0	krool_water_drop_3
	dw krool_water_drop_4,				$0000	;0228	$F975FA	krool_water_drop_4
	dw krool_water_drop_5,				$0000	;0229	$F97604	krool_water_drop_5
	dw yoshi_idle,					$0000	;022A	$F971ED	yoshi_idle
	dw mario_idle,					$0000	;022B	$F97213	mario_idle
	dw link_idle,					$0000	;022C	$F9725A	link_idle
	dw klubba_barrel_sparkle,			$0000	;022D	$F97292	klubba_barrel_sparkle
	dw kleever_body_death,				$0000	;022E	$F9861B	kleever_body_death
	dw kleever_death_fire_trail,			$0000	;022F	$F98635	kleever_death_fire_trail
	dw king_zing_idle,				$0000	;0230	$F980B7	king_zing_idle
	dw king_zing_turn,				$0000	;0231	$F980D1	king_zing_turn
	dw king_zing_stinger_idle,			$0000	;0232	$F980E7	king_zing_stinger_idle
	dw king_zing_stinger_turn,			$0000	;0233	$F98101	king_zing_stinger_turn
	dw king_zing_hurt,				$0000	;0234	$F98111	king_zing_hurt
	dw king_zing_stinger_hurt,			$0000	;0235	$F9814E	king_zing_stinger_hurt
	dw king_zing_spike_up,				$0000	;0236	$F981B8	king_zing_spike_up
	dw king_zing_spike_up_right,			$0000	;0237	$F981C0	king_zing_spike_up_right
	dw king_zing_spike_right,			$0000	;0238	$F981C8	king_zing_spike_right
	dw king_zing_spike_down_right,			$0000	;0239	$F981D0	king_zing_spike_down_right
	dw king_zing_spike_down,			$0000	;023A	$F981D8	king_zing_spike_down
	dw king_zing_spike_down_left,			$0000	;023B	$F981E0	king_zing_spike_down_left
	dw king_zing_spike_left,			$0000	;023C	$F981E8	king_zing_spike_left
	dw king_zing_spike_up_left,			$0000	;023D	$F981F0	king_zing_spike_up_left
	dw king_zing_smoke_medium,			$0000	;023E	$F981F8	king_zing_smoke_medium
	dw king_zing_smoke_large,			$0000	;023F	$F9822D	king_zing_smoke_large
	dw king_zing_small_idle,			$0000	;0240	$F98188	king_zing_small_idle
	dw king_zing_small_turn,			$0000	;0241	$F981A2	king_zing_small_turn
	dw smoke_cloud_3,				$0000	;0242	$F98259	smoke_cloud_3
	dw donkey_idle,					$0000	;0243	$F977AB	donkey_idle
	dw donkey_rope_idle,				$0000	;0244	$F977D6	donkey_rope_idle
	dw donkey_hurt,					$0000	;0245	$F977EA	donkey_hurt
	dw donkey_rope_hurt,				$0000	;0246	$F97818	donkey_rope_hurt
	dw donkey_scared,				$0000	;0247	$F97843	donkey_scared
	dw donkey_rope_scared,				$0000	;0248	$F978F9	donkey_rope_scared
	dw donkey_free,					$0000	;0249	$F979A9	donkey_free
	dw donkey_punch,				$0000	;024A	$F979BA	donkey_punch
	dw krool_melee_donkey,				$0000	;024B	$F97725	krool_melee_donkey
	dw krool_gun_melee_donkey,			$0000	;024C	$F97748	krool_gun_melee_donkey
	dw krool_melee_donkey_heavy,			$0000	;024D	$F97768	krool_melee_donkey_heavy
	dw krool_gun_melee_donkey_heavy,		$0000	;024E	$F9778B	krool_gun_melee_donkey_heavy
	dw donkey_rope_upper,				$0000	;024F	$F97A22	donkey_rope_upper
	dw krool_shoot_donkey,				$0000	;0250	$F979FC	krool_shoot_donkey
	dw krool_gun_shoot_donkey,			$0000	;0251	$F97A0F	krool_gun_shoot_donkey
	dw donkey_shot_by_krool,			$0000	;0252	$F976EA	donkey_shot_by_krool
	dw donkey_rope_shot_by_krool,			$0000	;0253	$F97709	donkey_rope_shot_by_krool
	dw krool_donkey_punched,			$0000	;0254	$F979EC	krool_donkey_punched
	dw krool_gun_donkey_punched,			$0000	;0255	$F979F4	krool_gun_donkey_punched
	dw lost_world_rock_step,			$0000	;0256	$F98FAB	lost_world_rock_step
	dw krool_lost_soaked,				$0000	;0257	$F97627	krool_lost_soaked
	dw krool_lost_gun_soaked,		$0000	;0258	$F9767A	krool_lost_gun_soaked
	dw krool_fish,					$0000	;0259	$F976BE	krool_fish
	dw krool_lost_final_hit,			$0000	;025A	$F97550	krool_lost_final_hit
	dw krool_lost_gun_final_hit,		$0000	;025B	$F97597	krool_lost_gun_final_hit
	dw krool_map_fall,				$0000	;025C	$F975CC	krool_map_fall
	dw krow_head_yell,				$0000	;025D	$F986A1	krow_head_yell
	dw krool_idle,					$0000	;025E	$F97A2A	krool_idle
	dw krool_gun_idle,				$0000	;025F	$F97A38	krool_gun_idle
	dw krool_dash,					$0000	;0260	$F97A5A	krool_dash
	dw krool_gun_dash,				$0000	;0261	$F97A7A	krool_gun_dash
	dw krool_dash_end,				$0000	;0262	$F97A91	krool_dash_end
	dw krool_gun_dash_end,				$0000	;0263	$F97AB0	krool_gun_dash_end
	dw krool_shoot,					$0000	;0264	$F97AD2	krool_shoot
	dw krool_gun_shoot,				$0000	;0265	$F97AE5	krool_gun_shoot
	dw krool_shoot_fish,				$0000	;0266	$F97AF8	krool_shoot_fish
	dw krool_gun_shoot_fish,			$0000	;0267	$F97B11	krool_gun_shoot_fish
	dw krool_cannon_ball_spikes_expanded,		$0000	;0268	$F97B2A	krool_cannon_ball_spikes_expanded
	dw krool_dash_fire,				$0000	;0269	$F97B7A	krool_dash_fire
	dw krool_vacuum,				$0000	;026A	$F97B94	krool_vacuum
	dw krool_gun_vacuum,				$0000	;026B	$F97B9C	krool_gun_vacuum
	dw krool_vacuum_particles,			$0000	;026C	$F97BA4	krool_vacuum_particles
	dw krool_melee,					$0000	;026D	$F97BBE	krool_melee
	dw krool_gun_melee,				$0000	;026E	$F97BF0	krool_gun_melee
	dw smoke_cloud_4,				$0000	;026F	$F97C16	smoke_cloud_4
	dw krool_backfire,				$0000	;0270	$F97C42	krool_backfire
	dw krool_gun_backfire,				$0000	;0271	$F97C83	krool_gun_backfire
	dw krool_fireball,				$0000	;0272	$F97D34	krool_fireball
	dw krool_soot_eyes_blink,			$0000	;0273	$F97D66	krool_soot_eyes_blink
	dw krool_soot_eyes_angry,			$0000	;0274	$F97DA7	krool_soot_eyes_angry
	dw fireball_explosion_2,			$0000	;0275	$F97DB2	fireball_explosion_2
	dw krool_backfire_sparks,			$0000	;0276	$F97DE7	krool_backfire_sparks
	dw krool_cannon_ball_spikes_removed,		$0000	;0277	$F97B5A	krool_cannon_ball_spikes_removed
	dw krool_stun,					$0000	;0278	$F97E19	krool_stun
	dw krool_gun_stun,				$0000	;0279	$F97E48	krool_gun_stun
	dw krool_stun_recover,				$0000	;027A	$F97E6B	krool_stun_recover
	dw krool_gun_stun_recover,			$0000	;027B	$F97E91	krool_gun_stun_recover
	dw krool_gun_recovered_wait,			$0000	;027C	$F97A46	krool_gun_recovered_wait
	dw DATA_F98069,					$0000	;027D	$F98069	DATA_F98069 (reversed barrel spin)
	dw krool_gas_cloud,				$0000	;027E	$F9809D	krool_gas_cloud
	dw smoke_cloud_5,				$0000	;027F	$F98285	smoke_cloud_5
	dw krool_cannon_ball_from_barrel,		$0000	;0280	$F9805B	krool_cannon_ball_from_barrel
	dw krool_barrel,				$0000	;0281	$F98083	krool_barrel
	dw krool_cannon_ball_spiked,			$0000	;0282	$F97B49	krool_cannon_ball_spiked
	dw krool_backfire_final,			$0000	;0283	$F97CA6	krool_backfire_final
	dw krool_gun_backfire_final,			$0000	;0284	$F97CFC	krool_gun_backfire_final
	dw krool_stun_2,				$0000	;0285	$F97EAE	krool_stun_2
	dw krool_gun_stun_2,				$0000	;0286	$F97EE3	krool_gun_stun_2
	dw krool_stun_3,				$0000	;0287	$F97F64	krool_stun_3
	dw krool_gun_stun_3,				$0000	;0288	$F97FE4	krool_gun_stun_3
	dw krool_cannon_ball_spikes_retracted,		$0000	;0289	$F97B41	krool_cannon_ball_spikes_retracted
	dw krool_stun_recover_2,			$0000	;028A	$F97F0C	krool_stun_recover_2
	dw krool_gun_stun_recover_2,			$0000	;028B	$F97F3E	krool_gun_stun_recover_2
	dw kudgel_idle,					$0000	;028C	$F972BD	kudgel_idle
	dw kudgel_club_idle,				$0000	;028D	$F972CE	kudgel_club_idle
	dw kudgel_fall,					$0000	;028E	$F9734E	kudgel_fall
	dw kudgel_club_fall,				$0000	;028F	$F97356	kudgel_club_fall
	dw kudgel_land,					$0000	;0290	$F9735E	kudgel_land
	dw kudgel_club_land,				$0000	;0291	$F9736B	kudgel_club_land
	dw kudgel_jump,					$0000	;0292	$F97338	kudgel_jump
	dw kudgel_club_jump,				$0000	;0293	$F97343	kudgel_club_jump
	dw kudgel_attack_long,				$0000	;0294	$F97378	kudgel_attack_long
	dw kudgel_club_attack_long,			$0000	;0295	$F973AD	kudgel_club_attack_long
	dw kudgel_fall_attack,				$0000	;0296	$F973D6	kudgel_fall_attack
	dw kudgel_club_fall_attack,			$0000	;0297	$F973ED	kudgel_club_fall_attack
	dw kudgel_hurt,					$0000	;0298	$F97401	kudgel_hurt
	dw kudgel_club_hurt,				$0000	;0299	$F9744E	kudgel_club_hurt
	dw kudgel_jump_short,				$0000	;029A	$F97495	kudgel_jump_short
	dw kudgel_club_jump_short,			$0000	;029B	$F974A0	kudgel_club_jump_short
	dw kudgel_death,				$0000	;029C	$F974AB	kudgel_death
	dw kudgel_club_death,				$0000	;029D	$F974B3	kudgel_club_death
	dw big_splash,					$0000	;029E	$F974BB	big_splash
	dw smoke_cloud_6,				$0000	;029F	$F974F0	smoke_cloud_6
	dw kudgel_tnt_fireball_small,			$0000	;02A0	$F9751C	kudgel_tnt_fireball_small
	dw king_zing_death,				$0000	;02A1	$F982B1	king_zing_death
	dw kudgel_dust,					$0000	;02A2	$F97536	kudgel_dust
	dw krow_egg_crack,				$0000	;02A3	$F989CC	krow_egg_crack
	dw barrel_fragment,				$0000	;02A4	$F96B67	barrel_fragment
	dw barrel_fragment_2,				$0000	;02A5	$F96B81	barrel_fragment_2
	dw ghost_rope_hidden,				$0000	;02A6	$F96C6F	ghost_rope_hidden
	dw ghost_rope_idle,				$0000	;02A7	$F96C20	ghost_rope_idle
	dw ghost_rope_disappear,			$0000	;02A8	$F96C28	ghost_rope_disappear
	dw ghost_rope_appear,				$0000	;02A9	$F96C77	ghost_rope_appear
	dw hook_idle,					$0000	;02AA	$F96CB1	hook_idle
	dw hook_move,					$0000	;02AB	$F96CB6	hook_move
	dw animal_crate_squitter_idle,			$0000	;02AC	$F96CFF	animal_crate_squitter_idle
	dw animal_crate_rattly_idle,			$0000	;02AD	$F96CFA	animal_crate_rattly_idle
	dw animal_crate_squawks_idle,			$0000	;02AE	$F96CF0	animal_crate_squawks_idle
	dw animal_crate_rambi_idle,			$0000	;02AF	$F96CEB	animal_crate_rambi_idle
	dw animal_crate_enguarde_idle,			$0000	;02B0	$F96CF5	animal_crate_enguarde_idle
	dw animal_crate_open,				$0000	;02B1	$F96E70	animal_crate_open
	dw banana_bunch_idle,				$0000	;02B2	$F96D04	banana_bunch_idle
	dw level_target_idle,				$0000	;02B3	$F96D24	level_target_idle
	dw level_target_trigger,			$0000	;02B4	$F96D29	level_target_trigger
	dw midway_barrel_idle,				$0000	;02B5	$F96D37	midway_barrel_idle
	dw no_animals_sign_rambi_idle,			$0000	;02B6	$F96D51	no_animals_sign_rambi_idle
	dw no_animals_sign_squawks_idle,		$0000	;02B7	$F96D56	no_animals_sign_squawks_idle
	dw no_animals_sign_squitter_idle,		$0000	;02B8	$F96D5B	no_animals_sign_squitter_idle
	dw no_animals_sign_enguarde_idle,		$0000	;02B9	$F96D60	no_animals_sign_enguarde_idle
	dw no_animals_sign_rattly_idle,			$0000	;02BA	$F96D65	no_animals_sign_rattly_idle
	dw letter_k_idle,				$0000	;02BB	$F9660E	letter_k_idle
	dw letter_o_idle,				$0000	;02BC	$F9663C	letter_o_idle
	dw letter_n_idle,				$0000	;02BD	$F9666A	letter_n_idle
	dw letter_g_idle,				$0000	;02BE	$F96698	letter_g_idle
	dw dk_barrel_label_idle,			$0000	;02BF	$F96E53	dk_barrel_label_idle
	dw life_balloon_idle,				$0000	;02C0	$F95D1E	life_balloon_idle
	dw level_target_pole,				$0000	;02C1	$F96D9D	level_target_pole
	dw level_target_barrel,				$0000	;02C2	$F96DA2	level_target_barrel
	dw krool_letter_idle,				$0000	;02C3	$F96D98	krool_letter_idle
	dw bullrush_idle,				$0000	;02C4	$F96CBB	bullrush_idle
	dw bullrush_still,				$0000	;02C5	$F96CE1	bullrush_still
	dw krockhead_barrel_label_idle,			$0000	;02C6	$F96300	krockhead_barrel_label_idle
	dw krockhead_green_idle,			$0000	;02C7	$F96345	krockhead_green_idle
	dw krockhead_green_rise_from_barrel,		$0000	;02C8	$F9636D	krockhead_green_rise_from_barrel
	dw krockhead_sink,				$0000	;02C9	$F96395	krockhead_sink
	dw krockhead_rise,				$0000	;02CA	$F963C4	krockhead_rise
	dw krockhead_brown_idle,			$0000	;02CB	$F9640B	krockhead_brown_idle
	dw bullrush_lily_pad,				$0000	;02CC	$F96CE6	bullrush_lily_pad
	dw barrel_invincibility_idle,			$0000	;02CD	$F96DBB	barrel_invincibility_idle
	dw glimmer_idle,				$0000	;02CE	$F96DC0	glimmer_idle
	dw glimmer_turn,				$0000	;02CF	$F96DF5	glimmer_turn
	dw kloak_idle,					$0000	;02D0	$F9618F	kloak_idle
	dw kloak_turn,					$0000	;02D1	$F961B8	kloak_turn
	dw kloak_throw,					$0000	;02D2	$F961CE	kloak_throw
	dw kloak_death,					$0000	;02D3	$F96211	kloak_death
	dw hot_air_balloon_idle,			$0000	;02D4	$F9622B	hot_air_balloon_idle
	dw squitter_web_fly,				$0000	;02D5	$F96E84	squitter_web_fly
	dw web_platform_spawn,				$0000	;02D6	$F96E9E	web_platform_spawn
	dw web_platform_despawn,			$0000	;02D7	$F96F43	web_platform_despawn
	dw DATA_F97076,					$0000	;02D8	$F97076	DATA_F97076
	dw DATA_F97088,					$0000	;02D9	$F97088	DATA_F97088
	dw barrel_checkmark_idle,			$0000	;02DA	$F964F1	barrel_checkmark_idle
	dw king_zing_chase,				$0000	;02DB	$F95ACE	king_zing_chase
	dw king_zing_chase_turn,			$0000	;02DC	$F95AEB	king_zing_chase_turn
	dw screech_idle,				$0000	;02DD	$F965AF	screech_idle
	dw screech_turn,				$0000	;02DE	$F965D8	screech_turn
	dw banana_idle,					$0000	;02DF	$F971D3	banana_idle
	dw barrel_idle,					$0000	;02E0	$F94E25	barrel_idle
	dw dk_barrel_idle,				$0000	;02E1	$F96E12	dk_barrel_idle
	dw klobber_barrel_idle,				$0000	;02E2	$F95033	klobber_barrel_idle
	dw cannon_ball_down,				$0000	;02E3	$F966C6	cannon_ball_down
	dw krow_egg_held,				$0000	;02E4	$F9888C	krow_egg_held
	dw tnt_barrel_idle,				$0000	;02E5	$F94E66	tnt_barrel_idle
	dw crate_idle,					$0000	;02E6	$F96D6A	crate_idle
	dw chest_idle,					$0000	;02E7	$F96D93	chest_idle
	dw krow_egg_left_idle,				$0000	;02E8	$F98851	krow_egg_left_idle
	dw krow_egg_right_idle,				$0000	;02E9	$F98819	krow_egg_right_idle
	dw barrel_carry,				$0000	;02EA	$F94E2A	barrel_carry
	dw barrel_carry,				$0000	;02EB	$F94E2A	barrel_carry
	dw klobber_barrel_carry,			$0000	;02EC	$F95046	klobber_barrel_carry
	dw cannon_ball_down,				$0000	;02ED	$F966C6	cannon_ball_down
	dw krow_egg_held,				$0000	;02EE	$F9888C	krow_egg_held
	dw tnt_barrel_pickup,				$0000	;02EF	$F94E6B	tnt_barrel_pickup
	dw crate_pickup,				$0000	;02F0	$F96D6F	crate_pickup
	dw chest_idle,					$0000	;02F1	$F96D93	chest_idle
	dw barrel_idle_placed,				$0000	;02F2	$F94E3B	barrel_idle_placed
	dw dk_barrel_idle,				$0000	;02F3	$F96E12	dk_barrel_idle
	dw DATA_F9506B,					$0000	;02F4	$F9506B	DATA_F9506B
	dw cannon_ball_down,				$0000	;02F5	$F966C6	cannon_ball_down
	dw krow_egg_held,				$0000	;02F6	$F9888C	krow_egg_held
	dw tnt_barrel_drop,				$0000	;02F7	$F94E7C	tnt_barrel_drop
	dw crate_drop,					$0000	;02F8	$F96D80	crate_drop
	dw chest_idle,					$0000	;02F9	$F96D93	chest_idle
	dw barrel_thrown,				$0000	;02FA	$F94E49	barrel_thrown
	dw barrel_thrown,				$0000	;02FB	$F94E49	barrel_thrown
	dw klobber_barrel_roll,				$0000	;02FC	$F9508A	klobber_barrel_roll
	dw cannon_ball,					$0000	;02FD	$F966CB	cannon_ball
	dw krow_egg_right_land,				$0000	;02FE	$F98894	krow_egg_right_land
	dw tnt_barrel_thrown,				$0000	;02FF	$F94E8D	tnt_barrel_thrown
	dw crate_thrown,				$0000	;0300	$F96D8E	crate_thrown
	dw chest_idle,					$0000	;0301	$F96D93	chest_idle
	dw krow_egg_left_land,				$0000	;0302	$F988FE	krow_egg_left_land
	dw krow_egg_left_thrown,			$0000	;0303	$F988CC	krow_egg_left_thrown
	dw krow_egg_right_thrown,			$0000	;0304	$F98936	krow_egg_right_thrown
	dw krow_egg_right_fall,				$0000	;0305	$F9899A	krow_egg_right_fall
	dw krow_egg_left_fall,				$0000	;0306	$F98968	krow_egg_left_fall
	dw snapjaw_credits,				$0000	;0307	$F956BC	snapjaw_credits
	dw squitter_credits,				$0000	;0308	$F96792	squitter_credits
	dw rattly_credits,				$0000	;0309	$F9685B	rattly_credits
	dw klobber_barrel_credits,			$0000	;030A	$F952DF	klobber_barrel_credits
	dw donkey_credits,				$0000	;030B	$F977C2	donkey_credits
	dw !null_pointer,				$0000	;030C
	dw !null_pointer,				$0000	;030D
	dw !null_pointer,				$0000	;030E
	dw !null_pointer,				$0000	;030F
	dw !null_pointer,				$0000	;0310
	dw !null_pointer,				$0000	;0311
	dw !null_pointer,				$0000	;0312
	dw !null_pointer,				$0000	;0313
	dw !null_pointer,				$0000	;0314
	dw !null_pointer,				$0000	;0315
	dw !null_pointer,				$0000	;0316
	dw !null_pointer,				$0000	;0317
	dw !null_pointer,				$0000	;0318
	dw !null_pointer,				$0000	;0319
	dw !null_pointer,				$0000	;031A
	dw !null_pointer,				$0000	;031B
	dw !null_pointer,				$0000	;031C
	dw !null_pointer,				$0000	;031D
	dw !null_pointer,				$0000	;031E
	dw !null_pointer,				$0000	;031F
	dw !null_pointer,				$0000	;0320
	dw !null_pointer,				$0000	;0321
	dw !null_pointer,				$0000	;0322
	dw !null_pointer,				$0000	;0323
	dw !null_pointer,				$0000	;0324
	dw !null_pointer,				$0000	;0325
	dw !null_pointer,				$0000	;0326
	dw !null_pointer,				$0000	;0327
	dw !null_pointer,				$0000	;0328
	dw !null_pointer,				$0000	;0329
	dw !null_pointer,				$0000	;032A
	dw !null_pointer,				$0000	;032B
	dw !null_pointer,				$0000	;032C
	dw !null_pointer,				$0000	;032D
	dw !null_pointer,				$0000	;032E
	dw !null_pointer,				$0000	;032F
	dw !null_pointer,				$0000	;0330
	dw !null_pointer,				$0000	;0331
	dw !null_pointer,				$0000	;0332
	dw !null_pointer,				$0000	;0333
	dw !null_pointer,				$0000	;0334
	dw !null_pointer,				$0000	;0335
	dw !null_pointer,				$0000	;0336
	dw !null_pointer,				$0000	;0337
	dw !null_pointer,				$0000	;0338
	dw !null_pointer,				$0000	;0339
	dw !null_pointer,				$0000	;033A
	dw !null_pointer,				$0000	;033B
	dw !null_pointer,				$0000	;033C
	dw !null_pointer,				$0000	;033D
	dw !null_pointer,				$0000	;033E
	dw !null_pointer,				$0000	;033F

;$F90D00
diddy_idle:
	db !animation_command_84 : dw CODE_B9E0A8
	db $04 : dw !diddy_idle_frame1
	db $04 : dw !diddy_idle_frame2
	db $04 : dw !diddy_idle_frame3
	db $04 : dw !diddy_idle_frame4
	db $04 : dw !diddy_idle_frame5
	db $04 : dw !diddy_idle_frame6
	db $04 : dw !diddy_idle_frame7
	db $04 : dw !diddy_idle_frame8
	db $04 : dw !diddy_idle_frame9
	db $04 : dw !diddy_idle_frame10
	db $04 : dw !diddy_idle_frame11
	db $04 : dw !diddy_idle_frame12
	db $04 : dw !diddy_idle_frame13
	db $04 : dw !diddy_idle_frame14
	db $04 : dw !diddy_idle_frame15
	db $04 : dw !diddy_idle_frame16
	db $04 : dw !diddy_idle_frame17
	db $04 : dw !diddy_idle_frame18
	db $04 : dw !diddy_idle_frame19
	db $04 : dw !diddy_idle_frame20
	db $04 : dw !diddy_idle_frame21
	db $04 : dw !diddy_idle_frame22
	db $04 : dw !diddy_idle_frame1
	db $04 : dw !diddy_idle_frame2
	db $04 : dw !diddy_idle_frame3
	db $04 : dw !diddy_idle_frame4
	db $04 : dw !diddy_idle_frame5
	db $04 : dw !diddy_idle_frame6
	db $04 : dw !diddy_idle_frame7
	db $04 : dw !diddy_idle_frame8
	db $04 : dw !diddy_idle_frame9
	db $04 : dw !diddy_idle_frame10
	db $04 : dw !diddy_idle_frame11
	db $04 : dw !diddy_idle_frame12
	db $04 : dw !diddy_idle_frame13
	db $04 : dw !diddy_idle_frame14
	db $04 : dw !diddy_idle_frame15
	db $04 : dw !diddy_idle_frame16
	db $04 : dw !diddy_idle_frame17
	db $04 : dw !diddy_idle_frame18
	db $04 : dw !diddy_idle_frame19
	db $04 : dw !diddy_idle_frame20
	db $04 : dw !diddy_idle_frame21
	db $04 : dw !diddy_idle_frame22
	db $04 : dw !diddy_idle_frame1
	db $04 : dw !diddy_idle_frame2
	db $04 : dw !diddy_idle_frame3
	db $04 : dw !diddy_idle_frame4
	db $04 : dw !diddy_idle_frame5
	db $04 : dw !diddy_idle_frame6
	db $04 : dw !diddy_idle_frame7
	db $04 : dw !diddy_idle_frame8
	db $04 : dw !diddy_idle_frame9
	db $04 : dw !diddy_idle_frame10
	db $04 : dw !diddy_idle_frame11
	db $04 : dw !diddy_idle_frame12
	db $04 : dw !diddy_idle_frame13
	db $04 : dw !diddy_idle_frame14
	db $04 : dw !diddy_idle_frame15
	db $04 : dw !diddy_idle_frame16
	db $04 : dw !diddy_idle_frame17
	db $04 : dw !diddy_idle_frame18
	db $04 : dw !diddy_idle_frame19
	db $04 : dw !diddy_idle_frame20
	db $04 : dw !diddy_idle_frame21
	db $04 : dw !diddy_idle_frame22
	db $04 : dw !diddy_idle_frame1
	db $04 : dw !diddy_idle_frame2
	db $04 : dw !diddy_idle_frame3
	db $04 : dw !diddy_idle_frame4
	db $04 : dw !diddy_idle_frame5
	db $04 : dw !diddy_idle_frame6
	db $04 : dw !diddy_idle_frame7
	db $04 : dw !diddy_idle_frame8
	db $04 : dw !diddy_idle_frame9
	db $04 : dw !diddy_idle_frame10
	db $04 : dw !diddy_idle_frame11
	db $04 : dw !diddy_idle_frame12
	db $04 : dw !diddy_idle_frame13
	db $04 : dw !diddy_idle_frame14
	db $04 : dw !diddy_idle_frame15
	db $04 : dw !diddy_idle_frame16
	db $04 : dw !diddy_idle_frame17
	db $04 : dw !diddy_idle_frame18
	db $04 : dw !diddy_idle_frame19
	db $04 : dw !diddy_idle_frame20
	db $04 : dw !diddy_idle_frame21
	db $04 : dw !diddy_idle_frame22
	db $04 : dw !diddy_idle_frame1
	db $04 : dw !diddy_idle_frame2
	db $04 : dw !diddy_idle_frame3
	db $04 : dw !diddy_idle_frame4
	db $04 : dw !diddy_idle_frame5
	db $04 : dw !diddy_idle_frame6
	db $04 : dw !diddy_idle_frame7
	db $04 : dw !diddy_idle_frame8
	db $04 : dw !diddy_idle_frame9
	db $04 : dw !diddy_idle_frame10
	db $04 : dw !diddy_idle_frame11
	db $04 : dw !diddy_idle_frame12
	db $04 : dw !diddy_idle_frame13
	db $04 : dw !diddy_idle_frame14
	db $04 : dw !diddy_idle_frame15
	db $04 : dw !diddy_idle_frame16
	db $04 : dw !diddy_idle_frame17
	db $04 : dw !diddy_idle_frame18
	db $04 : dw !diddy_idle_frame19
	db $04 : dw !diddy_idle_frame20
	db $04 : dw !diddy_idle_frame21
	db $04 : dw !diddy_idle_frame22
	db $06 : dw !diddy_start_juggle_frame1
	db $06 : dw !diddy_start_juggle_frame2
	db $04 : dw !diddy_start_juggle_frame3
	db $04 : dw !diddy_start_juggle_frame4
	db $04 : dw !diddy_start_juggle_frame5
	db $04 : dw !diddy_start_juggle_frame3
	db $04 : dw !diddy_start_juggle_frame4
	db $04 : dw !diddy_start_juggle_frame5
	db $03 : dw !diddy_start_juggle_frame3
	db $03 : dw !diddy_start_juggle_frame4
	db $03 : dw !diddy_start_juggle_frame5
	db $06 : dw !diddy_start_juggle_frame6
	db $06 : dw !diddy_start_juggle_frame7
	db $06 : dw !diddy_start_juggle_frame8
	db $04 : dw !diddy_juggle_frame17
	db $04 : dw !diddy_juggle_frame18
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame19
	db $04 : dw !diddy_juggle_frame20
	db $04 : dw !diddy_juggle_frame21
	db $04 : dw !diddy_juggle_frame22
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame23
	db $04 : dw !diddy_juggle_frame1
	db $04 : dw !diddy_juggle_frame2
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame3
	db $04 : dw !diddy_juggle_frame4
	db $04 : dw !diddy_juggle_frame5
	db $04 : dw !diddy_juggle_frame6
	db $04 : dw !diddy_juggle_frame7
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame8
	db $04 : dw !diddy_juggle_frame9
	db $04 : dw !diddy_juggle_frame10
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame11
	db $04 : dw !diddy_juggle_frame12
	db $04 : dw !diddy_juggle_frame13
	db $04 : dw !diddy_juggle_frame14
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame15
	db $04 : dw !diddy_juggle_frame16
	db $04 : dw !diddy_juggle_frame17
	db $04 : dw !diddy_juggle_frame18
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame19
	db $04 : dw !diddy_juggle_frame20
	db $04 : dw !diddy_juggle_frame21
	db $04 : dw !diddy_juggle_frame22
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame23
	db $04 : dw !diddy_juggle_frame1
	db $04 : dw !diddy_juggle_frame2
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame3
	db $04 : dw !diddy_juggle_frame4
	db $04 : dw !diddy_juggle_frame5
	db $04 : dw !diddy_juggle_frame6
	db $04 : dw !diddy_juggle_frame7
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame8
	db $04 : dw !diddy_juggle_frame9
	db $04 : dw !diddy_juggle_frame10
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame11
	db $04 : dw !diddy_juggle_frame12
	db $04 : dw !diddy_juggle_frame13
	db $04 : dw !diddy_juggle_frame14
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame15
	db $04 : dw !diddy_juggle_frame16
	db $04 : dw !diddy_juggle_frame17
	db $04 : dw !diddy_juggle_frame18
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame19
	db $04 : dw !diddy_juggle_frame20
	db $04 : dw !diddy_juggle_frame21
	db $04 : dw !diddy_juggle_frame22
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame23
	db $04 : dw !diddy_juggle_frame1
	db $04 : dw !diddy_juggle_frame2
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame3
	db $04 : dw !diddy_juggle_frame4
	db $04 : dw !diddy_juggle_frame5
	db $04 : dw !diddy_juggle_frame6
	db $04 : dw !diddy_juggle_frame7
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame8
	db $04 : dw !diddy_juggle_frame9
	db $04 : dw !diddy_juggle_frame10
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame11
	db $04 : dw !diddy_juggle_frame12
	db $04 : dw !diddy_juggle_frame13
	db $04 : dw !diddy_juggle_frame14
	db !animation_command_8E : dw sound(7, !sound_diddy_juggle)
	db $04 : dw !diddy_juggle_frame15
	db $04 : dw !diddy_juggle_frame16
	db $06 : dw !diddy_start_juggle_frame8
	db $06 : dw !diddy_start_juggle_frame7
	db $06 : dw !diddy_start_juggle_frame6
	db $06 : dw !diddy_start_juggle_frame5
	db $06 : dw !diddy_start_juggle_frame4
	db $06 : dw !diddy_start_juggle_frame3
	db $06 : dw !diddy_start_juggle_frame2
	db $06 : dw !diddy_start_juggle_frame1
	db !animation_command_80, $00

;$F90F96
diddy_wind_float:
	db $05 : dw !diddy_updraft_frame1
	db $05 : dw !diddy_updraft_frame2
	db $05 : dw !diddy_updraft_frame3
	db $05 : dw !diddy_updraft_frame4
.loop:
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !diddy_updraft_frame6
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !diddy_updraft_frame7
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !diddy_updraft_frame8
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !diddy_updraft_frame9
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !diddy_updraft_frame10
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !diddy_updraft_frame11
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !diddy_updraft_frame12
	db !animation_command_82 : dw .loop
.end:
	db $03 : dw !diddy_updraft_frame4
	db $03 : dw !diddy_updraft_frame3
	db $03 : dw !diddy_updraft_frame2
	db $03 : dw !diddy_updraft_frame1
	db !animation_command_81 : dw CODE_B9D853
	db !animation_command_80

;unused
	db !animation_command_80, $00

;$F90FEF
diddy_krockhead_bounce:
	db $04 : dw !diddy_idle_frame1
	db $04 : dw !diddy_idle_frame2
	db $04 : dw !diddy_idle_frame3
	db $04 : dw !diddy_idle_frame4
	db !animation_command_80, $00

;$F90FFD
diddy_carry_krockhead_bounce:
	db !animation_command_8B, $04 : dw !diddy_grab_object_frame5, $000C, $FFF8
	db !animation_command_80, $00

;$F91007
diddy_scared:
	db !animation_command_8E : dw sound(6, !sound_kongs_scared)
	db $02 : dw !diddy_scared_frame1
	db $03 : dw !diddy_scared_frame2
	db $02 : dw !diddy_scared_frame3
	db $03 : dw !diddy_scared_frame4
	db $02 : dw !diddy_scared_frame5
	db $03 : dw !diddy_scared_frame6
	db $02 : dw !diddy_scared_frame7
	db $03 : dw !diddy_scared_frame8
	db $02 : dw !diddy_scared_frame9
	db $04 : dw !diddy_scared_frame10
	db $04 : dw !diddy_scared_frame11
	db $04 : dw !diddy_scared_frame10
	db $04 : dw !diddy_scared_frame11
	db $04 : dw !diddy_scared_frame10
	db $04 : dw !diddy_scared_frame11
	db $04 : dw !diddy_scared_frame10
	db $04 : dw !diddy_scared_frame11
	db $04 : dw !diddy_scared_frame10
	db $04 : dw !diddy_scared_frame11
	db $04 : dw !diddy_scared_frame10
	db $04 : dw !diddy_scared_frame11
.loop:
	db $04 : dw !diddy_scared_frame10
	db $04 : dw !diddy_scared_frame11
	db !animation_command_82 : dw .loop
	db !animation_command_80, $00

;$F91054
diddy_celebrate:
	db !animation_command_81 : dw CODE_B9D888
	db $04 : dw !diddy_idle_frame1
	db !animation_command_8F : dw check_if_boss_level, .skip_boss_wait
	db $20 : dw !diddy_idle_frame1
.skip_boss_wait:
	db $04 : dw !diddy_celebrate_frame1
	db $04 : dw !diddy_celebrate_frame2
	db $04 : dw !diddy_celebrate_frame3
	db $04 : dw !diddy_celebrate_frame4
	db $04 : dw !diddy_celebrate_frame5
	db $04 : dw !diddy_celebrate_frame6
	db $04 : dw !diddy_celebrate_frame7
	db $14 : dw !diddy_celebrate_frame8
	db !animation_command_81 : dw spawn_diddy_boombox
	db !animation_command_89, $10 : dw !diddy_celebrate_frame9, $29E8
	db !animation_command_89, $03 : dw !diddy_celebrate_frame10, $29EC
	db !animation_command_89, $03 : dw !diddy_celebrate_frame11, $29F0
	db !animation_command_89, $03 : dw !diddy_celebrate_frame12, $29F4
	db !animation_command_89, $03 : dw !diddy_celebrate_frame13, $29F8
	db !animation_command_89, $03 : dw !diddy_celebrate_frame14, $29FC
	db !animation_command_89, $03 : dw !diddy_celebrate_frame15, $2A00
	db !animation_command_89, $03 : dw !diddy_celebrate_frame16, $2A04
	db !animation_command_89, $03 : dw !diddy_celebrate_frame17, $2A08
	db !animation_command_89, $03 : dw !diddy_celebrate_frame16, $2A04
	db !animation_command_89, $03 : dw !diddy_celebrate_frame15, $2A00
	db !animation_command_89, $03 : dw !diddy_celebrate_frame14, $29FC
	db !animation_command_89, $03 : dw !diddy_celebrate_frame13, $29F8
	db !animation_command_89, $03 : dw !diddy_celebrate_frame12, $29F4
	db !animation_command_89, $03 : dw !diddy_celebrate_frame11, $29F0
	db !animation_command_89, $04 : dw !diddy_celebrate_frame10, $29EC
	db !animation_command_89, $04 : dw !diddy_celebrate_frame9, $29E8
	db !animation_command_89, $03 : dw !diddy_celebrate_frame10, $29EC
	db !animation_command_89, $04 : dw !diddy_celebrate_frame11, $29F0
	db !animation_command_89, $03 : dw !diddy_celebrate_frame12, $29F4
	db !animation_command_89, $04 : dw !diddy_celebrate_frame13, $29F8
	db !animation_command_89, $03 : dw !diddy_celebrate_frame14, $29FC
	db !animation_command_89, $04 : dw !diddy_celebrate_frame15, $2A00
	db !animation_command_89, $03 : dw !diddy_celebrate_frame16, $2A04
	db !animation_command_89, $04 : dw !diddy_celebrate_frame17, $2A08
	db !animation_command_89, $03 : dw !diddy_celebrate_frame18, $2A0C
	db !animation_command_89, $04 : dw !diddy_celebrate_frame19, $2A10
	db !animation_command_89, $04 : dw !diddy_celebrate_frame20, $2A14
	db !animation_command_89, $04 : dw !diddy_celebrate_frame19, $2A10
	db !animation_command_89, $04 : dw !diddy_celebrate_frame18, $2A0C
	db !animation_command_89, $04 : dw !diddy_celebrate_frame19, $2A10
	db !animation_command_89, $04 : dw !diddy_celebrate_frame20, $2A14
	db !animation_command_89, $04 : dw !diddy_celebrate_frame21, $2A18
	db !animation_command_89, $04 : dw !diddy_celebrate_frame20, $2A14
	db !animation_command_89, $04 : dw !diddy_celebrate_frame19, $2A10
	db !animation_command_89, $04 : dw !diddy_celebrate_frame20, $2A14
	db !animation_command_89, $14 : dw !diddy_celebrate_frame21, $2A18
	db !animation_command_89, $04 : dw !diddy_celebrate_frame20, $2A14
	db !animation_command_89, $04 : dw !diddy_celebrate_frame19, $2A10
	db !animation_command_89, $04 : dw !diddy_celebrate_frame18, $2A0C
	db !animation_command_89, $04 : dw !diddy_celebrate_frame17, $2A08
	db !animation_command_89, $04 : dw !diddy_celebrate_frame16, $2A04
	db !animation_command_89, $04 : dw !diddy_celebrate_frame15, $2A00
	db !animation_command_89, $04 : dw !diddy_celebrate_frame14, $29FC
	db !animation_command_89, $04 : dw !diddy_celebrate_frame15, $2A00
	db !animation_command_89, $04 : dw !diddy_celebrate_frame16, $2A04
	db !animation_command_89, $04 : dw !diddy_celebrate_frame17, $2A08
	db !animation_command_89, $04 : dw !diddy_celebrate_frame18, $2A0C
	db !animation_command_89, $04 : dw !diddy_celebrate_frame19, $2A10
	db !animation_command_89, $04 : dw !diddy_celebrate_frame20, $2A14
	db !animation_command_89, $14 : dw !diddy_celebrate_frame21, $2A18
	db !animation_command_89, $04 : dw !diddy_celebrate_frame20, $2A14
	db !animation_command_89, $04 : dw !diddy_celebrate_frame19, $2A10
	db !animation_command_89, $04 : dw !diddy_celebrate_frame18, $2A0C
	db !animation_command_89, $04 : dw !diddy_celebrate_frame17, $2A08
	db !animation_command_89, $04 : dw !diddy_celebrate_frame16, $2A04
	db !animation_command_89, $04 : dw !diddy_celebrate_frame15, $2A00
	db !animation_command_89, $04 : dw !diddy_celebrate_frame14, $29FC
	db !animation_command_89, $04 : dw !diddy_celebrate_frame13, $29F8
	db !animation_command_89, $04 : dw !diddy_celebrate_frame12, $29F4
	db !animation_command_89, $04 : dw !diddy_celebrate_frame11, $29F0
	db !animation_command_89, $04 : dw !diddy_celebrate_frame10, $29EC
	db !animation_command_89, $04 : dw !diddy_celebrate_frame9, $29E8
	db !animation_command_89, $03 : dw !diddy_celebrate_frame10, $29EC
	db !animation_command_89, $03 : dw !diddy_celebrate_frame11, $29F0
	db !animation_command_89, $03 : dw !diddy_celebrate_frame12, $29F4
	db !animation_command_89, $03 : dw !diddy_celebrate_frame13, $29F8
	db !animation_command_89, $03 : dw !diddy_celebrate_frame14, $29FC
	db !animation_command_89, $03 : dw !diddy_celebrate_frame15, $2A00
	db !animation_command_89, $03 : dw !diddy_celebrate_frame16, $2A04
	db !animation_command_89, $03 : dw !diddy_celebrate_frame17, $2A08
	db !animation_command_89, $03 : dw !diddy_celebrate_frame16, $2A04
	db !animation_command_89, $03 : dw !diddy_celebrate_frame15, $2A00
	db !animation_command_89, $03 : dw !diddy_celebrate_frame14, $29FC
	db !animation_command_89, $03 : dw !diddy_celebrate_frame13, $29F8
	db !animation_command_89, $03 : dw !diddy_celebrate_frame12, $29F4
	db !animation_command_89, $03 : dw !diddy_celebrate_frame11, $29F0
	db !animation_command_89, $04 : dw !diddy_celebrate_frame10, $29EC
	db !animation_command_89, $04 : dw !diddy_celebrate_frame9, $29E8
	db !animation_command_89, $03 : dw !diddy_celebrate_frame10, $29EC
	db !animation_command_89, $04 : dw !diddy_celebrate_frame11, $29F0
	db !animation_command_89, $03 : dw !diddy_celebrate_frame12, $29F4
	db !animation_command_89, $03 : dw !diddy_celebrate_frame13, $29F8
	db !animation_command_89, $04 : dw !diddy_celebrate_frame12, $29F4
	db !animation_command_89, $03 : dw !diddy_celebrate_frame11, $29F0
	db !animation_command_89, $04 : dw !diddy_celebrate_frame10, $29EC
	db !animation_command_81 : dw CODE_B9D85D
	db !animation_command_89, $14 : dw !diddy_celebrate_frame9, $29E8
	db !animation_command_83 : dw CODE_B9D4EF
	db !animation_command_81 : dw CODE_B9DC94
	db $18 : dw !diddy_celebrate_frame8
	db $04 : dw !diddy_celebrate_frame7
	db $04 : dw !diddy_celebrate_frame6
	db $04 : dw !diddy_celebrate_frame5
	db $04 : dw !diddy_celebrate_frame4
	db $04 : dw !diddy_celebrate_frame3
	db $04 : dw !diddy_celebrate_frame2
	db $04 : dw !diddy_celebrate_frame1
	db !animation_command_81 : dw CODE_B9D88E
.run_off_screen_loop:
	db $02 : dw !diddy_run_frame1
	db $02 : dw !diddy_run_frame2
	db $02 : dw !diddy_run_frame3
	db $02 : dw !diddy_run_frame4
	db $02 : dw !diddy_run_frame5
	db $02 : dw !diddy_run_frame6
	db $02 : dw !diddy_run_frame7
	db $02 : dw !diddy_run_frame8
	db $02 : dw !diddy_run_frame9
	db $02 : dw !diddy_run_frame10
	db $02 : dw !diddy_run_frame11
	db $02 : dw !diddy_run_frame12
	db $02 : dw !diddy_run_frame13
	db !animation_command_82 : dw .run_off_screen_loop
	db !animation_command_80, $00

;$F912D7
diddy_level_end_run:
	db !animation_command_81 : dw CODE_B9D888
	db !animation_command_81 : dw CODE_B9D88E
.loop:
	db $02 : dw !diddy_run_frame1
	db $02 : dw !diddy_run_frame2
	db $02 : dw !diddy_run_frame3
	db $02 : dw !diddy_run_frame4
	db $02 : dw !diddy_run_frame5
	db $02 : dw !diddy_run_frame6
	db $02 : dw !diddy_run_frame7
	db $02 : dw !diddy_run_frame8
	db $02 : dw !diddy_run_frame9
	db $02 : dw !diddy_run_frame10
	db $02 : dw !diddy_run_frame11
	db $02 : dw !diddy_run_frame12
	db $02 : dw !diddy_run_frame13
	db !animation_command_82 : dw .loop
	db !animation_command_80, $00

;$F91309
DATA_F91309:
	db $20 : dw !diddy_hurt_frame17
	db !animation_command_80, $00

;$F9130E
DATA_F9130E:
	db $18 : dw !diddy_hurt_frame17
	db !animation_command_81 : dw CODE_B9DFD3
	db !animation_command_80, $00

;$F91316
diddy_tumble_air:
	db $01 : dw !diddy_tumble_frame1
	db $01 : dw !diddy_tumble_frame2
.loop:
	db $01 : dw !diddy_tumble_frame3
	db $01 : dw !diddy_tumble_frame4
	db $01 : dw !diddy_tumble_frame5
	db $01 : dw !diddy_tumble_frame6
	db $01 : dw !diddy_tumble_frame7
	db $01 : dw !diddy_tumble_frame8
	db $01 : dw !diddy_tumble_frame9
	db $01 : dw !diddy_tumble_frame10
	db $01 : dw !diddy_tumble_frame11
	db $01 : dw !diddy_tumble_frame12
	db $01 : dw !diddy_tumble_frame13
	db $01 : dw !diddy_tumble_frame14
	db $01 : dw !diddy_tumble_frame15
	db $01 : dw !diddy_tumble_frame16
	db $01 : dw !diddy_tumble_frame17
	db $01 : dw !diddy_tumble_frame18
	db !animation_command_82 : dw .loop
	db !animation_command_80, $00

;$F91351
diddy_bounce_up:
	db $02 : dw !diddy_tumble_frame1
	db $02 : dw !diddy_tumble_frame2
.loop:
	db $02 : dw !diddy_tumble_frame3
	db $02 : dw !diddy_tumble_frame4
	db $02 : dw !diddy_tumble_frame5
	db $02 : dw !diddy_tumble_frame6
	db $02 : dw !diddy_tumble_frame7
	db $02 : dw !diddy_tumble_frame8
	db $02 : dw !diddy_tumble_frame9
	db $02 : dw !diddy_tumble_frame10
	db $02 : dw !diddy_tumble_frame11
	db $02 : dw !diddy_tumble_frame12
	db $02 : dw !diddy_tumble_frame13
	db $02 : dw !diddy_tumble_frame14
	db $02 : dw !diddy_tumble_frame15
	db $02 : dw !diddy_tumble_frame16
	db $02 : dw !diddy_tumble_frame17
	db $02 : dw !diddy_tumble_frame18
	db !animation_command_82 : dw .loop
	db !animation_command_80, $00

;$F9138C
diddy_team_top_air:
	db $01 : dw !diddy_tumble_frame11
	db $01 : dw !diddy_tumble_frame12
	db $01 : dw !diddy_tumble_frame13
	db $01 : dw !diddy_tumble_frame14
	db $01 : dw !diddy_tumble_frame15
	db $01 : dw !diddy_tumble_frame16
	db $01 : dw !diddy_tumble_frame17
	db $01 : dw !diddy_tumble_frame18
	db $01 : dw !diddy_tumble_frame3
	db $01 : dw !diddy_tumble_frame4
	db $01 : dw !diddy_tumble_frame5
	db $01 : dw !diddy_tumble_frame6
	db $01 : dw !diddy_tumble_frame7
	db $01 : dw !diddy_tumble_frame8
	db $01 : dw !diddy_tumble_frame9
	db $01 : dw !diddy_tumble_frame10
	db !animation_command_80, $00

;$F913BE
diddy_team_top_stunned:
	db !animation_command_81 : dw CODE_B9DD21
	db $05 : dw !diddy_hurt_frame6
	db $05 : dw !diddy_hurt_frame7
	db $05 : dw !diddy_hurt_frame8
	db $06 : dw !diddy_hurt_frame9
	db !animation_command_83 : dw stall_animation_until_grounded
	db $0C : dw !diddy_hurt_frame10
	db !animation_command_81 : dw CODE_B9DEBE
	db $06 : dw !diddy_hurt_frame11
	db $06 : dw !diddy_hurt_frame12
	db $06 : dw !diddy_hurt_frame13
	db $06 : dw !diddy_hurt_frame14
	db $06 : dw !diddy_hurt_frame15
	db $06 : dw !diddy_hurt_frame16
	db $05 : dw !diddy_hurt_frame16
	db $05 : dw !diddy_hurt_frame15
	db $05 : dw !diddy_hurt_frame14
	db $05 : dw !diddy_hurt_frame14
	db $05 : dw !diddy_hurt_frame15
	db $05 : dw !diddy_hurt_frame16
.loop:
	db $04 : dw !diddy_hurt_frame16
	db $04 : dw !diddy_hurt_frame15
	db $04 : dw !diddy_hurt_frame14
	db $04 : dw !diddy_hurt_frame14
	db $04 : dw !diddy_hurt_frame15
	db $04 : dw !diddy_hurt_frame16
	db !animation_command_82 : dw .loop
	db !animation_command_80, $00

;$F91411
diddy_turn:
	db $02 : dw !diddy_turn_frame1
	db $02 : dw !diddy_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !diddy_turn_frame2
	db $02 : dw !diddy_turn_frame1
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F91425
diddy_team_bottom_idle:
	db !animation_command_84 : dw CODE_B9E0A8
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame9, !dixie_carried_idle_frame1, $0000, $0000
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame10, !dixie_carried_idle_frame1, $0000, $0001
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame11, !dixie_carried_idle_frame1, $0000, $0002
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame10, !dixie_carried_idle_frame1, $0000, $0001
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame9, !dixie_carried_idle_frame1, $0000, $0000
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame10, !dixie_carried_idle_frame1, $0000, $0001
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame11, !dixie_carried_idle_frame1, $0000, $0002
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame10, !dixie_carried_idle_frame1, $0000, $0001
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame9, !dixie_carried_idle_frame1, $0000, $0000
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame10, !dixie_carried_idle_frame1, $0000, $0001
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame11, !dixie_carried_idle_frame1, $0000, $0002
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame10, !dixie_carried_idle_frame1, $0000, $0001
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame9, !dixie_carried_idle_frame1, $0000, $0000
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame10, !dixie_carried_idle_frame1, $0000, $0001
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame11, !dixie_carried_idle_frame1, $0000, $0002
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame10, !dixie_carried_idle_frame1, $0000, $0001
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame1, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame2, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame3, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame4, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame5, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame6, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame7, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame6, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame5, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame4, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame5, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame6, $0000, $0000
	db !animation_command_8A, $04 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame7, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame6, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame5, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame4, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame5, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame6, $0000, $0000
	db !animation_command_8A, $05 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame7, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame6, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame5, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame4, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame5, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame6, $0000, $0000
	db !animation_command_8A, $08 : dw !diddy_carry_kong_idle_frame1, !dixie_carried_idle_frame7, $0000, $0000
	db !animation_command_8A, $05 : dw !diddy_carry_kong_idle_frame2, !dixie_carried_idle_frame8, $0000, $0000
	db !animation_command_8A, $05 : dw !diddy_carry_kong_idle_frame3, !dixie_carried_idle_frame9, $0000, $0000
	db !animation_command_8A, $0D : dw !diddy_carry_kong_idle_frame4, !dixie_carried_idle_frame10, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame5, !dixie_carried_idle_frame11, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame6, !dixie_carried_idle_frame12, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame7, !dixie_carried_idle_frame13, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame14, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame16, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame14, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame16, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame14, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame16, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame14, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame7, !dixie_carried_idle_frame13, $0000, $0000
	db !animation_command_8A, $09 : dw !diddy_carry_kong_idle_frame6, !dixie_carried_idle_frame12, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame6, !dixie_carried_idle_frame12, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame7, !dixie_carried_idle_frame13, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame14, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame16, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame14, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame16, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame14, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame16, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame15, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame8, !dixie_carried_idle_frame14, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame7, !dixie_carried_idle_frame13, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_idle_frame6, !dixie_carried_idle_frame12, $0000, $0000
	db !animation_command_8A, $04 : dw !diddy_carry_kong_idle_frame5, !dixie_carried_idle_frame11, $0000, $0000
	db !animation_command_8A, $05 : dw !diddy_carry_kong_idle_frame4, !dixie_carried_idle_frame10, $0000, $0000
	db !animation_command_8A, $05 : dw !diddy_carry_kong_idle_frame3, !dixie_carried_idle_frame9, $0000, $0000
	db !animation_command_8A, $05 : dw !diddy_carry_kong_idle_frame2, !dixie_carried_idle_frame8, $0000, $0000
	db !animation_command_80, $00

;$F91768
diddy_team_bottom_turn:
	db !animation_command_8B, $02 : dw !diddy_carry_kong_frame4, $0000, $0007
	db !animation_command_8B, $02 : dw !diddy_carry_kong_frame4, $0000, $0006
	db !animation_command_81 : dw CODE_B9E019
	db !animation_command_8B, $02 : dw !diddy_carry_kong_frame4, $0000, $0006
	db !animation_command_8B, $02 : dw !diddy_carry_kong_frame4, $0000, $0007
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F91790
diddy_team_bottom_walk:
	db !animation_command_84 : dw CODE_B9E021
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame1, !dixie_carried_frame1, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame2, !dixie_carried_frame2, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame3, !dixie_carried_frame3, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame4, !dixie_carried_frame4, $0000, $0000
	db !animation_command_81 : dw CODE_B9E0E0
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame5, !dixie_carried_frame5, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame6, !dixie_carried_frame6, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame7, !dixie_carried_frame7, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame8, !dixie_carried_frame8, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame9, !dixie_carried_frame9, $0000, $0000
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame10, !dixie_carried_frame10, $0000, $0000
	db !animation_command_81 : dw CODE_B9E0E0
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame11, !dixie_carried_frame11, $0000, $0000
	db !animation_command_80, $00

;$F91809
diddy_team_bottom_jump:
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame4, !dixie_carried_frame4, $0000, $0000
	db !animation_command_81 : dw CODE_B9DF51
	db !animation_command_80, $00

;$F91818
diddy_team_bottom_air:
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame4, !dixie_carried_frame4, $0000, $0000
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F9182A
diddy_team_bottom_fall:
	db !animation_command_84 : dw CODE_B9DECC
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame4, !dixie_carried_frame4, $0000, $0000
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F91842
diddy_team_bottom_land:
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame4, !dixie_carried_frame4, $0000, $0000
	db !animation_command_81 : dw CODE_B9DA5B
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F91854
diddy_team_bottom_bounce_up:
	db !animation_command_8A, $03 : dw !diddy_carry_kong_frame4, !dixie_carried_frame4, $0000, $0000
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F91866
diddy_team_bottom_throw:
	db !animation_command_8A, $02 : dw !diddy_throw_kong_frame1, !dixie_thrown_frame1, $0000, $0000
	db !animation_command_8A, $02 : dw !diddy_throw_kong_frame2, !dixie_thrown_frame2, $0000, $0000
	db !animation_command_8A, $02 : dw !diddy_throw_kong_frame3, !dixie_thrown_frame3, $0000, $0000
	db !animation_command_8A, $02 : dw !diddy_throw_kong_frame4, !dixie_thrown_frame4, $0000, $0000
	db !animation_command_8A, $02 : dw !diddy_throw_kong_frame5, !dixie_thrown_frame5, $0000, $0000
	db !animation_command_8A, $02 : dw !diddy_throw_kong_frame6, !dixie_thrown_frame6, $0000, $0000
	db !animation_command_8A, $01 : dw !diddy_throw_kong_frame7, !dixie_thrown_frame7, $0000, $0000
	db $02 : dw !diddy_throw_object_frame4
	db !animation_command_8B, $02 : dw !diddy_throw_object_frame5, $0000, $0000
	db !animation_command_8B, $02 : dw !diddy_throw_object_frame6, $0000, $0000
	db !animation_command_81 : dw CODE_B9DCE8
	db !animation_command_8B, $02 : dw !diddy_throw_object_frame7, $0000, $FFF0
	db !animation_command_81 : dw CODE_B9D8BC
	db $02 : dw !diddy_throw_object_frame8
	db $02 : dw !diddy_throw_object_frame9
	db $02 : dw !diddy_throw_object_frame10
	db $02 : dw !diddy_throw_object_frame11
	db $02 : dw !diddy_throw_object_frame12
	db $02 : dw !diddy_throw_object_frame13
	db $02 : dw !diddy_throw_object_frame14
	db !animation_command_83 : dw CODE_B9D521
	db !animation_command_81 : dw CODE_B9DFD3
	db !animation_command_80, $00

;$F918EA
diddy_team_top_idle:
	db $07 : dw !diddy_carried_frame1
	db $07 : dw !diddy_carried_frame2
	db $07 : dw !diddy_carried_frame3
	db $07 : dw !diddy_carried_frame4
	db $07 : dw !diddy_carried_frame3
	db $07 : dw !diddy_carried_frame4
	db $07 : dw !diddy_carried_frame3
	db $07 : dw !diddy_carried_frame4
	db $17 : dw !diddy_carried_frame3
	db $07 : dw !diddy_carried_frame2
	db $07 : dw !diddy_carried_frame1
	db $07 : dw !diddy_carried_frame5
	db $07 : dw !diddy_carried_frame6
	db $17 : dw !diddy_carried_frame7
	db $04 : dw !diddy_carried_frame6
	db $03 : dw !diddy_carried_frame5
	db $03 : dw !diddy_carried_frame1
	db $03 : dw !diddy_carried_frame8
	db $03 : dw !diddy_carried_frame9
	db $04 : dw !diddy_carried_frame10
	db $04 : dw !diddy_carried_frame11
	db $07 : dw !diddy_carried_frame12
	db $04 : dw !diddy_carried_frame11
	db $17 : dw !diddy_carried_frame10
	db $05 : dw !diddy_carried_frame11
	db $27 : dw !diddy_carried_frame12
	db $05 : dw !diddy_carried_frame11
	db $05 : dw !diddy_carried_frame10
	db $05 : dw !diddy_carried_frame9
	db $05 : dw !diddy_carried_frame8
	db $05 : dw !diddy_carried_frame1
	db $07 : dw !diddy_carried_frame5
	db $07 : dw !diddy_carried_frame6
	db $17 : dw !diddy_carried_frame7
	db $04 : dw !diddy_carried_frame6
	db $04 : dw !diddy_carried_frame5
	db !animation_command_80, $00

;$F91958
diddy_carry_pickup:
	db !animation_command_81 : dw CODE_B9D891
	db !animation_command_8B, $03 : dw !diddy_grab_object_frame1, $000C, $0008
	db !animation_command_8B, $02 : dw !diddy_grab_object_frame2, $0010, $0007
	db !animation_command_8B, $02 : dw !diddy_grab_object_frame3, $0010, $0001
	db !animation_command_8B, $02 : dw !diddy_grab_object_frame4, $000E, $FFFD
	db !animation_command_8B, $02 : dw !diddy_grab_object_frame5, $000C, $FFF8
	db !animation_command_81 : dw CODE_B9D705
	db !animation_command_80, $00

;$F91988
diddy_carry_drop:
	db !animation_command_81 : dw CODE_B9D891
	db !animation_command_8B, $02 : dw !diddy_grab_object_frame5, $000C, $FFF8
	db !animation_command_8B, $02 : dw !diddy_grab_object_frame4, $000E, $FFFD
	db !animation_command_8B, $02 : dw !diddy_grab_object_frame3, $0010, $0001
	db !animation_command_8B, $02 : dw !diddy_grab_object_frame2, $0010, $0007
	db !animation_command_8B, $03 : dw !diddy_grab_object_frame1, $000C, $0008
	db !animation_command_8B, $01 : dw !diddy_grab_object_frame1, $000C, $0000
	db !animation_command_81 : dw CODE_B9D896
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F919C3
diddy_carry_throw:
	db !animation_command_81 : dw CODE_B9D8AA
	db !animation_command_8B, $02 : dw !diddy_throw_object_frame1, $0008, $FFF5
	db !animation_command_8B, $02 : dw !diddy_throw_object_frame2, $0004, $FFF3
	db !animation_command_8B, $03 : dw !diddy_throw_object_frame3, $FFF9, $FFF5
	db !animation_command_8B, $05 : dw !diddy_throw_object_frame4, $FFF0, $FFF7
	db !animation_command_8B, $03 : dw !diddy_throw_object_frame5, $FFF1, $FFF7
	db !animation_command_8B, $02 : dw !diddy_throw_object_frame6, $FFF4, $FFF7
	db !animation_command_8B, $02 : dw !diddy_throw_object_frame7, $0000, $FFF7
	db !animation_command_81 : dw CODE_B9D965
	db $02 : dw !diddy_throw_object_frame8
	db $03 : dw !diddy_throw_object_frame9
	db $05 : dw !diddy_throw_object_frame10
	db $03 : dw !diddy_throw_object_frame11
	db $03 : dw !diddy_throw_object_frame12
	db $03 : dw !diddy_throw_object_frame13
	db $03 : dw !diddy_throw_object_frame14
	db !animation_command_81 : dw CODE_B9DFD3
	db !animation_command_80, $00

;$F91A1B
diddy_carry_idle:
	db !animation_command_8B, $04 : dw !diddy_grab_object_frame5, $000C, $FFF8
	db !animation_command_84 : dw CODE_B9E0A8
	db !animation_command_80, $00

;$F91A28
diddy_carry_walk:
	db !animation_command_84 : dw CODE_B9E021
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame2, $000C, $FFF5
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame3, $000C, $FFF7
	db !animation_command_81 : dw CODE_B9E0E0
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame4, $000C, $FFF7
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame5, $000C, $FFF5
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame6, $000C, $FFF5
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame7, $000C, $FFF7
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame8, $000C, $FFF7
	db !animation_command_81 : dw CODE_B9E0E0
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame9, $000C, $FFF5
	db !animation_command_80, $00

;$F91A73
diddy_carry_turn:
	db !animation_command_8B, $04 : dw !diddy_grab_object_frame5, $000C, $FFF8
	db !animation_command_81 : dw CODE_B9E019
	db !animation_command_8B, $04 : dw !diddy_grab_object_frame5, $000C, $FFF8
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F91A8B
diddy_carry_jump:
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame6, $000C, $FFF7
	db !animation_command_81 : dw CODE_B9DF51
	db !animation_command_80, $00

;$F91A98
diddy_carry_air:
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame6, $000C, $FFF7
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame6, $000C, $FFF7
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F91AB0
diddy_carry_fall:
	db !animation_command_84 : dw CODE_B9DECC
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame6, $000C, $FFF7
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F91AC6
diddy_carry_land:
	db !animation_command_8B, $03 : dw !diddy_carry_object_frame7, $000C, $FFF7
	db !animation_command_81 : dw CODE_B9DA5B
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F91AD6
diddy_crouch_start:
	db $02 : dw !diddy_duck_frame1
	db $02 : dw !diddy_duck_frame2
	db $02 : dw !diddy_duck_frame3
	db $02 : dw !diddy_duck_frame4
	db $02 : dw !diddy_duck_frame5
	db !animation_command_81 : dw CODE_B9DEE7
	db !animation_command_80, $00

;$F91AEA
diddy_crouch_loop:
	db $0F : dw !diddy_duck_frame6
	db $05 : dw !diddy_duck_frame7
	db $05 : dw !diddy_duck_frame8
	db $11 : dw !diddy_duck_frame9
	db $03 : dw !diddy_duck_frame10
	db $03 : dw !diddy_duck_frame11
	db $03 : dw !diddy_duck_frame12
	db $11 : dw !diddy_duck_frame13
	db $03 : dw !diddy_duck_frame12
	db $03 : dw !diddy_duck_frame11
	db $03 : dw !diddy_duck_frame10
	db $11 : dw !diddy_duck_frame9
	db $03 : dw !diddy_duck_frame8
	db $03 : dw !diddy_duck_frame7
	db $7F : dw !diddy_duck_frame6
	db !animation_command_80, $00

;$F91B19
diddy_crouch_end:
	db $02 : dw !diddy_duck_frame6
	db $02 : dw !diddy_duck_frame5
	db $02 : dw !diddy_duck_frame4
	db $02 : dw !diddy_duck_frame3
	db $02 : dw !diddy_duck_frame2
	db $02 : dw !diddy_duck_frame1
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F91B30
diddy_follow_walk:
	db $02 : dw !diddy_walk_frame1
	db $02 : dw !diddy_walk_frame2
	db $02 : dw !diddy_walk_frame3
	db $02 : dw !diddy_walk_frame4
	db $02 : dw !diddy_walk_frame5
	db $02 : dw !diddy_walk_frame6
	db $02 : dw !diddy_walk_frame7
	db $02 : dw !diddy_walk_frame8
	db $02 : dw !diddy_walk_frame9
	db $02 : dw !diddy_walk_frame10
	db $02 : dw !diddy_walk_frame11
	db $02 : dw !diddy_walk_frame12
	db $02 : dw !diddy_walk_frame13
	db $02 : dw !diddy_walk_frame14
	db $02 : dw !diddy_walk_frame15
	db $02 : dw !diddy_walk_frame16
	db !animation_command_80, $00

;$F91B62
diddy_walk:
	db !animation_command_84 : dw CODE_B9E101
	db $02 : dw !diddy_walk_frame1
	db $02 : dw !diddy_walk_frame2
	db $02 : dw !diddy_walk_frame3
	db $02 : dw !diddy_walk_frame4
	db $02 : dw !diddy_walk_frame5
	db $02 : dw !diddy_walk_frame6
	db !animation_command_81 : dw CODE_B9E0E0
	db $02 : dw !diddy_walk_frame7
	db !animation_command_81 : dw CODE_B9E0E0
	db $02 : dw !diddy_walk_frame8
	db !animation_command_81 : dw CODE_B9E0E0
	db $02 : dw !diddy_walk_frame9
	db $02 : dw !diddy_walk_frame10
	db $02 : dw !diddy_walk_frame11
	db $02 : dw !diddy_walk_frame12
	db $02 : dw !diddy_walk_frame13
	db $02 : dw !diddy_walk_frame14
	db !animation_command_81 : dw CODE_B9E0E0
	db $02 : dw !diddy_walk_frame15
	db !animation_command_81 : dw CODE_B9E0E0
	db $02 : dw !diddy_walk_frame16
	db !animation_command_81 : dw CODE_B9E0E0
	db !animation_command_80, $00

;$F91BA9
diddy_follow_run:
	db $02 : dw !diddy_run_frame1
	db $02 : dw !diddy_run_frame2
	db $02 : dw !diddy_run_frame3
	db $02 : dw !diddy_run_frame4
	db $02 : dw !diddy_run_frame5
	db $02 : dw !diddy_run_frame6
	db $02 : dw !diddy_run_frame7
	db $02 : dw !diddy_run_frame8
	db $02 : dw !diddy_run_frame9
	db $02 : dw !diddy_run_frame10
	db $02 : dw !diddy_run_frame11
	db $02 : dw !diddy_run_frame12
	db $02 : dw !diddy_run_frame13
	db !animation_command_80, $00

;$F91BD2
diddy_bonus_exit:
	db !animation_command_81 : dw CODE_B9D9E6
	db $18 : dw !diddy_idle_frame1
	db !animation_command_81 : dw CODE_B9D9FF
	db $10 : dw !diddy_idle_frame1
	db !animation_command_81 : dw CODE_B9D9ED
.loop:
	db $02 : dw !diddy_run_frame1
	db $02 : dw !diddy_run_frame2
	db $02 : dw !diddy_run_frame3
	db $02 : dw !diddy_run_frame4
	db $02 : dw !diddy_run_frame5
	db $02 : dw !diddy_run_frame6
	db $02 : dw !diddy_run_frame7
	db $02 : dw !diddy_run_frame8
	db $02 : dw !diddy_run_frame9
	db $02 : dw !diddy_run_frame10
	db $02 : dw !diddy_run_frame11
	db $02 : dw !diddy_run_frame12
	db $02 : dw !diddy_run_frame13
	db !animation_command_82 : dw .loop
	db !animation_command_80, $00

;$F91C0D
diddy_bonus_exit_swim:
	db !animation_command_81 : dw CODE_B9D9E6
	db $18 : dw !diddy_swim_frame1
	db !animation_command_81 : dw CODE_B9D9FF
	db $10 : dw !diddy_swim_frame1
	db !animation_command_81 : dw CODE_B9D9ED
.loop:
	db $03 : dw !diddy_swim_frame1
	db $03 : dw !diddy_swim_frame2
	db $03 : dw !diddy_swim_frame3
	db $03 : dw !diddy_swim_frame4
	db $03 : dw !diddy_swim_frame5
	db $03 : dw !diddy_swim_frame6
	db $03 : dw !diddy_swim_frame7
	db $03 : dw !diddy_swim_frame8
	db $03 : dw !diddy_swim_frame9
	db $03 : dw !diddy_swim_frame10
	db $03 : dw !diddy_swim_frame11
	db $03 : dw !diddy_swim_frame12
	db $03 : dw !diddy_swim_frame13
	db $03 : dw !diddy_swim_frame14
	db $03 : dw !diddy_swim_frame15
	db !animation_command_82 : dw .loop
	db !animation_command_80, $00

;$F91C4E
diddy_stunned:
	db !animation_command_8E : dw sound(6, !sound_diddy_hit)
	db $12 : dw !diddy_hurt_frame17
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F91C59
diddy_hurt:
	db !animation_command_8E : dw sound(6, !sound_diddy_hit)
	db $02 : dw !diddy_hurt_frame17
	db $02 : dw !diddy_hurt_frame17
	db !animation_command_83 : dw CODE_B9D55A
	db $02 : dw !diddy_hurt_frame17
	db !animation_command_83 : dw CODE_B9D541
	db $02 : dw !diddy_hurt_frame17
	db !animation_command_81 : dw CODE_B9DA19
	db !animation_command_80, $00

;$F91C73
diddy_run:
	db !animation_command_84 : dw CODE_B9DA30
	db $02 : dw !diddy_run_frame1
	db $02 : dw !diddy_run_frame2
	db $02 : dw !diddy_run_frame3
	db $02 : dw !diddy_run_frame4
	db !animation_command_81 : dw CODE_B9E0E0
	db $02 : dw !diddy_run_frame5
	db $02 : dw !diddy_run_frame6
	db $02 : dw !diddy_run_frame7
	db $02 : dw !diddy_run_frame8
	db $02 : dw !diddy_run_frame9
	db !animation_command_81 : dw CODE_B9E0E0
	db $02 : dw !diddy_run_frame10
	db $02 : dw !diddy_run_frame11
	db $02 : dw !diddy_run_frame12
	db $02 : dw !diddy_run_frame13
	db !animation_command_81 : dw CODE_B9E07A
	db !animation_command_80, $00

;$F91CA8
diddy_follow_jump:
	db $02 : dw !diddy_jump_frame5
	db $02 : dw !diddy_jump_frame6
	db $02 : dw !diddy_jump_frame7
	db $02 : dw !diddy_jump_frame8
	db $02 : dw !diddy_jump_frame9
	db $02 : dw !diddy_jump_frame10
	db $02 : dw !diddy_jump_frame11
	db $02 : dw !diddy_jump_frame12
	db $02 : dw !diddy_jump_frame13
	db !animation_command_83 : dw CODE_B9D56E
	db $04 : dw !diddy_jump_frame14
	db $03 : dw !diddy_jump_frame15
	db $03 : dw !diddy_jump_frame16
	db $03 : dw !diddy_jump_frame17
	db $03 : dw !diddy_jump_frame18
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F91CDA
diddy_hurt_jump_off_screen:
	db $02 : dw !diddy_jump_frame1
	db $0A : dw !diddy_jump_frame2
	db $02 : dw !diddy_jump_frame3
	db $02 : dw !diddy_jump_frame4
	db !animation_command_81 : dw CODE_B9DA50
	db $02 : dw !diddy_jump_frame5
	db $02 : dw !diddy_jump_frame6
	db $02 : dw !diddy_jump_frame7
	db $02 : dw !diddy_jump_frame8
	db $02 : dw !diddy_jump_frame9
	db $02 : dw !diddy_jump_frame10
	db $02 : dw !diddy_jump_frame11
	db $02 : dw !diddy_jump_frame12
	db $02 : dw !diddy_jump_frame13
	db $02 : dw !diddy_jump_frame14
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F91D0C
diddy_jump:
	db $02 : dw !diddy_jump_frame2
	db $01 : dw !diddy_jump_frame4
	db !animation_command_81 : dw CODE_B9DF51
	db !animation_command_80, $00

;$F91D17
diddy_air:
	db !animation_command_84 : dw CODE_B9DEC1
	db $02 : dw !diddy_jump_frame5
	db $02 : dw !diddy_jump_frame6
	db $02 : dw !diddy_jump_frame7
	db $02 : dw !diddy_jump_frame8
	db $02 : dw !diddy_jump_frame9
	db $02 : dw !diddy_jump_frame10
	db $02 : dw !diddy_jump_frame11
	db $02 : dw !diddy_jump_frame12
	db $02 : dw !diddy_jump_frame13
	db !animation_command_83 : dw CODE_B9D56E
	db !animation_command_84 : dw CODE_B9DECC
	db $04 : dw !diddy_jump_frame14
	db $03 : dw !diddy_jump_frame15
	db $03 : dw !diddy_jump_frame16
	db $03 : dw !diddy_jump_frame17
	db $03 : dw !diddy_jump_frame18
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F91D55
diddy_follow_air:
	db $02 : dw !diddy_jump_frame17
	db $02 : dw !diddy_jump_frame17
	db !animation_command_83 : dw stall_animation_until_grounded
	db $02 : dw !diddy_jump_frame18
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F91D66
diddy_fall:
	db $02 : dw !diddy_jump_frame17
	db !animation_command_84 : dw CODE_B9DECC
	db $02 : dw !diddy_jump_frame17
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db $02 : dw !diddy_jump_frame18
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F91D7D
diddy_slope_slide:
	db $02 : dw !diddy_jump_frame17
	db $02 : dw !diddy_jump_frame17
	db !animation_command_83 : dw CODE_B9D5B1
	db $02 : dw !diddy_jump_frame18
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F91D8E
diddy_bounce_back:
	db $02 : dw !diddy_jump_frame17
	db !animation_command_84 : dw CODE_B9DECC
	db $02 : dw !diddy_jump_frame17
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F91DA2
diddy_land:
	db $02 : dw !diddy_jump_frame19
	db !animation_command_81 : dw CODE_B9DA5B
	db $02 : dw !diddy_jump_frame20
	db $03 : dw !diddy_jump_frame1
	db $08 : dw !diddy_jump_frame2
	db $03 : dw !diddy_jump_frame1
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F91DB9
diddy_roll:
	db !animation_command_81 : dw CODE_B9DEAE
	db $01 : dw !diddy_roll_frame1
	db $01 : dw !diddy_roll_frame3
	db $01 : dw !diddy_roll_frame4
	db $01 : dw !diddy_roll_frame5
	db $01 : dw !diddy_roll_frame6
.loop:
	db $02 : dw !diddy_roll_frame7
	db $02 : dw !diddy_roll_frame8
	db $02 : dw !diddy_roll_frame9
	db $02 : dw !diddy_roll_frame10
	db $02 : dw !diddy_roll_frame11
	db $02 : dw !diddy_roll_frame12
	db $02 : dw !diddy_roll_frame13
	db $02 : dw !diddy_roll_frame14
	db $02 : dw !diddy_roll_frame15
	db $02 : dw !diddy_roll_frame16
	db $02 : dw !diddy_roll_frame17
	db $02 : dw !diddy_roll_frame18
	db !animation_command_8F : dw CODE_B9D674, .end
	db $02 : dw !diddy_roll_frame19
	db $02 : dw !diddy_roll_frame20
	db !animation_command_82 : dw .loop
.end:
	db $03 : dw !diddy_roll_frame19
	db !animation_command_81 : dw CODE_B9DE43
	db $02 : dw !diddy_roll_frame19
	db $03 : dw !diddy_roll_frame20
	db $03 : dw !diddy_roll_frame20
	db $02 : dw !diddy_roll_frame5
	db $02 : dw !diddy_roll_frame4
	db $02 : dw !diddy_roll_frame3
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F91E1A
diddy_death:
	db !animation_command_8E : dw sound(6, !sound_diddy_hit)
	db $01 : dw !diddy_hurt_frame17
	db !animation_command_81 : dw CODE_B9DA5C
	db $0B : dw !diddy_hurt_frame17
	db $02 : dw !diddy_hurt_frame17
	db !animation_command_83 : dw CODE_B9D55A
	db $05 : dw !diddy_hurt_frame1
	db $05 : dw !diddy_hurt_frame2
	db $05 : dw !diddy_hurt_frame3
	db $05 : dw !diddy_hurt_frame4
	db $05 : dw !diddy_hurt_frame5
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_8E : dw sound(6, !sound_hit_ground)
	db !animation_command_81 : dw CODE_B9DD21
	db $05 : dw !diddy_hurt_frame6
	db $05 : dw !diddy_hurt_frame7
	db $05 : dw !diddy_hurt_frame8
	db $06 : dw !diddy_hurt_frame9
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_8E : dw sound(6, !sound_hit_ground)
	db !animation_command_81 : dw CODE_B9DA75
	db $0C : dw !diddy_hurt_frame10
	db !animation_command_81 : dw CODE_B9DEBE
	db $06 : dw !diddy_hurt_frame11
	db $06 : dw !diddy_hurt_frame12
	db !animation_command_81 : dw spawn_diddy_hurt_stars
	db $06 : dw !diddy_hurt_frame13
	db $06 : dw !diddy_hurt_frame14
	db $06 : dw !diddy_hurt_frame15
	db $06 : dw !diddy_hurt_frame16
	db $05 : dw !diddy_hurt_frame16
	db $05 : dw !diddy_hurt_frame15
	db $05 : dw !diddy_hurt_frame14
	db $05 : dw !diddy_hurt_frame14
	db $05 : dw !diddy_hurt_frame15
	db $05 : dw !diddy_hurt_frame16
	db $04 : dw !diddy_hurt_frame16
	db $04 : dw !diddy_hurt_frame15
	db $04 : dw !diddy_hurt_frame14
	db $04 : dw !diddy_hurt_frame16
	db $04 : dw !diddy_hurt_frame15
	db $04 : dw !diddy_hurt_frame14
	db $04 : dw !diddy_hurt_frame14
	db !animation_command_81 : dw exit_level_on_death
	db $04 : dw !diddy_hurt_frame15
	db $04 : dw !diddy_hurt_frame16
	db $04 : dw !diddy_hurt_frame16
	db $04 : dw !diddy_hurt_frame15
	db !animation_command_81 : dw CODE_B9DA80
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F91EB2
DATA_F91EB2:
	db $02 : dw !diddy_run_frame2
	db !animation_command_80, $00

;$F91EB7
diddy_squitter_mount:
	db $02 : dw !diddy_run_frame2
	db $02 : dw !diddy_run_frame3
	db !animation_command_81 : dw CODE_B9DAA3
	db !animation_command_80, $00

;$F91EC2
diddy_rattly_idle:
	db $50 : dw !diddy_ride_rattly_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F91ECA
diddy_animal_mount:
	db $50 : dw !diddy_ride_animal_idle_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F91ED2
diddy_animal_idle:
	db $28 : dw !diddy_ride_animal_idle_frame1
	db $08 : dw !diddy_ride_animal_idle_frame2
	db $08 : dw !diddy_ride_animal_idle_frame3
	db $28 : dw !diddy_ride_animal_idle_frame4
	db $08 : dw !diddy_ride_animal_idle_frame3
	db $06 : dw !diddy_ride_animal_idle_frame2
	db $06 : dw !diddy_ride_animal_idle_frame3
	db $06 : dw !diddy_ride_animal_idle_frame4
	db $14 : dw !diddy_ride_animal_idle_frame5
	db $08 : dw !diddy_ride_animal_idle_frame4
	db $08 : dw !diddy_ride_animal_idle_frame3
	db $08 : dw !diddy_ride_animal_idle_frame2
	db !animation_command_80, $00

;$F91EF8
diddy_squawks_idle:
	db $05 : dw !diddy_ride_squawks_frame1
	db $05 : dw !diddy_ride_squawks_frame2
	db $05 : dw !diddy_ride_squawks_frame3
	db $05 : dw !diddy_ride_squawks_frame4
	db $05 : dw !diddy_ride_squawks_frame5
	db $05 : dw !diddy_ride_squawks_frame6
	db $05 : dw !diddy_ride_squawks_frame5
	db $05 : dw !diddy_ride_squawks_frame4
	db $05 : dw !diddy_ride_squawks_frame3
	db $05 : dw !diddy_ride_squawks_frame2
	db !animation_command_80, $00

;$F91F18
diddy_honey_wall_idle:
	db $0D : dw !diddy_honey_wall_frame1
	db $08 : dw !diddy_honey_wall_frame2
	db $0D : dw !diddy_honey_wall_frame3
	db $08 : dw !diddy_honey_wall_frame2
	db $0D : dw !diddy_honey_wall_frame1
	db $08 : dw !diddy_honey_wall_frame2
	db $0D : dw !diddy_honey_wall_frame3
	db $08 : dw !diddy_honey_wall_frame2
	db $0D : dw !diddy_honey_wall_frame1
	db $08 : dw !diddy_honey_wall_frame2
	db $0D : dw !diddy_honey_wall_frame3
	db $08 : dw !diddy_honey_wall_frame2
	db $0D : dw !diddy_honey_wall_frame1
	db $08 : dw !diddy_honey_wall_frame2
	db $0D : dw !diddy_honey_wall_frame3
	db $08 : dw !diddy_honey_wall_frame2
	db $0D : dw !diddy_honey_wall_frame1
	db $08 : dw !diddy_honey_wall_frame2
	db $0D : dw !diddy_honey_wall_frame3
	db $08 : dw !diddy_honey_wall_frame2
	db $05 : dw !diddy_honey_wall_frame1
	db $05 : dw !diddy_honey_wall_frame2
	db $05 : dw !diddy_honey_wall_frame3
	db $05 : dw !diddy_honey_wall_frame4
	db $05 : dw !diddy_honey_wall_frame5
	db $1A : dw !diddy_honey_wall_frame6
	db $05 : dw !diddy_honey_wall_frame5
	db $05 : dw !diddy_honey_wall_frame4
	db $05 : dw !diddy_honey_wall_frame5
	db $28 : dw !diddy_honey_wall_frame6
	db $05 : dw !diddy_honey_wall_frame5
	db $05 : dw !diddy_honey_wall_frame4
	db $05 : dw !diddy_honey_wall_frame3
	db $05 : dw !diddy_honey_wall_frame2
	db $0D : dw !diddy_honey_wall_frame1
	db $08 : dw !diddy_honey_wall_frame2
	db $0D : dw !diddy_honey_wall_frame3
	db $08 : dw !diddy_honey_wall_frame2
	db !animation_command_80, $00

;$F91F8C
diddy_honey_floor_walk:
	db $04 : dw !diddy_jump_frame3
	db $04 : dw !diddy_jump_frame4
	db $04 : dw !diddy_jump_frame5
	db $04 : dw !diddy_jump_frame4
	db $04 : dw !diddy_jump_frame3
	db !animation_command_81 : dw CODE_B9DAAF
	db !animation_command_80, $00

;$F91FA0
diddy_honey_floor_idle:
	db $04 : dw !diddy_idle_frame1
	db $04 : dw !diddy_idle_frame2
	db $04 : dw !diddy_idle_frame3
	db $04 : dw !diddy_idle_frame4
	db $04 : dw !diddy_idle_frame5
	db $04 : dw !diddy_idle_frame6
	db $04 : dw !diddy_idle_frame7
	db $04 : dw !diddy_idle_frame8
	db $04 : dw !diddy_idle_frame9
	db $04 : dw !diddy_idle_frame10
	db $04 : dw !diddy_idle_frame11
	db $04 : dw !diddy_idle_frame12
	db $04 : dw !diddy_idle_frame13
	db $04 : dw !diddy_idle_frame14
	db $04 : dw !diddy_idle_frame15
	db $04 : dw !diddy_idle_frame16
	db $04 : dw !diddy_idle_frame17
	db $04 : dw !diddy_idle_frame18
	db $04 : dw !diddy_idle_frame19
	db $04 : dw !diddy_idle_frame20
	db $04 : dw !diddy_idle_frame21
	db $04 : dw !diddy_idle_frame22
	db !animation_command_80, $00

;$F91FE4
diddy_honey_floor_carry_idle:
	db !animation_command_8B, $04 : dw !diddy_grab_object_frame5, $000C, $FFF8
	db !animation_command_8B, $04 : dw !diddy_carry_object_frame1, $000C, $FFF4
	db !animation_command_8B, $04 : dw !diddy_carry_object_frame2, $000C, $FFF5
	db !animation_command_8B, $04 : dw !diddy_carry_object_frame1, $000C, $FFF4
	db !animation_command_8B, $04 : dw !diddy_carry_object_frame2, $000C, $FFF5
.loop:
	db !animation_command_8B, $04 : dw !diddy_grab_object_frame5, $000C, $FFF8
	db !animation_command_82 : dw .loop
	db !animation_command_80, $00

;$F92019
diddy_rope_vertical_single_idle:
	db !animation_command_84 : dw CODE_B9DAE0
	db $02 : dw !diddy_rope_turn_frame1
	db !animation_command_80, $00

;$F92021
diddy_rope_vertical_single_down:
	db !animation_command_84 : dw CODE_B9DB45
	db $02 : dw !diddy_climb_rope_frame12
	db $02 : dw !diddy_climb_rope_frame11
	db $02 : dw !diddy_climb_rope_frame10
	db $02 : dw !diddy_climb_rope_frame9
	db $02 : dw !diddy_climb_rope_frame8
	db $02 : dw !diddy_climb_rope_frame7
	db $02 : dw !diddy_climb_rope_frame6
	db $02 : dw !diddy_climb_rope_frame5
	db $02 : dw !diddy_climb_rope_frame4
	db $02 : dw !diddy_climb_rope_frame3
	db $02 : dw !diddy_climb_rope_frame2
	db $02 : dw !diddy_climb_rope_frame1
	db !animation_command_81 : dw CODE_B9DB19
	db !animation_command_80, $00

;$F9204D
diddy_rope_vertical_single_up:
	db !animation_command_84 : dw CODE_B9DB45
	db $02 : dw !diddy_climb_rope_frame1
	db $02 : dw !diddy_climb_rope_frame2
	db $02 : dw !diddy_climb_rope_frame3
	db $02 : dw !diddy_climb_rope_frame4
	db $02 : dw !diddy_climb_rope_frame5
	db $02 : dw !diddy_climb_rope_frame6
	db $02 : dw !diddy_climb_rope_frame7
	db $02 : dw !diddy_climb_rope_frame8
	db $02 : dw !diddy_climb_rope_frame9
	db $02 : dw !diddy_climb_rope_frame10
	db $02 : dw !diddy_climb_rope_frame11
	db $02 : dw !diddy_climb_rope_frame12
	db !animation_command_81 : dw CODE_B9DB19
	db !animation_command_80, $00

;$F92079
diddy_rope_vertical_single_turn:
	db $02 : dw !diddy_rope_turn_frame1
	db $02 : dw !diddy_rope_turn_frame2
	db $02 : dw !diddy_rope_turn_frame3
	db !animation_command_81 : dw CODE_B9E013
	db $02 : dw !diddy_rope_turn_frame3
	db $02 : dw !diddy_rope_turn_frame2
	db $02 : dw !diddy_rope_turn_frame1
	db !animation_command_81 : dw CODE_B9DB11
	db !animation_command_80, $00

;$F92093
DATA_F92093:
	db !animation_command_84 : dw CODE_B9DD61
	db $02 : dw !diddy_grab_double_rope_frame1
	db $02 : dw !diddy_grab_double_rope_frame2
	db $02 : dw !diddy_grab_double_rope_frame3
	db $02 : dw !diddy_grab_double_rope_frame4
	db $02 : dw !diddy_grab_double_rope_frame5
	db $02 : dw !diddy_grab_double_rope_frame6
	db $02 : dw !diddy_grab_double_rope_frame7
	db $02 : dw !diddy_grab_double_rope_frame8
	db $02 : dw !diddy_grab_double_rope_frame9
	db $02 : dw !diddy_grab_double_rope_frame10
	db !animation_command_81 : dw CODE_B9DB11
	db !animation_command_80, $00

;$F920B9
diddy_rope_vertical_single_to_double:
	db !animation_command_84 : dw CODE_B9DD61
	db $02 : dw !diddy_grab_double_rope_frame1
	db $02 : dw !diddy_grab_double_rope_frame2
	db $02 : dw !diddy_grab_double_rope_frame3
	db $02 : dw !diddy_grab_double_rope_frame4
	db $02 : dw !diddy_grab_double_rope_frame5
	db $02 : dw !diddy_grab_double_rope_frame6
	db $02 : dw !diddy_grab_double_rope_frame7
	db $02 : dw !diddy_grab_double_rope_frame8
	db $02 : dw !diddy_grab_double_rope_frame9
	db $02 : dw !diddy_grab_double_rope_frame10
	db !animation_command_81 : dw CODE_B9DD7C
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F920E2
diddy_rope_vertical_double_to_single:
	db !animation_command_84 : dw CODE_B9DD61
	db $02 : dw !diddy_grab_double_rope_frame10
	db $02 : dw !diddy_grab_double_rope_frame9
	db $02 : dw !diddy_grab_double_rope_frame8
	db $02 : dw !diddy_grab_double_rope_frame7
	db $02 : dw !diddy_grab_double_rope_frame6
	db $02 : dw !diddy_grab_double_rope_frame5
	db $02 : dw !diddy_grab_double_rope_frame4
	db $02 : dw !diddy_grab_double_rope_frame3
	db $02 : dw !diddy_grab_double_rope_frame2
	db $02 : dw !diddy_grab_double_rope_frame1
	db !animation_command_81 : dw CODE_B9DD8E
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9210B
diddy_rope_vertical_double_idle:
	db !animation_command_84 : dw CODE_B9DD9C
	db $02 : dw !diddy_grab_double_rope_frame10
	db !animation_command_80, $00

;$F92113
diddy_rope_vertical_double_up:
	db !animation_command_84 : dw CODE_B9DAB7
	db $03 : dw !diddy_climb_up_double_rope_frame1
	db $03 : dw !diddy_climb_up_double_rope_frame2
	db $03 : dw !diddy_climb_up_double_rope_frame3
	db $03 : dw !diddy_climb_up_double_rope_frame4
	db $03 : dw !diddy_climb_up_double_rope_frame5
	db $03 : dw !diddy_climb_up_double_rope_frame6
	db $03 : dw !diddy_climb_up_double_rope_frame7
	db $03 : dw !diddy_climb_up_double_rope_frame8
	db !animation_command_81 : dw CODE_B9DE17
	db !animation_command_80, $00

;$F92133
diddy_rope_vertical_double_down:
	db !animation_command_84 : dw CODE_B9DAB7
	db $03 : dw !diddy_climb_down_double_rope_frame8
	db $03 : dw !diddy_climb_down_double_rope_frame7
	db $03 : dw !diddy_climb_down_double_rope_frame6
	db $03 : dw !diddy_climb_down_double_rope_frame5
	db $03 : dw !diddy_climb_down_double_rope_frame4
	db $03 : dw !diddy_climb_down_double_rope_frame3
	db $03 : dw !diddy_climb_down_double_rope_frame2
	db $03 : dw !diddy_climb_down_double_rope_frame1
	db !animation_command_81 : dw CODE_B9DE17
	db !animation_command_80, $00

;$F92153
diddy_rope_horizontal_idle:
	db !animation_command_84 : dw CODE_B9DDB7
	db $03 : dw !diddy_rope_hang_frame1
	db $03 : dw !diddy_rope_hang_frame2
	db $03 : dw !diddy_rope_hang_frame3
	db $23 : dw !diddy_rope_hang_frame4
	db $03 : dw !diddy_rope_hang_frame3
	db $03 : dw !diddy_rope_hang_frame2
	db $03 : dw !diddy_rope_hang_frame1
	db $03 : dw !diddy_rope_hang_frame5
	db $03 : dw !diddy_rope_hang_frame6
	db $03 : dw !diddy_rope_hang_frame7
	db $23 : dw !diddy_rope_hang_frame8
	db $03 : dw !diddy_rope_hang_frame7
	db $03 : dw !diddy_rope_hang_frame6
	db $03 : dw !diddy_rope_hang_frame5
	db $03 : dw !diddy_rope_hang_frame1
	db $03 : dw !diddy_rope_hang_frame2
	db $03 : dw !diddy_rope_hang_frame3
	db $23 : dw !diddy_rope_hang_frame4
	db $03 : dw !diddy_rope_hang_frame3
	db $03 : dw !diddy_rope_hang_frame2
	db $03 : dw !diddy_rope_hang_frame1
	db $03 : dw !diddy_rope_hang_frame5
	db $23 : dw !diddy_rope_hang_frame6
	db $03 : dw !diddy_rope_hang_frame5
	db $03 : dw !diddy_rope_hang_frame1
	db $03 : dw !diddy_rope_hang_frame5
	db $03 : dw !diddy_rope_hang_frame6
	db $03 : dw !diddy_rope_hang_frame7
	db $23 : dw !diddy_rope_hang_frame8
	db $03 : dw !diddy_rope_hang_frame7
	db $03 : dw !diddy_rope_hang_frame6
	db $03 : dw !diddy_rope_hang_frame5
	db !animation_command_80, $00

;$F921B8
diddy_rope_horizontal_move:
	db !animation_command_84 : dw CODE_B9DDE8
	db $03 : dw !diddy_rope_walk_frame1
	db $03 : dw !diddy_rope_walk_frame2
	db $03 : dw !diddy_rope_walk_frame3
	db $03 : dw !diddy_rope_walk_frame4
	db !animation_command_81 : dw CODE_B9DDC9
	db $03 : dw !diddy_rope_walk_frame5
	db $03 : dw !diddy_rope_walk_frame6
	db $03 : dw !diddy_rope_walk_frame7
	db $03 : dw !diddy_rope_walk_frame8
	db !animation_command_81 : dw CODE_B9DDC9
	db $03 : dw !diddy_rope_walk_frame9
	db $03 : dw !diddy_rope_walk_frame10
	db $03 : dw !diddy_rope_walk_frame11
	db $03 : dw !diddy_rope_walk_frame12
	db $03 : dw !diddy_rope_walk_frame13
	db !animation_command_81 : dw CODE_B9DDC9
	db $03 : dw !diddy_rope_walk_frame14
	db $03 : dw !diddy_rope_walk_frame15
	db $03 : dw !diddy_rope_walk_frame16
	db $03 : dw !diddy_rope_walk_frame17
	db $03 : dw !diddy_rope_walk_frame18
	db !animation_command_81 : dw CODE_B9DDC9
	db !animation_command_80, $00

;$F921FF
diddy_hook_idle:
	db $02 : dw !diddy_grab_hook_frame1
	db $01 : dw !diddy_grab_hook_frame2
	db $02 : dw !diddy_grab_hook_frame3
	db $01 : dw !diddy_grab_hook_frame4
	db $02 : dw !diddy_hook_idle_frame6
	db $02 : dw !diddy_hook_idle_frame5
	db $02 : dw !diddy_hook_idle_frame4
	db $03 : dw !diddy_hook_idle_frame3
	db $03 : dw !diddy_hook_idle_frame2
	db $04 : dw !diddy_hook_idle_frame1
	db $04 : dw !diddy_hook_idle_frame2
	db $05 : dw !diddy_hook_idle_frame3
	db $06 : dw !diddy_hook_idle_frame4
	db $07 : dw !diddy_hook_idle_frame5
.loop:
	db $08 : dw !diddy_hook_idle_frame6
	db $08 : dw !diddy_hook_idle_frame5
	db $08 : dw !diddy_hook_idle_frame4
	db $08 : dw !diddy_hook_idle_frame3
	db $08 : dw !diddy_hook_idle_frame2
	db $08 : dw !diddy_hook_idle_frame1
	db $08 : dw !diddy_hook_idle_frame2
	db $08 : dw !diddy_hook_idle_frame3
	db $08 : dw !diddy_hook_idle_frame4
	db $08 : dw !diddy_hook_idle_frame5
	db !animation_command_82 : dw .loop
	db !animation_command_80, $00

;$F9224C
diddy_swim_idle:
	db $03 : dw !diddy_swim_frame1
	db !animation_command_84 : dw CODE_B9DB6C
	db $03 : dw !diddy_swim_frame2
	db $03 : dw !diddy_swim_frame3
	db $03 : dw !diddy_swim_frame4
	db $03 : dw !diddy_swim_frame5
	db $03 : dw !diddy_swim_frame6
	db $03 : dw !diddy_swim_frame7
	db $03 : dw !diddy_swim_frame8
	db $03 : dw !diddy_swim_frame9
	db $03 : dw !diddy_swim_frame10
	db $03 : dw !diddy_swim_frame11
	db $03 : dw !diddy_swim_frame12
	db $03 : dw !diddy_swim_frame13
	db $03 : dw !diddy_swim_frame14
	db $03 : dw !diddy_swim_frame15
	db !animation_command_80, $00

;$F9227E
diddy_swim_turn:
	db $03 : dw !diddy_swim_turn_frame1
	db $02 : dw !diddy_swim_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !diddy_swim_turn_frame2
	db $02 : dw !diddy_swim_turn_frame1
	db !animation_command_81 : dw CODE_B9DB64
	db !animation_command_80, $00

;$F92292
squitter_idle:
	db !animation_command_84 : dw CODE_B9E0A8
	db !animation_command_87, $06 : dw !squitter_idle_frame1, $0000, $0000
	db !animation_command_87, $06 : dw !squitter_idle_frame2, $0000, $0001
	db !animation_command_87, $06 : dw !squitter_idle_frame3, $0000, $0002
	db !animation_command_87, $06 : dw !squitter_idle_frame2, $0000, $0001
	db !animation_command_80, $00

;$F922B7
squitter_turn:
	db $02 : dw !squitter_walk_frame5
	db $02 : dw !squitter_walk_frame7
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !squitter_walk_frame7
	db $02 : dw !squitter_walk_frame5
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F922CB
squitter_walk:
	db !animation_command_84 : dw CODE_B9DB9B
	db !animation_command_87, $03 : dw !squitter_walk_frame1, $0000, $0000
	db !animation_command_87, $03 : dw !squitter_walk_frame2, $0000, $FFFF
	db !animation_command_87, $03 : dw !squitter_walk_frame3, $0000, $FFFE
	db !animation_command_87, $03 : dw !squitter_walk_frame4, $0000, $FFFD
	db !animation_command_87, $03 : dw !squitter_walk_frame5, $0000, $FFFC
	db !animation_command_87, $03 : dw !squitter_walk_frame6, $0000, $FFFD
	db !animation_command_87, $03 : dw !squitter_walk_frame7, $0000, $FFFE
	db !animation_command_87, $03 : dw !squitter_walk_frame8, $0000, $FFFF
	db !animation_command_87, $03 : dw !squitter_walk_frame9, $0000, $0000
	db !animation_command_87, $03 : dw !squitter_walk_frame10, $0000, $FFFF
	db !animation_command_87, $03 : dw !squitter_walk_frame11, $0000, $FFFE
	db !animation_command_87, $03 : dw !squitter_walk_frame12, $0000, $FFFD
	db !animation_command_87, $03 : dw !squitter_walk_frame13, $0000, $FFFC
	db !animation_command_87, $03 : dw !squitter_walk_frame14, $0000, $FFFD
	db !animation_command_87, $03 : dw !squitter_walk_frame15, $0000, $FFFE
	db !animation_command_81 : dw CODE_B9E0E0
	db !animation_command_87, $03 : dw !squitter_walk_frame16, $0000, $FFFF
	db !animation_command_81 : dw CODE_B9E0E0
	db !animation_command_80, $00

;$F92356
squitter_exit:
	db !animation_command_8F : dw check_if_not_bonus_or_sub_level, .loop
	db !animation_command_81 : dw CODE_B9D9E6
	db !animation_command_87, $18 : dw !squitter_idle_frame1, $0000, $0000
	db !animation_command_81 : dw CODE_B9D9FF
	db !animation_command_87, $10 : dw !squitter_idle_frame1, $0000, $0000
	db !animation_command_81 : dw CODE_B9D9ED
.loop:
	db !animation_command_87, $03 : dw !squitter_walk_frame1, $0000, $0000
	db !animation_command_87, $03 : dw !squitter_walk_frame2, $0000, $FFFF
	db !animation_command_87, $03 : dw !squitter_walk_frame3, $0000, $FFFE
	db !animation_command_87, $03 : dw !squitter_walk_frame4, $0000, $FFFD
	db !animation_command_87, $03 : dw !squitter_walk_frame5, $0000, $FFFC
	db !animation_command_87, $03 : dw !squitter_walk_frame6, $0000, $FFFD
	db !animation_command_87, $03 : dw !squitter_walk_frame7, $0000, $FFFE
	db !animation_command_87, $03 : dw !squitter_walk_frame8, $0000, $FFFF
	db !animation_command_87, $03 : dw !squitter_walk_frame9, $0000, $0000
	db !animation_command_87, $03 : dw !squitter_walk_frame10, $0000, $FFFF
	db !animation_command_87, $03 : dw !squitter_walk_frame11, $0000, $FFFE
	db !animation_command_87, $03 : dw !squitter_walk_frame12, $0000, $FFFD
	db !animation_command_87, $03 : dw !squitter_walk_frame13, $0000, $FFFC
	db !animation_command_87, $03 : dw !squitter_walk_frame14, $0000, $FFFD
	db !animation_command_87, $03 : dw !squitter_walk_frame15, $0000, $FFFE
	db !animation_command_87, $03 : dw !squitter_walk_frame16, $0000, $FFFF
	db !animation_command_82 : dw .loop
	db !animation_command_80, $00

;$F923F9
squitter_jump:
	db !animation_command_88 : dw $0000, $0000
	db $02 : dw !squitter_idle_frame1
	db $02 : dw !squitter_idle_frame2
	db !animation_command_8E : dw sound(5, !sound_squitter_jump)
	db !animation_command_81 : dw CODE_B9DF51
	db !animation_command_80, $00

;$F9240C
squitter_air:
	db !animation_command_88 : dw $0000, $0005
	db !animation_command_84 : dw CODE_B9DEC1
	db $01 : dw !squitter_idle_frame3
	db $01 : dw !squitter_jump_frame1
	db $01 : dw !squitter_jump_frame2
	db $01 : dw !squitter_jump_frame3
	db $01 : dw !squitter_jump_frame4
	db $01 : dw !squitter_jump_frame5
	db !animation_command_83 : dw CODE_B9D55A
	db $01 : dw !squitter_jump_frame5
	db !animation_command_83 : dw CODE_B9D56E
	db !animation_command_84 : dw CODE_B9DECC
	db $03 : dw !squitter_jump_frame4
	db $03 : dw !squitter_jump_frame3
	db $03 : dw !squitter_jump_frame2
	db $03 : dw !squitter_jump_frame1
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F92449
squitter_land:
	db $01 : dw !squitter_idle_frame1
	db $01 : dw !squitter_idle_frame2
	db $02 : dw !squitter_idle_frame3
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F92457
squitter_fall:
	db !animation_command_84 : dw CODE_B9DECC
	db $03 : dw !squitter_jump_frame4
	db $03 : dw !squitter_jump_frame3
	db $03 : dw !squitter_jump_frame2
	db $03 : dw !squitter_jump_frame1
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F92471
squitter_mount:
	db !animation_command_88 : dw $0000, $0000
	db $01 : dw !squitter_idle_frame1
	db $01 : dw !squitter_idle_frame2
	db $02 : dw !squitter_idle_frame3
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F92484
squitter_barrel_cannon_air:
	db !animation_command_88 : dw $0000, $0000
	db $03 : dw !squitter_jump_frame4
	db !animation_command_80, $00

;$F9248E
rattly_dixie_idle:
	db !animation_command_82 : dw DATA_F924B3
rattly_dixie_exit:
	db !animation_command_8F : dw check_if_not_bonus_or_sub_level, DATA_F924B3
	db !animation_command_81 : dw CODE_B9D9E6
	db !animation_command_86, $18 : dw !rattly_jump_frame3, !dixie_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_81 : dw CODE_B9D9FF
	db !animation_command_86, $10 : dw !rattly_jump_frame3, !dixie_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_81 : dw CODE_B9D9ED
DATA_F924B3:
	db !animation_command_84 : dw CODE_B9E06C
	db !animation_command_86, $02 : dw !rattly_jump_frame3, !dixie_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $02 : dw !rattly_jump_frame4, !dixie_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_81 : dw CODE_B9DBC8
	db !animation_command_86, $02 : dw !rattly_jump_frame5, !dixie_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_86, $02 : dw !rattly_jump_frame6, !dixie_ride_rattly_frame1, $0000, $FFF7
	db !animation_command_83 : dw CODE_B9D55A
	db !animation_command_8F : dw CODE_B9D6BA, DATA_F92583
	db !animation_command_86, $01 : dw !rattly_jump_frame6, !dixie_ride_rattly_frame1, $0000, $FFF7
	db !animation_command_86, $01 : dw !rattly_jump_frame6, !dixie_ride_rattly_frame1, $0000, $FFF7
	db !animation_command_86, $01 : dw !rattly_jump_frame6, !dixie_ride_rattly_frame1, $0000, $FFF7
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_8E : dw sound(5, !sound_rattly_hop)
	db !animation_command_86, $01 : dw !rattly_jump_frame6, !dixie_ride_rattly_frame1, $0000, $FFF7
	db !animation_command_86, $01 : dw !rattly_jump_frame5, !dixie_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_86, $01 : dw !rattly_jump_frame4, !dixie_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $01 : dw !rattly_jump_frame3, !dixie_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !dixie_ride_rattly_frame1, $0000, $FFFF
	db !animation_command_86, $05 : dw !rattly_jump_frame1, !dixie_ride_rattly_frame1, $0000, $0000
	db !animation_command_8F : dw CODE_B9D6BA, DATA_F925D2
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !dixie_ride_rattly_frame1, $0000, $FFFF
	db !animation_command_86, $05 : dw !rattly_jump_frame3, !dixie_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !dixie_ride_rattly_frame1, $0000, $FFFF
	db !animation_command_86, $05 : dw !rattly_jump_frame1, !dixie_ride_rattly_frame1, $0000, $0000
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !dixie_ride_rattly_frame1, $0000, $FFFF
	db !animation_command_82 : dw DATA_F925D2
DATA_F92583:
	db !animation_command_83 : dw CODE_B9D589
	db !animation_command_8E : dw sound(5, !sound_rattly_hop)
	db !animation_command_86, $02 : dw !rattly_jump_frame6, !dixie_ride_rattly_frame1, $0000, $FFF7
	db !animation_command_86, $02 : dw !rattly_jump_frame5, !dixie_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_86, $02 : dw !rattly_jump_frame4, !dixie_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $02 : dw !rattly_jump_frame3, !dixie_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $02 : dw !rattly_jump_frame2, !dixie_ride_rattly_frame1, $0000, $FFFF
	db !animation_command_86, $04 : dw !rattly_jump_frame1, !dixie_ride_rattly_frame1, $0000, $0000
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !dixie_ride_rattly_frame1, $0000, $FFFF
	db !animation_command_83 : dw stall_animation_until_grounded
DATA_F925D2:
	db !animation_command_82 : dw DATA_F924B3
	db !animation_command_80, $00

;$F925D7
rattly_dixie_jump:
	db !animation_command_86, $02 : dw !rattly_jump_frame1, !dixie_ride_rattly_frame1, $0000, $0000
	db !animation_command_8E : dw sound(5, !sound_rattly_leap)
	db !animation_command_81 : dw CODE_B9DF51
	db !animation_command_80, $00

;$F925E9
rattly_dixie_air:
	db !animation_command_86, $02 : dw !rattly_jump_frame2, !dixie_ride_rattly_frame1, $0000, $0000
	db !animation_command_86, $02 : dw !rattly_jump_frame3, !dixie_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $02 : dw !rattly_jump_frame4, !dixie_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $02 : dw !rattly_jump_frame5, !dixie_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_86, $02 : dw !rattly_jump_frame6, !dixie_ride_rattly_frame1, $0000, $FFF8
	db !animation_command_86, $02 : dw !rattly_jump_frame7, !dixie_ride_rattly_frame1, $0000, $FFF3
	db !animation_command_86, $02 : dw !rattly_jump_frame8, !dixie_ride_rattly_frame1, $0000, $FFEF
	db !animation_command_86, $02 : dw !rattly_jump_frame9, !dixie_ride_rattly_frame1, $FFFF, $FFE8
	db !animation_command_86, $02 : dw !rattly_jump_frame10, !dixie_ride_rattly_frame1, $FFFE, $FFE5
DATA_F92643:
	db !animation_command_86, $01 : dw !rattly_jump_frame11, !dixie_ride_rattly_frame1, $FFFD, $FFE1
	db !animation_command_8F : dw check_if_moving_down, DATA_F926BE
	db !animation_command_86, $01 : dw !rattly_jump_frame12, !dixie_ride_rattly_frame1, $FFFD, $FFE1
	db !animation_command_8F : dw check_if_moving_down, DATA_F926BE
	db !animation_command_86, $01 : dw !rattly_jump_frame13, !dixie_ride_rattly_frame1, $FFFD, $FFE1
	db !animation_command_8F : dw check_if_moving_down, DATA_F926BE
	db !animation_command_86, $01 : dw !rattly_jump_frame14, !dixie_ride_rattly_frame1, $FFFD, $FFE1
	db !animation_command_8F : dw check_if_moving_down, DATA_F926BE
	db !animation_command_86, $01 : dw !rattly_jump_frame15, !dixie_ride_rattly_frame1, $FFFD, $FFE1
	db !animation_command_8F : dw check_if_moving_down, DATA_F926BE
	db !animation_command_86, $01 : dw !rattly_jump_frame14, !dixie_ride_rattly_frame1, $FFFD, $FFE1
	db !animation_command_8F : dw check_if_moving_down, DATA_F926BE
	db !animation_command_86, $01 : dw !rattly_jump_frame13, !dixie_ride_rattly_frame1, $FFFD, $FFE1
	db !animation_command_8F : dw check_if_moving_down, DATA_F926BE
	db !animation_command_86, $01 : dw !rattly_jump_frame12, !dixie_ride_rattly_frame1, $FFFD, $FFE1
	db !animation_command_8F : dw check_if_moving_down, DATA_F926BE
	db !animation_command_82 : dw DATA_F92643
DATA_F926BE:
	db !animation_command_84 : dw CODE_B9DBB0
	db !animation_command_86, $03 : dw !rattly_jump_frame11, !dixie_ride_rattly_frame2, $0000, $0000
	db !animation_command_86, $03 : dw !rattly_jump_frame12, !dixie_ride_rattly_frame3, $0000, $0000
	db !animation_command_86, $03 : dw !rattly_jump_frame13, !dixie_ride_rattly_frame4, $0000, $0000
	db !animation_command_86, $03 : dw !rattly_jump_frame14, !dixie_ride_rattly_frame5, $0000, $0000
	db !animation_command_86, $03 : dw !rattly_jump_frame13, !dixie_ride_rattly_frame6, $0000, $0000
	db !animation_command_86, $02 : dw !rattly_jump_frame12, !dixie_ride_rattly_frame7, $0000, $0000
	db !animation_command_84 : dw !null_pointer
DATA_F92700:
	db !animation_command_86, $01 : dw !rattly_jump_frame11, !dixie_ride_rattly_frame8, $0000, $0000
	db !animation_command_8F : dw CODE_B9D674, DATA_F9275D
	db !animation_command_86, $01 : dw !rattly_jump_frame12, !dixie_ride_rattly_frame8, $0000, $0000
	db !animation_command_8F : dw CODE_B9D674, DATA_F9275D
	db !animation_command_86, $01 : dw !rattly_jump_frame13, !dixie_ride_rattly_frame8, $0000, $0000
	db !animation_command_8F : dw CODE_B9D674, DATA_F9275D
	db !animation_command_86, $01 : dw !rattly_jump_frame14, !dixie_ride_rattly_frame8, $0000, $0000
	db !animation_command_8F : dw CODE_B9D674, DATA_F9275D
	db !animation_command_86, $01 : dw !rattly_jump_frame13, !dixie_ride_rattly_frame8, $0000, $0000
	db !animation_command_8F : dw CODE_B9D674, DATA_F9275D
	db !animation_command_86, $01 : dw !rattly_jump_frame12, !dixie_ride_rattly_frame8, $0000, $0000
	db !animation_command_8F : dw CODE_B9D674, DATA_F9275D
	db !animation_command_82 : dw DATA_F92700
DATA_F9275D:
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F92762
rattly_dixie_land:
	db !animation_command_86, $01 : dw !rattly_jump_frame10, !dixie_ride_rattly_frame8, $0002, $0005
	db !animation_command_86, $01 : dw !rattly_jump_frame9, !dixie_ride_rattly_frame8, $0003, $000B
	db !animation_command_86, $01 : dw !rattly_jump_frame8, !dixie_ride_rattly_frame8, $0005, $0012
	db !animation_command_86, $01 : dw !rattly_jump_frame7, !dixie_ride_rattly_frame8, $0005, $0018
	db !animation_command_86, $01 : dw !rattly_jump_frame6, !dixie_ride_rattly_frame8, $0005, $001B
	db !animation_command_86, $01 : dw !rattly_jump_frame5, !dixie_ride_rattly_frame8, $0005, $001D
	db !animation_command_86, $01 : dw !rattly_jump_frame4, !dixie_ride_rattly_frame9, $0000, $0000
	db !animation_command_86, $01 : dw !rattly_jump_frame3, !dixie_ride_rattly_frame10, $0000, $0000
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !dixie_ride_rattly_frame11, $0000, $0000
	db !animation_command_86, $04 : dw !rattly_jump_frame1, !dixie_ride_rattly_frame12, $0000, $0000
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !dixie_ride_rattly_frame13, $0000, $0000
	db !animation_command_86, $01 : dw !rattly_jump_frame3, !dixie_ride_rattly_frame14, $0000, $0000
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F927DF
DATA_F927DF:
	db !animation_command_84 : dw CODE_B9DBC5
	db $02 : dw !rattly_jump_frame3
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !rattly_jump_frame3
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F927F3
DATA_F927F3:
	db !animation_command_84 : dw CODE_B9DECC
	db $01 : dw !rattly_jump_frame2
	db $01 : dw !rattly_jump_frame3
	db $01 : dw !rattly_jump_frame4
	db $01 : dw !rattly_jump_frame5
	db $01 : dw !rattly_jump_frame6
	db $01 : dw !rattly_jump_frame7
	db $01 : dw !rattly_jump_frame8
	db $01 : dw !rattly_jump_frame9
	db $01 : dw !rattly_jump_frame10
	db $01 : dw !rattly_jump_frame11
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F9281F
rattly_mount:
	db !animation_command_88 : dw $0000, $0000
	db !animation_command_84 : dw CODE_B9DECC
	db $01 : dw !rattly_jump_frame2
	db $01 : dw !rattly_jump_frame3
	db $01 : dw !rattly_jump_frame4
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F92835
rattly_barrel_cannon_air:
	db !animation_command_88 : dw $0000, $0000
	db $04 : dw !rattly_jump_frame2
	db $04 : dw !rattly_jump_frame3
	db $04 : dw !rattly_jump_frame4
	db !animation_command_80, $00

;$F92845
rattly_diddy_idle:
	db !animation_command_82 : dw DATA_F9286A
rattly_diddy_exit:
	db !animation_command_8F : dw check_if_not_bonus_or_sub_level, DATA_F9286A
	db !animation_command_81 : dw CODE_B9D9E6
	db !animation_command_86, $18 : dw !rattly_jump_frame3, !diddy_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_81 : dw CODE_B9D9FF
	db !animation_command_86, $10 : dw !rattly_jump_frame3, !diddy_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_81 : dw CODE_B9D9ED
DATA_F9286A:
	db !animation_command_84 : dw CODE_B9E06C
	db !animation_command_86, $02 : dw !rattly_jump_frame3, !diddy_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $02 : dw !rattly_jump_frame4, !diddy_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_81 : dw CODE_B9DBC8
	db !animation_command_86, $02 : dw !rattly_jump_frame5, !diddy_ride_rattly_frame1, $0000, $FFF8
	db !animation_command_86, $02 : dw !rattly_jump_frame6, !diddy_ride_rattly_frame1, $0000, $FFF6
	db !animation_command_83 : dw CODE_B9D55A
	db !animation_command_8F : dw CODE_B9D6BA, DATA_F9293A
	db !animation_command_86, $01 : dw !rattly_jump_frame6, !diddy_ride_rattly_frame1, $0000, $FFF6
	db !animation_command_86, $01 : dw !rattly_jump_frame6, !diddy_ride_rattly_frame1, $0000, $FFF6
	db !animation_command_86, $01 : dw !rattly_jump_frame6, !diddy_ride_rattly_frame1, $0000, $FFF6
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_8E : dw sound(5, !sound_rattly_hop)
	db !animation_command_86, $01 : dw !rattly_jump_frame6, !diddy_ride_rattly_frame1, $0000, $FFF6
	db !animation_command_86, $01 : dw !rattly_jump_frame5, !diddy_ride_rattly_frame1, $0000, $FFF8
	db !animation_command_86, $01 : dw !rattly_jump_frame4, !diddy_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_86, $01 : dw !rattly_jump_frame3, !diddy_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !diddy_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $05 : dw !rattly_jump_frame1, !diddy_ride_rattly_frame1, $0000, $0000
	db !animation_command_8F : dw CODE_B9D6BA, DATA_F92989
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !diddy_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $05 : dw !rattly_jump_frame3, !diddy_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !diddy_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $05 : dw !rattly_jump_frame1, !diddy_ride_rattly_frame1, $0000, $0000
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !diddy_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_82 : dw DATA_F92989
DATA_F9293A:
	db !animation_command_83 : dw CODE_B9D589
	db !animation_command_8E : dw sound(5, !sound_rattly_hop)
	db !animation_command_86, $02 : dw !rattly_jump_frame6, !diddy_ride_rattly_frame1, $0000, $FFF6
	db !animation_command_86, $02 : dw !rattly_jump_frame5, !diddy_ride_rattly_frame1, $0000, $FFF8
	db !animation_command_86, $02 : dw !rattly_jump_frame4, !diddy_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_86, $02 : dw !rattly_jump_frame3, !diddy_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $02 : dw !rattly_jump_frame2, !diddy_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $04 : dw !rattly_jump_frame1, !diddy_ride_rattly_frame1, $0000, $0000
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !diddy_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_83 : dw stall_animation_until_grounded
DATA_F92989:
	db !animation_command_80, $00

;$F9298B
rattly_diddy_jump:
	db !animation_command_86, $02 : dw !rattly_jump_frame1, !diddy_ride_rattly_frame1, $0000, $0000
	db !animation_command_8E : dw sound(5, !sound_rattly_leap)
	db !animation_command_81 : dw CODE_B9DF51
	db !animation_command_80, $00

;$F9299D
rattly_diddy_air:
	db !animation_command_86, $02 : dw !rattly_jump_frame2, !diddy_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $02 : dw !rattly_jump_frame3, !diddy_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $02 : dw !rattly_jump_frame4, !diddy_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_86, $02 : dw !rattly_jump_frame5, !diddy_ride_rattly_frame1, $0000, $FFF8
	db !animation_command_86, $02 : dw !rattly_jump_frame6, !diddy_ride_rattly_frame1, $0000, $FFF6
	db !animation_command_86, $02 : dw !rattly_jump_frame7, !diddy_ride_rattly_frame1, $0000, $FFF1
	db !animation_command_86, $02 : dw !rattly_jump_frame8, !diddy_ride_rattly_frame1, $0000, $FFED
	db !animation_command_86, $02 : dw !rattly_jump_frame9, !diddy_ride_rattly_frame1, $0000, $FFE8
	db !animation_command_86, $02 : dw !rattly_jump_frame10, !diddy_ride_rattly_frame1, $0000, $FFE3
DATA_F929F7:
	db !animation_command_86, $01 : dw !rattly_jump_frame11, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw check_if_moving_down, DATA_F92A54
	db !animation_command_86, $01 : dw !rattly_jump_frame12, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw check_if_moving_down, DATA_F92A54
	db !animation_command_86, $01 : dw !rattly_jump_frame13, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw check_if_moving_down, DATA_F92A54
	db !animation_command_86, $01 : dw !rattly_jump_frame14, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw check_if_moving_down, DATA_F92A54
	db !animation_command_86, $01 : dw !rattly_jump_frame13, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw check_if_moving_down, DATA_F92A54
	db !animation_command_86, $01 : dw !rattly_jump_frame12, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw check_if_moving_down, DATA_F92A54
	db !animation_command_82 : dw DATA_F929F7
DATA_F92A54:
	db !animation_command_84 : dw CODE_B9DBB0
	db !animation_command_86, $03 : dw !rattly_jump_frame11, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_86, $03 : dw !rattly_jump_frame12, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_86, $03 : dw !rattly_jump_frame13, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_86, $03 : dw !rattly_jump_frame14, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_86, $03 : dw !rattly_jump_frame13, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_86, $02 : dw !rattly_jump_frame12, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_84 : dw !null_pointer
DATA_F92A96:
	db !animation_command_86, $01 : dw !rattly_jump_frame11, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw CODE_B9D674, DATA_F92AF3
	db !animation_command_86, $01 : dw !rattly_jump_frame12, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw CODE_B9D674, DATA_F92AF3
	db !animation_command_86, $01 : dw !rattly_jump_frame13, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw CODE_B9D674, DATA_F92AF3
	db !animation_command_86, $01 : dw !rattly_jump_frame14, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw CODE_B9D674, DATA_F92AF3
	db !animation_command_86, $01 : dw !rattly_jump_frame13, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw CODE_B9D674, DATA_F92AF3
	db !animation_command_86, $01 : dw !rattly_jump_frame12, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_8F : dw CODE_B9D674, DATA_F92AF3
	db !animation_command_82 : dw DATA_F92A96
DATA_F92AF3:
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F92AF8
rattly_diddy_land:
	db !animation_command_86, $01 : dw !rattly_jump_frame10, !diddy_ride_rattly_frame1, $0000, $FFE3
	db !animation_command_86, $01 : dw !rattly_jump_frame9, !diddy_ride_rattly_frame1, $0000, $FFE8
	db !animation_command_86, $01 : dw !rattly_jump_frame8, !diddy_ride_rattly_frame1, $0000, $FFED
	db !animation_command_86, $01 : dw !rattly_jump_frame7, !diddy_ride_rattly_frame1, $0000, $FFF1
	db !animation_command_86, $01 : dw !rattly_jump_frame6, !diddy_ride_rattly_frame1, $0000, $FFF6
	db !animation_command_86, $01 : dw !rattly_jump_frame5, !diddy_ride_rattly_frame1, $0000, $FFF8
	db !animation_command_86, $01 : dw !rattly_jump_frame4, !diddy_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_86, $01 : dw !rattly_jump_frame3, !diddy_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !diddy_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $04 : dw !rattly_jump_frame1, !diddy_ride_rattly_frame1, $0000, $0000
	db !animation_command_86, $01 : dw !rattly_jump_frame2, !diddy_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $01 : dw !rattly_jump_frame3, !diddy_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F92B75
squawks_exit:
	db !animation_command_8F : dw check_if_not_bonus_or_sub_level, DATA_F92B93
	db !animation_command_81 : dw CODE_B9D9E6
	db !animation_command_87, $12 : dw !squawks_idle_frame11, $0000, $0001
	db !animation_command_81 : dw CODE_B9D9FF
	db !animation_command_87, $0A : dw !squawks_idle_frame11, $0000, $0001
	db !animation_command_81 : dw CODE_B9D9ED
DATA_F92B93:
	db !animation_command_87, $02 : dw !squawks_idle_frame12, $0000, $0001
	db !animation_command_87, $02 : dw !squawks_idle_frame13, $0000, $0001
	db !animation_command_87, $02 : dw !squawks_idle_frame14, $0000, $0002
	db !animation_command_87, $02 : dw !squawks_idle_frame1, $0000, $0001
	db !animation_command_87, $02 : dw !squawks_idle_frame2, $0000, $0001
	db !animation_command_87, $02 : dw !squawks_idle_frame3, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_idle_frame4, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_idle_frame5, $0000, $FFFF
	db !animation_command_87, $02 : dw !squawks_idle_frame6, $0000, $FFFF
	db !animation_command_87, $02 : dw !squawks_idle_frame7, $0000, $FFFE
	db !animation_command_87, $02 : dw !squawks_idle_frame8, $0000, $FFFF
	db !animation_command_87, $02 : dw !squawks_idle_frame9, $0000, $FFFF
	db !animation_command_87, $02 : dw !squawks_idle_frame10, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_idle_frame11, $0000, $0000
	db !animation_command_82 : dw DATA_F92B93
	db !animation_command_80, $00

;$F92C08
squawks_idle:
	db !animation_command_84 : dw CODE_B9E06C
	db !animation_command_87, $02 : dw !squawks_idle_frame12, $0000, $0001
	db !animation_command_87, $02 : dw !squawks_idle_frame13, $0000, $0001
	db !animation_command_87, $02 : dw !squawks_idle_frame14, $0000, $0002
	db !animation_command_87, $02 : dw !squawks_idle_frame1, $0000, $0001
	db !animation_command_87, $02 : dw !squawks_idle_frame2, $0000, $0001
	db !animation_command_87, $02 : dw !squawks_idle_frame3, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_idle_frame4, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_idle_frame5, $0000, $FFFF
	db !animation_command_87, $02 : dw !squawks_idle_frame6, $0000, $FFFF
	db !animation_command_87, $02 : dw !squawks_idle_frame7, $0000, $FFFE
	db !animation_command_87, $02 : dw !squawks_idle_frame8, $0000, $FFFF
	db !animation_command_87, $02 : dw !squawks_idle_frame9, $0000, $FFFF
	db !animation_command_87, $02 : dw !squawks_idle_frame10, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_idle_frame11, $0000, $0000
	db !animation_command_80, $00

;$F92C7D
squawks_turn:
	db $02 : dw !squawks_turn_frame1
	db $02 : dw !squawks_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !squawks_turn_frame2
	db $02 : dw !squawks_turn_frame1
	db !animation_command_81 : dw CODE_B9DBF9
	db !animation_command_80, $00

;$F92C91
squawks_mount:
	db !animation_command_87, $10 : dw !squawks_mount_graphic, $0000, $0005
	db !animation_command_81 : dw CODE_B9DBF4
	db !animation_command_80, $00

;unused
	db !animation_command_87, $10 : dw !squawks_mount_graphic, $0000, $0005
	db !animation_command_80, $00

;$F92CA8
squawks_attack:
	db !animation_command_8F : dw check_if_player_not_mounted, DATA_F92D1A
	db !animation_command_8F : dw check_if_current_kong_is_diddy, DATA_F92CE6
	db !animation_command_87, $02 : dw !squawks_shoot_frame1, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC01
	db !animation_command_87, $04 : dw !squawks_shoot_frame2, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame3, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC36
	db !animation_command_87, $02 : dw !squawks_shoot_frame4, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC10
	db !animation_command_87, $04 : dw !squawks_shoot_frame5, $0000, $0000
	db !animation_command_82 : dw DATA_F92D4B
DATA_F92CE6:
	db !animation_command_87, $02 : dw !squawks_shoot_frame1, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC01
	db !animation_command_87, $06 : dw !squawks_shoot_frame2, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame3, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC40
	db !animation_command_87, $02 : dw !squawks_shoot_frame4, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC10
	db !animation_command_87, $0A : dw !squawks_shoot_frame5, $0000, $0000
	db !animation_command_82 : dw DATA_F92D4B
DATA_F92D1A:
	db !animation_command_87, $02 : dw !squawks_shoot_frame1, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC01
	db !animation_command_87, $0C : dw !squawks_shoot_frame2, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame3, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC4A
	db !animation_command_87, $02 : dw !squawks_shoot_frame4, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC10
	db !animation_command_87, $10 : dw !squawks_shoot_frame5, $0000, $0000
DATA_F92D4B:
	db !animation_command_84 : dw CODE_B9DC17
	db !animation_command_87, $04 : dw !squawks_shoot_frame5, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame4, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame3, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame1, $0000, $0000
	db !animation_command_81 : dw CODE_B9DBF9
	db !animation_command_80, $00

;$F92D73
squawks_attack_2:
	db !animation_command_8F : dw check_if_player_not_mounted, DATA_F92DF5
	db !animation_command_8F : dw check_if_current_kong_is_diddy, DATA_F92DB9
	db !animation_command_87, $02 : dw !squawks_shoot_frame4, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame3, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC01
	db !animation_command_87, $04 : dw !squawks_shoot_frame2, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame3, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC36
	db !animation_command_87, $02 : dw !squawks_shoot_frame4, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC10
	db !animation_command_87, $08 : dw !squawks_shoot_frame5, $0000, $0000
	db !animation_command_82 : dw DATA_F92E2E
DATA_F92DB9:
	db !animation_command_87, $02 : dw !squawks_shoot_frame4, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame3, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC01
	db !animation_command_87, $08 : dw !squawks_shoot_frame2, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame3, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC40
	db !animation_command_87, $02 : dw !squawks_shoot_frame4, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC10
	db !animation_command_87, $0C : dw !squawks_shoot_frame5, $0000, $0000
	db !animation_command_82 : dw DATA_F92E2E
DATA_F92DF5:
	db !animation_command_87, $02 : dw !squawks_shoot_frame4, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame3, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC01
	db !animation_command_87, $0C : dw !squawks_shoot_frame2, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame3, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC4A
	db !animation_command_87, $02 : dw !squawks_shoot_frame4, $0000, $0000
	db !animation_command_81 : dw CODE_B9DC10
	db !animation_command_87, $10 : dw !squawks_shoot_frame5, $0000, $0000
DATA_F92E2E:
	db !animation_command_81 : dw CODE_B9DC01
	db !animation_command_84 : dw CODE_B9DC17
	db !animation_command_87, $04 : dw !squawks_shoot_frame5, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame4, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame3, $0000, $0000
	db !animation_command_87, $02 : dw !squawks_shoot_frame1, $0000, $0000
	db !animation_command_81 : dw CODE_B9DBF9
	db !animation_command_80, $00

;$F92E59
rambi_idle:
	db !animation_command_84 : dw CODE_B9E0A8
	db !animation_command_87, $06 : dw !rambi_idle_frame1, $0000, $0000
	db !animation_command_87, $06 : dw !rambi_idle_frame2, $0000, $0001
	db !animation_command_87, $06 : dw !rambi_idle_frame3, $0000, $0001
	db !animation_command_87, $06 : dw !rambi_idle_frame4, $0000, $0001
	db !animation_command_87, $06 : dw !rambi_idle_frame5, $0000, $0001
	db !animation_command_87, $06 : dw !rambi_idle_frame6, $0000, $0001
	db !animation_command_87, $06 : dw !rambi_idle_frame5, $0000, $0001
	db !animation_command_87, $06 : dw !rambi_idle_frame4, $0000, $0001
	db !animation_command_87, $06 : dw !rambi_idle_frame3, $0000, $0001
	db !animation_command_87, $06 : dw !rambi_idle_frame2, $0000, $0001
	db !animation_command_80, $00

;$F92EAE
rambi_turn:
	db $02 : dw !rambi_turn_frame1
	db $02 : dw !rambi_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !rambi_turn_frame2
	db $02 : dw !rambi_turn_frame1
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F92EC2
rambi_walk:
	db !animation_command_84 : dw CODE_B9DC7D
	db !animation_command_87, $03 : dw !rambi_run_frame8, $0001, $0000
	db !animation_command_87, $03 : dw !rambi_run_frame9, $0000, $0000
	db !animation_command_87, $03 : dw !rambi_run_frame10, $FFFF, $FFFF
	db !animation_command_8E : dw sound(5, !sound_rambi_footstep)
	db !animation_command_87, $03 : dw !rambi_run_frame11, $FFFE, $FFFE
	db !animation_command_87, $03 : dw !rambi_run_frame12, $FFFD, $FFFE
	db !animation_command_87, $03 : dw !rambi_run_frame13, $FFFD, $FFFE
	db !animation_command_8E : dw sound(5, !sound_rambi_footstep)
	db !animation_command_81 : dw CODE_B9DC68
	db !animation_command_87, $03 : dw !rambi_run_frame14, $FFFD, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame15, $FFFE, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame1, $0000, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame2, $0001, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame3, $0002, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame4, $0002, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame5, $0003, $FFFF
	db !animation_command_81 : dw CODE_B9E0E0
	db !animation_command_87, $03 : dw !rambi_run_frame6, $0004, $FFFF
	db !animation_command_87, $02 : dw !rambi_run_frame7, $0003, $FFFF
	db !animation_command_87, $01 : dw !rambi_run_frame7, $0002, $FFFF
	db !animation_command_80, $00

;$F92F53
rambi_exit:
	db !animation_command_8F : dw check_if_not_bonus_or_sub_level, DATA_F92F71
	db !animation_command_81 : dw CODE_B9D9E6
	db !animation_command_87, $18 : dw !rambi_idle_frame1, $0000, $0000
	db !animation_command_81 : dw CODE_B9D9FF
	db !animation_command_87, $10 : dw !rambi_idle_frame1, $0000, $0000
	db !animation_command_81 : dw CODE_B9D9ED
DATA_F92F71:
	db !animation_command_87, $03 : dw !rambi_run_frame8, $0001, $0000
	db !animation_command_87, $03 : dw !rambi_run_frame9, $0000, $0000
	db !animation_command_87, $03 : dw !rambi_run_frame10, $FFFF, $FFFF
	db !animation_command_8E : dw sound(5, !sound_rambi_footstep)
	db !animation_command_87, $03 : dw !rambi_run_frame11, $FFFE, $FFFE
	db !animation_command_87, $03 : dw !rambi_run_frame12, $FFFD, $FFFE
	db !animation_command_87, $03 : dw !rambi_run_frame13, $FFFD, $FFFE
	db !animation_command_8E : dw sound(5, !sound_rambi_footstep)
	db !animation_command_87, $03 : dw !rambi_run_frame14, $FFFD, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame15, $FFFE, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame1, $0000, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame2, $0001, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame3, $0002, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame4, $0002, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame5, $0003, $FFFF
	db !animation_command_87, $03 : dw !rambi_run_frame6, $0004, $FFFF
	db !animation_command_87, $02 : dw !rambi_run_frame7, $0003, $FFFF
	db !animation_command_87, $01 : dw !rambi_run_frame7, $0002, $FFFF
	db !animation_command_82 : dw DATA_F92F71
	db !animation_command_80, $00

;$F92FFC
rambi_diddy_mount:
	db !animation_command_86, $03 : dw !rambi_jump_frame4, !diddy_ride_animal_attack_frame5, $0000, $0002
	db !animation_command_86, $03 : dw !rambi_jump_frame3, !diddy_ride_animal_attack_frame4, $0000, $0002
	db !animation_command_86, $03 : dw !rambi_jump_frame2, !diddy_ride_animal_attack_frame3, $0000, $0002
	db !animation_command_86, $05 : dw !rambi_jump_frame1, !diddy_ride_animal_attack_frame2, $0000, $0002
	db !animation_command_86, $08 : dw !rambi_idle_frame1, !diddy_ride_animal_idle_frame1, $0000, $0002
	db !animation_command_81 : dw CODE_B9DAA3
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F93036
rambi_diddy_jump:
	db !animation_command_86, $06 : dw !rambi_jump_frame1, !diddy_ride_animal_attack_frame1, $0000, $0002
	db !animation_command_8E : dw sound(5, !sound_rambi_jump)
	db !animation_command_81 : dw CODE_B9DF51
	db !animation_command_80, $00

;$F93048
rambi_diddy_air:
	db !animation_command_86, $03 : dw !rambi_jump_frame2, !diddy_ride_animal_attack_frame2, $0000, $0000
	db !animation_command_86, $03 : dw !rambi_jump_frame3, !diddy_ride_animal_attack_frame2, $0000, $FFFE
	db !animation_command_86, $02 : dw !rambi_jump_frame4, !diddy_ride_animal_attack_frame3, $0000, $FFFC
	db !animation_command_83 : dw CODE_B9D55A
	db !animation_command_86, $01 : dw !rambi_jump_frame4, !diddy_ride_animal_attack_frame4, $0000, $FFFD
	db !animation_command_83 : dw CODE_B9D56E
	db !animation_command_86, $02 : dw !rambi_jump_frame4, !diddy_ride_animal_attack_frame5, $0000, $FFFE
	db !animation_command_86, $04 : dw !rambi_jump_frame5, !diddy_ride_animal_attack_frame5, $0000, $FFFE
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F93092
rambi_diddy_land:
	db !animation_command_81 : dw CODE_B9DC92
	db !animation_command_86, $04 : dw !rambi_jump_frame6, !diddy_ride_animal_attack_frame4, $0000, $0002
	db !animation_command_81 : dw CODE_B9DC93
	db !animation_command_86, $05 : dw !rambi_jump_frame1, !diddy_ride_animal_attack_frame2, $0000, $0003
	db !animation_command_81 : dw CODE_B9DAA3
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F930B4
rambi_diddy_fall:
	db !animation_command_86, $03 : dw !rambi_jump_frame3, !diddy_ride_animal_attack_frame2, $0000, $FFFE
	db !animation_command_86, $02 : dw !rambi_jump_frame4, !diddy_ride_animal_attack_frame3, $0000, $FFFC
	db !animation_command_86, $01 : dw !rambi_jump_frame4, !diddy_ride_animal_attack_frame4, $0000, $FFFD
	db !animation_command_83 : dw CODE_B9D56E
	db !animation_command_86, $02 : dw !rambi_jump_frame4, !diddy_ride_animal_attack_frame5, $0000, $FFFE
	db !animation_command_86, $04 : dw !rambi_jump_frame5, !diddy_ride_animal_attack_frame5, $0000, $FFFE
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F930F4
rambi_dixie_jump:
	db !animation_command_87, $06 : dw !rambi_jump_frame1, $0000, $0001
	db !animation_command_8E : dw sound(5, !sound_rambi_jump)
	db !animation_command_81 : dw CODE_B9DF51
	db !animation_command_80, $00

;$F93104
rambi_dixie_air:
	db !animation_command_87, $03 : dw !rambi_jump_frame2, $FFFF, $FFFE
	db !animation_command_87, $03 : dw !rambi_jump_frame3, $FFFF, $FFFC
	db !animation_command_87, $02 : dw !rambi_jump_frame4, $FFFF, $FFFA
	db !animation_command_83 : dw CODE_B9D55A
	db !animation_command_87, $01 : dw !rambi_jump_frame4, $FFFF, $FFFA
	db !animation_command_83 : dw CODE_B9D56E
	db !animation_command_87, $02 : dw !rambi_jump_frame4, $FFFF, $FFFA
	db !animation_command_87, $04 : dw !rambi_jump_frame5, $FFFF, $FFFD
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F93142
rambi_dixie_land:
	db !animation_command_81 : dw CODE_B9DC92
	db !animation_command_87, $04 : dw !rambi_jump_frame6, $FFFF, $FFFF
	db !animation_command_81 : dw CODE_B9DC93
	db !animation_command_87, $05 : dw !rambi_jump_frame1, $0000, $0001
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F9315D
rambi_dixie_fall:
	db $03 : dw !rambi_jump_frame3
	db $03 : dw !rambi_jump_frame4
	db $03 : dw !rambi_jump_frame5
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F93171
rambi_dixie_mount:
	db !animation_command_88 : dw $0000, $0000
	db $06 : dw !rambi_jump_frame1
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F9317E
rambi_barrel_cannon_air:
	db !animation_command_88 : dw $0000, $0000
	db $03 : dw !rambi_jump_frame4
	db !animation_command_80, $00

;$F93188
dixie_idle:
	db !animation_command_84 : dw CODE_B9E0A8
	db $04 : dw !dixie_idle_blink_frame1
	db $04 : dw !dixie_idle_blink_frame2
	db $04 : dw !dixie_idle_blink_frame3
	db $04 : dw !dixie_idle_blink_frame2
	db $04 : dw !dixie_idle_blink_frame1
	db $15 : dw !dixie_jump_frame1
	db $02 : dw !dixie_idle_blink_frame2
	db $02 : dw !dixie_idle_blink_frame2
	db $02 : dw !dixie_idle_blink_frame3
	db $02 : dw !dixie_idle_blink_frame2
	db $02 : dw !dixie_idle_blink_frame2
	db $02 : dw !dixie_idle_blink_frame1
	db $02 : dw !dixie_idle_blink_frame2
	db $02 : dw !dixie_idle_blink_frame3
	db $02 : dw !dixie_idle_blink_frame2
	db $02 : dw !dixie_idle_blink_frame1
	db $05 : dw !dixie_jump_frame1
	db $05 : dw !dixie_blow_bubble_frame1
	db $05 : dw !dixie_blow_bubble_frame2
	db $05 : dw !dixie_blow_bubble_frame3
	db $05 : dw !dixie_blow_bubble_frame4
	db $05 : dw !dixie_blow_bubble_frame5
	db $05 : dw !dixie_blow_bubble_frame6
	db $05 : dw !dixie_blow_bubble_frame7
	db $05 : dw !dixie_jump_frame1
	db $05 : dw !dixie_blow_bubble_frame1
	db $05 : dw !dixie_blow_bubble_frame2
	db $05 : dw !dixie_blow_bubble_frame3
	db $05 : dw !dixie_blow_bubble_frame4
	db $05 : dw !dixie_blow_bubble_frame5
	db $05 : dw !dixie_blow_bubble_frame6
	db $05 : dw !dixie_blow_bubble_frame7
	db $05 : dw !dixie_jump_frame1
	db $05 : dw !dixie_blow_bubble_frame1
	db $05 : dw !dixie_blow_bubble_frame2
	db $05 : dw !dixie_blow_bubble_frame3
	db $05 : dw !dixie_blow_bubble_frame4
	db $05 : dw !dixie_blow_bubble_frame5
	db $05 : dw !dixie_blow_bubble_frame6
	db $05 : dw !dixie_blow_bubble_frame7
	db $05 : dw !dixie_blow_bubble_frame8
	db !animation_command_8E : dw sound(5, !sound_dixie_bubble)
	db $05 : dw !dixie_blow_bubble_frame9
	db $05 : dw !dixie_blow_bubble_frame10
	db $0A : dw !dixie_blow_bubble_frame11
	db $05 : dw !dixie_blow_bubble_frame10
	db $05 : dw !dixie_blow_bubble_frame9
	db $05 : dw !dixie_blow_bubble_frame8
	db $05 : dw !dixie_jump_frame1
	db $05 : dw !dixie_blow_bubble_frame1
	db $05 : dw !dixie_blow_bubble_frame2
	db $05 : dw !dixie_blow_bubble_frame3
	db $05 : dw !dixie_blow_bubble_frame4
	db $05 : dw !dixie_blow_bubble_frame5
	db $05 : dw !dixie_blow_bubble_frame6
	db $05 : dw !dixie_blow_bubble_frame7
	db $05 : dw !dixie_blow_bubble_frame8
	db !animation_command_8E : dw sound(5, !sound_dixie_bubble)
	db $05 : dw !dixie_blow_bubble_frame9
	db $05 : dw !dixie_blow_bubble_frame10
	db $0A : dw !dixie_blow_bubble_frame11
	db $05 : dw !dixie_blow_bubble_frame10
	db $05 : dw !dixie_blow_bubble_frame9
	db $0A : dw !dixie_blow_bubble_frame8
	db !animation_command_8E : dw sound(5, !sound_dixie_bubble)
	db $05 : dw !dixie_blow_bubble_frame9
	db $05 : dw !dixie_blow_bubble_frame10
	db $05 : dw !dixie_blow_bubble_frame11
	db $1C : dw !dixie_blow_bubble_frame12
	db $05 : dw !dixie_blow_bubble_frame11
	db $05 : dw !dixie_blow_bubble_frame10
	db $05 : dw !dixie_blow_bubble_frame9
	db $05 : dw !dixie_blow_bubble_frame8
	db $05 : dw !dixie_jump_frame1
	db $05 : dw !dixie_blow_bubble_frame1
	db $05 : dw !dixie_blow_bubble_frame2
	db $05 : dw !dixie_blow_bubble_frame3
	db $05 : dw !dixie_blow_bubble_frame4
	db $05 : dw !dixie_blow_bubble_frame5
	db $05 : dw !dixie_blow_bubble_frame6
	db $05 : dw !dixie_blow_bubble_frame7
	db $04 : dw !dixie_idle_blink_frame1
	db $04 : dw !dixie_idle_blink_frame2
	db $04 : dw !dixie_idle_blink_frame3
	db $04 : dw !dixie_idle_blink_frame2
	db $04 : dw !dixie_idle_blink_frame1
	db $15 : dw !dixie_jump_frame1
	db $03 : dw !dixie_drink_juice_frame1
	db $03 : dw !dixie_drink_juice_frame2
	db $03 : dw !dixie_drink_juice_frame3
	db $03 : dw !dixie_drink_juice_frame4
	db $03 : dw !dixie_drink_juice_frame5
	db $03 : dw !dixie_drink_juice_frame6
	db $03 : dw !dixie_drink_juice_frame7
	db $03 : dw !dixie_drink_juice_frame8
	db $03 : dw !dixie_drink_juice_frame9
	db $03 : dw !dixie_drink_juice_frame10
	db $03 : dw !dixie_drink_juice_frame11
	db $03 : dw !dixie_drink_juice_frame12
	db $03 : dw !dixie_drink_juice_frame13
	db $03 : dw !dixie_drink_juice_frame14
	db $03 : dw !dixie_drink_juice_frame15
	db $03 : dw !dixie_drink_juice_frame16
	db $08 : dw !dixie_drink_juice_frame17
	db $03 : dw !dixie_drink_juice_frame18
	db $03 : dw !dixie_drink_juice_frame19
	db $03 : dw !dixie_drink_juice_frame20
	db $03 : dw !dixie_drink_juice_frame21
	db $03 : dw !dixie_drink_juice_frame22
	db $03 : dw !dixie_drink_juice_frame23
	db $03 : dw !dixie_drink_juice_frame24
	db $03 : dw !dixie_drink_juice_frame25
	db $03 : dw !dixie_drink_juice_frame26
	db $03 : dw !dixie_drink_juice_frame27
	db $03 : dw !dixie_drink_juice_frame28
	db $0C : dw !dixie_drink_juice_frame29
	db !animation_command_8E : dw sound(5, !sound_dixie_sip)
	db $25 : dw !dixie_drink_juice_frame30
	db $03 : dw !dixie_drink_juice_frame28
	db $03 : dw !dixie_drink_juice_frame27
	db $03 : dw !dixie_drink_juice_frame26
	db $13 : dw !dixie_drink_juice_frame25
	db $03 : dw !dixie_drink_juice_frame26
	db $03 : dw !dixie_drink_juice_frame27
	db $03 : dw !dixie_drink_juice_frame28
	db $18 : dw !dixie_drink_juice_frame29
	db $05 : dw !dixie_drink_juice_frame30
	db !animation_command_8E : dw sound(5, !sound_dixie_sip)
	db $05 : dw !dixie_drink_juice_frame29
	db $08 : dw !dixie_drink_juice_frame30
	db !animation_command_8E : dw sound(5, !sound_dixie_sip)
	db $08 : dw !dixie_drink_juice_frame29
	db $0C : dw !dixie_drink_juice_frame30
	db !animation_command_8E : dw sound(5, !sound_dixie_sip)
	db $1C : dw !dixie_drink_juice_frame29
	db $03 : dw !dixie_drink_juice_frame29
	db $03 : dw !dixie_drink_juice_frame28
	db $03 : dw !dixie_drink_juice_frame27
	db $03 : dw !dixie_drink_juice_frame26
	db $13 : dw !dixie_drink_juice_frame25
	db $03 : dw !dixie_drink_juice_frame24
	db $03 : dw !dixie_drink_juice_frame23
	db $03 : dw !dixie_drink_juice_frame22
	db $03 : dw !dixie_drink_juice_frame21
	db $03 : dw !dixie_drink_juice_frame20
	db $03 : dw !dixie_drink_juice_frame19
	db $03 : dw !dixie_drink_juice_frame18
	db $03 : dw !dixie_drink_juice_frame17
	db $03 : dw !dixie_drink_juice_frame16
	db $03 : dw !dixie_drink_juice_frame15
	db $03 : dw !dixie_drink_juice_frame14
	db $03 : dw !dixie_drink_juice_frame13
	db $03 : dw !dixie_drink_juice_frame12
	db $03 : dw !dixie_drink_juice_frame11
	db $03 : dw !dixie_drink_juice_frame10
	db $03 : dw !dixie_drink_juice_frame9
	db $03 : dw !dixie_drink_juice_frame8
	db $03 : dw !dixie_drink_juice_frame7
	db $03 : dw !dixie_drink_juice_frame6
	db $03 : dw !dixie_drink_juice_frame5
	db $03 : dw !dixie_drink_juice_frame4
	db $03 : dw !dixie_drink_juice_frame3
	db $03 : dw !dixie_drink_juice_frame2
	db $03 : dw !dixie_drink_juice_frame1
	db !animation_command_80, $00

;$F93379
dixie_wind_float:
	db $04 : dw !dixie_updraft_frame1
	db $04 : dw !dixie_updraft_frame2
	db $04 : dw !dixie_updraft_frame3
	db $04 : dw !dixie_updraft_frame4
DATA_F93385:
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !dixie_updraft_frame5
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !dixie_updraft_frame6
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !dixie_updraft_frame7
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !dixie_updraft_frame8
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !dixie_updraft_frame9
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !dixie_updraft_frame10
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !dixie_updraft_frame11
	db !animation_command_8F : dw check_for_vertical_wind_stop, .end
	db $03 : dw !dixie_updraft_frame12
	db !animation_command_82 : dw DATA_F93385
.end:
	db $03 : dw !dixie_updraft_frame4
	db $03 : dw !dixie_updraft_frame3
	db $03 : dw !dixie_updraft_frame2
	db $03 : dw !dixie_updraft_frame1
	db !animation_command_81 : dw CODE_B9D853
	db !animation_command_80

;unused
	db !animation_command_80, $00

;$F933DA
dixie_krockhead_bounce:
	db $04 : dw !dixie_idle_blink_frame1
	db $04 : dw !dixie_idle_blink_frame2
	db $04 : dw !dixie_idle_blink_frame3
	db $04 : dw !dixie_idle_blink_frame2
	db !animation_command_80, $00

;$F933E8
dixie_carry_krockhead_bounce:
	db !animation_command_8B, $02 : dw !dixie_carry_object_idle_frame2, $0000, $FFE7
	db !animation_command_8B, $02 : dw !dixie_carry_object_idle_frame1, $0000, $FFE8
	db !animation_command_8B, $10 : dw !dixie_grab_object_frame13, $0000, $FFE9
	db !animation_command_80, $00

;$F93402
dixie_scared:
	db !animation_command_8E : dw sound(6, !sound_kongs_scared)
	db $03 : dw !dixie_scared_frame1
	db $03 : dw !dixie_scared_frame2
	db $03 : dw !dixie_scared_frame3
	db $03 : dw !dixie_scared_frame4
	db $03 : dw !dixie_scared_frame5
	db $03 : dw !dixie_scared_frame6
	db $03 : dw !dixie_scared_frame7
	db $03 : dw !dixie_scared_frame8
	db $03 : dw !dixie_scared_frame9
	db $03 : dw !dixie_scared_frame10
	db $03 : dw !dixie_scared_frame8
	db $03 : dw !dixie_scared_frame9
	db $03 : dw !dixie_scared_frame10
	db $03 : dw !dixie_scared_frame8
	db $03 : dw !dixie_scared_frame9
	db $03 : dw !dixie_scared_frame10
	db $03 : dw !dixie_scared_frame8
	db $03 : dw !dixie_scared_frame9
	db $03 : dw !dixie_scared_frame10
	db $03 : dw !dixie_scared_frame8
	db $03 : dw !dixie_scared_frame9
	db $03 : dw !dixie_scared_frame10
	db $03 : dw !dixie_scared_frame8
	db $03 : dw !dixie_scared_frame9
	db $03 : dw !dixie_scared_frame10
	db $03 : dw !dixie_scared_frame8
	db $03 : dw !dixie_scared_frame9
	db $03 : dw !dixie_scared_frame10
	db $03 : dw !dixie_scared_frame8
	db $03 : dw !dixie_scared_frame9
	db $03 : dw !dixie_scared_frame10
DATA_F93462:
	db $03 : dw !dixie_scared_frame8
	db $03 : dw !dixie_scared_frame9
	db $03 : dw !dixie_scared_frame10
	db !animation_command_82 : dw DATA_F93462
	db !animation_command_80, $00

;$F93470
dixie_celebrate:
	db !animation_command_81 : dw CODE_B9D888
	db $04 : dw !dixie_celebrate_frame34
	db $04 : dw !dixie_celebrate_frame35
	db $04 : dw !dixie_celebrate_frame36
	db $14 : dw !dixie_celebrate_frame1
	db !animation_command_81 : dw spawn_dixie_guitar
	db !animation_command_8F : dw check_if_boss_level, DATA_F9348A
	db $20 : dw !dixie_celebrate_frame1
DATA_F9348A:
	db !animation_command_89, $23 : dw !dixie_celebrate_frame1, !dixie_guitar_celebrate_frame1
	db !animation_command_89, $03 : dw !dixie_celebrate_frame2, !dixie_guitar_celebrate_frame2
	db !animation_command_89, $03 : dw !dixie_celebrate_frame3, !dixie_guitar_celebrate_frame3
	db !animation_command_89, $03 : dw !dixie_celebrate_frame4, !dixie_guitar_celebrate_frame4
	db !animation_command_89, $03 : dw !dixie_celebrate_frame5, !dixie_guitar_celebrate_frame5
	db !animation_command_89, $03 : dw !dixie_celebrate_frame6, !dixie_guitar_celebrate_frame6
	db !animation_command_89, $03 : dw !dixie_celebrate_frame7, !dixie_guitar_celebrate_frame7
	db !animation_command_89, $03 : dw !dixie_celebrate_frame8, !dixie_guitar_celebrate_frame8
	db !animation_command_89, $03 : dw !dixie_celebrate_frame9, !dixie_guitar_celebrate_frame9
	db !animation_command_89, $03 : dw !dixie_celebrate_frame10, !dixie_guitar_celebrate_frame10
	db !animation_command_89, $03 : dw !dixie_celebrate_frame11, !dixie_guitar_celebrate_frame11
	db !animation_command_89, $03 : dw !dixie_celebrate_frame12, !dixie_guitar_celebrate_frame12
	db !animation_command_89, $02 : dw !dixie_celebrate_frame13, !dixie_guitar_celebrate_frame13
	db !animation_command_89, $02 : dw !dixie_celebrate_frame14, !dixie_guitar_celebrate_frame14
	db !animation_command_89, $02 : dw !dixie_celebrate_frame15, !dixie_guitar_celebrate_frame15
	db !animation_command_89, $02 : dw !dixie_celebrate_frame16, !dixie_guitar_celebrate_frame16
	db !animation_command_89, $02 : dw !dixie_celebrate_frame17, !dixie_guitar_celebrate_frame17
	db !animation_command_89, $02 : dw !dixie_celebrate_frame18, !dixie_guitar_celebrate_frame18
	db !animation_command_89, $02 : dw !dixie_celebrate_frame19, !dixie_guitar_celebrate_frame19
	db !animation_command_89, $02 : dw !dixie_celebrate_frame20, !dixie_guitar_celebrate_frame20
	db !animation_command_89, $02 : dw !dixie_celebrate_frame21, !dixie_guitar_celebrate_frame21
	db !animation_command_89, $02 : dw !dixie_celebrate_frame22, !dixie_guitar_celebrate_frame22
	db !animation_command_89, $02 : dw !dixie_celebrate_frame23, !dixie_guitar_celebrate_frame23
	db !animation_command_89, $02 : dw !dixie_celebrate_frame24, !dixie_guitar_celebrate_frame24
	db !animation_command_89, $02 : dw !dixie_celebrate_frame25, !dixie_guitar_celebrate_frame25
	db !animation_command_89, $02 : dw !dixie_celebrate_frame26, !dixie_guitar_celebrate_frame26
	db !animation_command_89, $02 : dw !dixie_celebrate_frame27, !dixie_guitar_celebrate_frame27
	db !animation_command_89, $02 : dw !dixie_celebrate_frame28, !dixie_guitar_celebrate_frame28
	db !animation_command_89, $02 : dw !dixie_celebrate_frame13, !dixie_guitar_celebrate_frame13
	db !animation_command_89, $02 : dw !dixie_celebrate_frame14, !dixie_guitar_celebrate_frame14
	db !animation_command_89, $02 : dw !dixie_celebrate_frame15, !dixie_guitar_celebrate_frame15
	db !animation_command_89, $02 : dw !dixie_celebrate_frame16, !dixie_guitar_celebrate_frame16
	db !animation_command_89, $02 : dw !dixie_celebrate_frame17, !dixie_guitar_celebrate_frame17
	db !animation_command_89, $02 : dw !dixie_celebrate_frame18, !dixie_guitar_celebrate_frame18
	db !animation_command_89, $02 : dw !dixie_celebrate_frame19, !dixie_guitar_celebrate_frame19
	db !animation_command_89, $02 : dw !dixie_celebrate_frame20, !dixie_guitar_celebrate_frame20
	db !animation_command_89, $02 : dw !dixie_celebrate_frame21, !dixie_guitar_celebrate_frame21
	db !animation_command_89, $02 : dw !dixie_celebrate_frame22, !dixie_guitar_celebrate_frame22
	db !animation_command_89, $02 : dw !dixie_celebrate_frame23, !dixie_guitar_celebrate_frame23
	db !animation_command_89, $02 : dw !dixie_celebrate_frame24, !dixie_guitar_celebrate_frame24
	db !animation_command_89, $02 : dw !dixie_celebrate_frame25, !dixie_guitar_celebrate_frame25
	db !animation_command_89, $02 : dw !dixie_celebrate_frame26, !dixie_guitar_celebrate_frame26
	db !animation_command_89, $02 : dw !dixie_celebrate_frame27, !dixie_guitar_celebrate_frame27
	db !animation_command_89, $02 : dw !dixie_celebrate_frame28, !dixie_guitar_celebrate_frame28
	db !animation_command_89, $02 : dw !dixie_celebrate_frame13, !dixie_guitar_celebrate_frame13
	db !animation_command_89, $02 : dw !dixie_celebrate_frame14, !dixie_guitar_celebrate_frame14
	db !animation_command_89, $02 : dw !dixie_celebrate_frame15, !dixie_guitar_celebrate_frame15
	db !animation_command_89, $02 : dw !dixie_celebrate_frame16, !dixie_guitar_celebrate_frame16
	db !animation_command_89, $02 : dw !dixie_celebrate_frame17, !dixie_guitar_celebrate_frame17
	db !animation_command_89, $02 : dw !dixie_celebrate_frame18, !dixie_guitar_celebrate_frame18
	db !animation_command_89, $02 : dw !dixie_celebrate_frame19, !dixie_guitar_celebrate_frame19
	db !animation_command_89, $02 : dw !dixie_celebrate_frame20, !dixie_guitar_celebrate_frame20
	db !animation_command_89, $02 : dw !dixie_celebrate_frame21, !dixie_guitar_celebrate_frame21
	db !animation_command_89, $02 : dw !dixie_celebrate_frame22, !dixie_guitar_celebrate_frame22
	db !animation_command_89, $02 : dw !dixie_celebrate_frame23, !dixie_guitar_celebrate_frame23
	db !animation_command_89, $02 : dw !dixie_celebrate_frame24, !dixie_guitar_celebrate_frame24
	db !animation_command_89, $02 : dw !dixie_celebrate_frame25, !dixie_guitar_celebrate_frame25
	db !animation_command_89, $02 : dw !dixie_celebrate_frame26, !dixie_guitar_celebrate_frame26
	db !animation_command_89, $02 : dw !dixie_celebrate_frame27, !dixie_guitar_celebrate_frame27
	db !animation_command_89, $02 : dw !dixie_celebrate_frame28, !dixie_guitar_celebrate_frame28
	db !animation_command_89, $02 : dw !dixie_celebrate_frame13, !dixie_guitar_celebrate_frame13
	db !animation_command_89, $02 : dw !dixie_celebrate_frame14, !dixie_guitar_celebrate_frame14
	db !animation_command_89, $02 : dw !dixie_celebrate_frame15, !dixie_guitar_celebrate_frame15
	db !animation_command_89, $02 : dw !dixie_celebrate_frame16, !dixie_guitar_celebrate_frame16
	db !animation_command_89, $02 : dw !dixie_celebrate_frame17, !dixie_guitar_celebrate_frame17
	db !animation_command_89, $02 : dw !dixie_celebrate_frame18, !dixie_guitar_celebrate_frame18
	db !animation_command_89, $02 : dw !dixie_celebrate_frame19, !dixie_guitar_celebrate_frame19
	db !animation_command_89, $02 : dw !dixie_celebrate_frame20, !dixie_guitar_celebrate_frame20
	db !animation_command_89, $02 : dw !dixie_celebrate_frame21, !dixie_guitar_celebrate_frame21
	db !animation_command_89, $03 : dw !dixie_celebrate_frame29, !dixie_guitar_celebrate_frame29
	db !animation_command_89, $03 : dw !dixie_celebrate_frame30, !dixie_guitar_celebrate_frame30
	db !animation_command_89, $03 : dw !dixie_celebrate_frame31, !dixie_guitar_celebrate_frame31
	db !animation_command_81 : dw CODE_B9D85D
	db !animation_command_89, $04 : dw !dixie_celebrate_frame32, !dixie_guitar_celebrate_frame32
	db !animation_command_89, $04 : dw !dixie_celebrate_frame33, !dixie_guitar_celebrate_frame33
	db !animation_command_89, $03 : dw !dixie_celebrate_frame32, !dixie_guitar_celebrate_frame32
	db !animation_command_89, $03 : dw !dixie_celebrate_frame33, !dixie_guitar_celebrate_frame33
	db !animation_command_89, $03 : dw !dixie_celebrate_frame32, !dixie_guitar_celebrate_frame32
	db !animation_command_89, $03 : dw !dixie_celebrate_frame33, !dixie_guitar_celebrate_frame33
	db !animation_command_89, $02 : dw !dixie_celebrate_frame32, !dixie_guitar_celebrate_frame32
	db !animation_command_89, $02 : dw !dixie_celebrate_frame33, !dixie_guitar_celebrate_frame33
	db !animation_command_89, $02 : dw !dixie_celebrate_frame32, !dixie_guitar_celebrate_frame32
	db !animation_command_89, $02 : dw !dixie_celebrate_frame33, !dixie_guitar_celebrate_frame33
	db !animation_command_89, $01 : dw !dixie_celebrate_frame32, !dixie_guitar_celebrate_frame32
	db !animation_command_89, $01 : dw !dixie_celebrate_frame33, !dixie_guitar_celebrate_frame33
	db !animation_command_89, $01 : dw !dixie_celebrate_frame32, !dixie_guitar_celebrate_frame32
	db !animation_command_89, $01 : dw !dixie_celebrate_frame33, !dixie_guitar_celebrate_frame33
	db !animation_command_83 : dw CODE_B9D4EF
	db !animation_command_89, $03 : dw !dixie_celebrate_frame31, !dixie_guitar_celebrate_frame31
	db !animation_command_89, $03 : dw !dixie_celebrate_frame30, !dixie_guitar_celebrate_frame30
	db !animation_command_89, $03 : dw !dixie_celebrate_frame29, !dixie_guitar_celebrate_frame29
	db !animation_command_89, $03 : dw !dixie_celebrate_frame21, !dixie_guitar_celebrate_frame21
	db !animation_command_81 : dw CODE_B9DC94
	db $03 : dw !dixie_celebrate_frame36
	db $03 : dw !dixie_celebrate_frame35
	db $03 : dw !dixie_celebrate_frame34
	db !animation_command_81 : dw CODE_B9D88E
DATA_F936BB:
	db $02 : dw !dixie_run_frame1
	db $02 : dw !dixie_run_frame2
	db $02 : dw !dixie_run_frame3
	db $02 : dw !dixie_run_frame4
	db $02 : dw !dixie_run_frame5
	db $02 : dw !dixie_run_frame6
	db $02 : dw !dixie_run_frame7
	db $02 : dw !dixie_run_frame8
	db $02 : dw !dixie_run_frame9
	db $02 : dw !dixie_run_frame10
	db $02 : dw !dixie_run_frame11
	db $02 : dw !dixie_run_frame12
	db $02 : dw !dixie_run_frame13
	db $02 : dw !dixie_run_frame14
	db $02 : dw !dixie_run_frame15
	db $02 : dw !dixie_run_frame16
	db !animation_command_82 : dw DATA_F936BB
	db !animation_command_80, $00

;$F936F0
dixie_level_end_run:
	db !animation_command_81 : dw CODE_B9D888
	db !animation_command_81 : dw CODE_B9D88E
DATA_F936F6:
	db $01 : dw !dixie_run_frame1
	db $01 : dw !dixie_run_frame2
	db $01 : dw !dixie_run_frame3
	db $01 : dw !dixie_run_frame4
	db $01 : dw !dixie_run_frame5
	db $01 : dw !dixie_run_frame6
	db $01 : dw !dixie_run_frame7
	db $01 : dw !dixie_run_frame8
	db $01 : dw !dixie_run_frame9
	db $01 : dw !dixie_run_frame10
	db $01 : dw !dixie_run_frame11
	db $01 : dw !dixie_run_frame12
	db $01 : dw !dixie_run_frame13
	db $01 : dw !dixie_run_frame14
	db $01 : dw !dixie_run_frame15
	db $01 : dw !dixie_run_frame16
	db !animation_command_82 : dw DATA_F936F6
	db !animation_command_80, $00

;$F9372B
DATA_F9372B:
	db $20 : dw !dixie_hurt_frame1
	db !animation_command_80, $00

;$F93730
DATA_F93730:
	db $18 : dw !dixie_hurt_frame1
	db !animation_command_81 : dw CODE_B9DFD3
	db !animation_command_80, $00

;$F93738
dixie_crouch_start:
	db $04 : dw !dixie_duck_frame2
	db $04 : dw !dixie_duck_frame4
	db $04 : dw !dixie_duck_frame6
	db $04 : dw !dixie_duck_frame7
	db $04 : dw !dixie_duck_frame8
	db !animation_command_81 : dw CODE_B9DEE7
	db !animation_command_80, $00

;$F9374C
dixie_crouch_loop:
	db $03 : dw !dixie_duck_frame8
	db $03 : dw !dixie_duck_frame8
	db $03 : dw !dixie_duck_frame8
	db !animation_command_80, $00

;$F93757
dixie_crouch_end:
	db $03 : dw !dixie_duck_frame7
	db $03 : dw !dixie_duck_frame6
	db $03 : dw !dixie_duck_frame4
	db $03 : dw !dixie_duck_frame2
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F93768
dixie_follow_walk:
	db $03 : dw !dixie_walk_frame1
	db $03 : dw !dixie_walk_frame2
	db $03 : dw !dixie_walk_frame3
	db $03 : dw !dixie_walk_frame4
	db $03 : dw !dixie_walk_frame5
	db $03 : dw !dixie_walk_frame6
	db $03 : dw !dixie_walk_frame7
	db $03 : dw !dixie_walk_frame8
	db $03 : dw !dixie_walk_frame9
	db $03 : dw !dixie_walk_frame10
	db $03 : dw !dixie_walk_frame11
	db $03 : dw !dixie_walk_frame12
	db $03 : dw !dixie_walk_frame13
	db $03 : dw !dixie_walk_frame14
	db $03 : dw !dixie_walk_frame15
	db $03 : dw !dixie_walk_frame16
	db !animation_command_80, $00

;$F9379A
dixie_walk:
	db !animation_command_84 : dw CODE_B9DCB5
	db $03 : dw !dixie_walk_frame4
	db !animation_command_81 : dw CODE_B9E0E0
	db $03 : dw !dixie_walk_frame5
	db !animation_command_81 : dw CODE_B9E0E0
	db $03 : dw !dixie_walk_frame6
	db $03 : dw !dixie_walk_frame7
	db $03 : dw !dixie_walk_frame8
	db $03 : dw !dixie_walk_frame9
	db $03 : dw !dixie_walk_frame10
	db $03 : dw !dixie_walk_frame11
	db $03 : dw !dixie_walk_frame12
	db $03 : dw !dixie_walk_frame13
	db !animation_command_81 : dw CODE_B9E0E0
	db $03 : dw !dixie_walk_frame14
	db $03 : dw !dixie_walk_frame15
	db $03 : dw !dixie_walk_frame16
	db $03 : dw !dixie_walk_frame1
	db $03 : dw !dixie_walk_frame2
	db $03 : dw !dixie_walk_frame3
	db !animation_command_80, $00

;$F937D8
dixie_run:
	db !animation_command_84 : dw CODE_B9DCCA
	db $04 : dw !dixie_run_frame1
	db $04 : dw !dixie_run_frame2
	db $04 : dw !dixie_run_frame3
	db $04 : dw !dixie_run_frame4
	db $04 : dw !dixie_run_frame5
	db !animation_command_81 : dw CODE_B9E0E0
	db $04 : dw !dixie_run_frame6
	db $04 : dw !dixie_run_frame7
	db $04 : dw !dixie_run_frame8
	db $04 : dw !dixie_run_frame9
	db $04 : dw !dixie_run_frame10
	db $04 : dw !dixie_run_frame11
	db !animation_command_81 : dw CODE_B9E0E0
	db $04 : dw !dixie_run_frame12
	db $04 : dw !dixie_run_frame13
	db $04 : dw !dixie_run_frame14
	db $04 : dw !dixie_run_frame15
	db $04 : dw !dixie_run_frame16
	db !animation_command_81 : dw CODE_B9E07A
	db !animation_command_80, $00

;$F93816
dixie_follow_run:
	db $01 : dw !dixie_run_frame1
	db $01 : dw !dixie_run_frame2
	db $01 : dw !dixie_run_frame3
	db $01 : dw !dixie_run_frame4
	db $01 : dw !dixie_run_frame5
	db $01 : dw !dixie_run_frame6
	db $01 : dw !dixie_run_frame7
	db $01 : dw !dixie_run_frame8
	db $01 : dw !dixie_run_frame9
	db $01 : dw !dixie_run_frame10
	db $01 : dw !dixie_run_frame11
	db $01 : dw !dixie_run_frame12
	db $01 : dw !dixie_run_frame13
	db $01 : dw !dixie_run_frame14
	db $01 : dw !dixie_run_frame15
	db $01 : dw !dixie_run_frame16
	db !animation_command_80, $00

;$F93848
dixie_bonus_exit:
	db !animation_command_81 : dw CODE_B9D9E6
	db $18 : dw !dixie_jump_frame1
	db !animation_command_81 : dw CODE_B9D9FF
	db $10 : dw !dixie_jump_frame1
	db !animation_command_81 : dw CODE_B9D9ED
DATA_F93857:
	db $01 : dw !dixie_run_frame1
	db $01 : dw !dixie_run_frame2
	db $01 : dw !dixie_run_frame3
	db $01 : dw !dixie_run_frame4
	db $01 : dw !dixie_run_frame5
	db $01 : dw !dixie_run_frame6
	db $01 : dw !dixie_run_frame7
	db $01 : dw !dixie_run_frame8
	db $01 : dw !dixie_run_frame9
	db $01 : dw !dixie_run_frame10
	db $01 : dw !dixie_run_frame11
	db $01 : dw !dixie_run_frame12
	db $01 : dw !dixie_run_frame13
	db $01 : dw !dixie_run_frame14
	db $01 : dw !dixie_run_frame15
	db $01 : dw !dixie_run_frame16
	db !animation_command_82 : dw DATA_F93857
	db !animation_command_80, $00

;$F9388C
dixie_bonus_exit_swim:
	db !animation_command_81 : dw CODE_B9D9E6
	db $18 : dw !dixie_swim_frame1
	db !animation_command_81 : dw CODE_B9D9FF
	db $10 : dw !dixie_swim_frame1
	db !animation_command_81 : dw CODE_B9D9ED
DATA_F9389B:
	db $03 : dw !dixie_swim_frame1
	db $03 : dw !dixie_swim_frame2
	db $03 : dw !dixie_swim_frame3
	db $03 : dw !dixie_swim_frame4
	db $03 : dw !dixie_swim_frame5
	db $03 : dw !dixie_swim_frame6
	db $03 : dw !dixie_swim_frame7
	db $03 : dw !dixie_swim_frame8
	db $03 : dw !dixie_swim_frame9
	db $03 : dw !dixie_swim_frame10
	db $03 : dw !dixie_swim_frame11
	db $03 : dw !dixie_swim_frame12
	db $03 : dw !dixie_swim_frame13
	db $03 : dw !dixie_swim_frame14
	db $03 : dw !dixie_swim_frame15
	db $03 : dw !dixie_swim_frame16
	db !animation_command_82 : dw DATA_F9389B
	db !animation_command_80, $00

;$F938D0
dixie_stunned:
	db !animation_command_8E : dw sound(5, !sound_dixie_hit)
	db $12 : dw !dixie_hurt_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F938DB
dixie_hurt:
	db !animation_command_8E : dw sound(5, !sound_dixie_hit)
	db $02 : dw !dixie_hurt_frame1
	db $02 : dw !dixie_hurt_frame1
	db !animation_command_83 : dw CODE_B9D55A
	db $02 : dw !dixie_hurt_frame1
	db !animation_command_83 : dw CODE_B9D541
	db $02 : dw !dixie_hurt_frame1
	db !animation_command_81 : dw CODE_B9DA19
	db !animation_command_80, $00

;$F938F5
dixie_follow_jump:
	db $01 : dw !dixie_jump_frame4
	db $02 : dw !dixie_jump_frame5
	db $02 : dw !dixie_jump_frame6
	db $02 : dw !dixie_jump_frame7
	db $02 : dw !dixie_jump_frame8
	db $02 : dw !dixie_jump_frame9
	db $02 : dw !dixie_jump_frame10
	db $02 : dw !dixie_jump_frame11
	db $02 : dw !dixie_jump_frame12
	db $02 : dw !dixie_jump_frame13
	db $03 : dw !dixie_jump_frame14
	db $03 : dw !dixie_jump_frame15
	db $03 : dw !dixie_jump_frame16
	db $03 : dw !dixie_jump_frame17
	db $03 : dw !dixie_jump_frame18
	db $03 : dw !dixie_jump_frame19
	db $03 : dw !dixie_jump_frame20
	db $03 : dw !dixie_jump_frame21
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F93933
dixie_hurt_jump_off_screen:
	db $04 : dw !dixie_jump_frame2
	db $08 : dw !dixie_jump_frame3
	db !animation_command_81 : dw CODE_B9DA50
	db $01 : dw !dixie_jump_frame4
	db $02 : dw !dixie_jump_frame5
	db $02 : dw !dixie_jump_frame6
	db $02 : dw !dixie_jump_frame7
	db $02 : dw !dixie_jump_frame8
	db $02 : dw !dixie_jump_frame9
	db $02 : dw !dixie_jump_frame10
	db $02 : dw !dixie_jump_frame11
	db $02 : dw !dixie_jump_frame12
	db $02 : dw !dixie_jump_frame13
	db $03 : dw !dixie_jump_frame14
	db $03 : dw !dixie_jump_frame15
	db $03 : dw !dixie_jump_frame16
	db $03 : dw !dixie_jump_frame17
	db $03 : dw !dixie_jump_frame18
	db $03 : dw !dixie_jump_frame19
	db $03 : dw !dixie_jump_frame20
	db $03 : dw !dixie_jump_frame21
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F93977
dixie_jump:
	db $02 : dw !dixie_jump_frame2
	db $01 : dw !dixie_jump_frame3
	db !animation_command_81 : dw CODE_B9DF51
	db !animation_command_80, $00

;$F93982
dixie_air:
	db !animation_command_84 : dw CODE_B9DEC1
	db $01 : dw !dixie_jump_frame4
	db $02 : dw !dixie_jump_frame5
	db $02 : dw !dixie_jump_frame6
	db $02 : dw !dixie_jump_frame7
	db $02 : dw !dixie_jump_frame8
	db $02 : dw !dixie_jump_frame9
	db $02 : dw !dixie_jump_frame10
	db $02 : dw !dixie_jump_frame11
	db $02 : dw !dixie_jump_frame12
	db $02 : dw !dixie_jump_frame13
	db !animation_command_83 : dw CODE_B9D55A
	db !animation_command_84 : dw CODE_B9DECC
	db $03 : dw !dixie_jump_frame14
	db $03 : dw !dixie_jump_frame15
	db $03 : dw !dixie_jump_frame16
	db $03 : dw !dixie_jump_frame17
	db $03 : dw !dixie_jump_frame18
	db $03 : dw !dixie_jump_frame19
	db $03 : dw !dixie_jump_frame20
	db $03 : dw !dixie_jump_frame21
	db !animation_command_84 : dw !null_pointer
	db !animation_command_91, sprite.general_purpose_4E : dw DATA_F939CC
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80

DATA_F939CC:
	db !animation_command_81 : dw CODE_B9DCE2
	db !animation_command_8F : dw CODE_B9D674, DATA_F93A22
	db $01 : dw !dixie_fall_frame1
	db !animation_command_8F : dw CODE_B9D674, DATA_F93A22
	db $01 : dw !dixie_fall_frame2
	db !animation_command_8F : dw CODE_B9D674, DATA_F93A22
	db $01 : dw !dixie_fall_frame2
	db !animation_command_8F : dw CODE_B9D674, DATA_F93A22
	db $01 : dw !dixie_fall_frame3
	db !animation_command_8F : dw CODE_B9D674, DATA_F93A22
	db $01 : dw !dixie_fall_frame4
	db !animation_command_8F : dw CODE_B9D674, DATA_F93A22
	db $01 : dw !dixie_fall_frame4
	db !animation_command_8F : dw CODE_B9D674, DATA_F93A22
	db $01 : dw !dixie_fall_frame5
	db !animation_command_8F : dw CODE_B9D674, DATA_F93A22
	db $01 : dw !dixie_fall_frame6
	db !animation_command_8F : dw CODE_B9D674, DATA_F93A22
	db $01 : dw !dixie_fall_frame6
	db !animation_command_8F : dw CODE_B9D674, DATA_F93A22
	db $01 : dw !dixie_fall_frame7
	db !animation_command_82 : dw DATA_F939CC
DATA_F93A22:
	db !animation_command_92, sprite.general_purpose_4E
	db !animation_command_80, $00

;$F93A26
dixie_follow_air:
	db $02 : dw !dixie_jump_frame17
	db $02 : dw !dixie_jump_frame18
	db $02 : dw !dixie_jump_frame19
	db $02 : dw !dixie_jump_frame20
	db $02 : dw !dixie_jump_frame21
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F93A3D
dixie_fall:
	db !animation_command_84 : dw CODE_B9DECC
	db $02 : dw !dixie_jump_frame17
	db $02 : dw !dixie_jump_frame18
	db $02 : dw !dixie_jump_frame19
	db $02 : dw !dixie_jump_frame20
	db $02 : dw !dixie_jump_frame21
	db !animation_command_84 : dw !null_pointer
	db !animation_command_91, sprite.general_purpose_4E : dw DATA_F939CC
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F93A5B
dixie_slope_slide:
	db $02 : dw !dixie_jump_frame17
	db $02 : dw !dixie_jump_frame18
	db $02 : dw !dixie_jump_frame19
	db $02 : dw !dixie_jump_frame20
	db $02 : dw !dixie_jump_frame21
	db !animation_command_83 : dw CODE_B9D5B1
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F93A72
dixie_bounce_back:
	db !animation_command_84 : dw CODE_B9DECC
	db $02 : dw !dixie_jump_frame17
	db $02 : dw !dixie_jump_frame18
	db $02 : dw !dixie_jump_frame19
	db $02 : dw !dixie_jump_frame20
	db $02 : dw !dixie_jump_frame21
	db !animation_command_84 : dw !null_pointer
	db !animation_command_91, sprite.general_purpose_4E : dw DATA_F939CC
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F93A90
dixie_land:
	db $02 : dw !dixie_jump_frame22
	db !animation_command_81 : dw CODE_B9DA5B
	db $02 : dw !dixie_jump_frame23
	db $02 : dw !dixie_jump_frame24
	db $02 : dw !dixie_jump_frame25
	db $02 : dw !dixie_jump_frame26
	db $02 : dw !dixie_jump_frame27
	db $02 : dw !dixie_jump_frame28
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F93AAD
dixie_swap_air:
	db $01 : dw !dixie_tumble_frame7
	db $01 : dw !dixie_tumble_frame6
	db $01 : dw !dixie_tumble_frame5
	db $01 : dw !dixie_tumble_frame4
	db $01 : dw !dixie_tumble_frame3
	db $01 : dw !dixie_tumble_frame2
	db $01 : dw !dixie_tumble_frame1
	db $01 : dw !dixie_tumble_frame16
	db $01 : dw !dixie_tumble_frame15
	db $01 : dw !dixie_tumble_frame14
	db $01 : dw !dixie_tumble_frame13
	db $01 : dw !dixie_tumble_frame12
	db $01 : dw !dixie_tumble_frame11
	db $01 : dw !dixie_tumble_frame10
	db $01 : dw !dixie_tumble_frame9
	db $01 : dw !dixie_tumble_frame8
	db !animation_command_80, $00

;$F93ADF
dixie_barrel_cannon_air:
	db $01 : dw !dixie_tumble_frame1
	db $01 : dw !dixie_tumble_frame2
	db $01 : dw !dixie_tumble_frame3
	db $01 : dw !dixie_tumble_frame4
	db $01 : dw !dixie_tumble_frame5
	db $01 : dw !dixie_tumble_frame6
	db $01 : dw !dixie_tumble_frame7
	db $01 : dw !dixie_tumble_frame8
	db $01 : dw !dixie_tumble_frame9
	db $01 : dw !dixie_tumble_frame10
	db $01 : dw !dixie_tumble_frame11
	db $01 : dw !dixie_tumble_frame12
	db $01 : dw !dixie_tumble_frame13
	db $01 : dw !dixie_tumble_frame14
	db $01 : dw !dixie_tumble_frame15
	db $01 : dw !dixie_tumble_frame16
	db !animation_command_80, $00

;$F93B11
dixie_bounce_up:
	db $02 : dw !dixie_tumble_frame1
	db $02 : dw !dixie_tumble_frame2
	db $02 : dw !dixie_tumble_frame3
	db $02 : dw !dixie_tumble_frame4
	db $02 : dw !dixie_tumble_frame5
	db $02 : dw !dixie_tumble_frame6
	db $02 : dw !dixie_tumble_frame7
	db $02 : dw !dixie_tumble_frame8
	db $02 : dw !dixie_tumble_frame9
	db $02 : dw !dixie_tumble_frame10
	db $02 : dw !dixie_tumble_frame11
	db $02 : dw !dixie_tumble_frame12
	db $02 : dw !dixie_tumble_frame13
	db $02 : dw !dixie_tumble_frame14
	db $02 : dw !dixie_tumble_frame15
	db $02 : dw !dixie_tumble_frame16
	db !animation_command_80, $00

;$F93B43
dixie_team_top_air:
	db $02 : dw !dixie_tumble_frame1
	db $02 : dw !dixie_tumble_frame2
	db $02 : dw !dixie_tumble_frame3
	db $02 : dw !dixie_tumble_frame4
	db $02 : dw !dixie_tumble_frame5
	db $02 : dw !dixie_tumble_frame6
	db $02 : dw !dixie_tumble_frame7
	db $02 : dw !dixie_tumble_frame8
	db $02 : dw !dixie_tumble_frame9
	db $02 : dw !dixie_tumble_frame10
	db $02 : dw !dixie_tumble_frame11
	db $02 : dw !dixie_tumble_frame12
	db $02 : dw !dixie_tumble_frame13
	db $02 : dw !dixie_tumble_frame14
	db $02 : dw !dixie_tumble_frame15
	db $02 : dw !dixie_tumble_frame16
	db !animation_command_80, $00

;$F93B75
dixie_team_top_stunned:
	db $04 : dw !dixie_hurt_frame1
	db !animation_command_83 : dw CODE_B9D55A
	db $03 : dw !dixie_hurt_frame2
	db $03 : dw !dixie_hurt_frame3
	db $03 : dw !dixie_hurt_frame4
	db $03 : dw !dixie_hurt_frame5
	db $03 : dw !dixie_hurt_frame6
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DD21
	db $02 : dw !dixie_hurt_frame7
	db $02 : dw !dixie_hurt_frame8
	db $02 : dw !dixie_hurt_frame9
	db $02 : dw !dixie_hurt_frame10
	db $02 : dw !dixie_hurt_frame11
	db $03 : dw !dixie_hurt_frame12
	db $03 : dw !dixie_hurt_frame13
	db !animation_command_83 : dw stall_animation_until_grounded
	db $10 : dw !dixie_hurt_frame14
	db !animation_command_81 : dw CODE_B9DEBE
	db $04 : dw !dixie_hurt_frame15
	db $04 : dw !dixie_hurt_frame16
	db $04 : dw !dixie_hurt_frame17
	db $14 : dw !dixie_hurt_frame18
	db $04 : dw !dixie_hurt_frame19
	db $04 : dw !dixie_hurt_frame20
DATA_F93BC0:
	db $04 : dw !dixie_hurt_frame21
	db $04 : dw !dixie_hurt_frame22
	db $04 : dw !dixie_hurt_frame23
	db $04 : dw !dixie_hurt_frame22
	db !animation_command_82 : dw DATA_F93BC0
	db !animation_command_80, $00

;$F93BD1
dixie_turn:
	db $03 : dw !dixie_turn_frame1
	db $03 : dw !dixie_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $03 : dw !dixie_turn_frame2
	db $03 : dw !dixie_turn_frame1
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F93BE5
dixie_team_bottom_idle:
	db !animation_command_84 : dw CODE_B9E0A8
	db !animation_command_8B, $07 : dw !dixie_carry_kong_idle_frame1, $0000, $0007
	db !animation_command_8B, $07 : dw !dixie_carry_kong_idle_frame2, $0000, $0006
	db !animation_command_8B, $07 : dw !dixie_carry_kong_idle_frame3, $0000, $0005
	db !animation_command_8B, $07 : dw !dixie_carry_kong_idle_frame2, $0000, $0006
	db !animation_command_80, $00

;$F93C0A
dixie_team_bottom_turn:
	db !animation_command_8B, $02 : dw !dixie_carry_kong_idle_frame1, $0000, $0007
	db !animation_command_8B, $02 : dw !dixie_carry_kong_idle_frame2, $0000, $0006
	db !animation_command_81 : dw CODE_B9E019
	db !animation_command_8B, $02 : dw !dixie_carry_kong_idle_frame2, $0000, $0006
	db !animation_command_8B, $02 : dw !dixie_carry_kong_idle_frame1, $0000, $0007
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F93C32
dixie_team_bottom_walk:
	db !animation_command_84 : dw CODE_B9E021
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame4, $0000, $0003
	db !animation_command_81 : dw CODE_B9E0E0
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame5, $0000, $0001
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame6, $0000, $0000
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame7, $0000, $0001
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame8, $0000, $0002
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame9, $0000, $0003
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame10, $0000, $0002
	db !animation_command_81 : dw CODE_B9E0E0
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame11, $0000, $0001
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame1, $0000, $0000
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame2, $0000, $0001
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame3, $0000, $0002
	db !animation_command_80, $00

;$F93C95
dixie_team_bottom_jump:
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame7, $0000, $0001
	db !animation_command_81 : dw CODE_B9DF51
	db !animation_command_80, $00

;$F93CA2
dixie_team_bottom_air:
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame7, $0000, $0001
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame7, $0000, $0001
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F93CBA
dixie_team_bottom_fall:
	db !animation_command_84 : dw CODE_B9DECC
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame7, $0000, $0001
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F93CD0
dixie_team_bottom_land:
	db !animation_command_8B, $03 : dw !dixie_carry_kong_frame7, $0000, $0001
	db !animation_command_81 : dw CODE_B9DA5B
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F93CE0
dixie_team_bottom_bounce_up:
	db !animation_command_8B, $01 : dw !dixie_carry_kong_frame1, $0000, $0000
	db !animation_command_8B, $01 : dw !dixie_carry_kong_frame2, $0000, $0001
	db !animation_command_8B, $01 : dw !dixie_carry_kong_frame3, $0000, $0002
	db !animation_command_8B, $01 : dw !dixie_carry_kong_frame4, $0000, $0003
	db !animation_command_8B, $01 : dw !dixie_carry_kong_frame5, $0000, $0001
	db !animation_command_8B, $01 : dw !dixie_carry_kong_frame6, $0000, $0000
	db !animation_command_8B, $01 : dw !dixie_carry_kong_frame7, $0000, $0001
	db !animation_command_8B, $01 : dw !dixie_carry_kong_frame8, $0000, $0002
	db !animation_command_8B, $01 : dw !dixie_carry_kong_frame9, $0000, $0003
	db !animation_command_8B, $01 : dw !dixie_carry_kong_frame10, $0000, $0002
	db !animation_command_8B, $01 : dw !dixie_carry_kong_frame11, $0000, $0001
	db !animation_command_80, $00

;$F93D3A
dixie_team_bottom_throw:
	db !animation_command_8A, $02 : dw !dixie_throw_kong_frame1, !diddy_thrown_frame1, $0000, $0000
	db !animation_command_8A, $02 : dw !dixie_throw_kong_frame2, !diddy_thrown_frame2, $0000, $0000
	db !animation_command_8A, $02 : dw !dixie_throw_kong_frame3, !diddy_thrown_frame3, $0000, $0000
	db !animation_command_8A, $02 : dw !dixie_throw_kong_frame4, !diddy_thrown_frame4, $0000, $0000
	db !animation_command_8A, $02 : dw !dixie_throw_kong_frame5, !diddy_thrown_frame5, $0000, $0000
	db !animation_command_8A, $02 : dw !dixie_throw_kong_frame6, !diddy_thrown_frame6, $0000, $0000
	db !animation_command_8A, $01 : dw !dixie_throw_kong_frame6, !diddy_tumble_frame11, $FFDC, $FFEC
	db $02 : dw !dixie_throw_kong_frame6
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame6, $FFD7, $FFEF
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame7, $FFD6, $FFF0
	db !animation_command_81 : dw CODE_B9DCE8
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame8, $FFD6, $FFF1
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame9, $FFD9, $FFED
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame10, $FFDE, $FFE6
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame11, $FFE7, $FFE2
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame12, $FFF9, $FFE0
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame13, $000C, $FFE0
	db !animation_command_8B, $00 : dw !dixie_throw_object_frame13, $000C, $FFF4
	db !animation_command_81 : dw CODE_B9D8BC
	db $02 : dw !dixie_throw_object_frame14
	db $02 : dw !dixie_throw_object_frame15
	db $02 : dw !dixie_throw_object_frame16
	db $02 : dw !dixie_throw_object_frame17
	db $02 : dw !dixie_throw_object_frame18
	db $02 : dw !dixie_throw_object_frame19
	db $02 : dw !dixie_throw_object_frame20
	db $02 : dw !dixie_throw_object_frame21
	db !animation_command_83 : dw CODE_B9D521
	db !animation_command_81 : dw CODE_B9DFD3
	db !animation_command_80, $00

;$F93DF1
dixie_team_top_idle:
	db $03 : dw !dixie_carried_frame1
	db $03 : dw !dixie_carried_frame2
	db $03 : dw !dixie_carried_frame3
	db $03 : dw !dixie_carried_frame4
	db $03 : dw !dixie_carried_frame5
	db $03 : dw !dixie_carried_frame6
	db $03 : dw !dixie_carried_frame7
	db $03 : dw !dixie_carried_frame8
	db $03 : dw !dixie_carried_frame9
	db $03 : dw !dixie_carried_frame10
	db $03 : dw !dixie_carried_frame11
	db !animation_command_80, $00

;$F93E14
dixie_carry_pickup:
	db !animation_command_81 : dw CODE_B9D891
	db $02 : dw !dixie_grab_object_frame1
	db $02 : dw !dixie_grab_object_frame2
	db $02 : dw !dixie_grab_object_frame3
	db $02 : dw !dixie_grab_object_frame4
	db $02 : dw !dixie_grab_object_frame5
	db $02 : dw !dixie_grab_object_frame6
	db $02 : dw !dixie_grab_object_frame7
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame8, $001C, $FFFF
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame9, $001C, $FFF6
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame10, $0015, $FFEF
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame11, $0010, $FFEA
	db !animation_command_81 : dw CODE_B9DCF0
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame12, $0006, $FFE7
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame13, $0000, $FFE8
	db !animation_command_81 : dw CODE_B9D705
	db !animation_command_80, $00

;$F93E64
dixie_carry_drop:
	db !animation_command_81 : dw CODE_B9D891
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame13, $0000, $FFE8
	db !animation_command_81 : dw CODE_B9DCF7
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame12, $0006, $FFE7
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame11, $0010, $FFEA
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame10, $0015, $FFEF
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame9, $001C, $FFF6
	db !animation_command_8B, $02 : dw !dixie_grab_object_frame8, $001C, $FFFF
	db !animation_command_8B, $01 : dw !dixie_grab_object_frame8, $001C, $0000
	db !animation_command_81 : dw CODE_B9D896
	db $02 : dw !dixie_grab_object_frame7
	db $02 : dw !dixie_grab_object_frame6
	db $02 : dw !dixie_grab_object_frame5
	db $02 : dw !dixie_grab_object_frame4
	db $02 : dw !dixie_grab_object_frame3
	db $02 : dw !dixie_grab_object_frame2
	db $02 : dw !dixie_grab_object_frame1
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F93EBF
dixie_carry_throw:
	db !animation_command_81 : dw CODE_B9D8AA
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame1, $FFFA, $FFE2
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame2, $FFE8, $FFE2
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame3, $FFDC, $FFE8
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame4, $FFDA, $FFEC
	db !animation_command_8B, $05 : dw !dixie_throw_object_frame5, $FFD8, $FFEE
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame6, $FFD7, $FFEF
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame7, $FFD6, $FFF0
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame8, $FFD6, $FFF1
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame9, $FFD9, $FFED
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame10, $FFDE, $FFE6
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame11, $FFE7, $FFE2
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame12, $FFF9, $FFE0
	db !animation_command_8B, $02 : dw !dixie_throw_object_frame13, $000C, $FFE0
	db !animation_command_81 : dw CODE_B9D965
	db $02 : dw !dixie_throw_object_frame14
	db $02 : dw !dixie_throw_object_frame15
	db $02 : dw !dixie_throw_object_frame16
	db $02 : dw !dixie_throw_object_frame17
	db $02 : dw !dixie_throw_object_frame18
	db $02 : dw !dixie_throw_object_frame19
	db $02 : dw !dixie_throw_object_frame20
	db $02 : dw !dixie_throw_object_frame21
	db !animation_command_81 : dw CODE_B9DFD3
	db !animation_command_80, $00

;$F93F4A
dixie_carry_idle:
	db !animation_command_84 : dw CODE_B9E0A8
	db !animation_command_8B, $02 : dw !dixie_carry_object_idle_frame2, $0000, $FFE7
	db !animation_command_8B, $02 : dw !dixie_carry_object_idle_frame1, $0000, $FFE8
	db !animation_command_8B, $10 : dw !dixie_grab_object_frame13, $0000, $FFE9
	db !animation_command_8B, $03 : dw !dixie_carry_object_idle_frame1, $0000, $FFE8

DATA_F93F6D:
	db !animation_command_8B, $09 : dw !dixie_carry_object_idle_frame2, $0000, $FFE7
	db !animation_command_8B, $05 : dw !dixie_carry_object_idle_frame1, $0000, $FFE8
	db !animation_command_8B, $09 : dw !dixie_grab_object_frame13, $0000, $FFE9
	db !animation_command_8B, $05 : dw !dixie_carry_object_idle_frame1, $0000, $FFE8
	db !animation_command_82 : dw DATA_F93F6D
	db !animation_command_80, $00

;$F93F92
dixie_carry_walk:
	db !animation_command_84 : dw CODE_B9DCFE
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame1, $0005, $FFE2
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame2, $0005, $FFE3
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame3, $0005, $FFE4
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame4, $0007, $FFE6
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame5, $0009, $FFE8
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame6, $0008, $FFE8
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame7, $0007, $FFE6
	db !animation_command_81 : dw CODE_B9E07A
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame8, $0006, $FFE3
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame9, $0005, $FFE2
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame10, $0005, $FFE3
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame11, $0005, $FFE4
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame12, $0007, $FFE6
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame13, $0009, $FFE8
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame14, $0008, $FFE7
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame15, $0007, $FFE6
	db !animation_command_81 : dw CODE_B9E07A
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame16, $0006, $FFE4
	db !animation_command_80, $00

;$F9401D
dixie_carry_turn:
	db !animation_command_8B, $04 : dw !dixie_grab_object_frame13, $0000, $FFE9
	db !animation_command_81 : dw CODE_B9E019
	db !animation_command_8B, $04 : dw !dixie_grab_object_frame13, $0000, $FFE9
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F94035
dixie_carry_jump:
	db !animation_command_8B, $05 : dw !dixie_carry_object_frame1, $0005, $FFE2
	db !animation_command_81 : dw CODE_B9DF51
	db !animation_command_80, $00

;$F94042
dixie_carry_air:
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame1, $0005, $FFE2
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame2, $0005, $FFE3
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame3, $0005, $FFE4
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame4, $0007, $FFE6
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame5, $0009, $FFE8
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame6, $0008, $FFE8
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame7, $0007, $FFE6
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame8, $0006, $FFE3
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame9, $0005, $FFE2
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame10, $0005, $FFE3
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame11, $0005, $FFE4
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame12, $0007, $FFE6
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame13, $0009, $FFE8
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame14, $0008, $FFE7
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame15, $0007, $FFE6
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame16, $0006, $FFE4
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F940CA
dixie_carry_fall:
	db !animation_command_81 : dw CODE_B9DD1A
	db !animation_command_84 : dw CODE_B9DECC
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame16, $0006, $FFE4
	db !animation_command_84 : dw !null_pointer
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DEEF
	db !animation_command_80, $00

;$F940E3
dixie_carry_land:
	db !animation_command_8B, $02 : dw !dixie_carry_object_frame16, $0006, $FFE4
	db !animation_command_81 : dw CODE_B9DA5B
	db !animation_command_81 : dw CODE_B9DFE1
	db !animation_command_80, $00

;$F940F3
dixie_death:
	db !animation_command_8E : dw sound(5, !sound_dixie_hit)
	db $01 : dw !dixie_hurt_frame1
	db !animation_command_81 : dw CODE_B9DA5C
	db $0B : dw !dixie_hurt_frame1
	db !animation_command_83 : dw CODE_B9D55A
	db $03 : dw !dixie_hurt_frame2
	db $03 : dw !dixie_hurt_frame3
	db $03 : dw !dixie_hurt_frame4
	db $03 : dw !dixie_hurt_frame5
	db $03 : dw !dixie_hurt_frame6
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DD21
	db $02 : dw !dixie_hurt_frame7
	db $02 : dw !dixie_hurt_frame8
	db $02 : dw !dixie_hurt_frame9
	db $02 : dw !dixie_hurt_frame10
	db $02 : dw !dixie_hurt_frame11
	db $03 : dw !dixie_hurt_frame12
	db $03 : dw !dixie_hurt_frame13
	db !animation_command_83 : dw stall_animation_until_grounded
	db $10 : dw !dixie_hurt_frame14
	db !animation_command_81 : dw CODE_B9DEBE
	db $04 : dw !dixie_hurt_frame15
	db $04 : dw !dixie_hurt_frame16
	db $04 : dw !dixie_hurt_frame17
	db $14 : dw !dixie_hurt_frame18
	db $04 : dw !dixie_hurt_frame19
	db $04 : dw !dixie_hurt_frame20
	db !animation_command_81 : dw spawn_dixie_hurt_tears
	db $04 : dw !dixie_hurt_frame21
	db $04 : dw !dixie_hurt_frame22
	db $04 : dw !dixie_hurt_frame23
	db $04 : dw !dixie_hurt_frame22
	db $04 : dw !dixie_hurt_frame21
	db $04 : dw !dixie_hurt_frame22
	db $04 : dw !dixie_hurt_frame23
	db $04 : dw !dixie_hurt_frame22
	db $04 : dw !dixie_hurt_frame21
	db $04 : dw !dixie_hurt_frame22
	db $04 : dw !dixie_hurt_frame23
	db $04 : dw !dixie_hurt_frame22
	db $04 : dw !dixie_hurt_frame21
	db $04 : dw !dixie_hurt_frame22
	db !animation_command_81 : dw exit_level_on_death
	db $04 : dw !dixie_hurt_frame23
	db $04 : dw !dixie_hurt_frame22
	db $04 : dw !dixie_hurt_frame21
	db $04 : dw !dixie_hurt_frame22
	db !animation_command_81 : dw CODE_B9DA80
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9418B
dixie_roll:
	db !animation_command_8F : dw CODE_B9D6DF, DATA_F9419E
	db $02 : dw !dixie_roll_frame1
	db $03 : dw !dixie_roll_frame2
	db !animation_command_8F : dw CODE_B9D6F2, DATA_F9419E
	db $04 : dw !dixie_roll_frame2
DATA_F9419E:
	db !animation_command_81 : dw CODE_B9DEAE
	db $02 : dw !dixie_roll_frame3
	db $02 : dw !dixie_roll_frame4
	db $02 : dw !dixie_roll_frame5
	db $02 : dw !dixie_roll_frame6
	db $02 : dw !dixie_roll_frame7
	db $02 : dw !dixie_roll_frame8
	db $02 : dw !dixie_roll_frame9
	db $02 : dw !dixie_roll_frame10
	db $02 : dw !dixie_roll_frame11
	db $02 : dw !dixie_roll_frame12
	db $02 : dw !dixie_roll_frame13
	db !animation_command_8F : dw CODE_B9D6A5, DATA_F941CC
	db !animation_command_8F : dw CODE_B9D6D1, DATA_F941F5
DATA_F941CC:
	db $01 : dw !dixie_glide_frame1
	db $01 : dw !dixie_glide_frame2
	db $01 : dw !dixie_glide_frame3
	db $01 : dw !dixie_glide_frame4
	db $01 : dw !dixie_glide_frame5
	db $01 : dw !dixie_glide_frame6
	db $01 : dw !dixie_glide_frame7
	db $01 : dw !dixie_glide_frame8
	db $01 : dw !dixie_glide_frame9
	db $01 : dw !dixie_glide_frame10
	db $01 : dw !dixie_glide_frame11
	db !animation_command_8F : dw CODE_B9D6A5, DATA_F941CC
	db $01 : dw !dixie_glide_frame12
DATA_F941F5:
	db $02 : dw !dixie_roll_frame14
	db $02 : dw !dixie_roll_frame15
	db !animation_command_81 : dw CODE_B9DA5B
	db !animation_command_81 : dw CODE_B9DE7C
	db $02 : dw !dixie_roll_frame16
	db $02 : dw !dixie_roll_frame17
	db $02 : dw !dixie_roll_frame18
	db $02 : dw !dixie_roll_frame19
	db $06 : dw !dixie_roll_frame20
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F94215
dixie_glide:
	db $01 : dw !dixie_glide_frame1
	db $01 : dw !dixie_glide_frame2
	db $01 : dw !dixie_glide_frame3
	db $01 : dw !dixie_glide_frame4
	db $01 : dw !dixie_glide_frame5
	db $01 : dw !dixie_glide_frame6
	db $01 : dw !dixie_glide_frame7
	db $01 : dw !dixie_glide_frame8
	db $01 : dw !dixie_glide_frame9
	db $01 : dw !dixie_glide_frame10
	db $01 : dw !dixie_glide_frame11
	db !animation_command_84 : dw CODE_B9DD3A
	db $01 : dw !dixie_glide_frame12
	db !animation_command_80, $00

;$F9423E
dixie_squitter_mount:
	db $03 : dw !dixie_ride_animal_frame1
	db !animation_command_83 : dw CODE_B9D5D3
	db $03 : dw !dixie_ride_animal_frame2
	db $03 : dw !dixie_ride_animal_frame3
	db $03 : dw !dixie_ride_animal_frame4
DATA_F9424D:
	db $02 : dw !dixie_ride_animal_frame5
	db $02 : dw !dixie_ride_animal_frame6
	db $02 : dw !dixie_ride_animal_frame7
	db $02 : dw !dixie_ride_animal_frame8
	db $02 : dw !dixie_ride_animal_frame9
	db $02 : dw !dixie_ride_animal_frame10
	db $02 : dw !dixie_ride_animal_frame11
	db $02 : dw !dixie_ride_animal_frame12
	db !animation_command_8F : dw check_if_active_kong_has_no_max_x_speed, DATA_F9426D
	db !animation_command_82 : dw DATA_F9424D
DATA_F9426D:
	db $03 : dw !dixie_ride_animal_frame5
	db $04 : dw !dixie_ride_animal_frame6
	db $04 : dw !dixie_ride_animal_frame7
	db $05 : dw !dixie_ride_animal_frame8
	db $04 : dw !dixie_ride_animal_frame4
	db $04 : dw !dixie_ride_animal_frame3
	db $04 : dw !dixie_ride_animal_frame2
	db $03 : dw !dixie_ride_animal_frame1
	db !animation_command_80, $00

;$F94287
dixie_rattly_idle:
	db $50 : dw !dixie_ride_rattly_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9428F
dixie_animal_mount:
	db $04 : dw !dixie_ride_animal_frame1
	db !animation_command_81 : dw CODE_B9DAA3
	db !animation_command_80, $00

;$F94297
dixie_animal_idle:
	db $03 : dw !dixie_ride_animal_frame1
	db !animation_command_83 : dw CODE_B9D5D3
	db $03 : dw !dixie_ride_animal_frame2
	db $03 : dw !dixie_ride_animal_frame3
	db $03 : dw !dixie_ride_animal_frame4
DATA_F942A6:
	db $02 : dw !dixie_ride_animal_frame5
	db $02 : dw !dixie_ride_animal_frame6
	db $02 : dw !dixie_ride_animal_frame7
	db $02 : dw !dixie_ride_animal_frame8
	db $02 : dw !dixie_ride_animal_frame9
	db $02 : dw !dixie_ride_animal_frame10
	db $02 : dw !dixie_ride_animal_frame11
	db $02 : dw !dixie_ride_animal_frame12
	db !animation_command_8F : dw check_if_active_kong_has_no_max_x_speed, DATA_F942C6
	db !animation_command_82 : dw DATA_F942A6
DATA_F942C6:
	db $03 : dw !dixie_ride_animal_frame5
	db $04 : dw !dixie_ride_animal_frame6
	db $04 : dw !dixie_ride_animal_frame7
	db $05 : dw !dixie_ride_animal_frame8
	db $04 : dw !dixie_ride_animal_frame4
	db $04 : dw !dixie_ride_animal_frame3
	db $04 : dw !dixie_ride_animal_frame2
	db $03 : dw !dixie_ride_animal_frame1
	db !animation_command_80, $00

;$F942E0
dixie_squawks_idle:
	db $03 : dw !dixie_ride_squawks_frame1
	db $03 : dw !dixie_ride_squawks_frame2
	db $03 : dw !dixie_ride_squawks_frame3
	db $03 : dw !dixie_ride_squawks_frame4
	db $03 : dw !dixie_ride_squawks_frame5
	db $03 : dw !dixie_ride_squawks_frame6
	db $03 : dw !dixie_ride_squawks_frame7
	db $03 : dw !dixie_ride_squawks_frame8
	db !animation_command_80, $00

;$F942FA
dixie_honey_wall_idle:
	db $15 : dw !dixie_honey_wall_frame1
	db $05 : dw !dixie_honey_wall_frame2
	db $05 : dw !dixie_honey_wall_frame3
	db $05 : dw !dixie_honey_wall_frame4
	db $05 : dw !dixie_honey_wall_frame5
	db $05 : dw !dixie_honey_wall_frame6
	db $05 : dw !dixie_honey_wall_frame7
	db $05 : dw !dixie_honey_wall_frame8
	db $09 : dw !dixie_honey_wall_frame9
	db $05 : dw !dixie_honey_wall_frame10
	db $05 : dw !dixie_honey_wall_frame11
	db $05 : dw !dixie_honey_wall_frame12
	db $05 : dw !dixie_honey_wall_blink_frame1
	db $05 : dw !dixie_honey_wall_blink_frame2
	db $05 : dw !dixie_honey_wall_blink_frame3
	db $05 : dw !dixie_honey_wall_blink_frame2
	db $15 : dw !dixie_honey_wall_frame1
	db $03 : dw !dixie_honey_wall_blink_frame1
	db $03 : dw !dixie_honey_wall_blink_frame2
	db $03 : dw !dixie_honey_wall_blink_frame3
	db $03 : dw !dixie_honey_wall_blink_frame2
	db $03 : dw !dixie_honey_wall_blink_frame1
	db $03 : dw !dixie_honey_wall_blink_frame2
	db $03 : dw !dixie_honey_wall_blink_frame3
	db $03 : dw !dixie_honey_wall_blink_frame2
	db $30 : dw !dixie_honey_wall_frame1
	db $03 : dw !dixie_honey_wall_blink_frame1
	db $03 : dw !dixie_honey_wall_blink_frame2
	db $03 : dw !dixie_honey_wall_blink_frame3
	db $03 : dw !dixie_honey_wall_blink_frame2
	db $15 : dw !dixie_honey_wall_frame1
	db $05 : dw !dixie_honey_wall_frame2
	db $05 : dw !dixie_honey_wall_frame3
	db $05 : dw !dixie_honey_wall_frame4
	db $05 : dw !dixie_honey_wall_frame5
	db $05 : dw !dixie_honey_wall_frame6
	db $05 : dw !dixie_honey_wall_frame7
	db $05 : dw !dixie_honey_wall_frame8
	db $09 : dw !dixie_honey_wall_frame9
	db $05 : dw !dixie_honey_wall_frame10
	db $05 : dw !dixie_honey_wall_frame11
	db $05 : dw !dixie_honey_wall_frame12
	db $05 : dw !dixie_honey_wall_frame1
	db $05 : dw !dixie_honey_wall_frame2
	db $05 : dw !dixie_honey_wall_frame3
	db $05 : dw !dixie_honey_wall_frame4
	db $05 : dw !dixie_honey_wall_frame5
	db $05 : dw !dixie_honey_wall_frame6
	db $05 : dw !dixie_honey_wall_frame7
	db $05 : dw !dixie_honey_wall_frame8
	db $09 : dw !dixie_honey_wall_frame9
	db $05 : dw !dixie_honey_wall_frame10
	db $05 : dw !dixie_honey_wall_frame11
	db $05 : dw !dixie_honey_wall_frame12
	db $05 : dw !dixie_honey_wall_blink_frame1
	db $05 : dw !dixie_honey_wall_blink_frame2
	db $05 : dw !dixie_honey_wall_blink_frame3
	db $05 : dw !dixie_honey_wall_blink_frame2
	db $15 : dw !dixie_honey_wall_frame1
	db $03 : dw !dixie_honey_wall_blink_frame1
	db $03 : dw !dixie_honey_wall_blink_frame2
	db $03 : dw !dixie_honey_wall_blink_frame3
	db $03 : dw !dixie_honey_wall_blink_frame2
	db $03 : dw !dixie_honey_wall_blink_frame1
	db $03 : dw !dixie_honey_wall_blink_frame2
	db $03 : dw !dixie_honey_wall_blink_frame3
	db $03 : dw !dixie_honey_wall_blink_frame2
	db $30 : dw !dixie_honey_wall_frame1
	db $03 : dw !dixie_honey_wall_blink_frame1
	db $03 : dw !dixie_honey_wall_blink_frame2
	db $03 : dw !dixie_honey_wall_blink_frame3
	db $03 : dw !dixie_honey_wall_blink_frame2
	db !animation_command_80, $00

;$F943D4
dixie_honey_floor_walk:
	db $04 : dw !dixie_roll_frame1
	db $04 : dw !dixie_roll_frame2
	db $04 : dw !dixie_roll_frame3
	db $04 : dw !dixie_roll_frame2
	db $04 : dw !dixie_roll_frame1
	db !animation_command_81 : dw CODE_B9DAAF
	db !animation_command_80, $00

;$F943E8
dixie_honey_floor_idle:
	db $04 : dw !dixie_idle_blink_frame1
	db $04 : dw !dixie_idle_blink_frame2
	db $04 : dw !dixie_idle_blink_frame3
	db $04 : dw !dixie_idle_blink_frame2
	db $04 : dw !dixie_idle_blink_frame1
	db !animation_command_80, $00

;$F943F9
dixie_honey_floor_carry_idle:
	db !animation_command_8B, $03 : dw !dixie_carry_object_frame1, $0005, $FFE2
	db !animation_command_8B, $03 : dw !dixie_carry_object_frame2, $0005, $FFE3
	db !animation_command_8B, $04 : dw !dixie_carry_object_frame3, $0005, $FFE4
	db !animation_command_8B, $03 : dw !dixie_carry_object_frame2, $0005, $FFE3
	db !animation_command_8B, $03 : dw !dixie_carry_object_frame1, $0005, $FFE2
DATA_F94421:
	db !animation_command_8B, $09 : dw !dixie_carry_object_idle_frame2, $0000, $FFE7
	db !animation_command_8B, $05 : dw !dixie_carry_object_idle_frame1, $0000, $FFE8
	db !animation_command_8B, $09 : dw !dixie_grab_object_frame13, $0000, $FFE9
	db !animation_command_8B, $05 : dw !dixie_carry_object_idle_frame1, $0000, $FFE8
	db !animation_command_82 : dw DATA_F94421
	db !animation_command_80, $00

;$F94446
dixie_rope_vertical_single_idle:
	db !animation_command_84 : dw CODE_B9DAE0
	db $02 : dw !dixie_rope_turn_frame1
	db !animation_command_80, $00

;$F9444E
dixie_rope_vertical_single_down:
	db !animation_command_84 : dw CODE_B9DB45
	db $02 : dw !dixie_rope_climb_frame12
	db $02 : dw !dixie_rope_climb_frame11
	db $02 : dw !dixie_rope_climb_frame10
	db $02 : dw !dixie_rope_climb_frame9
	db $02 : dw !dixie_rope_climb_frame8
	db $02 : dw !dixie_rope_climb_frame7
	db $02 : dw !dixie_rope_climb_frame6
	db $02 : dw !dixie_rope_climb_frame5
	db $02 : dw !dixie_rope_climb_frame4
	db $02 : dw !dixie_rope_climb_frame3
	db $02 : dw !dixie_rope_climb_frame2
	db $02 : dw !dixie_rope_climb_frame1
	db !animation_command_81 : dw CODE_B9DB19
	db !animation_command_80, $00

;$F9447A
dixie_rope_vertical_single_up:
	db !animation_command_84 : dw CODE_B9DB45
	db $02 : dw !dixie_rope_climb_frame1
	db $02 : dw !dixie_rope_climb_frame2
	db $02 : dw !dixie_rope_climb_frame3
	db $02 : dw !dixie_rope_climb_frame4
	db $02 : dw !dixie_rope_climb_frame5
	db $02 : dw !dixie_rope_climb_frame6
	db $02 : dw !dixie_rope_climb_frame7
	db $02 : dw !dixie_rope_climb_frame8
	db $02 : dw !dixie_rope_climb_frame9
	db $02 : dw !dixie_rope_climb_frame10
	db $02 : dw !dixie_rope_climb_frame11
	db $02 : dw !dixie_rope_climb_frame12
	db !animation_command_81 : dw CODE_B9DB19
	db !animation_command_80, $00

;$F944A6
dixie_rope_vertical_single_turn:
	db $02 : dw !dixie_rope_turn_frame1
	db $02 : dw !dixie_rope_turn_frame2
	db $02 : dw !dixie_rope_turn_frame3
	db $02 : dw !dixie_rope_turn_frame4
	db !animation_command_81 : dw CODE_B9E013
	db $02 : dw !dixie_rope_turn_frame4
	db $02 : dw !dixie_rope_turn_frame3
	db $02 : dw !dixie_rope_turn_frame2
	db $02 : dw !dixie_rope_turn_frame1
	db !animation_command_81 : dw CODE_B9DB11
	db !animation_command_80, $00

;$F944C6
DATA_F944C6:
	db !animation_command_84 : dw CODE_B9DD61
	db $02 : dw !dixie_grab_double_rope_frame1
	db $02 : dw !dixie_grab_double_rope_frame2
	db $02 : dw !dixie_grab_double_rope_frame3
	db $02 : dw !dixie_grab_double_rope_frame4
	db $02 : dw !dixie_grab_double_rope_frame5
	db $02 : dw !dixie_grab_double_rope_frame6
	db $02 : dw !dixie_grab_double_rope_frame7
	db $02 : dw !dixie_grab_double_rope_frame8
	db !animation_command_81 : dw CODE_B9DB11
	db !animation_command_80, $00

;$F944E6
dixie_rope_vertical_single_to_double:
	db !animation_command_84 : dw CODE_B9DD61
	db $02 : dw !dixie_grab_double_rope_frame1
	db $02 : dw !dixie_grab_double_rope_frame2
	db $02 : dw !dixie_grab_double_rope_frame3
	db $02 : dw !dixie_grab_double_rope_frame4
	db $02 : dw !dixie_grab_double_rope_frame5
	db $02 : dw !dixie_grab_double_rope_frame6
	db $02 : dw !dixie_grab_double_rope_frame7
	db $02 : dw !dixie_grab_double_rope_frame8
	db !animation_command_81 : dw CODE_B9DD7C
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F94509
dixie_rope_vertical_double_to_single:
	db !animation_command_84 : dw CODE_B9DD61
	db $02 : dw !dixie_grab_double_rope_frame8
	db $02 : dw !dixie_grab_double_rope_frame7
	db $02 : dw !dixie_grab_double_rope_frame6
	db $02 : dw !dixie_grab_double_rope_frame5
	db $02 : dw !dixie_grab_double_rope_frame4
	db $02 : dw !dixie_grab_double_rope_frame3
	db $02 : dw !dixie_grab_double_rope_frame2
	db $02 : dw !dixie_grab_double_rope_frame1
	db !animation_command_81 : dw CODE_B9DD8E
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9452C
dixie_rope_vertical_double_idle:
	db !animation_command_84 : dw CODE_B9DD9C
	db $02 : dw !dixie_grab_double_rope_frame8
	db !animation_command_80, $00

;$F94534
dixie_rope_vertical_double_up:
	db !animation_command_84 : dw CODE_B9DAB7
	db $03 : dw !dixie_climb_up_double_rope_frame1
	db $03 : dw !dixie_climb_up_double_rope_frame2
	db $03 : dw !dixie_climb_up_double_rope_frame3
	db $03 : dw !dixie_climb_up_double_rope_frame4
	db $03 : dw !dixie_climb_up_double_rope_frame5
	db $03 : dw !dixie_climb_up_double_rope_frame6
	db $03 : dw !dixie_climb_up_double_rope_frame7
	db $03 : dw !dixie_climb_up_double_rope_frame8
	db !animation_command_81 : dw CODE_B9DE17
	db !animation_command_80, $00

;$F94554
dixie_rope_vertical_double_down:
	db !animation_command_84 : dw CODE_B9DAB7
	db $03 : dw !dixie_climb_down_double_rope_frame8
	db $03 : dw !dixie_climb_down_double_rope_frame7
	db $03 : dw !dixie_climb_down_double_rope_frame6
	db $03 : dw !dixie_climb_down_double_rope_frame5
	db $03 : dw !dixie_climb_down_double_rope_frame4
	db $03 : dw !dixie_climb_down_double_rope_frame3
	db $03 : dw !dixie_climb_down_double_rope_frame2
	db $03 : dw !dixie_climb_down_double_rope_frame1
	db !animation_command_81 : dw CODE_B9DE17
	db !animation_command_80, $00

;$F94574
dixie_rope_horizontal_idle:
	db !animation_command_84 : dw CODE_B9DDB7
	db $06 : dw !dixie_rope_hang_frame1
	db $06 : dw !dixie_rope_hang_frame2
	db $06 : dw !dixie_rope_hang_frame3
	db $06 : dw !dixie_rope_hang_frame4
	db $06 : dw !dixie_rope_hang_frame5
	db $06 : dw !dixie_rope_hang_frame4
	db $06 : dw !dixie_rope_hang_frame3
	db $06 : dw !dixie_rope_hang_frame2
	db !animation_command_80, $00

;$F94591
dixie_rope_horizontal_move:
	db !animation_command_84 : dw CODE_B9DDE8
	db $02 : dw !dixie_rope_walk_frame1
	db $02 : dw !dixie_rope_walk_frame2
	db $02 : dw !dixie_rope_walk_frame3
	db $02 : dw !dixie_rope_walk_frame4
	db !animation_command_81 : dw CODE_B9DDC9
	db $02 : dw !dixie_rope_walk_frame5
	db $02 : dw !dixie_rope_walk_frame6
	db $02 : dw !dixie_rope_walk_frame7
	db $02 : dw !dixie_rope_walk_frame8
	db !animation_command_81 : dw CODE_B9DDC9
	db $02 : dw !dixie_rope_walk_frame9
	db $02 : dw !dixie_rope_walk_frame10
	db $02 : dw !dixie_rope_walk_frame11
	db $02 : dw !dixie_rope_walk_frame12
	db !animation_command_81 : dw CODE_B9DDC9
	db $02 : dw !dixie_rope_walk_frame13
	db $02 : dw !dixie_rope_walk_frame14
	db $02 : dw !dixie_rope_walk_frame15
	db $02 : dw !dixie_rope_walk_frame16
	db !animation_command_81 : dw CODE_B9DDC9
	db !animation_command_80, $00

;$F945D2
dixie_hook_idle:
	db $02 : dw !dixie_grab_hook_frame1
	db $01 : dw !dixie_grab_hook_frame2
	db $02 : dw !dixie_grab_hook_frame3
	db $01 : dw !dixie_grab_hook_frame4
	db $02 : dw !dixie_hook_idle_frame6
	db $02 : dw !dixie_hook_idle_frame5
	db $02 : dw !dixie_hook_idle_frame4
	db $03 : dw !dixie_hook_idle_frame3
	db $03 : dw !dixie_hook_idle_frame2
	db $04 : dw !dixie_hook_idle_frame1
	db $04 : dw !dixie_hook_idle_frame2
	db $05 : dw !dixie_hook_idle_frame3
	db $06 : dw !dixie_hook_idle_frame4
	db $07 : dw !dixie_hook_idle_frame5
DATA_F945FC:
	db $08 : dw !dixie_hook_idle_frame6
	db $08 : dw !dixie_hook_idle_frame5
	db $08 : dw !dixie_hook_idle_frame4
	db $08 : dw !dixie_hook_idle_frame3
	db $08 : dw !dixie_hook_idle_frame2
	db $08 : dw !dixie_hook_idle_frame1
	db $08 : dw !dixie_hook_idle_frame2
	db $08 : dw !dixie_hook_idle_frame3
	db $08 : dw !dixie_hook_idle_frame4
	db $08 : dw !dixie_hook_idle_frame5
	db !animation_command_82 : dw DATA_F945FC
	db !animation_command_80, $00

;$F9461F
dixie_swim_idle:
	db $03 : dw !dixie_swim_frame1
	db !animation_command_84 : dw CODE_B9DB6C
	db $03 : dw !dixie_swim_frame2
	db $03 : dw !dixie_swim_frame3
	db $03 : dw !dixie_swim_frame4
	db $03 : dw !dixie_swim_frame5
	db $03 : dw !dixie_swim_frame6
	db $03 : dw !dixie_swim_frame7
	db $03 : dw !dixie_swim_frame8
	db $03 : dw !dixie_swim_frame9
	db $03 : dw !dixie_swim_frame10
	db $03 : dw !dixie_swim_frame11
	db $03 : dw !dixie_swim_frame12
	db $03 : dw !dixie_swim_frame13
	db $03 : dw !dixie_swim_frame14
	db $03 : dw !dixie_swim_frame15
	db $03 : dw !dixie_swim_frame16
	db !animation_command_80, $00

;$F94654
dixie_swim_turn:
	db $03 : dw !dixie_swim_turn_frame1
	db $02 : dw !dixie_swim_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !dixie_swim_turn_frame2
	db $02 : dw !dixie_swim_turn_frame1
	db !animation_command_81 : dw CODE_B9DB64
	db !animation_command_80, $00

;$F94668
DATA_F94668:
	db $01 : dw !diddy_run_frame1
	db !animation_command_80, $00

;$F9466D
diddy_swap_to:
	db $02 : dw !diddy_swap_to_front_frame13
	db $0C : dw !diddy_swap_to_front_frame12
	db $02 : dw !diddy_swap_to_front_frame13
	db $02 : dw !diddy_swap_to_front_frame1
	db $02 : dw !diddy_swap_to_front_frame2
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame3, !dixie_idle_blink_frame1, $001C, $0000
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame4, !dixie_idle_blink_frame1, $001C, $0000
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame5, !dixie_swap_to_back_frame1, $001C, $0000
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame6, !dixie_swap_to_back_frame2, $001C, $0000
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame7, !dixie_swap_to_back_frame3, $001C, $0000
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame8, !dixie_swap_to_back_frame4, $001C, $0000
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame9, !dixie_swap_to_back_frame5, $001C, $0000
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame10, !dixie_swap_to_back_frame6, $001C, $0000
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame11, !dixie_swap_to_back_frame7, $001C, $0000
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame11, !dixie_swap_to_back_frame8, $001C, $0000
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame11, !dixie_swap_to_back_frame9, $001C, $0000
	db !animation_command_8A, $02 : dw !diddy_swap_to_front_frame11, !dixie_swap_to_back_frame10, $001C, $0000
	db !animation_command_81 : dw CODE_B9E162
	db $01 : dw !diddy_swap_to_front_frame11
	db $01 : dw !diddy_swap_to_front_frame10
	db $01 : dw !diddy_swap_to_front_frame9
	db $01 : dw !diddy_swap_to_front_frame8
	db $01 : dw !diddy_swap_to_front_frame7
	db $01 : dw !diddy_swap_to_front_frame6
	db $01 : dw !diddy_swap_to_front_frame5
	db $01 : dw !diddy_swap_to_front_frame4
	db $01 : dw !diddy_swap_to_front_frame3
	db $01 : dw !diddy_swap_to_front_frame2
	db $01 : dw !diddy_swap_to_front_frame1
	db !animation_command_81 : dw CODE_B9E198
DATA_F9471B:
	db $02 : dw !diddy_run_frame1
	db $02 : dw !diddy_run_frame2
	db $02 : dw !diddy_run_frame3
	db $02 : dw !diddy_run_frame4
	db $02 : dw !diddy_run_frame5
	db $02 : dw !diddy_run_frame6
	db $02 : dw !diddy_run_frame7
	db $02 : dw !diddy_run_frame8
	db $02 : dw !diddy_run_frame9
	db $02 : dw !diddy_run_frame10
	db $02 : dw !diddy_run_frame11
	db $02 : dw !diddy_run_frame12
	db $02 : dw !diddy_run_frame13
	db !animation_command_82 : dw DATA_F9471B
	db !animation_command_80, $00

;$F94747
dixie_swap_to:
	db !animation_command_89, $02 : dw !dixie_swap_to_front_frame1, !diddy_idle_frame1
	db !animation_command_89, $02 : dw !dixie_swap_to_front_frame2, !diddy_idle_frame1
	db !animation_command_89, $02 : dw !dixie_swap_to_front_frame3, !diddy_idle_frame2
	db !animation_command_89, $02 : dw !dixie_swap_to_front_frame4, !diddy_idle_frame2
	db !animation_command_89, $02 : dw !dixie_swap_to_front_frame5, !diddy_idle_frame3
	db !animation_command_89, $08 : dw !dixie_swap_to_front_frame6, !diddy_idle_frame3
	db !animation_command_89, $02 : dw !dixie_swap_to_front_frame7, !diddy_idle_frame4
	db !animation_command_89, $02 : dw !dixie_swap_to_front_frame8, !diddy_idle_frame4
	db !animation_command_89, $02 : dw !dixie_swap_to_front_frame9, !diddy_idle_frame5
	db !animation_command_89, $02 : dw !dixie_swap_to_front_frame10, !diddy_idle_frame5
	db !animation_command_81 : dw CODE_B9E1E2
	db $0A : dw !dixie_swap_to_front_frame11
	db $02 : dw !dixie_swap_to_front_frame12
	db $02 : dw !dixie_swap_to_front_frame13
	db $02 : dw !dixie_swap_to_front_frame14
	db !animation_command_81 : dw CODE_B9E1CF
DATA_F94795:
	db $03 : dw !dixie_walk_frame1
	db $03 : dw !dixie_walk_frame2
	db $03 : dw !dixie_walk_frame3
	db $03 : dw !dixie_walk_frame4
	db $03 : dw !dixie_walk_frame5
	db $03 : dw !dixie_walk_frame6
	db $03 : dw !dixie_walk_frame7
	db $03 : dw !dixie_walk_frame8
	db $03 : dw !dixie_walk_frame9
	db $03 : dw !dixie_walk_frame10
	db $03 : dw !dixie_walk_frame11
	db $03 : dw !dixie_walk_frame12
	db $03 : dw !dixie_walk_frame13
	db $03 : dw !dixie_walk_frame14
	db $03 : dw !dixie_walk_frame15
	db $03 : dw !dixie_walk_frame16
	db !animation_command_82 : dw DATA_F94795
	db !animation_command_80, $00

;$F947CA
diddy_swap_idle:
	db $04 : dw !diddy_idle_frame1
	db !animation_command_80, $00

;$F947CF
dixie_swap_idle:
	db $04 : dw !dixie_idle_blink_frame1
	db !animation_command_80, $00

;$F947D4
rambi_attack:
	db !animation_command_81 : dw CODE_B9E331
	db !animation_command_81 : dw CODE_B9E20F
	db !animation_command_87, $03 : dw !rambi_attack_frame3, $0000, $0004
	db !animation_command_8E : dw sound(5, !sound_rambi_attack)
	db !animation_command_84 : dw CODE_B9E219
	db !animation_command_87, $08 : dw !rambi_attack_frame3, $0000, $0004
	db !animation_command_81 : dw CODE_B9E221
	db !animation_command_87, $01 : dw !rambi_attack_frame4, $0000, $0003
	db !animation_command_87, $01 : dw !rambi_attack_frame5, $0000, $0002
	db !animation_command_87, $01 : dw !rambi_attack_frame6, $0000, $0001
	db !animation_command_87, $05 : dw !rambi_attack_frame7, $0000, $0000
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F9481B
rambi_charge:
	db !animation_command_81 : dw CODE_B9DAA3
	db !animation_command_87, $0A : dw !rambi_charge_frame1, $FFFE, $FFFF
	db !animation_command_84 : dw CODE_B9E23F
	db !animation_command_87, $09 : dw !rambi_charge_frame2, $FFFE, $FFFD
	db !animation_command_87, $09 : dw !rambi_charge_frame3, $FFFF, $FFFF
	db !animation_command_8E : dw sound(6, !sound_rambi_charge)
	db !animation_command_87, $08 : dw !rambi_charge_frame4, $FFFE, $0000
	db !animation_command_87, $08 : dw !rambi_charge_frame5, $FFFD, $FFFF
	db !animation_command_87, $07 : dw !rambi_charge_frame6, $FFFD, $FFFE
	db !animation_command_87, $07 : dw !rambi_charge_frame2, $FFFE, $FFFD
	db !animation_command_87, $06 : dw !rambi_charge_frame3, $FFFF, $FFFF
	db !animation_command_8E : dw sound(6, !sound_rambi_charge)
	db !animation_command_87, $06 : dw !rambi_charge_frame4, $FFFE, $0000
	db !animation_command_81 : dw CODE_B9E237
	db !animation_command_84 : dw CODE_B9E252
	db !animation_command_87, $05 : dw !rambi_charge_frame5, $FFFD, $FFFF
	db !animation_command_87, $05 : dw !rambi_charge_frame6, $FFFD, $FFFE
	db !animation_command_87, $04 : dw !rambi_charge_frame2, $FFFE, $FFFD
	db !animation_command_87, $04 : dw !rambi_charge_frame3, $FFFF, $FFFF
	db !animation_command_8E : dw sound(6, !sound_rambi_charge)
	db !animation_command_87, $03 : dw !rambi_charge_frame4, $FFFE, $0000
	db !animation_command_81 : dw CODE_B9E237
	db !animation_command_87, $03 : dw !rambi_charge_frame5, $FFFD, $FFFF
	db !animation_command_87, $03 : dw !rambi_charge_frame6, $FFFD, $FFFE
DATA_F948B3:
	db !animation_command_87, $03 : dw !rambi_charge_frame2, $FFFE, $FFFD
	db !animation_command_87, $03 : dw !rambi_charge_frame3, $FFFF, $FFFF
	db !animation_command_8E : dw sound(6, !sound_rambi_charge)
	db !animation_command_87, $03 : dw !rambi_charge_frame4, $FFFE, $0000
	db !animation_command_81 : dw CODE_B9E237
	db !animation_command_87, $03 : dw !rambi_charge_frame5, $FFFD, $FFFF
	db !animation_command_87, $03 : dw !rambi_charge_frame6, $FFFD, $FFFE
	db !animation_command_82 : dw DATA_F948B3
	db !animation_command_80, $00

;$F948E6
enguarde_idle:
	db !animation_command_88 : dw $0000, $0000
	db $06 : dw !enguarde_idle_frame1
	db !animation_command_84 : dw CODE_B9E2B6
	db $06 : dw !enguarde_idle_frame2
	db $06 : dw !enguarde_idle_frame3
	db $06 : dw !enguarde_idle_frame4
	db $06 : dw !enguarde_idle_frame5
	db $06 : dw !enguarde_idle_frame6
	db $06 : dw !enguarde_idle_frame7
	db $06 : dw !enguarde_idle_frame8
	db !animation_command_80, $00

;$F94908
enguarde_exit:
	db !animation_command_88 : dw $0000, $0000
	db !animation_command_8F : dw check_if_not_bonus_or_sub_level, DATA_F9492B
	db !animation_command_81 : dw CODE_B9D9E6
	db !animation_command_87, $18 : dw !enguarde_idle_frame1, $0000, $0000
	db !animation_command_81 : dw CODE_B9D9FD
	db !animation_command_87, $10 : dw !enguarde_idle_frame1, $0000, $0000
	db !animation_command_81 : dw CODE_B9D9ED
DATA_F9492B:
	db $06 : dw !enguarde_idle_frame1
	db $06 : dw !enguarde_idle_frame2
	db $06 : dw !enguarde_idle_frame3
	db $06 : dw !enguarde_idle_frame4
	db $06 : dw !enguarde_idle_frame5
	db $06 : dw !enguarde_idle_frame6
	db $06 : dw !enguarde_idle_frame7
	db $06 : dw !enguarde_idle_frame8
	db !animation_command_82 : dw DATA_F9492B
	db !animation_command_80, $00

;$F94948
enguarde_turn:
	db $02 : dw !enguarde_turn_frame1
	db $01 : dw !enguarde_turn_frame2
	db $01 : dw !enguarde_turn_frame3
	db $01 : dw !enguarde_turn_frame4
	db !animation_command_81 : dw CODE_B9E019
	db !animation_command_81 : dw CODE_B9E2F5
	db !animation_command_80, $00

;$F9495C
enguarde_dixie_mount:
	db !animation_command_88 : dw $0000, $0000
	db $03 : dw !enguarde_idle_frame4
	db !animation_command_81 : dw CODE_B9DAA3
	db !animation_command_81 : dw CODE_B9D705
	db !animation_command_80, $00

;$F9496C
enguarde_diddy_mount:
	db !animation_command_88 : dw $0000, $0000
	db !animation_command_85, $03 : dw !enguarde_idle_frame4, !diddy_ride_animal_attack_frame5
	db !animation_command_85, $03 : dw !enguarde_idle_frame3, !diddy_ride_animal_attack_frame4
	db !animation_command_85, $03 : dw !enguarde_idle_frame2, !diddy_ride_animal_attack_frame3
	db !animation_command_85, $05 : dw !enguarde_idle_frame1, !diddy_ride_animal_attack_frame2
	db !animation_command_85, $08 : dw !enguarde_idle_frame1, !diddy_ride_animal_idle_frame1
	db !animation_command_81 : dw CODE_B9DAA3
	db !animation_command_81 : dw CODE_B9D705
	db !animation_command_80, $00

;$F94997
enguarde_attack:
	db !animation_command_87, $02 : dw !enguarde_attack_frame1, $FFFE, $FFFF
	db !animation_command_87, $01 : dw !enguarde_attack_frame2, $FFFC, $FFFF
	db !animation_command_87, $01 : dw !enguarde_attack_frame3, $FFF9, $FFFF
	db !animation_command_81 : dw CODE_B9E331
	db !animation_command_87, $02 : dw !enguarde_attack_frame4, $FFF6, $FFFF
	db !animation_command_81 : dw CODE_B9E357
	db !animation_command_87, $05 : dw !enguarde_attack_frame4, $FFF6, $FFFF
	db !animation_command_81 : dw CODE_B9E35F
	db !animation_command_81 : dw CODE_B9E2FD
	db !animation_command_87, $0C : dw !enguarde_attack_frame5, $0000, $FFFF
	db !animation_command_84 : dw CODE_B9E30A
	db !animation_command_87, $05 : dw !enguarde_attack_frame6, $0000, $FFFF
	db !animation_command_87, $05 : dw !enguarde_attack_frame7, $0000, $FFFF
	db !animation_command_81 : dw CODE_B9D705
	db !animation_command_80, $00

;$F949EB
animal_attack:
	db $03 : dw !diddy_ride_animal_attack_frame1
	db $03 : dw !diddy_ride_animal_attack_frame2
	db $03 : dw !diddy_ride_animal_attack_frame3
	db $03 : dw !diddy_ride_animal_attack_frame4
	db $10 : dw !diddy_ride_animal_attack_frame5
	db $03 : dw !diddy_ride_animal_attack_frame4
	db $03 : dw !diddy_ride_animal_attack_frame3
	db $03 : dw !diddy_ride_animal_attack_frame2
	db !animation_command_81 : dw CODE_B9DAA3
	db !animation_command_80, $00

;$F94A08
enguarde_charge:
	db !animation_command_8F : dw CODE_B9D658, DATA_F94A0D
DATA_F94A0D:
	db !animation_command_84 : dw CODE_B9E23F
	db !animation_command_87, $02 : dw !enguarde_attack_frame1, $FFFE, $FFFF
	db !animation_command_87, $01 : dw !enguarde_attack_frame2, $FFFC, $FFFF
	db !animation_command_87, $01 : dw !enguarde_attack_frame3, $FFF9, $FFFF
	db !animation_command_87, $07 : dw !enguarde_attack_frame4, $FFF6, $FFFF
	db !animation_command_81 : dw CODE_B9DBC5
	db !animation_command_87, $03 : dw !enguarde_attack_frame7, $0000, $FFFF
	db !animation_command_8E : dw sound(5, !sound_enguarde_charge)
	db !animation_command_87, $02 : dw !enguarde_attack_frame1, $FFFE, $FFFF
	db !animation_command_87, $01 : dw !enguarde_attack_frame2, $FFFC, $FFFF
	db !animation_command_87, $01 : dw !enguarde_attack_frame3, $FFF9, $FFFF
	db !animation_command_87, $05 : dw !enguarde_attack_frame4, $FFF6, $FFFF
	db !animation_command_84 : dw CODE_B9E252
	db !animation_command_87, $02 : dw !enguarde_attack_frame7, $0000, $FFFF
	db !animation_command_8E : dw sound(5, !sound_enguarde_charge)
DATA_F94A6C:
	db !animation_command_87, $01 : dw !enguarde_attack_frame1, $FFFE, $FFFF
	db !animation_command_87, $01 : dw !enguarde_attack_frame2, $FFFC, $FFFF
	db !animation_command_87, $01 : dw !enguarde_attack_frame3, $FFF9, $FFFF
	db !animation_command_87, $02 : dw !enguarde_attack_frame4, $FFF6, $FFFF
	db !animation_command_87, $01 : dw !enguarde_attack_frame7, $0000, $FFFF
	db !animation_command_8E : dw sound(5, !sound_enguarde_charge)
	db !animation_command_82 : dw DATA_F94A6C
	db !animation_command_80, $00

;$F94A9C
rattly_diddy_charge:
	db !animation_command_86, $02 : dw !rattly_jump_frame1, !diddy_ride_rattly_frame1, $0000, $0000
	db !animation_command_86, $02 : dw !rattly_jump_frame2, !diddy_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $02 : dw !rattly_jump_frame3, !diddy_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $02 : dw !rattly_jump_frame4, !diddy_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_8E : dw sound(5, !sound_rattly_hop)
	db !animation_command_86, $02 : dw !rattly_jump_frame5, !diddy_ride_rattly_frame1, $0000, $FFF8
	db !animation_command_86, $02 : dw !rattly_jump_frame6, !diddy_ride_rattly_frame1, $0000, $FFF6
	db !animation_command_86, $02 : dw !rattly_jump_frame7, !diddy_ride_rattly_frame1, $0000, $FFF1
	db !animation_command_84 : dw CODE_B9E385
	db !animation_command_86, $02 : dw !rattly_jump_frame8, !diddy_ride_rattly_frame1, $0000, $FFED
	db !animation_command_86, $02 : dw !rattly_jump_frame9, !diddy_ride_rattly_frame1, $0000, $FFE8
	db !animation_command_86, $02 : dw !rattly_jump_frame10, !diddy_ride_rattly_frame1, $0000, $FFE3
	db !animation_command_86, $02 : dw !rattly_jump_frame11, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_86, $02 : dw !rattly_jump_frame12, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_86, $02 : dw !rattly_jump_frame11, !diddy_ride_rattly_frame1, $FFFE, $FFDE
	db !animation_command_86, $02 : dw !rattly_jump_frame10, !diddy_ride_rattly_frame1, $0000, $FFE3
	db !animation_command_86, $02 : dw !rattly_jump_frame9, !diddy_ride_rattly_frame1, $0000, $FFE8
	db !animation_command_86, $02 : dw !rattly_jump_frame8, !diddy_ride_rattly_frame1, $0000, $FFED
	db !animation_command_86, $02 : dw !rattly_jump_frame7, !diddy_ride_rattly_frame1, $0000, $FFF1
	db !animation_command_86, $02 : dw !rattly_jump_frame6, !diddy_ride_rattly_frame1, $0000, $FFF6
	db !animation_command_86, $02 : dw !rattly_jump_frame5, !diddy_ride_rattly_frame1, $0000, $FFF8
	db !animation_command_86, $02 : dw !rattly_jump_frame4, !diddy_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_86, $02 : dw !rattly_jump_frame3, !diddy_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $02 : dw !rattly_jump_frame2, !diddy_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_80, $00

;$F94B80
rattly_dixie_charge:
	db !animation_command_86, $02 : dw !rattly_jump_frame1, !dixie_ride_rattly_frame1, $0000, $0000
	db !animation_command_86, $02 : dw !rattly_jump_frame2, !dixie_ride_rattly_frame1, $0000, $0000
	db !animation_command_86, $02 : dw !rattly_jump_frame3, !dixie_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $02 : dw !rattly_jump_frame4, !dixie_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_8E : dw sound(5, !sound_rattly_hop)
	db !animation_command_86, $02 : dw !rattly_jump_frame5, !dixie_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_86, $02 : dw !rattly_jump_frame6, !dixie_ride_rattly_frame1, $0000, $FFF8
	db !animation_command_86, $02 : dw !rattly_jump_frame7, !dixie_ride_rattly_frame1, $0000, $FFF3
	db !animation_command_84 : dw CODE_B9E385
	db !animation_command_86, $02 : dw !rattly_jump_frame8, !dixie_ride_rattly_frame1, $0000, $FFEF
	db !animation_command_86, $02 : dw !rattly_jump_frame9, !dixie_ride_rattly_frame1, $FFFF, $FFE8
	db !animation_command_86, $02 : dw !rattly_jump_frame10, !dixie_ride_rattly_frame1, $FFFE, $FFE5
	db !animation_command_86, $02 : dw !rattly_jump_frame11, !dixie_ride_rattly_frame1, $FFFD, $FFE1
	db !animation_command_86, $02 : dw !rattly_jump_frame12, !dixie_ride_rattly_frame1, $FFFD, $FFE1
	db !animation_command_86, $02 : dw !rattly_jump_frame10, !dixie_ride_rattly_frame1, $FFFE, $FFE5
	db !animation_command_86, $02 : dw !rattly_jump_frame9, !dixie_ride_rattly_frame1, $FFFF, $FFE8
	db !animation_command_86, $02 : dw !rattly_jump_frame8, !dixie_ride_rattly_frame1, $0000, $FFEF
	db !animation_command_86, $02 : dw !rattly_jump_frame7, !dixie_ride_rattly_frame1, $0000, $FFF3
	db !animation_command_86, $02 : dw !rattly_jump_frame6, !dixie_ride_rattly_frame1, $0000, $FFF8
	db !animation_command_86, $02 : dw !rattly_jump_frame5, !dixie_ride_rattly_frame1, $0000, $FFFA
	db !animation_command_86, $02 : dw !rattly_jump_frame4, !dixie_ride_rattly_frame1, $0000, $FFFC
	db !animation_command_86, $02 : dw !rattly_jump_frame3, !dixie_ride_rattly_frame1, $0000, $FFFE
	db !animation_command_86, $02 : dw !rattly_jump_frame2, !dixie_ride_rattly_frame1, $0000, $0000
	db !animation_command_80, $00

;$F94C5A
squitter_hurt:
	db $08 : dw !squitter_hurt_graphic
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F94C62
rattly_hurt:
	db $08 : dw !rattly_hurt_graphic
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F94C6A
squawks_hurt:
	db $08 : dw !squawks_hurt_graphic
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F94C72
rambi_hurt:
	db $08 : dw !rambi_hurt_graphic
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F94C7A
enguarde_hurt:
	db $08 : dw !enguarde_hurt_graphic
	db !animation_command_81 : dw CODE_B9DFE5
	db !animation_command_80, $00

;$F94C82
dixie_skull_cart:
	db !animation_command_83 : dw CODE_B9E3D3
	db !animation_command_82 : dw DATA_F94CA9
	db !animation_command_82 : dw DATA_F94CE1
	db !animation_command_82 : dw DATA_F94CFF
	db $02 : dw !dixie_ride_cart_slope_frame1
	db !animation_command_84 : dw CODE_B9E402
DATA_F94C94:
	db $06 : dw !dixie_ride_cart_hill_frame1
	db $06 : dw !dixie_ride_cart_hill_frame2
	db $06 : dw !dixie_ride_cart_hill_frame3
	db $06 : dw !dixie_ride_cart_hill_frame4
	db $06 : dw !dixie_ride_cart_hill_frame5
	db $06 : dw !dixie_ride_cart_hill_frame6
	db !animation_command_82 : dw DATA_F94C94
DATA_F94CA9:
	db !animation_command_84 : dw CODE_B9E3D9
	db $04 : dw !dixie_ride_cart_frame1
	db $04 : dw !dixie_ride_cart_frame2
	db $04 : dw !dixie_ride_cart_frame3
	db $0C : dw !dixie_ride_cart_frame4
	db $04 : dw !dixie_ride_cart_frame3
	db $04 : dw !dixie_ride_cart_frame2
	db $04 : dw !dixie_ride_cart_frame1
	db !animation_command_8F : dw CODE_B9E44F, dixie_skull_cart
	db $10 : dw !dixie_ride_cart_slope_frame10
	db $04 : dw !dixie_ride_cart_frame1
	db $04 : dw !dixie_ride_cart_frame2
	db $04 : dw !dixie_ride_cart_frame3
	db $08 : dw !dixie_ride_cart_frame4
	db $04 : dw !dixie_ride_cart_frame3
	db $04 : dw !dixie_ride_cart_frame2
	db $04 : dw !dixie_ride_cart_frame1
	db !animation_command_82 : dw dixie_skull_cart
DATA_F94CE1:
	db !animation_command_84 : dw CODE_B9E3DE
	db $03 : dw !dixie_ride_cart_duct_frame1
	db $02 : dw !dixie_ride_cart_duct_frame2
	db $02 : dw !dixie_ride_cart_duct_frame3
	db $14 : dw !dixie_ride_cart_duct_frame4
	db !animation_command_83 : dw CODE_B9E469
	db $04 : dw !dixie_ride_cart_duct_frame3
	db $04 : dw !dixie_ride_cart_duct_frame2
	db $03 : dw !dixie_ride_cart_duct_frame1
	db !animation_command_82 : dw dixie_skull_cart
DATA_F94CFF:
	db !animation_command_84 : dw CODE_B9E3E5
	db $02 : dw !dixie_ride_cart_duct_frame1
	db $02 : dw !dixie_ride_cart_duct_frame2
	db $10 : dw !dixie_ride_cart_duct_frame3
	db !animation_command_83 : dw CODE_B9E463
	db $04 : dw !dixie_ride_cart_duct_frame2
	db $04 : dw !dixie_ride_cart_duct_frame1
	db !animation_command_82 : dw dixie_skull_cart
	db !animation_command_80, $00

;$F94D19
diddy_skull_cart:
	db !animation_command_83 : dw CODE_B9E40A
	db !animation_command_82 : dw DATA_F94D40
	db !animation_command_82 : dw DATA_F94D78
	db !animation_command_82 : dw DATA_F94D96
	db !animation_command_84 : dw CODE_B9E439
	db $04 : dw !diddy_ride_cart_hill_frame1
	db $04 : dw !diddy_ride_cart_hill_frame2
	db $04 : dw !diddy_ride_cart_hill_frame3
	db $02 : dw !diddy_ride_cart_hill_frame4
	db !animation_command_83 : dw CODE_B9E43E
	db $02 : dw !diddy_ride_cart_hill_frame2
	db $02 : dw !diddy_ride_cart_slope_frame1
	db !animation_command_82 : dw diddy_skull_cart
DATA_F94D40:
	db !animation_command_84 : dw CODE_B9E410
	db $04 : dw !diddy_ride_cart_frame1
	db $04 : dw !diddy_ride_cart_frame2
	db $04 : dw !diddy_ride_cart_frame3
	db $0C : dw !diddy_ride_cart_frame4
	db $04 : dw !diddy_ride_cart_frame3
	db $04 : dw !diddy_ride_cart_frame2
	db $04 : dw !diddy_ride_cart_frame1
	db !animation_command_8F : dw CODE_B9E44F, diddy_skull_cart
	db $10 : dw !diddy_ride_cart_slope_frame10
	db $04 : dw !diddy_ride_cart_frame1
	db $04 : dw !diddy_ride_cart_frame2
	db $04 : dw !diddy_ride_cart_frame3
	db $08 : dw !diddy_ride_cart_frame4
	db $04 : dw !diddy_ride_cart_frame3
	db $04 : dw !diddy_ride_cart_frame2
	db $04 : dw !diddy_ride_cart_frame1
	db !animation_command_82 : dw diddy_skull_cart
DATA_F94D78:
	db !animation_command_84 : dw CODE_B9E415
	db $02 : dw !diddy_ride_cart_duck_frame1
	db $02 : dw !diddy_ride_cart_duck_frame2
	db $02 : dw !diddy_ride_cart_duck_frame3
	db $14 : dw !diddy_ride_cart_duck_frame4
	db !animation_command_83 : dw CODE_B9E469
	db $04 : dw !diddy_ride_cart_duck_frame3
	db $04 : dw !diddy_ride_cart_duck_frame2
	db $04 : dw !diddy_ride_cart_duck_frame1
	db !animation_command_82 : dw diddy_skull_cart
DATA_F94D96:
	db !animation_command_84 : dw CODE_B9E41C
	db $02 : dw !diddy_ride_cart_duck_frame1
	db $02 : dw !diddy_ride_cart_duck_frame2
	db $02 : dw !diddy_ride_cart_duck_frame3
	db $10 : dw !diddy_ride_cart_duck_frame3
	db !animation_command_83 : dw CODE_B9E463
	db $04 : dw !diddy_ride_cart_duck_frame2
	db $04 : dw !diddy_ride_cart_duck_frame1
	db !animation_command_82 : dw diddy_skull_cart
	db !animation_command_80, $00

;$F94DB3
dixie_hurt_tears:
	db $04 : dw !dixie_hurt_tears_frame1
	db $04 : dw !dixie_hurt_tears_frame2
	db $04 : dw !dixie_hurt_tears_frame3
	db $04 : dw !dixie_hurt_tears_frame4
	db $04 : dw !dixie_hurt_tears_frame5
	db $04 : dw !dixie_hurt_tears_frame6
	db $04 : dw !dixie_hurt_tears_frame1
	db $04 : dw !dixie_hurt_tears_frame2
	db $04 : dw !dixie_hurt_tears_frame3
	db $04 : dw !dixie_hurt_tears_frame4
	db $04 : dw !dixie_hurt_tears_frame5
	db $04 : dw !dixie_hurt_tears_frame6
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F94DDC
diddy_hurt_birds:
	db $05 : dw !diddy_hurt_stars_frame1
	db $05 : dw !diddy_hurt_stars_frame2
	db $05 : dw !diddy_hurt_stars_frame3
	db !animation_command_80, $00

;$F94DE7
DATA_F94DE7:
	db $05 : dw !auto_barrel_cannon_frame1
	db $05 : dw !auto_barrel_cannon_frame2
	db $05 : dw !auto_barrel_cannon_frame3
	db $05 : dw !auto_barrel_cannon_frame4
	db $05 : dw !auto_barrel_cannon_frame5
	db $05 : dw !auto_barrel_cannon_frame6
	db $05 : dw !auto_barrel_cannon_frame7
	db $05 : dw !auto_barrel_cannon_frame8
	db $05 : dw !auto_barrel_cannon_frame9
	db $05 : dw !auto_barrel_cannon_frame10
	db $05 : dw !auto_barrel_cannon_frame3
	db $05 : dw !auto_barrel_cannon_frame4
	db $05 : dw !auto_barrel_cannon_frame5
	db $05 : dw !auto_barrel_cannon_frame6
	db $05 : dw !auto_barrel_cannon_frame11
	db $05 : dw !auto_barrel_cannon_frame12
	db $05 : dw !auto_barrel_cannon_frame13
	db $05 : dw !auto_barrel_cannon_frame14
	db $05 : dw !auto_barrel_cannon_frame15
	db $05 : dw !auto_barrel_cannon_frame16
	db !animation_command_80, $00

;$F94E25
barrel_idle:
	db $05 : dw !barrel_frame1
	db !animation_command_80, $00

;$F94E2A
barrel_carry:
	db $05 : dw !barrel_frame1
	db $05 : dw !barrel_frame2
	db $05 : dw !barrel_frame3
	db $05 : dw !barrel_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F94E3B
barrel_idle_placed:
	db $03 : dw !barrel_frame3
	db $03 : dw !barrel_frame2
	db $03 : dw !barrel_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F94E49
barrel_thrown:
	db !animation_command_84 : dw CODE_B9E516
	db $03 : dw !barrel_roll_frame1
	db $03 : dw !barrel_roll_frame2
	db $03 : dw !barrel_roll_frame3
	db $03 : dw !barrel_roll_frame4
	db $03 : dw !barrel_roll_frame5
	db $03 : dw !barrel_roll_frame6
	db $03 : dw !barrel_roll_frame7
	db $03 : dw !barrel_roll_frame8
	db !animation_command_80, $00

;$F94E66
tnt_barrel_idle:
	db $05 : dw !tnt_barrel_graphic
	db !animation_command_80, $00

;$F94E6B
tnt_barrel_pickup:
	db $05 : dw !tnt_grab_frame1
	db $05 : dw !tnt_grab_frame2
	db $05 : dw !tnt_grab_frame3
	db $05 : dw !tnt_grab_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F94E7C
tnt_barrel_drop:
	db $03 : dw !tnt_grab_frame3
	db $03 : dw !tnt_grab_frame2
	db $03 : dw !tnt_grab_frame1
	db $05 : dw !tnt_barrel_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F94E8D
tnt_barrel_thrown:
	db $03 : dw !tnt_grab_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F94E95
fireball_explosion:
	db $02 : dw !tnt_explosion_frame1
	db !animation_command_81 : dw CODE_B9E51E
	db $01 : dw !tnt_explosion_frame2
	db $02 : dw !tnt_explosion_frame3
	db $01 : dw !tnt_explosion_frame4
	db $02 : dw !tnt_explosion_frame5
	db $01 : dw !tnt_explosion_frame6
	db $02 : dw !tnt_explosion_frame7
	db $01 : dw !tnt_explosion_frame8
	db $02 : dw !tnt_explosion_frame9
	db $01 : dw !tnt_explosion_frame10
	db $02 : dw !tnt_explosion_frame11
	db $01 : dw !tnt_explosion_frame12
	db $02 : dw !tnt_explosion_frame13
	db $01 : dw !tnt_explosion_frame14
	db $02 : dw !tnt_explosion_frame15
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F94ECA
dust_particle:
	db $04 : dw $0004
	db $04 : dw $0008
	db $04 : dw $000C
	db $04 : dw $0010
	db $04 : dw $0014
	db $04 : dw $0018
	db $04 : dw $001C
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F94EE4
ship_deck_water_splash:
	db $08 : dw $0000
	db !animation_command_81 : dw CODE_B9E594
	db $03 : dw !big_splash_frame1
	db $02 : dw !big_splash_frame2
	db $02 : dw !big_splash_frame3
	db $02 : dw !big_splash_frame4
	db $02 : dw !big_splash_frame5
	db $02 : dw !big_splash_frame6
	db $03 : dw !big_splash_frame7
	db $03 : dw !big_splash_frame8
	db $03 : dw !big_splash_frame9
	db $03 : dw !big_splash_frame10
	db $03 : dw !big_splash_frame11
	db $03 : dw !big_splash_frame12
	db $03 : dw !big_splash_frame13
	db $03 : dw !big_splash_frame14
	db $03 : dw !big_splash_frame15
	db $03 : dw !big_splash_frame16
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F94F1F
neek_walk:
	db $04 : dw !neek_walk_frame1
	db !animation_command_84 : dw CODE_B9E5AB
	db $04 : dw !neek_walk_frame2
	db $04 : dw !neek_walk_frame3
	db $04 : dw !neek_walk_frame4
	db $04 : dw !neek_walk_frame5
	db $04 : dw !neek_walk_frame6
	db $04 : dw !neek_walk_frame7
	db $04 : dw !neek_walk_frame8
	db !animation_command_80, $00

;$F94F3C
neek_turn:
	db $02 : dw !neek_turn_frame1
	db $02 : dw !neek_turn_frame2
	db $02 : dw !neek_turn_frame3
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !neek_turn_frame3
	db $02 : dw !neek_turn_frame2
	db $02 : dw !neek_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $016F
	db !animation_command_80, $00

;$F94F58
neek_death:
	db !animation_command_8E : dw sound(5, !sound_neek_hit)
	db $04 : dw !neek_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $03 : dw !neek_hurt_frame2
	db $03 : dw !neek_hurt_frame3
	db $03 : dw !neek_hurt_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F94F6F
click_clack_walk:
	db $02 : dw !click_clack_walk_frame1
	db !animation_command_84 : dw turn_click_clack_if_needed
	db $02 : dw !click_clack_walk_frame2
	db $02 : dw !click_clack_walk_frame3
	db !animation_command_81 : dw CODE_B9E5DF
	db $02 : dw !click_clack_walk_frame4
	db $02 : dw !click_clack_walk_frame5
	db $02 : dw !click_clack_walk_frame6
	db $02 : dw !click_clack_walk_frame7
	db $02 : dw !click_clack_walk_frame8
	db !animation_command_80, $00

;$F94F8F
click_clack_turn:
	db $02 : dw !click_clack_turn_frame1
	db $02 : dw !click_clack_turn_frame2
	db !animation_command_81 : dw CODE_B9E5DF
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !click_clack_turn_frame2
	db $02 : dw !click_clack_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $0163
	db !animation_command_80, $00

;$F94FA8
click_clack_stunned_airborne:
	db $02 : dw !click_clack_flip_over_frame1
	db $02 : dw !click_clack_flip_over_frame2
	db $02 : dw !click_clack_flip_over_frame3
	db $02 : dw !click_clack_flip_over_frame4
	db $02 : dw !click_clack_flip_over_frame5
	db $02 : dw !click_clack_flip_over_frame6
	db $02 : dw !click_clack_flip_over_frame7
	db $02 : dw !click_clack_flip_over_frame8
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_90 : dw CODE_B9E575, $0166
	db !animation_command_80, $00

;$F94FCA
click_clack_stunned:
	db $02 : dw !click_clack_stunned_frame1
	db $02 : dw !click_clack_stunned_frame2
	db $02 : dw !click_clack_stunned_frame3
	db $02 : dw !click_clack_stunned_frame4
	db $02 : dw !click_clack_stunned_frame5
	db $02 : dw !click_clack_stunned_frame6
	db $02 : dw !click_clack_stunned_frame7
	db $02 : dw !click_clack_stunned_frame8
	db !animation_command_80, $00

;$F94FE4
click_clack_recover:
	db $02 : dw !click_clack_flip_over_frame8
	db $02 : dw !click_clack_flip_over_frame7
	db $02 : dw !click_clack_flip_over_frame8
	db $02 : dw !click_clack_flip_over_frame7
	db $02 : dw !click_clack_flip_over_frame6
	db $02 : dw !click_clack_flip_over_frame7
	db $02 : dw !click_clack_flip_over_frame8
	db $02 : dw !click_clack_flip_over_frame7
	db $02 : dw !click_clack_flip_over_frame6
	db $02 : dw !click_clack_flip_over_frame5
	db $02 : dw !click_clack_flip_over_frame6
	db $02 : dw !click_clack_flip_over_frame7
	db $02 : dw !click_clack_flip_over_frame8
	db !animation_command_81 : dw CODE_B9E5C5
	db !animation_command_8E : dw sound(6, !sound_click_clack_recover)
	db $02 : dw !click_clack_flip_over_frame8
	db $02 : dw !click_clack_flip_over_frame7
	db $02 : dw !click_clack_flip_over_frame6
	db $02 : dw !click_clack_flip_over_frame5
	db $02 : dw !click_clack_flip_over_frame4
	db $02 : dw !click_clack_flip_over_frame3
	db $02 : dw !click_clack_flip_over_frame2
	db $02 : dw !click_clack_flip_over_frame1
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_90 : dw CODE_B9E575, $0163
	db !animation_command_80, $00

;$F95033
klobber_barrel_idle:
	db !animation_command_8F : dw CODE_B9E5EE, DATA_F9503E
	db $05 : dw !barrel_frame1
	db !animation_command_83 : dw CODE_B9D12B

DATA_F9503E:
	db $05 : dw !tnt_barrel_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95046
klobber_barrel_carry:
	db !animation_command_8F : dw CODE_B9E5EE, DATA_F9505A
	db $05 : dw !barrel_frame1
	db $05 : dw !barrel_frame2
	db $05 : dw !barrel_frame3
	db $05 : dw !barrel_frame4
	db !animation_command_83 : dw CODE_B9D12B

DATA_F9505A:
	db $05 : dw !tnt_grab_frame1
	db $05 : dw !tnt_grab_frame2
	db $05 : dw !tnt_grab_frame3
	db $05 : dw !tnt_grab_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9506B
DATA_F9506B:
	db !animation_command_8F : dw CODE_B9E5EE, DATA_F9507C
	db $03 : dw !barrel_frame3
	db $03 : dw !barrel_frame2
	db $03 : dw !barrel_frame1
	db !animation_command_83 : dw CODE_B9D12B

DATA_F9507C:
	db $03 : dw !tnt_grab_frame3
	db $03 : dw !tnt_grab_frame2
	db $03 : dw !tnt_grab_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9508A
klobber_barrel_roll:
	db !animation_command_8F : dw CODE_B9E5EE, DATA_F950AA

DATA_F9508F:
	db $03 : dw !barrel_roll_frame1
	db $03 : dw !barrel_roll_frame2
	db $03 : dw !barrel_roll_frame3
	db $03 : dw !barrel_roll_frame4
	db $03 : dw !barrel_roll_frame5
	db $03 : dw !barrel_roll_frame6
	db $03 : dw !barrel_roll_frame7
	db $03 : dw !barrel_roll_frame8
	db !animation_command_82 : dw DATA_F9508F

DATA_F950AA:
	db $03 : dw !tnt_grab_frame4
	db !animation_command_82 : dw DATA_F950AA
	db !animation_command_80, $00

;$F950B2
klobber_wake:
	db !animation_command_8F : dw CODE_B9E5EE, DATA_F95125
	db !animation_command_8E : dw sound(4, !sound_klobber_awaken)
	db !animation_command_8D, $03 : dw !klobber_wake_frame1, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame2, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame3, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame4, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame5, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame6, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame7, !klobber_barrel_wake_graphic, $0000
	db !animation_command_84 : dw CODE_B9E601
	db !animation_command_8D, $03 : dw !klobber_wake_frame8, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame9, !klobber_barrel_wake_graphic, $0000
	db !animation_command_81 : dw CODE_B9E62E
	db !animation_command_8D, $03 : dw !klobber_wake_frame10, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame11, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $0C : dw !klobber_wake_frame12, !klobber_barrel_wake_graphic, $0000
	db !animation_command_90 : dw CODE_B9E614, $01F5

DATA_F95125:
	db !animation_command_8E : dw sound(4, !sound_klobber_awaken)
	db !animation_command_8D, $03 : dw !klobber_wake_frame1, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame2, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame3, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame4, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame5, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame6, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame7, !klobber_tnt_wake_graphic, $0000
	db !animation_command_84 : dw CODE_B9E601
	db !animation_command_8D, $03 : dw !klobber_wake_frame8, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame9, !klobber_tnt_wake_graphic, $0000
	db !animation_command_81 : dw CODE_B9E62E
	db !animation_command_8D, $03 : dw !klobber_wake_frame10, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_wake_frame11, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $0C : dw !klobber_wake_frame12, !klobber_tnt_wake_graphic, $0000
	db !animation_command_90 : dw CODE_B9E614, $01F5
	db !animation_command_80, $00

;$F95195
klobber_turn:
	db !animation_command_8F : dw CODE_B9E5EE, DATA_F951C2
	db !animation_command_8D, $03 : dw !klobber_turn_frame1, !klobber_barrel_turn_frame1, $0000
	db !animation_command_8D, $03 : dw !klobber_turn_frame2, !klobber_barrel_turn_frame2, $0000
	db !animation_command_81 : dw CODE_B9E019
	db !animation_command_8D, $03 : dw !klobber_turn_frame2, !klobber_barrel_turn_frame2, $0000
	db !animation_command_8D, $03 : dw !klobber_turn_frame1, !klobber_barrel_turn_frame1, $0000
	db !animation_command_90 : dw CODE_B9E614, $01F5

DATA_F951C2:
	db !animation_command_8D, $03 : dw !klobber_turn_frame1, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_turn_frame2, !klobber_tnt_wake_graphic, $0000
	db !animation_command_81 : dw CODE_B9E019
	db !animation_command_8D, $03 : dw !klobber_turn_frame2, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $03 : dw !klobber_turn_frame1, !klobber_tnt_wake_graphic, $0000
	db !animation_command_90 : dw CODE_B9E614, $01F5
	db !animation_command_80, $00

;$F951EC
klobber_hide:
	db !animation_command_8E : dw sound(5, !sound_knock)
	db !animation_command_81 : dw CODE_B9E62E
	db !animation_command_8F : dw CODE_B9E5EE, DATA_F9526A
	db !animation_command_8D, $12 : dw !klobber_hurt_graphic, !klobber_barrel_wake_graphic, $00F5
	db !animation_command_8D, $02 : dw !klobber_wake_frame12, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame11, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame10, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame9, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame8, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame7, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame6, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame5, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame4, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame3, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame2, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame1, !klobber_barrel_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame1, !klobber_barrel_wake_graphic, $0000
	db !animation_command_82 : dw DATA_F952DA

DATA_F9526A:
	db !animation_command_8D, $12 : dw !klobber_hurt_graphic, !klobber_tnt_wake_graphic, $00F5
	db !animation_command_8D, $02 : dw !klobber_wake_frame12, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame11, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame10, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame9, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame8, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame7, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame6, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame5, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame4, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame3, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame2, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame1, !klobber_tnt_wake_graphic, $0000
	db !animation_command_8D, $02 : dw !klobber_wake_frame1, !klobber_tnt_wake_graphic, $0000

DATA_F952DA:
	db $02 : dw $0000
	db !animation_command_80, $00

;$F952DF
klobber_barrel_credits:
	db $03 : dw !klobber_barrel_run_frame1
	db $03 : dw !klobber_barrel_run_frame2
	db $03 : dw !klobber_barrel_run_frame3
	db $03 : dw !klobber_barrel_run_frame4
	db $03 : dw !klobber_barrel_run_frame5
	db $03 : dw !klobber_barrel_run_frame6
	db $03 : dw !klobber_barrel_run_frame7
	db $03 : dw !klobber_barrel_run_frame8
	db $03 : dw !klobber_barrel_run_frame9
	db $03 : dw !klobber_barrel_run_frame10
	db $03 : dw !klobber_barrel_run_frame11
	db !animation_command_80, $00

;$F95302
klobber_run:
	db !animation_command_84 : dw CODE_B9E5F4
	db !animation_command_8F : dw CODE_B9E5EE, DATA_F9536B

DATA_F9530A:
	db !animation_command_8D, $03 : dw !klobber_run_frame1, !klobber_barrel_run_frame1, $0000
	db !animation_command_81 : dw CODE_B9E634
	db !animation_command_8D, $03 : dw !klobber_run_frame2, !klobber_barrel_run_frame2, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame3, !klobber_barrel_run_frame3, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame4, !klobber_barrel_run_frame4, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame5, !klobber_barrel_run_frame5, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame6, !klobber_barrel_run_frame6, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame7, !klobber_barrel_run_frame7, $0000
	db !animation_command_81 : dw CODE_B9E634
	db !animation_command_8D, $03 : dw !klobber_run_frame8, !klobber_barrel_run_frame8, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame9, !klobber_barrel_run_frame9, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame10, !klobber_barrel_run_frame10, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame11, !klobber_barrel_run_frame11, $0000
	db !animation_command_82 : dw DATA_F9530A

DATA_F9536B:
	db !animation_command_8D, $03 : dw !klobber_run_frame1, !klobber_tnt_run_frame1, $0000
	db !animation_command_81 : dw CODE_B9E634
	db !animation_command_8D, $03 : dw !klobber_run_frame2, !klobber_tnt_run_frame2, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame3, !klobber_tnt_run_frame3, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame4, !klobber_tnt_run_frame4, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame5, !klobber_tnt_run_frame5, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame6, !klobber_tnt_run_frame6, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame7, !klobber_tnt_run_frame7, $0000
	db !animation_command_81 : dw CODE_B9E634
	db !animation_command_8D, $03 : dw !klobber_run_frame8, !klobber_tnt_run_frame8, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame9, !klobber_tnt_run_frame9, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame10, !klobber_tnt_run_frame10, $0000
	db !animation_command_8D, $03 : dw !klobber_run_frame11, !klobber_tnt_run_frame11, $0000
	db !animation_command_82 : dw DATA_F9536B
	db !animation_command_80, $00

;$F953CE
klomp_walk:
	db $04 : dw !klomp_walk_frame5
	db !animation_command_84 : dw turn_klomp_if_needed
	db $04 : dw !klomp_walk_frame6
	db $04 : dw !klomp_walk_frame7
	db !animation_command_81 : dw delay_klomp_walk
	db !animation_command_8E : dw sound(5, !sound_knock)
	db $06 : dw !klomp_walk_frame8
	db $05 : dw !klomp_walk_frame9
	db $04 : dw !klomp_walk_frame1
	db $04 : dw !klomp_walk_frame2
	db !animation_command_81 : dw CODE_B9E686
	db $04 : dw !klomp_walk_frame3
	db $04 : dw !klomp_walk_frame4
	db !animation_command_80, $00

;$F953F7
klomp_turn:
	db !animation_command_84 : dw CODE_B9EF22
	db $03 : dw !klomp_turn_frame1
	db $03 : dw !klomp_turn_frame2
	db $03 : dw !klomp_turn_frame3
	db !animation_command_81 : dw CODE_B9E019
	db $03 : dw !klomp_turn_frame3
	db $03 : dw !klomp_turn_frame2
	db $03 : dw !klomp_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $0160
	db !animation_command_80, $00

;$F95416
klomp_death:
	db !animation_command_8E : dw sound(5, !sound_kremling_hit_1)
	db $04 : dw !klomp_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $03 : dw !klomp_hurt_frame2
	db $03 : dw !klomp_hurt_frame3
	db $03 : dw !klomp_hurt_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9542D
kruncha_walk:
	db $04 : dw !kruncha_walk_frame7
	db !animation_command_84 : dw turn_kruncha_if_needed
	db $04 : dw !kruncha_walk_frame8
	db !animation_command_93 : dw sound(5, !sound_knock)
	db $04 : dw !kruncha_walk_frame9
	db $04 : dw !kruncha_walk_frame10
	db $04 : dw !kruncha_walk_frame11
	db $04 : dw !kruncha_walk_frame1
	db $04 : dw !kruncha_walk_frame2
	db $04 : dw !kruncha_walk_frame3
	db !animation_command_93 : dw sound(5, !sound_knock)
	db $04 : dw !kruncha_walk_frame4
	db $04 : dw !kruncha_walk_frame5
	db $04 : dw !kruncha_walk_frame6
	db !animation_command_80, $00

;$F95459
kruncha_turn:
	db !animation_command_84 : dw CODE_B9EF22
	db $03 : dw !kruncha_turn_frame1
	db $03 : dw !kruncha_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $03 : dw !kruncha_turn_frame2
	db $03 : dw !kruncha_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $0172
	db !animation_command_80, $00

;$F95472
kruncha_death:
	db !animation_command_8E : dw sound(5, !sound_kremling_hit_1)
	db $04 : dw !kruncha_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $05 : dw !kruncha_hurt_frame2
	db $05 : dw !kruncha_hurt_frame3
	db $05 : dw !kruncha_hurt_frame4
	db $05 : dw !kruncha_hurt_frame5
	db $05 : dw !kruncha_hurt_frame6
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9548F
kruncha_angry:
	db !animation_command_8E : dw sound(6, !sound_kruncha_angry)
	db !animation_command_84 : dw CODE_B9D891
	db $02 : dw !kruncha_rage_frame1
	db $02 : dw !kruncha_rage_frame2
	db $02 : dw !kruncha_rage_frame3
	db $02 : dw !kruncha_rage_frame4
	db !animation_command_81 : dw CODE_B9E53E
	db $02 : dw !kruncha_rage_frame5
	db $02 : dw !kruncha_rage_frame6
	db $02 : dw !kruncha_rage_frame7
	db $02 : dw !kruncha_rage_frame8
	db $02 : dw !kruncha_rage_frame9
	db $02 : dw !kruncha_rage_frame10
	db $02 : dw !kruncha_rage_frame9
	db $02 : dw !kruncha_rage_frame8
	db $02 : dw !kruncha_rage_frame9
	db $02 : dw !kruncha_rage_frame10
	db $02 : dw !kruncha_rage_frame9
	db $02 : dw !kruncha_rage_frame8
	db $02 : dw !kruncha_rage_frame9
	db $02 : dw !kruncha_rage_frame10
	db $02 : dw !kruncha_rage_frame9
	db $02 : dw !kruncha_rage_frame8
	db $02 : dw !kruncha_rage_frame9
	db $02 : dw !kruncha_rage_frame10
	db $02 : dw !kruncha_rage_frame9
	db $02 : dw !kruncha_rage_frame8
	db $02 : dw !kruncha_rage_frame7
	db $02 : dw !kruncha_rage_frame6
	db $02 : dw !kruncha_rage_frame5
	db $02 : dw !kruncha_rage_frame4
	db $02 : dw !kruncha_rage_frame3
	db $02 : dw !kruncha_rage_frame2
	db $02 : dw !kruncha_rage_frame1
	db !animation_command_90 : dw CODE_B9E575, $0172
	db !animation_command_80, $00

;$F954FC
kruncha_calm:
	db !animation_command_8E : dw sound(5, !sound_knock)
	db !animation_command_84 : dw CODE_B9D891
	db $04 : dw !kruncha_rage_frame1
	db $04 : dw !kruncha_rage_frame2
	db $04 : dw !kruncha_rage_frame3
	db $04 : dw !kruncha_rage_frame4
	db $04 : dw !kruncha_rage_frame5
	db $04 : dw !kruncha_rage_frame6
	db $04 : dw !kruncha_rage_frame7
	db $10 : dw !kruncha_rage_frame8
	db $04 : dw !kruncha_rage_frame7
	db $04 : dw !kruncha_rage_frame6
	db $04 : dw !kruncha_rage_frame5
	db $04 : dw !kruncha_rage_frame4
	db $04 : dw !kruncha_rage_frame3
	db $04 : dw !kruncha_rage_frame2
	db $04 : dw !kruncha_rage_frame1
	db !animation_command_90 : dw CODE_B9E575, $0172
	db !animation_command_80, $00

;$F95536
mini_necky_idle:
	db $04 : dw !mini_necky_idle_frame1
	db $04 : dw !mini_necky_idle_frame2
	db $04 : dw !mini_necky_idle_frame3
	db $04 : dw !mini_necky_idle_frame4
	db $04 : dw !mini_necky_idle_frame5
	db $04 : dw !mini_necky_idle_frame6
	db $04 : dw !mini_necky_idle_frame7
	db $04 : dw !mini_necky_idle_frame8
	db $04 : dw !mini_necky_idle_frame9
	db $04 : dw !mini_necky_idle_frame10
	db $04 : dw !mini_necky_idle_frame11
	db $01 : dw !mini_necky_idle_frame12
	db !animation_command_83 : dw CODE_B9E6AA
	db !animation_command_80, $00

;$F9555F
mini_necky_swoop:
	db $04 : dw !mini_necky_swoop_frame1
	db $04 : dw !mini_necky_swoop_frame2
	db $04 : dw !mini_necky_swoop_frame3
	db $0F : dw !mini_necky_swoop_frame4
	db !animation_command_81 : dw CODE_B9E535
	db !animation_command_8E : dw sound(6, !sound_necky_attack)
	db $04 : dw !mini_necky_swoop_frame5
	db $04 : dw !mini_necky_swoop_frame6
	db $04 : dw !mini_necky_swoop_frame7
	db $04 : dw !mini_necky_swoop_frame8
	db $08 : dw !mini_necky_swoop_frame9
	db !animation_command_83 : dw CODE_B9E69E
	db $08 : dw !mini_necky_swoop_frame10
	db !animation_command_83 : dw CODE_B9E6AA
	db $08 : dw !mini_necky_swoop_frame11
	db $08 : dw !mini_necky_swoop_frame12
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95594
mini_necky_death:
	db !animation_command_8E : dw sound(5, !sound_necky_hit)
	db $04 : dw !mini_necky_hurt_frame1
	db $04 : dw !mini_necky_hurt_frame2
	db $04 : dw !mini_necky_hurt_frame3
	db $04 : dw !mini_necky_hurt_frame4
	db $04 : dw !mini_necky_hurt_frame5
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F955AB
klampon_walk:
	db $03 : dw !klampon_walk_frame10
	db !animation_command_84 : dw !null_pointer
	db $03 : dw !klampon_walk_frame11
	db !animation_command_8E : dw sound(7, !sound_klampon_lockjaw_snap)
	db $03 : dw !klampon_walk_frame1
	db $03 : dw !klampon_walk_frame2
	db $03 : dw !klampon_walk_frame3
	db $03 : dw !klampon_walk_frame4
	db $03 : dw !klampon_walk_frame5
	db $03 : dw !klampon_walk_frame6
	db !animation_command_84 : dw turn_klampon_if_needed
	db $03 : dw !klampon_walk_frame7
	db $03 : dw !klampon_walk_frame8
	db $03 : dw !klampon_walk_frame9
	db !animation_command_80, $00

;$F955D7
klampon_turn:
	db !animation_command_84 : dw CODE_B9EF22
	db $03 : dw !klampon_turn_frame1
	db $02 : dw !klampon_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !klampon_turn_frame2
	db $03 : dw !klampon_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $019F
	db !animation_command_80, $00

;$F955F0
klampon_death:
	db !animation_command_8E : dw sound(5, !sound_kremling_hit_1)
	db $04 : dw !klampon_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $04 : dw !klampon_hurt_frame2
	db $04 : dw !klampon_hurt_frame3
	db $04 : dw !klampon_hurt_frame4
	db $04 : dw !klampon_hurt_frame5
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9560A
klampon_bite:
	db !animation_command_84 : dw CODE_B9EF22
	db !animation_command_8F : dw CODE_B9E6B1, DATA_F95621
	db $03 : dw !klampon_turn_frame1
	db $02 : dw !klampon_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !klampon_turn_frame2
	db $03 : dw !klampon_turn_frame1

DATA_F95621:
	db $03 : dw !klampon_walk_frame10
	db $03 : dw !klampon_walk_frame11
	db !animation_command_8E : dw sound(5, !sound_klampon_lockjaw_bite)
	db $03 : dw !klampon_walk_frame1

DATA_F9562D:
	db $02 : dw !klampon_walk_frame7
	db $02 : dw !klampon_walk_frame8
	db $02 : dw !klampon_walk_frame9
	db $02 : dw !klampon_walk_frame10
	db $02 : dw !klampon_walk_frame11
	db !animation_command_8E : dw sound(5, !sound_klampon_lockjaw_bite)
	db $02 : dw !klampon_walk_frame1
	db $02 : dw !klampon_walk_frame2
	db !animation_command_8F : dw CODE_B9E6C6, DATA_F9562D
	db $04 : dw !klampon_walk_frame3
	db $04 : dw !klampon_walk_frame4
	db $04 : dw !klampon_walk_frame5
	db $04 : dw !klampon_walk_frame6
	db !animation_command_84 : dw turn_klampon_if_needed
	db $04 : dw !klampon_walk_frame7
	db $04 : dw !klampon_walk_frame8
	db $04 : dw !klampon_walk_frame9
	db !animation_command_90 : dw CODE_B9E575, $019F
	db !animation_command_80, $00

;$F95669
spiny_walk:
	db $04 : dw !spiny_walk_frame1
	db !animation_command_84 : dw turn_spiny_if_needed
	db !animation_command_93, $4E, $05
	db $04 : dw !spiny_walk_frame2
	db $04 : dw !spiny_walk_frame3
	db $04 : dw !spiny_walk_frame4
	db !animation_command_93, $4E, $05
	db $04 : dw !spiny_walk_frame5
	db $04 : dw !spiny_walk_frame6
	db $04 : dw !spiny_walk_frame7
	db $04 : dw !spiny_walk_frame8
	db !animation_command_80, $00

;$F9568C
spiny_turn:
	db $04 : dw !spiny_turn_frame1
	db $04 : dw !spiny_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $04 : dw !spiny_turn_frame2
	db $04 : dw !spiny_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $01A3
	db !animation_command_80, $00

;$F956A2
spiny_death:
	db !animation_command_8E : dw sound(5, !sound_knock)
	db $04 : dw !spiny_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $04 : dw !spiny_hurt_frame2
	db $04 : dw !spiny_hurt_frame3
	db $04 : dw !spiny_hurt_frame4
	db $04 : dw !spiny_hurt_frame5
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F956BC
snapjaw_credits:
	db !animation_command_84 : dw set_credits_snapjaw_animation

DATA_F956BF:
	db $04 : dw !lockjaw_idle_frame4
	db $04 : dw !lockjaw_idle_frame5
	db $04 : dw !lockjaw_idle_frame6
	db $04 : dw !lockjaw_idle_frame7
	db $04 : dw !lockjaw_idle_frame8
	db $04 : dw !lockjaw_idle_frame9
	db $04 : dw !lockjaw_idle_frame10
	db $04 : dw !lockjaw_idle_frame11
	db $04 : dw !lockjaw_idle_frame12
	db $04 : dw !lockjaw_idle_frame1
	db $04 : dw !lockjaw_idle_frame2
	db $04 : dw !lockjaw_idle_frame3
	db !animation_command_82 : dw DATA_F956BF
DATA_F956E6:
	db $02 : dw !lockjaw_bite_frame1
	db $02 : dw !lockjaw_bite_frame2
	db $02 : dw !snapjaw_bite_frame1
	db $02 : dw !snapjaw_bite_frame2
	db $10 : dw !snapjaw_bite_frame3
	db !animation_command_8E : dw sound(5, !sound_klampon_lockjaw_bite)
	db $03 : dw !snapjaw_bite_frame4
	db $0C : dw !snapjaw_bite_frame5
	db $03 : dw !snapjaw_bite_frame4
	db !animation_command_82 : dw DATA_F956BF
	db !animation_command_80, $00

;$F95706
lockjaw_swim:
	db $04 : dw !lockjaw_idle_frame4
	db !animation_command_84 : dw turn_lockjaw_if_needed
	db $04 : dw !lockjaw_idle_frame5
	db $04 : dw !lockjaw_idle_frame6
	db $04 : dw !lockjaw_idle_frame7
	db $04 : dw !lockjaw_idle_frame8
	db $04 : dw !lockjaw_idle_frame9
	db $04 : dw !lockjaw_idle_frame10
	db $04 : dw !lockjaw_idle_frame11
	db $04 : dw !lockjaw_idle_frame12
	db $04 : dw !lockjaw_idle_frame1
	db $04 : dw !lockjaw_idle_frame2
	db $04 : dw !lockjaw_idle_frame3
	db !animation_command_80, $00

;$F9572F
lockjaw_turn:
	db $04 : dw !lockjaw_turn_frame1
	db $04 : dw !lockjaw_turn_frame2
	db $04 : dw !lockjaw_turn_frame3
	db $04 : dw !lockjaw_turn_frame4
	db $04 : dw !lockjaw_turn_frame5
	db $04 : dw !lockjaw_turn_frame6
	db $04 : dw !lockjaw_turn_frame7
	db !animation_command_90 : dw CODE_B9E019, $0177
	db !animation_command_80, $00

;$F9574B
lockjaw_chomp_left:
	db !animation_command_8F : dw CODE_B9E6ED, DATA_F95768
	db $04 : dw !lockjaw_turn_frame1
	db $04 : dw !lockjaw_turn_frame2
	db $04 : dw !lockjaw_turn_frame3
	db $04 : dw !lockjaw_turn_frame4
	db $04 : dw !lockjaw_turn_frame5
	db $04 : dw !lockjaw_turn_frame6
	db $04 : dw !lockjaw_turn_frame7
	db !animation_command_81 : dw CODE_B9E019

DATA_F95768:
	db !animation_command_84 : dw CODE_B9E6F4
	db $02 : dw !lockjaw_idle_frame4
	db $02 : dw !lockjaw_idle_frame3
	db $02 : dw !lockjaw_idle_frame2
	db $02 : dw !lockjaw_idle_frame1
	db $02 : dw !lockjaw_idle_frame12
	db $02 : dw !lockjaw_idle_frame11
	db !animation_command_84 : dw !null_pointer
	db $02 : dw !lockjaw_idle_frame10
	db $02 : dw !lockjaw_idle_frame9
	db $02 : dw !lockjaw_idle_frame8
	db !animation_command_84 : dw CODE_B9E6F4
	db $02 : dw !lockjaw_idle_frame7
	db $02 : dw !lockjaw_idle_frame6
	db $02 : dw !lockjaw_idle_frame5
	db !animation_command_82 : dw DATA_F95768

DATA_F95798:
	db $08 : dw !lockjaw_bite_frame1
	db $02 : dw !lockjaw_bite_frame2
	db $03 : dw !lockjaw_bite_frame3
	db $02 : dw !lockjaw_bite_frame2
	db !animation_command_8E : dw sound(5, !sound_klampon_lockjaw_snap)
	db !animation_command_82 : dw DATA_F95798
DATA_F957AA:
	db $01 : dw !lockjaw_bite_frame1
	db $01 : dw !lockjaw_bite_frame2
	db $01 : dw !lockjaw_bite_frame3
	db $01 : dw !lockjaw_bite_frame4
	db $01 : dw !lockjaw_bite_frame5
	db !animation_command_83 : dw CODE_B9E713
	db $06 : dw !lockjaw_bite_frame5
	db !animation_command_8E : dw sound(5, !sound_klampon_lockjaw_bite)
	db $02 : dw !lockjaw_bite_frame6
	db $02 : dw !lockjaw_bite_frame7
	db $0C : dw !lockjaw_bite_frame8
	db !animation_command_81 : dw CODE_B9E720

DATA_F957CE:
	db $04 : dw !lockjaw_idle_frame4
	db $04 : dw !lockjaw_idle_frame3
	db $04 : dw !lockjaw_idle_frame2
	db $04 : dw !lockjaw_idle_frame1
	db $04 : dw !lockjaw_idle_frame12
	db $04 : dw !lockjaw_idle_frame11
	db $04 : dw !lockjaw_idle_frame10
	db $04 : dw !lockjaw_idle_frame9
	db $04 : dw !lockjaw_idle_frame8
	db $04 : dw !lockjaw_idle_frame7
	db $04 : dw !lockjaw_idle_frame6
	db $04 : dw !lockjaw_idle_frame5
	db !animation_command_82 : dw DATA_F957CE
	db !animation_command_80, $00

;$F957F7
lockjaw_death:
	db !animation_command_8E : dw sound(5, !sound_knock)
	db $04 : dw !lockjaw_hurt_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95802
lockjaw_chomp_right:
	db !animation_command_8F : dw CODE_B9E72F, DATA_F9581F
	db $02 : dw !lockjaw_turn_frame1
	db $02 : dw !lockjaw_turn_frame2
	db $02 : dw !lockjaw_turn_frame3
	db $02 : dw !lockjaw_turn_frame4
	db $02 : dw !lockjaw_turn_frame5
	db $02 : dw !lockjaw_turn_frame6
	db $02 : dw !lockjaw_turn_frame7
	db !animation_command_81 : dw CODE_B9E019

DATA_F9581F:
	db !animation_command_8F : dw CODE_B9E73B, DATA_F95842
	db $08 : dw !lockjaw_bite_frame1
	db $02 : dw !lockjaw_bite_frame2
	db $03 : dw !lockjaw_bite_frame3
	db $02 : dw !lockjaw_bite_frame2
	db !animation_command_8E : dw sound(5, !sound_klampon_lockjaw_snap)
	db $08 : dw !lockjaw_bite_frame1
	db $02 : dw !lockjaw_bite_frame2
	db $03 : dw !lockjaw_bite_frame3
	db $02 : dw !lockjaw_bite_frame2
	db !animation_command_8E : dw sound(5, !sound_klampon_lockjaw_snap)

DATA_F95842:
	db !animation_command_90 : dw CODE_B9E53E, $017C
	db !animation_command_80, $00

;$F95849
lockjaw_attack:
	db !animation_command_8F : dw CODE_B9E781, DATA_F95866
	db $02 : dw !lockjaw_turn_frame1
	db $02 : dw !lockjaw_turn_frame2
	db $02 : dw !lockjaw_turn_frame3
	db $02 : dw !lockjaw_turn_frame4
	db $02 : dw !lockjaw_turn_frame5
	db $02 : dw !lockjaw_turn_frame6
	db $02 : dw !lockjaw_turn_frame7
	db !animation_command_81 : dw CODE_B9E019

DATA_F95866:
	db $02 : dw !lockjaw_bite_frame1
	db $02 : dw !lockjaw_bite_frame2
	db $02 : dw !snapjaw_bite_frame1
	db $02 : dw !snapjaw_bite_frame2
	db $02 : dw !snapjaw_bite_frame3
	db !animation_command_83 : dw CODE_B9E794
	db !animation_command_8E : dw sound(5, !sound_klampon_lockjaw_bite)
	db $03 : dw !snapjaw_bite_frame4
	db $0C : dw !snapjaw_bite_frame5
	db $03 : dw !snapjaw_bite_frame4
	db $03 : dw !snapjaw_bite_frame6
	db $03 : dw !snapjaw_bite_frame7
	db !animation_command_8F : dw CODE_B9E73F, ;$F95849
lockjaw_attack
	db !animation_command_90 : dw CODE_B9E53E, $0177
	db !animation_command_80, $00

;$F95896
flotsam_swim:
	db $04 : dw !flotsam_idle_frame2
	db $04 : dw !flotsam_idle_frame3
	db $04 : dw !flotsam_idle_frame4
	db $04 : dw !flotsam_idle_frame5
	db $04 : dw !flotsam_idle_frame6
	db $04 : dw !flotsam_idle_frame7
	db $04 : dw !flotsam_idle_frame8
	db $04 : dw !flotsam_idle_frame9
	db $04 : dw !flotsam_idle_frame10
	db $04 : dw !flotsam_idle_frame11
	db $04 : dw !flotsam_idle_frame12
	db $04 : dw !flotsam_idle_frame1
	db !animation_command_84 : dw turn_flotsam_if_needed
	db !animation_command_80, $00

;$F958BF
flotsam_turn:
	db !animation_command_84 : dw CODE_B9EF22
	db $04 : dw !flotsam_turn_frame1
	db $04 : dw !flotsam_turn_frame2
	db $04 : dw !flotsam_turn_frame3
	db $04 : dw !flotsam_turn_frame4
	db !animation_command_81 : dw CODE_B9E7E4
	db $04 : dw !flotsam_turn_frame5
	db $04 : dw !flotsam_turn_frame6
	db $04 : dw !flotsam_turn_frame7
	db !animation_command_81 : dw CODE_B9E7F2
	db $04 : dw !flotsam_idle_frame1
	db !animation_command_90 : dw CODE_B9E575, $01A9
	db !animation_command_80, $00

;$F958E7
flotsam_death:
	db !animation_command_8E : dw sound(5, !sound_knock)
	db $04 : dw !flotsam_hurt_frame1
	db $04 : dw !flotsam_hurt_frame2
	db $04 : dw !flotsam_hurt_frame3
	db $04 : dw !flotsam_hurt_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F958FB
shuri_idle:
	db $07 : dw !shuri_idle_frame1
	db $07 : dw !shuri_idle_frame2
	db $07 : dw !shuri_idle_frame3
	db $07 : dw !shuri_idle_frame4
	db $07 : dw !shuri_idle_frame5
	db $07 : dw !shuri_idle_frame6
	db $07 : dw !shuri_idle_frame7
	db $07 : dw !shuri_idle_frame8
	db !animation_command_80, $00

;$F95915
shuri_spin:
	db !animation_command_8E : dw sound(5, !sound_shuri_spin)
	db $03 : dw !shuri_spin_frame1
	db $03 : dw !shuri_spin_frame2
	db $03 : dw !shuri_spin_frame3
	db $03 : dw !shuri_spin_frame4
	db $03 : dw !shuri_spin_frame5
	db $03 : dw !shuri_spin_frame6
	db $03 : dw !shuri_spin_frame7
	db $03 : dw !shuri_spin_frame8
	db $03 : dw !shuri_spin_frame9
	db $03 : dw !shuri_spin_frame10
	db $03 : dw !shuri_spin_frame11
	db $03 : dw !shuri_spin_frame12
	db $03 : dw !shuri_spin_frame13
	db $03 : dw !shuri_spin_frame14
	db !animation_command_84 : dw CODE_B9E80C
	db !animation_command_80, $00

;$F95947
shuri_death:
	db !animation_command_8E : dw sound(5, !sound_barrel_blast)
	db $04 : dw !shuri_hurt_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95952
kaboing_jump:
	db $01 : dw !kaboing_idle_frame1
	db !animation_command_84 : dw CODE_B9E816

DATA_F95958:
	db $04 : dw !kaboing_idle_frame1
	db $04 : dw !kaboing_idle_frame2
	db $04 : dw !kaboing_idle_frame3
	db $04 : dw !kaboing_idle_frame2
	db $04 : dw !kaboing_idle_frame1
	db $04 : dw !kaboing_jump_frame5
	db !animation_command_82 : dw DATA_F95958

DATA_F9596D:
	db $02 : dw !kaboing_jump_frame6
	db $02 : dw !kaboing_jump_frame7
	db !animation_command_81 : dw CODE_B9E825
	db $02 : dw !kaboing_jump_frame8
	db $02 : dw !kaboing_jump_frame9
	db $02 : dw !kaboing_jump_frame10
	db $02 : dw !kaboing_jump_frame11
	db $02 : dw !kaboing_jump_frame12
	db $24 : dw !kaboing_jump_frame13
	db $03 : dw !kaboing_jump_frame12
	db $03 : dw !kaboing_jump_frame11
	db $03 : dw !kaboing_jump_frame10
	db $03 : dw !kaboing_jump_frame9
	db $02 : dw !kaboing_jump_frame8
	db !animation_command_83 : dw CODE_B9E55D
	db !animation_command_8F : dw CODE_B9E860, DATA_F959BD
	db $03 : dw !kaboing_jump_frame7
	db $03 : dw !kaboing_jump_frame6
	db $03 : dw !kaboing_jump_frame5
	db $03 : dw !kaboing_idle_frame1
	db $03 : dw !kaboing_idle_frame2
	db $03 : dw !kaboing_idle_frame3
	db $03 : dw !kaboing_idle_frame2
	db $03 : dw !kaboing_idle_frame1
	db $03 : dw !kaboing_jump_frame5
	db !animation_command_82 : dw DATA_F9596D

DATA_F959BD:
	db $02 : dw !kaboing_turn_frame1
	db $02 : dw !kaboing_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !kaboing_turn_frame2
	db $02 : dw !kaboing_turn_frame1
	db $03 : dw !kaboing_jump_frame3
	db $04 : dw !kaboing_jump_frame4
	db $03 : dw !kaboing_idle_frame2
	db $03 : dw !kaboing_idle_frame3
	db $03 : dw !kaboing_idle_frame2
	db $03 : dw !kaboing_idle_frame1
	db !animation_command_82 : dw DATA_F9596D
	db !animation_command_80, $00

;$F959E3
kaboing_jump_2:
	db $04 : dw !kaboing_jump_frame1
	db $04 : dw !kaboing_jump_frame2
	db $04 : dw !kaboing_jump_frame3
	db $04 : dw !kaboing_jump_frame4

DATA_F959EF:
	db $02 : dw !kaboing_jump_frame5
	db $02 : dw !kaboing_jump_frame6
	db $02 : dw !kaboing_jump_frame7
	db !animation_command_81 : dw CODE_B9E825
	db $02 : dw !kaboing_jump_frame8
	db $02 : dw !kaboing_jump_frame9
	db $02 : dw !kaboing_jump_frame10
	db $02 : dw !kaboing_jump_frame11
	db $02 : dw !kaboing_jump_frame12
	db $24 : dw !kaboing_jump_frame13
	db $03 : dw !kaboing_jump_frame12
	db $03 : dw !kaboing_jump_frame11
	db $03 : dw !kaboing_jump_frame10
	db $03 : dw !kaboing_jump_frame9
	db $02 : dw !kaboing_jump_frame8
	db !animation_command_83 : dw CODE_B9E55D
	db !animation_command_8F : dw CODE_B9E860, DATA_F95A33
	db $04 : dw !kaboing_jump_frame7
	db $04 : dw !kaboing_jump_frame6
	db $03 : dw !kaboing_jump_frame5
	db $05 : dw !kaboing_jump_frame4
	db !animation_command_82 : dw DATA_F959EF

DATA_F95A33:
	db $02 : dw !kaboing_turn_frame1
	db $02 : dw !kaboing_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $02 : dw !kaboing_turn_frame2
	db $02 : dw !kaboing_turn_frame1
	db $03 : dw !kaboing_jump_frame3
	db $05 : dw !kaboing_jump_frame4
	db !animation_command_82 : dw DATA_F959EF
	db !animation_command_80, $00

;$F95A4D
kaboing_death:
	db !animation_command_8E : dw sound(5, !sound_kremling_hit_1)
	db $04 : dw !kaboing_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $05 : dw !kaboing_hurt_frame2
	db $05 : dw !kaboing_hurt_frame3
	db $05 : dw !kaboing_hurt_frame4
	db $05 : dw !kaboing_hurt_frame5
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95A67
zinger_idle:
	db $03 : dw !zinger_idle_frame1
	db $03 : dw !zinger_idle_frame2
	db $03 : dw !zinger_idle_frame3
	db $03 : dw !zinger_idle_frame4
	db $03 : dw !zinger_idle_frame5
	db $03 : dw !zinger_idle_frame6
	db $03 : dw !zinger_idle_frame7
	db $03 : dw !zinger_idle_frame8
	db !animation_command_80, $00

;$F95A81
zinger_horizontal:
	db $03 : dw !zinger_idle_frame1
	db !animation_command_84 : dw CODE_B9E87E
	db $03 : dw !zinger_idle_frame2
	db $03 : dw !zinger_idle_frame3
	db $03 : dw !zinger_idle_frame4
	db $03 : dw !zinger_idle_frame5
	db $03 : dw !zinger_idle_frame6
	db $03 : dw !zinger_idle_frame7
	db $03 : dw !zinger_idle_frame8
	db !animation_command_80, $00

;$F95A9E
zinger_turn:
	db $04 : dw !zinger_turn_frame1
	db $03 : dw !zinger_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $03 : dw !zinger_turn_frame2
	db $04 : dw !zinger_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $0196
	db !animation_command_80, $00

;$F95AB4
zinger_death:
	db !animation_command_8E : dw sound(5, !sound_zinger_flitter_hit)
	db $04 : dw !zinger_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $05 : dw !zinger_hurt_frame2
	db $05 : dw !zinger_hurt_frame3
	db $05 : dw !zinger_hurt_frame4
	db $05 : dw !zinger_hurt_frame5
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95ACE
king_zing_chase:
	db $03 : dw !king_zing_idle_frame1
	db !animation_command_84 : dw CODE_B9E887
	db $03 : dw !king_zing_idle_frame2
	db $03 : dw !king_zing_idle_frame3
	db $03 : dw !king_zing_idle_frame4
	db $03 : dw !king_zing_idle_frame5
	db $03 : dw !king_zing_idle_frame6
	db $03 : dw !king_zing_idle_frame7
	db $03 : dw !king_zing_idle_frame8
	db !animation_command_80, $00

;$F95AEB
king_zing_chase_turn:
	db $04 : dw !king_zing_turn_frame1
	db $03 : dw !king_zing_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $03 : dw !king_zing_turn_frame2
	db $04 : dw !king_zing_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $02DB
	db !animation_command_80, $00

;$F95B01
flitter_idle:
	db $03 : dw !flitter_idle_frame1
	db $03 : dw !flitter_idle_frame2
	db $03 : dw !flitter_idle_frame3
	db $03 : dw !flitter_idle_frame4
	db $03 : dw !flitter_idle_frame5
	db $03 : dw !flitter_idle_frame6
	db $03 : dw !flitter_idle_frame7
	db $03 : dw !flitter_idle_frame8
	db !animation_command_80, $00

;$F95B1B
flitter_horizontal:
	db $03 : dw !flitter_idle_frame1
	db !animation_command_84 : dw CODE_B9E8E3
	db $03 : dw !flitter_idle_frame2
	db $03 : dw !flitter_idle_frame3
	db $03 : dw !flitter_idle_frame4
	db $03 : dw !flitter_idle_frame5
	db $03 : dw !flitter_idle_frame6
	db $03 : dw !flitter_idle_frame7
	db $03 : dw !flitter_idle_frame8
	db !animation_command_80, $00

;$F95B38
flitter_turn:
	db $02 : dw !flitter_turn_frame1
	db $02 : dw !flitter_turn_frame2
	db $02 : dw !flitter_turn_frame3
	db $02 : dw !flitter_turn_frame4
	db $02 : dw !flitter_turn_frame5
	db $02 : dw !flitter_turn_frame6
	db $02 : dw !flitter_turn_frame7
	db $02 : dw !flitter_turn_frame8
	db !animation_command_90 : dw CODE_B9E019, $019A
	db !animation_command_80, $00

;$F95B57
flitter_death:
	db !animation_command_8E : dw sound(5, !sound_zinger_flitter_hit)
	db $02 : dw !flitter_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $02 : dw !flitter_hurt_frame2

DATA_F95B63:
	db $02 : dw !flitter_hurt_frame3
	db $02 : dw !flitter_hurt_frame4
	db $02 : dw !flitter_hurt_frame5
	db $02 : dw !flitter_hurt_frame6
	db $02 : dw !flitter_hurt_frame7
	db !animation_command_82 : dw DATA_F95B63
	db !animation_command_80, $00

;$F95B77
DATA_F95B77:
	db $04 : dw !klinger_climb_frame1
	db $04 : dw !klinger_climb_frame2
	db $04 : dw !klinger_climb_frame3
	db $04 : dw !klinger_climb_frame4
	db $04 : dw !klinger_climb_frame5
	db $04 : dw !klinger_climb_frame6
	db $04 : dw !klinger_climb_frame7
	db $04 : dw !klinger_climb_frame8
	db !animation_command_90 : dw CODE_B9E575, $01A6
	db !animation_command_80, $00

;$F95B96
klinger_idle:
	db $04 : dw !klinger_climb_frame9

DATA_F95B99:
	db !animation_command_8F : dw CODE_B9E902, DATA_F95BE3
	db !animation_command_81 : dw CODE_B9E8F4
	db !animation_command_84 : dw CODE_B9E8EC
	db $04 : dw !klinger_climb_frame10
	db $04 : dw !klinger_climb_frame11
	db $04 : dw !klinger_climb_frame12
	db $04 : dw !klinger_climb_frame13
	db !animation_command_81 : dw CODE_B9E8F1
	db $04 : dw !klinger_climb_frame14
	db $04 : dw !klinger_climb_frame15
	db $04 : dw !klinger_climb_frame16
	db $04 : dw !klinger_climb_frame1
	db !animation_command_81 : dw CODE_B9E8FD
	db $04 : dw !klinger_climb_frame2
	db $04 : dw !klinger_climb_frame3
	db $04 : dw !klinger_climb_frame4
	db $04 : dw !klinger_climb_frame5
	db !animation_command_81 : dw CODE_B9E8F1
	db $04 : dw !klinger_climb_frame6
	db $04 : dw !klinger_climb_frame7
	db $04 : dw !klinger_climb_frame8
	db !animation_command_84 : dw !null_pointer
	db $04 : dw !klinger_climb_frame9
	db !animation_command_82 : dw DATA_F95B99

DATA_F95BE3:
	db $04 : dw !klinger_slide_frame1
	db $04 : dw !klinger_slide_frame2
	db !animation_command_8E : dw sound(6, !sound_klinger_slide)
	db $04 : dw !klinger_slide_frame3
	db $04 : dw !klinger_slide_frame4
	db !animation_command_84 : dw CODE_B9E913

DATA_F95BF5:
	db !animation_command_8F : dw CODE_B9E909, DATA_F95C18
	db $04 : dw !klinger_slide_frame5
	db !animation_command_8F : dw CODE_B9E909, DATA_F95C18
	db $04 : dw !klinger_slide_frame6
	db !animation_command_8F : dw CODE_B9E909, DATA_F95C18
	db $04 : dw !klinger_slide_frame7
	db !animation_command_8F : dw CODE_B9E909, DATA_F95C18
	db $04 : dw !klinger_slide_frame8
	db !animation_command_82 : dw DATA_F95BF5

DATA_F95C18:
	db $04 : dw !klinger_slide_frame4
	db $04 : dw !klinger_slide_frame3
	db $04 : dw !klinger_slide_frame2
	db $04 : dw !klinger_slide_frame1
	db !animation_command_80, $00

;$F95C26
klinger_death:
	db !animation_command_8E : dw sound(5, !sound_kremling_hit_2)
	db $04 : dw !klinger_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $06 : dw !klinger_hurt_frame2
	db $06 : dw !klinger_hurt_frame3
	db $06 : dw !klinger_hurt_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95C3D
kannon_death:
	db !animation_command_8E : dw sound(5, !sound_kremling_hit_1)
	db $04 : dw !kannon_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $04 : dw !kannon_hurt_frame2
	db $04 : dw !kannon_hurt_frame3
	db $04 : dw !kannon_hurt_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95C54
kannon_shoot_horizontal:
	db $01 : dw !kannon_hurt_frame5
	db !animation_command_83 : dw CODE_B9E958
	db !animation_command_81 : dw CODE_B9E937
	db $02 : dw !kannon_shoot_frame1
	db $02 : dw !kannon_shoot_frame2
	db $02 : dw !kannon_shoot_frame3
	db $02 : dw !kannon_shoot_frame4
	db $02 : dw !kannon_shoot_frame5
	db $04 : dw !kannon_shoot_frame6
	db !animation_command_84 : dw CODE_B9EF22
	db $03 : dw !kannon_shoot_frame5
	db $03 : dw !kannon_shoot_frame4
	db $03 : dw !kannon_shoot_frame3
	db !animation_command_84 : dw !null_pointer
	db $04 : dw !kannon_walk_frame1
	db $04 : dw !kannon_walk_frame2
	db $04 : dw !kannon_walk_frame3
	db $03 : dw !kannon_shoot_frame2
	db $03 : dw !kannon_shoot_frame1
	db !animation_command_80, $00

;$F95C8F
kannon_shoot_down:
	db $01 : dw !kannon_shoot_down_frame1
	db !animation_command_83 : dw CODE_B9E958
	db !animation_command_81 : dw CODE_B9E950
	db $06 : dw !kannon_shoot_down_frame1
	db $02 : dw !kannon_shoot_down_frame2
	db $02 : dw !kannon_shoot_down_frame3
	db $02 : dw !kannon_shoot_down_frame4
	db $02 : dw !kannon_shoot_down_frame5
	db $04 : dw !kannon_shoot_down_frame6
	db $03 : dw !kannon_shoot_down_frame5
	db $03 : dw !kannon_shoot_down_frame4
	db $03 : dw !kannon_shoot_down_frame3
	db $03 : dw !kannon_shoot_down_frame2
	db !animation_command_80, $00

;$F95CB8
smoke_cloud_2:
	db $04 : dw !smoke_puff_3_frame1
	db $04 : dw !smoke_puff_3_frame2
	db $04 : dw !smoke_puff_3_frame3
	db $04 : dw !smoke_puff_3_frame4
	db $04 : dw !smoke_puff_3_frame5
	db $04 : dw !smoke_puff_3_frame6
	db $04 : dw !smoke_puff_3_frame7
	db $04 : dw !smoke_puff_3_frame8
	db $04 : dw !smoke_puff_3_frame9
	db $03 : dw !smoke_puff_3_frame10
	db $03 : dw !smoke_puff_3_frame11
	db $03 : dw !smoke_puff_3_frame12
	db $03 : dw !smoke_puff_3_frame13
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F95CE4
DATA_F95CE4:
	db $04 : dw !unknown_2030_frame1
	db $04 : dw !unknown_2030_frame2
	db $04 : dw !unknown_2030_frame3
	db $04 : dw !unknown_2030_frame4
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F95CF5
lava_splash:
	db $04 : dw !lava_smoke_puff_frame1
	db $04 : dw !lava_smoke_puff_frame2
	db $04 : dw !lava_smoke_puff_frame3
	db $04 : dw !lava_smoke_puff_frame4
	db $04 : dw !lava_smoke_puff_frame5
	db $04 : dw !lava_smoke_puff_frame6
	db $04 : dw !lava_smoke_puff_frame7
	db $04 : dw !lava_smoke_puff_frame8
	db $04 : dw !lava_smoke_puff_frame9
	db $04 : dw !lava_smoke_puff_frame10
	db $04 : dw !lava_smoke_puff_frame11
	db $04 : dw !lava_smoke_puff_frame12
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F95D1E
life_balloon_idle:
	db !animation_command_81 : dw CODE_B9E96E
DATA_F95D21:
	db $04 : dw !life_balloon_frame1
	db $04 : dw !life_balloon_frame2
	db $04 : dw !life_balloon_frame3
	db $04 : dw !life_balloon_frame4
	db $04 : dw !life_balloon_frame5
	db $04 : dw !life_balloon_frame6
	db $04 : dw !life_balloon_frame7
	db $04 : dw !life_balloon_frame8
	db !animation_command_82 : dw DATA_F95D21
	db !animation_command_80, $00

;$F95D3E
kutlass_walk:
	db $02 : dw !kutlass_walk_frame8
	db !animation_command_84 : dw turn_kutlass_if_needed
	db $02 : dw !kutlass_walk_frame8
	db $04 : dw !kutlass_walk_frame1
	db $04 : dw !kutlass_walk_frame2
	db !animation_command_84 : dw !null_pointer
	db $04 : dw !kutlass_walk_frame3
	db $04 : dw !kutlass_walk_frame4
	db $04 : dw !kutlass_walk_frame5
	db $04 : dw !kutlass_walk_frame6
	db $04 : dw !kutlass_walk_frame7
	db !animation_command_80, $00

;$F95D61
kutlass_turn:
	db $03 : dw !kutlass_turn_frame1
	db $03 : dw !kutlass_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $03 : dw !kutlass_turn_frame2
	db $03 : dw !kutlass_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $0169
	db !animation_command_80, $00

;$F95D77
kutlass_chase_turn:
	db $03 : dw !kutlass_turn_frame1
	db $03 : dw !kutlass_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $03 : dw !kutlass_turn_frame2
	db $03 : dw !kutlass_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $016C
	db !animation_command_80, $00

;$F95D8D
kutlass_chase_run:
	db !animation_command_81 : dw CODE_B9E978

DATA_F95D90:
	db $02 : dw !kutlass_walk_frame2
	db $02 : dw !kutlass_walk_frame3
	db $02 : dw !kutlass_walk_frame4
	db $02 : dw !kutlass_walk_frame5
	db $02 : dw !kutlass_walk_frame6
	db $02 : dw !kutlass_walk_frame7
	db $02 : dw !kutlass_walk_frame8
	db $02 : dw !kutlass_walk_frame1
	db !animation_command_82 : dw DATA_F95D90
	db !animation_command_80, $00

;$F95DAD
kutlass_attack:
	db $03 : dw !kutlass_attack_frame1
	db $03 : dw !kutlass_attack_frame2
	db $03 : dw !kutlass_attack_frame3
	db $03 : dw !kutlass_attack_frame4
	db $03 : dw !kutlass_attack_frame5
	db $03 : dw !kutlass_attack_frame6
	db $03 : dw !kutlass_attack_frame7
	db $03 : dw !kutlass_attack_frame8
	db $03 : dw !kutlass_attack_frame9
	db $03 : dw !kutlass_attack_frame10
	db !animation_command_8E : dw sound(5, !sound_blade_swing)
	db $03 : dw !kutlass_attack_frame11
	db $03 : dw !kutlass_attack_frame12
	db $03 : dw !kutlass_attack_frame13
	db !animation_command_81 : dw CODE_B9E535
	db !animation_command_8E : dw sound(5, !sound_blade_swing)
	db !animation_command_81 : dw CODE_B9D891
	db $06 : dw !kutlass_attack_frame14
	db !animation_command_81 : dw CODE_B9E535
	db !animation_command_8F : dw CODE_B9E9B0, DATA_F95E0E

DATA_F95DEB:
	db !animation_command_8F : dw CODE_B9E9BD, DATA_F95DFF
	db $06 : dw !kutlass_attack_frame14
	db $04 : dw !kutlass_attack_frame15
	db $12 : dw !kutlass_attack_frame16
	db $04 : dw !kutlass_attack_frame15
	db !animation_command_82 : dw DATA_F95DEB

DATA_F95DFF:
	db $14 : dw !kutlass_attack_frame14
	db $04 : dw !kutlass_attack_frame15
	db $06 : dw !kutlass_attack_frame16
	db $04 : dw !kutlass_attack_frame15
	db $04 : dw !kutlass_attack_frame14

DATA_F95E0E:
	db $04 : dw !kutlass_attack_frame15
	db $04 : dw !kutlass_attack_frame16
	db $03 : dw !kutlass_attack_frame17
	db $03 : dw !kutlass_attack_frame18
	db $03 : dw !kutlass_attack_frame19
	db $03 : dw !kutlass_attack_frame20
	db $06 : dw !kutlass_attack_frame21
	db $04 : dw !kutlass_attack_frame3
	db $04 : dw !kutlass_attack_frame2
	db $04 : dw !kutlass_attack_frame1
	db !animation_command_90 : dw CODE_B9E535, $0169
	db !animation_command_80, $00

;$F95E33
kutlass_death:
	db !animation_command_8E : dw sound(5, !sound_kremling_hit_1)
	db $04 : dw !kutlass_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $04 : dw !kutlass_hurt_frame2
	db $04 : dw !kutlass_hurt_frame3
	db $04 : dw !kutlass_hurt_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95E4A
krook_idle:
	db $08 : dw !krook_attack_frame1
	db $08 : dw !krook_idle_frame1
	db $08 : dw !krook_idle_frame2
	db $08 : dw !krook_idle_frame1
	db !animation_command_80, $00

;$F95E58
krook_walk:
	db !animation_command_84 : dw !null_pointer
	db $04 : dw !krook_walk_frame5
	db $04 : dw !krook_walk_frame6
	db $04 : dw !krook_walk_frame7
	db !animation_command_84 : dw turn_krook_if_needed
	db $04 : dw !krook_walk_frame8
	db $04 : dw !krook_walk_frame9
	db $04 : dw !krook_walk_frame10
	db !animation_command_84 : dw !null_pointer
	db $04 : dw !krook_walk_frame11
	db $04 : dw !krook_walk_frame1
	db $04 : dw !krook_walk_frame2
	db !animation_command_84 : dw turn_krook_if_needed
	db $04 : dw !krook_walk_frame3
	db $04 : dw !krook_walk_frame4
	db !animation_command_80, $00

;$F95E87
krook_turn:
	db $04 : dw !krook_turn_frame1
	db $04 : dw !krook_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $04 : dw !krook_turn_frame2
	db $04 : dw !krook_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $01EE
	db !animation_command_80, $00

;$F95E9D
krook_turn_throw:
	db $03 : dw !krook_turn_frame1
	db $03 : dw !krook_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $03 : dw !krook_turn_frame2
	db $03 : dw !krook_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $01F1
	db !animation_command_80, $00

;$F95EB3
krook_throw:
	db $03 : dw !krook_attack_frame1
	db $03 : dw !krook_attack_frame2
	db $03 : dw !krook_attack_frame3
	db $03 : dw !krook_attack_frame4
	db $03 : dw !krook_attack_frame5
	db $03 : dw !krook_attack_frame6
	db $03 : dw !krook_attack_frame7
	db $03 : dw !krook_attack_frame8
	db $03 : dw !krook_attack_frame9
	db $03 : dw !krook_attack_frame10
	db $03 : dw !krook_attack_frame11
	db $03 : dw !krook_attack_frame12
	db $03 : dw !krook_attack_frame13
	db !animation_command_81 : dw spawn_krooks_hook
	db !animation_command_84 : dw CODE_B9E9E1

DATA_F95EE0:
	db !animation_command_8E : dw sound(5, !sound_dixie_bubble)
	db $04 : dw !krook_attack_frame14
	db $04 : dw !krook_attack_frame15
	db $04 : dw !krook_attack_frame16
	db $04 : dw !krook_attack_frame15
	db !animation_command_82 : dw DATA_F95EE0
DATA_F95EF2:
	db !animation_command_8E : dw sound(5, !sound_knock)
	db $04 : dw !krook_attack_frame17
	db $04 : dw !krook_attack_frame18
	db $04 : dw !krook_attack_frame19
	db !animation_command_81 : dw CODE_B9E535
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95F06
krook_death:
	db !animation_command_8E : dw sound(5, !sound_kremling_hit_2)
	db $06 : dw !krook_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $06 : dw !krook_hurt_frame2
	db $06 : dw !krook_hurt_frame3
	db $06 : dw !krook_hurt_frame4
	db $06 : dw !krook_hurt_frame5
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95F20
krook_thrown_hook:
	db $02 : dw !krook_hook_frame1
	db $02 : dw !krook_hook_frame2
	db $02 : dw !krook_hook_frame3
	db $02 : dw !krook_hook_frame4
	db $02 : dw !krook_hook_frame5
	db $02 : dw !krook_hook_frame6
	db $02 : dw !krook_hook_frame7
	db $02 : dw !krook_hook_frame8
	db $02 : dw !krook_hook_frame9
	db $02 : dw !krook_hook_frame10
	db !animation_command_80, $00

;$F95F40
puftup_swim:
	db $04 : dw !puftup_idle_frame1
	db $04 : dw !puftup_idle_frame2
	db $04 : dw !puftup_idle_frame3
	db $04 : dw !puftup_idle_frame4
	db $04 : dw !puftup_idle_frame5
	db $04 : dw !puftup_idle_frame6
	db $04 : dw !puftup_idle_frame7
	db $04 : dw !puftup_idle_frame8
	db $04 : dw !puftup_idle_frame9
	db $04 : dw !puftup_idle_frame10
	db $04 : dw !puftup_idle_frame11
	db $04 : dw !puftup_idle_frame12
	db $04 : dw !puftup_idle_frame13
	db !animation_command_80, $00

;$F95F69
puftup_turn_inflate:
	db $04 : dw !puftup_turn_frame1
	db $04 : dw !puftup_turn_frame2
	db $04 : dw !puftup_turn_frame3
	db $04 : dw !puftup_turn_frame4
	db $04 : dw !puftup_turn_frame5
	db $04 : dw !puftup_turn_frame6
	db !animation_command_90 : dw CODE_B9E019, $0186
	db !animation_command_80, $00

;$F95F82
puftup_turn_deflate:
	db $02 : dw !puftup_inflate_frame11
	db $02 : dw !puftup_inflate_frame10
	db $02 : dw !puftup_inflate_frame9
	db $02 : dw !puftup_inflate_frame8
	db $02 : dw !puftup_inflate_frame7
	db $02 : dw !puftup_inflate_frame6
	db $02 : dw !puftup_inflate_frame5
	db $02 : dw !puftup_inflate_frame4
	db $02 : dw !puftup_inflate_frame3
	db $02 : dw !puftup_inflate_frame2
	db $02 : dw !puftup_inflate_frame1
	db $04 : dw !puftup_turn_frame1
	db $04 : dw !puftup_turn_frame2
	db $04 : dw !puftup_turn_frame3
	db $04 : dw !puftup_turn_frame4
	db $04 : dw !puftup_turn_frame5
	db $04 : dw !puftup_turn_frame6
	db !animation_command_90 : dw CODE_B9E019, $0183
	db !animation_command_80, $00

;$F95FBC
puftup_inflate:
	db $04 : dw !puftup_inflate_frame1
	db !animation_command_8E : dw sound(5, !sound_puftup_inflate)
	db $04 : dw !puftup_inflate_frame2
	db $04 : dw !puftup_inflate_frame3
	db $04 : dw !puftup_inflate_frame4
	db $04 : dw !puftup_inflate_frame5
	db $04 : dw !puftup_inflate_frame6
	db $04 : dw !puftup_inflate_frame7
	db $04 : dw !puftup_inflate_frame8
	db $04 : dw !puftup_inflate_frame9
	db $04 : dw !puftup_inflate_frame10
	db $04 : dw !puftup_inflate_frame11
	db $04 : dw !puftup_inflate_frame12
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F95FE8
puftup_deflate:
	db $04 : dw !puftup_inflate_frame11
	db $04 : dw !puftup_inflate_frame10
	db $04 : dw !puftup_inflate_frame9
	db $04 : dw !puftup_inflate_frame8
	db $04 : dw !puftup_inflate_frame7
	db $04 : dw !puftup_inflate_frame6
	db $04 : dw !puftup_inflate_frame5
	db $04 : dw !puftup_inflate_frame4
	db $04 : dw !puftup_inflate_frame3
	db $04 : dw !puftup_inflate_frame2
	db $04 : dw !puftup_inflate_frame1
	db !animation_command_90 : dw CODE_B9E575, $0183
	db !animation_command_80, $00

;$F96010
puftup_explode:
	db $02 : dw !puftup_inflate_frame11
	db $02 : dw !puftup_inflate_frame10
	db $04 : dw !puftup_inflate_frame9
	db $02 : dw !puftup_inflate_frame10
	db $02 : dw !puftup_inflate_frame11
	db $02 : dw !puftup_inflate_frame12
	db !animation_command_8F : dw CODE_B9E9EF, ;$F96010
puftup_explode

DATA_F96027:
	db $02 : dw !puftup_inflate_frame10
	db $02 : dw !puftup_inflate_frame11
	db $02 : dw !puftup_inflate_frame12
	db !animation_command_8F : dw CODE_B9E9FA, DATA_F96027
	db !animation_command_81 : dw CODE_B9E535
	db !animation_command_8E : dw sound(6, !sound_puftup_burst)
	db $08 : dw !puftup_inflate_frame1
	db !animation_command_80, $00

;$F96040
puftup_death:
	db !animation_command_8E : dw sound(5, !sound_barrel_blast)
	db $03 : dw !puftup_hurt_frame1
	db $03 : dw !puftup_hurt_frame2
	db $03 : dw !puftup_hurt_frame3
	db $03 : dw !puftup_hurt_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F96054
puftup_spike:
	db $04 : dw $01F8
	db $04 : dw $01FC
	db $04 : dw $0200
	db $04 : dw $0204
	db $04 : dw $0208
	db $04 : dw $020C
	db $04 : dw $0210
	db $04 : dw $0214
	db !animation_command_80, $00

;$F9606E
cat_o_9_tails_idle:
	db $04 : dw !cat_o_9_tails_idle_frame1
	db $04 : dw !cat_o_9_tails_idle_frame2
	db !animation_command_81 : dw CODE_B9EA2F
	db $03 : dw !cat_o_9_tails_idle_frame3
	db $02 : dw !cat_o_9_tails_idle_frame4
	db $02 : dw !cat_o_9_tails_idle_frame5
	db $02 : dw !cat_o_9_tails_idle_frame6
	db $04 : dw !cat_o_9_tails_idle_frame7
	db $04 : dw !cat_o_9_tails_idle_frame8
	db $04 : dw !cat_o_9_tails_idle_frame9
	db !animation_command_81 : dw spawn_cat_o9_tails_dizzy_stars
	db !animation_command_81 : dw CODE_B9EA32
	db $30 : dw !cat_o_9_tails_idle_frame10
	db $04 : dw !cat_o_9_tails_idle_frame11
	db $04 : dw !cat_o_9_tails_idle_frame12
	db !animation_command_91, sprite.general_purpose_50 : dw DATA_F9EA59
	db !animation_command_91, sprite.general_purpose_50 : dw DATA_F9EA59
	db !animation_command_91, sprite.general_purpose_50 : dw DATA_F9EA6D
	db $04 : dw !cat_o_9_tails_idle_frame13
	db $04 : dw !cat_o_9_tails_idle_frame12
	db $04 : dw !cat_o_9_tails_idle_frame11
	db $20 : dw !cat_o_9_tails_idle_frame10
	db $04 : dw !cat_o_9_tails_idle_frame11
	db $04 : dw !cat_o_9_tails_idle_frame12
	db !animation_command_91, sprite.general_purpose_50 : dw DATA_F9EA59
	db $08 : dw !cat_o_9_tails_idle_frame14
	db !animation_command_91, sprite.general_purpose_50 : dw DATA_F9EA59
	db $08 : dw !cat_o_9_tails_idle_frame14
	db !animation_command_91, sprite.general_purpose_50 : dw DATA_F9EA59
	db !animation_command_91, sprite.general_purpose_50 : dw DATA_F9EA6D
	db !animation_command_91, sprite.general_purpose_50 : dw DATA_F9EA6D
	db $04 : dw !cat_o_9_tails_idle_frame13
	db $04 : dw !cat_o_9_tails_idle_frame12
	db $04 : dw !cat_o_9_tails_idle_frame11
	db $20 : dw !cat_o_9_tails_idle_frame10
	db $03 : dw !cat_o_9_tails_idle_frame9
	db $03 : dw !cat_o_9_tails_idle_frame8
	db !animation_command_81 : dw CODE_B9EA2F
	db $03 : dw !cat_o_9_tails_idle_frame7
	db $03 : dw !cat_o_9_tails_idle_frame6
	db $03 : dw !cat_o_9_tails_idle_frame5
	db $03 : dw !cat_o_9_tails_idle_frame4
	db $03 : dw !cat_o_9_tails_idle_frame3
	db $03 : dw !cat_o_9_tails_idle_frame2
	db !animation_command_81 : dw CODE_B9EA38
	db $03 : dw !cat_o_9_tails_idle_frame1
	db !animation_command_84 : dw CODE_B9EA07

DATA_F96103:
	db !animation_command_91, sprite.general_purpose_50 : dw DATA_F9EA81
	db !animation_command_8F : dw CODE_B9EA29, DATA_F96103
	db !animation_command_90 : dw CODE_B9E575, $018B
	db !animation_command_80, $00

;$F96113
cat_o_9_tails_chase:
	db !animation_command_81 : dw CODE_B9EA4E
	db !animation_command_8E : dw sound(5, !sound_dixie_bubble)
	db $03 : dw !cat_o_9_tails_spin_frame1
	db $03 : dw !cat_o_9_tails_spin_frame2
	db $03 : dw !cat_o_9_tails_spin_frame3
	db $03 : dw !cat_o_9_tails_spin_frame4
	db $03 : dw !cat_o_9_tails_spin_frame5
	db $03 : dw !cat_o_9_tails_spin_frame6
	db $03 : dw !cat_o_9_tails_spin_frame7
	db $03 : dw !cat_o_9_tails_spin_frame8
	db !animation_command_80, $00

;$F96133
cat_o_9_tails_stand:
	db !animation_command_81 : dw CODE_B9EA4E
	db $02 : dw !cat_o_9_tails_idle_frame7
	db $02 : dw !cat_o_9_tails_idle_frame6
	db $02 : dw !cat_o_9_tails_idle_frame5
	db $02 : dw !cat_o_9_tails_idle_frame4
	db $02 : dw !cat_o_9_tails_idle_frame3
	db $02 : dw !cat_o_9_tails_idle_frame2
	db !animation_command_90 : dw CODE_B9E575, $018D
	db !animation_command_80, $00

;$F9614F
cat_o_9_tails_spin:
	db $01 : dw !cat_o_9_tails_spin_frame8
	db !animation_command_84 : dw CODE_B9EA9E

DATA_F96155:
	db !animation_command_8E : dw sound(5, !sound_dixie_bubble)
	db $01 : dw !cat_o_9_tails_spin_frame1
	db $01 : dw !cat_o_9_tails_spin_frame2
	db $01 : dw !cat_o_9_tails_spin_frame3
	db $01 : dw !cat_o_9_tails_spin_frame4
	db $01 : dw !cat_o_9_tails_spin_frame5
	db $01 : dw !cat_o_9_tails_spin_frame6
	db $01 : dw !cat_o_9_tails_spin_frame7
	db $01 : dw !cat_o_9_tails_spin_frame8
	db !animation_command_82 : dw DATA_F96155
	db !animation_command_80, $00

;$F96175
cat_o_9_tails_death:
	db !animation_command_81 : dw CODE_B9EA4E
	db !animation_command_8E : dw sound(5, !sound_cat_o_9_tails_hit)
	db $06 : dw !cat_o_9_tails_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $08 : dw !cat_o_9_tails_hurt_frame2
	db $08 : dw !cat_o_9_tails_hurt_frame3
	db $08 : dw !cat_o_9_tails_hurt_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9618F
kloak_idle:
	db $03 : dw !kloak_idle_frame10
	db $03 : dw !kloak_idle_frame11
	db $03 : dw !kloak_idle_frame12
	db $03 : dw !kloak_idle_frame1
	db $03 : dw !kloak_idle_frame2
	db !animation_command_84 : dw turn_kloak_if_needed
	db $03 : dw !kloak_idle_frame3
	db $03 : dw !kloak_idle_frame4
	db $03 : dw !kloak_idle_frame5
	db $03 : dw !kloak_idle_frame6
	db $03 : dw !kloak_idle_frame7
	db $03 : dw !kloak_idle_frame8
	db $03 : dw !kloak_idle_frame9
	db !animation_command_80, $00

;$F961B8
kloak_turn:
	db $04 : dw !kloak_turn_frame1
	db $04 : dw !kloak_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $04 : dw !kloak_turn_frame2
	db $04 : dw !kloak_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $02D0
	db !animation_command_80, $00

;$F961CE
kloak_throw:
	db !animation_command_8E : dw sound(6, !sound_kloak_laugh)
	db $04 : dw !kloak_throw_frame1
	db $04 : dw !kloak_throw_frame2
	db $04 : dw !kloak_throw_frame3
	db !animation_command_81 : dw CODE_B9E544
	db $03 : dw !kloak_throw_frame4
	db $03 : dw !kloak_throw_frame5
	db $03 : dw !kloak_throw_frame6
	db $03 : dw !kloak_throw_frame7
	db $03 : dw !kloak_throw_frame8
	db $03 : dw !kloak_throw_frame9
	db $03 : dw !kloak_throw_frame10
	db $03 : dw !kloak_throw_frame11
	db $03 : dw !kloak_throw_frame12
	db !animation_command_81 : dw CODE_B9E544
	db $03 : dw !kloak_throw_frame13
	db $04 : dw !kloak_throw_frame14
	db $04 : dw !kloak_throw_frame15
	db $05 : dw !kloak_throw_frame16
	db $05 : dw !kloak_throw_frame17
	db !animation_command_90 : dw CODE_B9E575, $02D0
	db !animation_command_80, $00

;$F96211
kloak_death:
	db !animation_command_8E : dw sound(5, !sound_kremling_hit_2)
	db $04 : dw !kloak_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $04 : dw !kloak_hurt_frame2
	db $04 : dw !kloak_hurt_frame3
	db $04 : dw !kloak_hurt_frame4
	db $04 : dw !kloak_hurt_frame5
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9622B
hot_air_balloon_idle:
	db !animation_command_84 : dw CODE_B9EAD0

DATA_F9622E:
	db $01 : dw !hot_air_balloon_frame1
	db !animation_command_8F : dw CODE_B9EAEA, DATA_F9622E
	db $03 : dw !hot_air_balloon_frame2
	db $04 : dw !hot_air_balloon_frame3
	db $03 : dw !hot_air_balloon_frame2
	db $04 : dw !hot_air_balloon_frame1
	db $03 : dw !hot_air_balloon_frame2
	db $02 : dw !hot_air_balloon_frame3
	db $02 : dw !hot_air_balloon_frame2
	db $04 : dw !hot_air_balloon_frame1
	db $03 : dw !hot_air_balloon_frame2
	db $04 : dw !hot_air_balloon_frame3
	db $03 : dw !hot_air_balloon_frame2
	db $04 : dw !hot_air_balloon_frame1
	db $03 : dw !hot_air_balloon_frame2
	db $02 : dw !hot_air_balloon_frame3
	db $02 : dw !hot_air_balloon_frame2
	db !animation_command_82 : dw DATA_F9622E
DATA_F96266:
	db $02 : dw !hot_air_balloon_frame3
	db $02 : dw !hot_air_balloon_frame5
	db !animation_command_84 : dw CODE_B9EADD
	db $02 : dw !hot_air_balloon_frame7
	db $02 : dw !hot_air_balloon_frame8
	db $02 : dw !hot_air_balloon_frame7
	db !animation_command_84 : dw !null_pointer
	db $02 : dw !hot_air_balloon_frame6
	db $02 : dw !hot_air_balloon_frame5
	db $02 : dw !hot_air_balloon_frame6
	db !animation_command_84 : dw CODE_B9EADD
	db $02 : dw !hot_air_balloon_frame7
	db $04 : dw !hot_air_balloon_frame8
	db $03 : dw !hot_air_balloon_frame7
	db $04 : dw !hot_air_balloon_frame6
	db $03 : dw !hot_air_balloon_frame7
	db $04 : dw !hot_air_balloon_frame8
	db $03 : dw !hot_air_balloon_frame7
	db $03 : dw !hot_air_balloon_frame8
DATA_F9629F:
	db $01 : dw !hot_air_balloon_frame8
	db !animation_command_8F : dw CODE_B9EAEA, DATA_F9629F
	db $03 : dw !hot_air_balloon_frame7
	db $03 : dw !hot_air_balloon_frame8
	db $03 : dw !hot_air_balloon_frame7
	db !animation_command_84 : dw !null_pointer
	db $03 : dw !hot_air_balloon_frame6
	db $03 : dw !hot_air_balloon_frame5
	db $03 : dw !hot_air_balloon_frame4
	db $03 : dw !hot_air_balloon_frame5
	db $03 : dw !hot_air_balloon_frame6
	db !animation_command_84 : dw CODE_B9EADD
	db $03 : dw !hot_air_balloon_frame7
	db $04 : dw !hot_air_balloon_frame8
	db $02 : dw !hot_air_balloon_frame7
	db $02 : dw !hot_air_balloon_frame8
	db $02 : dw !hot_air_balloon_frame7
	db !animation_command_84 : dw !null_pointer
	db $02 : dw !hot_air_balloon_frame6
	db $02 : dw !hot_air_balloon_frame5
	db $02 : dw !hot_air_balloon_frame6
	db !animation_command_84 : dw CODE_B9EADD
	db $02 : dw !hot_air_balloon_frame7
	db $03 : dw !hot_air_balloon_frame8
	db !animation_command_82 : dw DATA_F9629F
DATA_F962EC:
	db $02 : dw !hot_air_balloon_frame7
	db $02 : dw !hot_air_balloon_frame6
	db $02 : dw !hot_air_balloon_frame5
	db $02 : dw !hot_air_balloon_frame4
	db $02 : dw !hot_air_balloon_frame3
	db $02 : dw !hot_air_balloon_frame2
	db !animation_command_80, $00

;$F96300
krockhead_barrel_label_idle:
	db $01 : dw $0000
	db !animation_command_8F : dw CODE_B9EB0F, ;$F96300
krockhead_barrel_label_idle

DATA_F96308:
	db !animation_command_84 : dw CODE_B9EAFC

DATA_F9630B:
	db $08 : dw !krockhead_barrel_icon_frame1
	db $08 : dw !krockhead_barrel_icon_frame2
	db $08 : dw !krockhead_barrel_icon_frame3
	db $08 : dw !krockhead_barrel_icon_frame4
	db $08 : dw !krockhead_barrel_icon_frame3
	db $08 : dw !krockhead_barrel_icon_frame2
	db !animation_command_82 : dw DATA_F9630B

DATA_F96320:
	db $08 : dw $0000
	db $04 : dw !krockhead_barrel_icon_frame1
	db $04 : dw !krockhead_barrel_icon_frame2
	db $08 : dw $0000
	db $04 : dw !krockhead_barrel_icon_frame3
	db $04 : dw !krockhead_barrel_icon_frame4
	db $08 : dw $0000
	db $04 : dw !krockhead_barrel_icon_frame3
	db $04 : dw !krockhead_barrel_icon_frame2
	db !animation_command_8F : dw CODE_B9EB08, DATA_F96320
	db !animation_command_82 : dw DATA_F96308
	db !animation_command_80, $00

;$F96345
krockhead_green_idle:
	db !animation_command_84 : dw CODE_B9EBA4
	db $08 : dw !krockhead_frame8
	db !animation_command_91, sprite.unknown_5C : dw DATA_F96360
	db $28 : dw !krockhead_frame8
	db !animation_command_91, sprite.unknown_5C : dw DATA_F96360
	db $08 : dw !krockhead_frame8
	db !animation_command_91, sprite.unknown_5C : dw DATA_F96360
	db !animation_command_82 : dw krockhead_green_idle

DATA_F96360:
	db $04 : dw !krockhead_frame17
	db $10 : dw !krockhead_frame18
	db $04 : dw !krockhead_frame17
	db !animation_command_92, sprite.unknown_5C
	db !animation_command_80, $00

;$F9636D
krockhead_green_rise_from_barrel:
	db $01 : dw $0000
	db !animation_command_83 : dw CODE_B9EB96
	db !animation_command_93, $6D, $05
	db $04 : dw !krockhead_frame1
	db $04 : dw !krockhead_frame2
	db $04 : dw !krockhead_frame3
	db $04 : dw !krockhead_frame4
	db !animation_command_84 : dw CODE_B9EBA4
	db $04 : dw !krockhead_frame5
	db $04 : dw !krockhead_frame6
	db $04 : dw !krockhead_frame7
	db !animation_command_90 : dw CODE_B9E575, $02C9
	db !animation_command_80, $00

;$F96395
krockhead_sink:
	db !animation_command_84 : dw CODE_B9EBA4
	db $01 : dw !krockhead_frame8
	db !animation_command_91, sprite.unknown_5C : dw DATA_F96360
	db $01 : dw !krockhead_frame8
	db !animation_command_83 : dw CODE_B9EB9D
	db !animation_command_93, $6D, $05
	db $04 : dw !krockhead_frame7
	db $04 : dw !krockhead_frame6
	db $04 : dw !krockhead_frame5
	db $04 : dw !krockhead_frame4
	db $04 : dw !krockhead_frame3
	db $04 : dw !krockhead_frame2
	db $04 : dw !krockhead_frame1
	db !animation_command_90 : dw CODE_B9E575, $02C8
	db !animation_command_80, $00

;$F963C4
krockhead_rise:
	db !animation_command_93, $6D, $05
	db $04 : dw !krockhead_frame1
	db $04 : dw !krockhead_frame2
	db $04 : dw !krockhead_frame3
	db $04 : dw !krockhead_frame4
	db !animation_command_84 : dw CODE_B9EBA4
	db $04 : dw !krockhead_frame5
	db $04 : dw !krockhead_frame6
	db $04 : dw !krockhead_frame7
	db !animation_command_81 : dw CODE_B9EB6C
	db $01 : dw !krockhead_frame8
	db !animation_command_83 : dw CODE_B9EB88
	db !animation_command_93, $6D, $05
	db $04 : dw !krockhead_frame7
	db $04 : dw !krockhead_frame6
	db $04 : dw !krockhead_frame5
	db $04 : dw !krockhead_frame4
	db $04 : dw !krockhead_frame3
	db $04 : dw !krockhead_frame2
	db $04 : dw !krockhead_frame1
	db !animation_command_81 : dw CODE_B9EB6C
	db $01 : dw $0000
	db !animation_command_83 : dw CODE_B9EB88
	db !animation_command_80, $00

;$F9640B
krockhead_brown_idle:
	db $04 : dw !krockhead_frame8
	db !animation_command_83 : dw CODE_B9EB2C
	db !animation_command_81 : dw set_krochead_bounce_interaction
	db $02 : dw !krockhead_frame7
	db $02 : dw !krockhead_frame6
	db $02 : dw !krockhead_frame7
	db $02 : dw !krockhead_frame8
	db !animation_command_83 : dw CODE_B9EB39
	db $02 : dw !krockhead_frame10
	db $02 : dw !krockhead_frame12
	db $02 : dw !krockhead_frame14
	db $04 : dw !krockhead_frame16
	db $03 : dw !krockhead_frame15
	db $03 : dw !krockhead_frame14
	db $03 : dw !krockhead_frame13
	db $03 : dw !krockhead_frame12
	db $03 : dw !krockhead_frame11
	db $03 : dw !krockhead_frame10
	db $03 : dw !krockhead_frame9
	db !animation_command_80, $00

;$F96446
haunted_hall_gate:
	db $01 : dw !hall_right_door_frame4
	db !animation_command_83 : dw CODE_B9EC23
	db $03 : dw $0000
	db $03 : dw !hall_right_door_frame5
	db $06 : dw !hall_right_door_frame6
	db $03 : dw !hall_right_door_frame5
	db $03 : dw $0000
	db $03 : dw !hall_right_door_frame4
	db $03 : dw !hall_right_door_frame3
	db $03 : dw !hall_right_door_frame2
	db $01 : dw !hall_right_door_frame1
	db !animation_command_83 : dw CODE_B9EC23
	db $03 : dw !hall_right_door_frame2
	db $03 : dw !hall_right_door_frame3
	db $01 : dw !hall_right_door_frame4
	db !animation_command_81 : dw CODE_B9E53E
	db $02 : dw !hall_right_door_frame4
	db $03 : dw $0000
	db $03 : dw !hall_right_door_frame5
	db $06 : dw !hall_right_door_frame6
	db $03 : dw !hall_right_door_frame5
	db $03 : dw $0000
	db $04 : dw !hall_right_door_frame4
	db $04 : dw !hall_right_door_frame3
	db $06 : dw !hall_right_door_frame2
	db $04 : dw !hall_right_door_frame3
	db $01 : dw !hall_right_door_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9649C
haunted_hall_gate_2:
	db $01 : dw !hall_left_door_frame4
	db !animation_command_83 : dw CODE_B9EC23
	db $03 : dw !hall_left_door_frame5
	db $03 : dw !hall_left_door_frame6
	db $06 : dw !hall_left_door_frame7
	db $03 : dw !hall_left_door_frame6
	db $03 : dw !hall_left_door_frame5
	db $03 : dw !hall_left_door_frame4
	db $03 : dw !hall_left_door_frame3
	db $03 : dw !hall_left_door_frame2
	db $01 : dw !hall_left_door_frame1
	db !animation_command_83 : dw CODE_B9EC23
	db $03 : dw !hall_left_door_frame2
	db $03 : dw !hall_left_door_frame3
	db $03 : dw !hall_left_door_frame4
	db $03 : dw !hall_left_door_frame5
	db $03 : dw !hall_left_door_frame6
	db $06 : dw !hall_left_door_frame7
	db $03 : dw !hall_left_door_frame6
	db $03 : dw !hall_left_door_frame5
	db $04 : dw !hall_left_door_frame4
	db $04 : dw !hall_left_door_frame3
	db $06 : dw !hall_left_door_frame2
	db $04 : dw !hall_left_door_frame3
	db $01 : dw !hall_left_door_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F964EC
target_terror_gate:
	db $04 : dw !target_terror_door_graphic
	db !animation_command_80, $00

;$F964F1
barrel_checkmark_idle:
	db !animation_command_8F : dw CODE_B9EC30, DATA_F964FC
	db $01 : dw !x_barrel_graphic
	db !animation_command_82 : dw barrel_checkmark_idle

DATA_F964FC:
	db $01 : dw !check_barrel_graphic
	db !animation_command_80, $00

;$F96501
klank_idle:
	db $02 : dw $0000

DATA_F96504:
	db !animation_command_83 : dw CODE_B9EC67
	db !animation_command_82 : dw DATA_F96531
	db $04 : dw !klank_ride_cart_slope_frame10
	db !animation_command_81 : dw CODE_B9E53E
	db $04 : dw !klank_ride_cart_attack_frame1
	db $04 : dw !klank_ride_cart_attack_frame2
	db $0C : dw !klank_ride_cart_attack_frame3
	db $02 : dw !klank_ride_cart_attack_frame4
	db $02 : dw !klank_ride_cart_attack_frame5
	db $02 : dw !klank_ride_cart_attack_frame6
	db !animation_command_81 : dw CODE_B9E53E
	db $06 : dw !klank_ride_cart_attack_frame6
	db $04 : dw !klank_ride_cart_attack_frame7
	db $04 : dw !klank_ride_cart_attack_frame8
	db !animation_command_82 : dw DATA_F96504

DATA_F96531:
	db !animation_command_84 : dw CODE_B9EC4A
	db $02 : dw !klank_ride_cart_slope_frame10
	db $03 : dw !klank_ride_cart_frame1
	db $03 : dw !klank_ride_cart_frame2
	db $03 : dw !klank_ride_cart_frame3
	db $06 : dw !klank_ride_cart_frame4
	db !animation_command_84 : dw CODE_B9EC36
	db $18 : dw !klank_ride_cart_frame4
	db !animation_command_84 : dw CODE_B9EC4A
DATA_F9654C:
	db $03 : dw !klank_ride_cart_frame3
	db $03 : dw !klank_ride_cart_frame2
	db $03 : dw !klank_ride_cart_frame1
	db !animation_command_82 : dw DATA_F96504
	db !animation_command_80, $00

;$F9655A
klank_death:
	db !animation_command_8E : dw sound(6, !sound_kremling_hit_1)
	db $01 : dw !klank_ride_cart_hurt_frame1
	db !animation_command_83 : dw CODE_B9E551
	db $03 : dw !klank_ride_cart_hurt_frame2
	db $03 : dw !klank_ride_cart_hurt_frame3
	db $03 : dw !klank_ride_cart_hurt_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F96571
skull_cart_spark:
	db $02 : dw $0000
	db !animation_command_84 : dw CODE_B9ECED
	db $03 : dw !cart_sparks_frame1
	db $03 : dw !cart_sparks_frame2
	db $03 : dw !cart_sparks_frame3
	db !animation_command_81 : dw CODE_B9ECF5
	db $03 : dw !cart_sparks_frame4
	db $03 : dw !cart_sparks_frame5
	db $03 : dw !cart_sparks_frame6
	db $03 : dw !cart_sparks_frame7
	db $03 : dw !cart_sparks_frame8
	db $03 : dw !cart_sparks_frame9
	db $03 : dw !cart_sparks_frame10
	db $03 : dw !cart_sparks_frame11
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F965A0
plus_barrel_idle:
	db $01 : dw !plus_barrel_graphic
	db !animation_command_80, $00

;$F965A5
minus_barrel_idle:
	db $01 : dw !minus_barrel_graphic
	db !animation_command_80, $00

;$F965AA
plus_barrel_idle_2:
	db $01 : dw !plus_barrel_graphic
	db !animation_command_80, $00

;$F965AF
screech_idle:
	db !animation_command_84 : dw turn_screech_if_needed
	db $02 : dw !screech_idle_frame1
	db $02 : dw !screech_idle_frame2
	db $02 : dw !screech_idle_frame3
	db $02 : dw !screech_idle_frame4
	db $02 : dw !screech_idle_frame5
	db $02 : dw !screech_idle_frame6
	db $02 : dw !screech_idle_frame7
	db $02 : dw !screech_idle_frame8
	db $02 : dw !screech_idle_frame9
	db $02 : dw !screech_idle_frame10
	db $02 : dw !screech_idle_frame11
	db $02 : dw !screech_idle_frame12
	db !animation_command_80, $00

;$F965D8
screech_turn:
	db $04 : dw !screech_turn_frame1
	db $03 : dw !screech_turn_frame2
	db !animation_command_81 : dw CODE_B9E019
	db $03 : dw !screech_turn_frame2
	db $04 : dw !screech_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $02DD
	db !animation_command_80, $00

;$F965EE
tire_idle:
	db $01 : dw $0000
	db !animation_command_84 : dw CODE_B9ED20

DATA_F965F4:
	db $08 : dw !giant_tire_roll_frame1
	db $08 : dw !giant_tire_roll_frame2
	db $08 : dw !giant_tire_roll_frame3
	db !animation_command_82 : dw DATA_F965F4

DATA_F96600:
	db $08 : dw !giant_tire_roll_frame3
	db $08 : dw !giant_tire_roll_frame2
	db $08 : dw !giant_tire_roll_frame1
DATA_F96609:
	db !animation_command_82 : dw DATA_F96600
	db !animation_command_80, $00

;$F9660E
letter_k_idle:
	db $04 : dw !kong_letter_k_frame1
	db !animation_command_8F : dw CODE_B9ED6F, DATA_F9662E
	db $04 : dw !kong_letter_k_frame2
	db $04 : dw !kong_letter_k_frame3
	db $04 : dw !kong_letter_k_frame4
	db $04 : dw !kong_letter_k_frame5
	db $04 : dw !kong_letter_k_frame6
	db $04 : dw !kong_letter_k_frame7
	db $04 : dw !kong_letter_k_frame8
	db !animation_command_82 : dw letter_k_idle

DATA_F9662E:
	db $04 : dw !kong_letter_k_collected_frame1
	db $04 : dw !kong_letter_k_collected_frame2
	db !animation_command_81 : dw CODE_B9E544
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9663C
letter_o_idle:
	db $04 : dw !kong_letter_o_frame1
	db !animation_command_8F : dw CODE_B9ED6F, DATA_F9665C
	db $04 : dw !kong_letter_o_frame2
	db $04 : dw !kong_letter_o_frame3
	db $04 : dw !kong_letter_o_frame4
	db $04 : dw !kong_letter_o_frame5
	db $04 : dw !kong_letter_o_frame6
	db $04 : dw !kong_letter_o_frame7
	db $04 : dw !kong_letter_o_frame8
	db !animation_command_82 : dw letter_o_idle

DATA_F9665C:
	db $04 : dw !kong_letter_o_collected_frame1
	db $04 : dw !kong_letter_o_collected_frame2
	db !animation_command_81 : dw CODE_B9E544
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9666A
letter_n_idle:
	db $04 : dw !kong_letter_n_frame1
	db !animation_command_8F : dw CODE_B9ED6F, DATA_F9668A
	db $04 : dw !kong_letter_n_frame2
	db $04 : dw !kong_letter_n_frame3
	db $04 : dw !kong_letter_n_frame4
	db $04 : dw !kong_letter_n_frame5
	db $04 : dw !kong_letter_n_frame6
	db $04 : dw !kong_letter_n_frame7
	db $04 : dw !kong_letter_n_frame8
	db !animation_command_82 : dw letter_n_idle

DATA_F9668A:
	db $04 : dw !kong_letter_n_collected_frame1
	db $04 : dw !kong_letter_n_collected_frame2
	db !animation_command_81 : dw CODE_B9E544
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F96698
letter_g_idle:
	db $04 : dw !kong_letter_g_frame1
	db !animation_command_8F : dw CODE_B9ED6F, DATA_F966B8
	db $04 : dw !kong_letter_g_frame2
	db $04 : dw !kong_letter_g_frame3
	db $04 : dw !kong_letter_g_frame4
	db $04 : dw !kong_letter_g_frame5
	db $04 : dw !kong_letter_g_frame6
	db $04 : dw !kong_letter_g_frame7
	db $04 : dw !kong_letter_g_frame8
	db !animation_command_82 : dw letter_g_idle

DATA_F966B8:
	db $04 : dw !kong_letter_g_collected_frame1
	db $04 : dw !kong_letter_g_collected_frame2
	db !animation_command_81 : dw CODE_B9E544
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F966C6
cannon_ball_down:
	db $03 : dw !cannonball_frame1
	db !animation_command_80, $00

;$F966CB
cannon_ball:
	db $06 : dw !cannonball_frame1
	db $06 : dw !cannonball_frame2
	db $06 : dw !cannonball_frame3
	db $06 : dw !cannonball_frame4
	db !animation_command_80, $00

;$F966D9
DATA_F966D9:
	db !animation_command_80, $00

;$F966DB
unused_rock:
	db $04 : dw !rock_frame1
	db $04 : dw !rock_frame2
	db $04 : dw !rock_frame3
	db $04 : dw !rock_frame4
	db $04 : dw !rock_frame5
	db $04 : dw !rock_frame6
	db $04 : dw !rock_frame7
	db $04 : dw !rock_frame8
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F966F8
DATA_F966F8:
	db $04 : dw !unknown_60_frame1
	db $04 : dw !unknown_60_frame2
	db $04 : dw !unknown_60_frame3
	db $04 : dw !unknown_60_frame4
	db $04 : dw !unknown_60_frame5
	db $04 : dw !unknown_60_frame6
	db $04 : dw !unknown_60_frame7
	db $04 : dw !unknown_60_frame8
	db !animation_command_80, $00

;$F96712
squawks_egg_projectile:
	db $04 : dw !squawks_egg_frame1
	db $04 : dw !squawks_egg_frame2
	db $04 : dw !squawks_egg_frame3
	db $04 : dw !squawks_egg_frame4
	db $04 : dw !squawks_egg_frame5
	db $04 : dw !squawks_egg_frame6
	db $04 : dw !squawks_egg_frame7
	db $04 : dw !squawks_egg_frame8
	db !animation_command_80, $00

;$F9672C
cannon_ball_fragment:
	db $03 : dw !fragment_1_frame1
	db $03 : dw !fragment_1_frame2
	db $03 : dw !fragment_1_frame3
	db $03 : dw !fragment_1_frame4
	db $03 : dw !fragment_1_frame5
	db $03 : dw !fragment_1_frame6
	db $03 : dw !fragment_1_frame7
	db $03 : dw !fragment_1_frame8
	db !animation_command_80, $00

;$F96746
krow_egg_fragment:
	db $03 : dw !fragment_2_frame1
	db $03 : dw !fragment_2_frame2
	db $03 : dw !fragment_2_frame3
	db $03 : dw !fragment_2_frame4
	db $03 : dw !fragment_2_frame5
	db $03 : dw !fragment_2_frame6
	db $03 : dw !fragment_2_frame7
	db $03 : dw !fragment_2_frame8
	db !animation_command_80, $00

;$F96760
krow_egg_fragment_2:
	db $03 : dw !fragment_3_frame1
	db $03 : dw !fragment_3_frame2
	db $03 : dw !fragment_3_frame3
	db $03 : dw !fragment_3_frame4
	db $03 : dw !fragment_3_frame5
	db $03 : dw !fragment_3_frame6
	db $03 : dw !fragment_3_frame7
	db $03 : dw !fragment_3_frame8
	db !animation_command_80, $00

;$F9677A
gangplank_galley_sun:
	db $02 : dw !sun_graphic
	db !animation_command_80, $00

;$F9677F
DATA_F9677F:
	db $02 : dw !cannon_graphic
	db !animation_command_80, $00

;$F96784
squitter_no_player_idle:
	db $06 : dw !squitter_idle_frame1
	db $06 : dw !squitter_idle_frame2
	db $06 : dw !squitter_idle_frame3
	db $06 : dw !squitter_idle_frame2
	db !animation_command_80, $00

;$F96792
squitter_credits:
	db $02 : dw !squitter_walk_frame1
	db $02 : dw !squitter_walk_frame2
	db $02 : dw !squitter_walk_frame3
	db $02 : dw !squitter_walk_frame4
	db $02 : dw !squitter_walk_frame5
	db $02 : dw !squitter_walk_frame6
	db $02 : dw !squitter_walk_frame7
	db $02 : dw !squitter_walk_frame8
	db $02 : dw !squitter_walk_frame9
	db $02 : dw !squitter_walk_frame10
	db $02 : dw !squitter_walk_frame11
	db $02 : dw !squitter_walk_frame12
	db $02 : dw !squitter_walk_frame13
	db $02 : dw !squitter_walk_frame14
	db $02 : dw !squitter_walk_frame15
	db $02 : dw !squitter_walk_frame16
	db !animation_command_80, $00

;$F967C4
squitter_hurt_run:
	db !animation_command_81 : dw CODE_B9EDCE
	db $06 : dw !squitter_hurt_graphic
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9ED78

DATA_F967D0:
	db $02 : dw !squitter_walk_frame1
	db $02 : dw !squitter_walk_frame2
	db $02 : dw !squitter_walk_frame3
	db $02 : dw !squitter_walk_frame4
	db $02 : dw !squitter_walk_frame5
	db $02 : dw !squitter_walk_frame6
	db $02 : dw !squitter_walk_frame7
	db $02 : dw !squitter_walk_frame8
	db $02 : dw !squitter_walk_frame9
	db $02 : dw !squitter_walk_frame10
	db $02 : dw !squitter_walk_frame11
	db $02 : dw !squitter_walk_frame12
	db $02 : dw !squitter_walk_frame13
	db $02 : dw !squitter_walk_frame14
	db $02 : dw !squitter_walk_frame15
	db $02 : dw !squitter_walk_frame16
	db !animation_command_82 : dw DATA_F967D0
	db !animation_command_80, $00

;$F96805
rattly_no_player_idle:
	db $03 : dw !rattly_jump_frame3
	db $01 : dw !rattly_jump_frame2
	db $03 : dw !rattly_jump_frame1
	db $01 : dw !rattly_jump_frame2
	db $01 : dw !rattly_jump_frame3
	db $01 : dw !rattly_jump_frame4
	db $01 : dw !rattly_jump_frame5
	db $01 : dw !rattly_jump_frame6
	db !animation_command_81 : dw CODE_B9ED95
	db $01 : dw !rattly_jump_frame7
	db $01 : dw !rattly_jump_frame8
	db $01 : dw !rattly_jump_frame9
	db $01 : dw !rattly_jump_frame10
	db $01 : dw !rattly_jump_frame11
	db !animation_command_83 : dw CODE_B9D55A
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_8E : dw sound(5, !sound_hit_ground)
	db $01 : dw !rattly_jump_frame10
	db $01 : dw !rattly_jump_frame9
	db $01 : dw !rattly_jump_frame8
	db $01 : dw !rattly_jump_frame7
	db $01 : dw !rattly_jump_frame6
	db $01 : dw !rattly_jump_frame5
	db $01 : dw !rattly_jump_frame4
	db $01 : dw !rattly_jump_frame3
	db $01 : dw !rattly_jump_frame2
	db $03 : dw !rattly_jump_frame1
	db $01 : dw !rattly_jump_frame2
	db !animation_command_80, $00

;$F9685B
rattly_credits:
	db $03 : dw !rattly_jump_frame3
	db $01 : dw !rattly_jump_frame2
	db $03 : dw !rattly_jump_frame1
	db $01 : dw !rattly_jump_frame2
	db $01 : dw !rattly_jump_frame3
	db $01 : dw !rattly_jump_frame4
	db $01 : dw !rattly_jump_frame5
	db $01 : dw !rattly_jump_frame6
	db $01 : dw !rattly_jump_frame7
	db $01 : dw !rattly_jump_frame8
	db $01 : dw !rattly_jump_frame9
	db $01 : dw !rattly_jump_frame10
	db $01 : dw !rattly_jump_frame11
	db !animation_command_8E : dw sound(5, !sound_rattly_hop)
	db $01 : dw !rattly_jump_frame10
	db $01 : dw !rattly_jump_frame9
	db $01 : dw !rattly_jump_frame8
	db $01 : dw !rattly_jump_frame7
	db $01 : dw !rattly_jump_frame6
	db $01 : dw !rattly_jump_frame5
	db $01 : dw !rattly_jump_frame4
	db $01 : dw !rattly_jump_frame3
	db $01 : dw !rattly_jump_frame2
	db $03 : dw !rattly_jump_frame1
	db $01 : dw !rattly_jump_frame2
	db !animation_command_80, $00

;$F968A8
rattly_hurt_run:
	db !animation_command_81 : dw CODE_B9EDCE
	db $06 : dw !rattly_hurt_graphic
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9EDA2

DATA_F968B4:
	db $03 : dw !rattly_jump_frame3
	db $01 : dw !rattly_jump_frame2
	db $03 : dw !rattly_jump_frame1
	db $01 : dw !rattly_jump_frame2
	db $01 : dw !rattly_jump_frame3
	db $01 : dw !rattly_jump_frame4
	db $01 : dw !rattly_jump_frame5
	db $01 : dw !rattly_jump_frame6
	db !animation_command_81 : dw CODE_B9ED95
	db $01 : dw !rattly_jump_frame7
	db $01 : dw !rattly_jump_frame8
	db $01 : dw !rattly_jump_frame9
	db $01 : dw !rattly_jump_frame10
	db $01 : dw !rattly_jump_frame11
	db !animation_command_83 : dw CODE_B9D55A
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_8E : dw sound(5, !sound_hit_ground)
	db $01 : dw !rattly_jump_frame10
	db $01 : dw !rattly_jump_frame9
	db $01 : dw !rattly_jump_frame8
	db $01 : dw !rattly_jump_frame7
	db $01 : dw !rattly_jump_frame6
	db $01 : dw !rattly_jump_frame5
	db $01 : dw !rattly_jump_frame4
	db $01 : dw !rattly_jump_frame3
	db $01 : dw !rattly_jump_frame2
	db $03 : dw !rattly_jump_frame1
	db $01 : dw !rattly_jump_frame2
	db !animation_command_82 : dw DATA_F968B4
	db !animation_command_80, $00

;$F9690D
squawks_no_player_idle:
	db $02 : dw !squawks_idle_frame1
	db $02 : dw !squawks_idle_frame2
	db $02 : dw !squawks_idle_frame3
	db $02 : dw !squawks_idle_frame4
	db $02 : dw !squawks_idle_frame5
	db $02 : dw !squawks_idle_frame6
	db $02 : dw !squawks_idle_frame7
	db $02 : dw !squawks_idle_frame8
	db $02 : dw !squawks_idle_frame9
	db $02 : dw !squawks_idle_frame10
	db $02 : dw !squawks_idle_frame11
	db $02 : dw !squawks_idle_frame12
	db $02 : dw !squawks_idle_frame13
	db $02 : dw !squawks_idle_frame14
	db !animation_command_80, $00

;$F96939
squawks_hurt_run:
	db $04 : dw !squawks_hurt_graphic
	db !animation_command_81 : dw CODE_B9ED8D
	db !animation_command_80, $00

;$F96941
rambi_no_player_idle:
	db $06 : dw !rambi_idle_frame22
	db $06 : dw !rambi_idle_frame21
	db $06 : dw !rambi_idle_frame20
	db $06 : dw !rambi_idle_frame19
	db $1A : dw !rambi_idle_frame18
	db $06 : dw !rambi_idle_frame19
	db $06 : dw !rambi_idle_frame20
	db $06 : dw !rambi_idle_frame21
	db $06 : dw !rambi_idle_frame22
	db $15 : dw !rambi_idle_frame1
	db $06 : dw !rambi_idle_frame2
	db $06 : dw !rambi_idle_frame3
	db $06 : dw !rambi_idle_frame4
	db $06 : dw !rambi_idle_frame5
	db $06 : dw !rambi_idle_frame6
	db $06 : dw !rambi_idle_frame7
	db $06 : dw !rambi_idle_frame8
	db $06 : dw !rambi_idle_frame9
	db $06 : dw !rambi_idle_frame10
	db $06 : dw !rambi_idle_frame11
	db $06 : dw !rambi_idle_frame12
	db $06 : dw !rambi_idle_frame13
	db $04 : dw !rambi_idle_frame14
	db $04 : dw !rambi_idle_frame15
	db $04 : dw !rambi_idle_frame16
	db $04 : dw !rambi_idle_frame15
	db $04 : dw !rambi_idle_frame14
	db $04 : dw !rambi_idle_frame15
	db $04 : dw !rambi_idle_frame16
	db $04 : dw !rambi_idle_frame15
	db $04 : dw !rambi_idle_frame14
	db $04 : dw !rambi_idle_frame15
	db $04 : dw !rambi_idle_frame16
	db $04 : dw !rambi_idle_frame15
	db $04 : dw !rambi_idle_frame14
	db $04 : dw !rambi_idle_frame15
	db $04 : dw !rambi_idle_frame16
	db $04 : dw !rambi_idle_frame15
	db $04 : dw !rambi_idle_frame14
	db $04 : dw !rambi_idle_frame15
	db $04 : dw !rambi_idle_frame16
	db $04 : dw !rambi_idle_frame15
	db $06 : dw !rambi_idle_frame16
	db $06 : dw !rambi_idle_frame17
	db $06 : dw !rambi_idle_frame18
	db $06 : dw !rambi_idle_frame17
	db $06 : dw !rambi_idle_frame16
	db $06 : dw !rambi_idle_frame15
	db $06 : dw !rambi_idle_frame14
	db $06 : dw !rambi_idle_frame13
	db $06 : dw !rambi_idle_frame12
	db $06 : dw !rambi_idle_frame11
	db $06 : dw !rambi_idle_frame12
	db $06 : dw !rambi_idle_frame13
	db $06 : dw !rambi_idle_frame14
	db $06 : dw !rambi_idle_frame15
	db $06 : dw !rambi_idle_frame16
	db $06 : dw !rambi_idle_frame17
	db $06 : dw !rambi_idle_frame18
	db $06 : dw !rambi_idle_frame19
	db $06 : dw !rambi_idle_frame20
	db $06 : dw !rambi_idle_frame21
	db $06 : dw !rambi_idle_frame22
	db $04 : dw !rambi_idle_frame1
	db $04 : dw !rambi_idle_frame2
	db $04 : dw !rambi_idle_frame3
	db $08 : dw !rambi_idle_frame4
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame6
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame4
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame6
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame4
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame6
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame4
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame6
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame4
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame6
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame4
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame6
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame4
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame6
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame4
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame6
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame4
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame6
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame4
	db $08 : dw !rambi_idle_frame5
	db $08 : dw !rambi_idle_frame6
	db $08 : dw !rambi_idle_frame5
	db $04 : dw !rambi_idle_frame4
	db $04 : dw !rambi_idle_frame3
	db $04 : dw !rambi_idle_frame2
	db !animation_command_80, $00

;$F96A8A
rambi_hurt_run:
	db !animation_command_81 : dw CODE_B9EDCE
	db $06 : dw !rambi_hurt_graphic
	db !animation_command_83 : dw stall_animation_until_grounded
	db !animation_command_81 : dw CODE_B9EDB9

DATA_F96A96:
	db $01 : dw !rambi_run_frame8
	db $01 : dw !rambi_run_frame9
	db $01 : dw !rambi_run_frame10
	db $01 : dw !rambi_run_frame11
	db $01 : dw !rambi_run_frame12
	db $01 : dw !rambi_run_frame13
	db $01 : dw !rambi_run_frame14
	db $01 : dw !rambi_run_frame15
	db $01 : dw !rambi_run_frame1
	db $01 : dw !rambi_run_frame2
	db $01 : dw !rambi_run_frame3
	db $01 : dw !rambi_run_frame4
	db $01 : dw !rambi_run_frame5
	db $01 : dw !rambi_run_frame6
	db $01 : dw !rambi_run_frame7
	db !animation_command_82 : dw DATA_F96A96
	db !animation_command_80, $00

;$F96AC8
diddy_map:
	db $04 : dw !isle_diddy_frame1
	db $04 : dw !isle_diddy_frame2
	db $04 : dw !isle_diddy_frame3
	db $04 : dw !isle_diddy_frame4
	db $04 : dw !isle_diddy_frame5
	db $04 : dw !isle_diddy_frame6
	db $04 : dw !isle_diddy_frame7
	db $04 : dw !isle_diddy_frame8
	db !animation_command_80, $00

;$F96AE2
dixie_map:
	db $04 : dw !isle_dixie_frame1
	db $04 : dw !isle_dixie_frame2
	db $04 : dw !isle_dixie_frame3
	db $04 : dw !isle_dixie_frame4
	db $04 : dw !isle_dixie_frame5
	db $04 : dw !isle_dixie_frame6
	db $04 : dw !isle_dixie_frame7
	db $04 : dw !isle_dixie_frame8
	db !animation_command_80, $00

;$F96AFC
smoke_cloud:
	db $05 : dw !smoke_puff_2_frame1
	db $05 : dw !smoke_puff_2_frame2
	db $05 : dw !smoke_puff_2_frame3
	db $05 : dw !smoke_puff_2_frame4
	db $05 : dw !smoke_puff_2_frame5
	db $05 : dw !smoke_puff_2_frame6
	db $05 : dw !smoke_puff_2_frame7
	db $05 : dw !smoke_puff_2_frame8
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F96B19
banana_coin_idle:
	db $04 : dw !banana_coin_frame2
	db $04 : dw !banana_coin_frame3
	db $04 : dw !banana_coin_frame4
	db $04 : dw !banana_coin_frame5
	db $04 : dw !banana_coin_frame6
	db $04 : dw !banana_coin_frame7
	db $04 : dw !banana_coin_frame8
	db $04 : dw !banana_coin_frame1
	db !animation_command_80, $00

;$F96B33
krem_coin_idle:
	db $04 : dw !token_frame2
	db $04 : dw !token_frame3
	db $04 : dw !token_frame4
	db $04 : dw !token_frame5
	db $04 : dw !token_frame6
	db $04 : dw !token_frame7
	db $04 : dw !token_frame8
	db $04 : dw !token_frame1
	db !animation_command_80, $00

;$F96B4D
dk_coin_idle:
	db $04 : dw !hero_coin_frame2
	db $04 : dw !hero_coin_frame3
	db $04 : dw !hero_coin_frame4
	db $04 : dw !hero_coin_frame5
	db $04 : dw !hero_coin_frame6
	db $04 : dw !hero_coin_frame7
	db $04 : dw !hero_coin_frame8
	db $04 : dw !hero_coin_frame1
	db !animation_command_80, $00

;$F96B67
barrel_fragment:
	db $04 : dw !barrel_fragment_1_frame1
	db $04 : dw !barrel_fragment_1_frame2
	db $04 : dw !barrel_fragment_1_frame3
	db $04 : dw !barrel_fragment_1_frame4
	db $04 : dw !barrel_fragment_1_frame5
	db $04 : dw !barrel_fragment_1_frame6
	db $04 : dw !barrel_fragment_1_frame7
	db $04 : dw !barrel_fragment_1_frame8
	db !animation_command_80, $00

;$F96B81
barrel_fragment_2:
	db $04 : dw !barrel_fragment_2_frame1
	db $04 : dw !barrel_fragment_2_frame2
	db $04 : dw !barrel_fragment_2_frame3
	db $04 : dw !barrel_fragment_2_frame4
	db $04 : dw !barrel_fragment_2_frame5
	db $04 : dw !barrel_fragment_2_frame6
	db $04 : dw !barrel_fragment_2_frame7
	db $04 : dw !barrel_fragment_2_frame8
	db !animation_command_80, $00

;$F96B9B
firework_1:
	db $04 : dw !firework_launch_frame1
	db !animation_command_8E : dw sound(7, !sound_firework_fizz)
	db $04 : dw !firework_launch_frame2
	db $04 : dw !firework_launch_frame3
	db $04 : dw !firework_launch_frame4
	db $04 : dw !firework_launch_frame5
	db $04 : dw !firework_launch_frame6
	db $04 : dw !firework_launch_frame7
	db $04 : dw !firework_launch_frame8
	db $04 : dw !firework_launch_frame9
	db $04 : dw !firework_explode_1_frame1
	db $04 : dw !firework_explode_1_frame2
	db !animation_command_81 : dw CODE_B9EDD4
	db !animation_command_8E : dw sound(7, !sound_firework_blast)
	db $04 : dw !firework_explode_1_frame3
	db $04 : dw !firework_explode_1_frame4
	db $04 : dw !firework_explode_1_frame5
	db $04 : dw !firework_explode_1_frame6
	db $04 : dw !firework_explode_1_frame7
	db $04 : dw !firework_explode_1_frame8
	db $04 : dw !firework_explode_1_frame9
	db $04 : dw !firework_explode_1_frame10
	db !animation_command_81 : dw CODE_B9EDDB
	db !animation_command_80, $00

;$F96BE2
firework_2:
	db $04 : dw !firework_launch_frame1
	db !animation_command_8E : dw sound(7, !sound_firework_whistle)
	db $04 : dw !firework_launch_frame2
	db $04 : dw !firework_launch_frame3
	db $04 : dw !firework_launch_frame4
	db $04 : dw !firework_launch_frame5
	db $04 : dw !firework_launch_frame6
	db $04 : dw !firework_launch_frame7
	db $04 : dw !firework_launch_frame8
	db $04 : dw !firework_launch_frame9
	db $04 : dw !firework_explode_2_frame1
	db $04 : dw !firework_explode_2_frame2
	db !animation_command_81 : dw CODE_B9EDD4
	db !animation_command_8E : dw sound(7, !sound_firework_pop)
	db $04 : dw !firework_explode_2_frame3
	db $04 : dw !firework_explode_2_frame4
	db $04 : dw !firework_explode_2_frame5
	db $04 : dw !firework_explode_2_frame6
	db $04 : dw !firework_explode_2_frame7
	db !animation_command_81 : dw CODE_B9EDDB
	db !animation_command_80, $00

;$F96C20
ghost_rope_idle:
	db !animation_command_84 : dw CODE_B9EDEC
	db $22 : dw !ghost_rope_frame17
	db !animation_command_80, $00

;$F96C28
ghost_rope_disappear:
	db $04 : dw !ghost_rope_frame16
	db $06 : dw !ghost_rope_frame17
	db $04 : dw !ghost_rope_frame16
	db $06 : dw !ghost_rope_frame17
	db $02 : dw !ghost_rope_frame16
	db $05 : dw !ghost_rope_frame17
	db $02 : dw !ghost_rope_frame16
	db $02 : dw !ghost_rope_frame17
	db $03 : dw !ghost_rope_frame16
	db $01 : dw !ghost_rope_frame17
	db $04 : dw !ghost_rope_frame16
	db $04 : dw !ghost_rope_frame15
	db !animation_command_81 : dw CODE_B9EDF9
	db !animation_command_8E : dw sound(4, !sound_ghost_rope_vanish)
	db !animation_command_8E : dw sound(7, !sound_ghost_rope_vanish_echo)
	db $04 : dw !ghost_rope_frame14
	db $04 : dw !ghost_rope_frame13
	db $04 : dw !ghost_rope_frame12
	db $04 : dw !ghost_rope_frame11
	db $04 : dw !ghost_rope_frame10
	db $04 : dw !ghost_rope_frame9
	db $04 : dw !ghost_rope_frame8
	db !animation_command_81 : dw CODE_B9EDFF
	db !animation_command_80, $00

;$F96C6F
ghost_rope_hidden:
	db !animation_command_84 : dw CODE_B9EE0B
	db $28 : dw $0000
	db !animation_command_80, $00

;$F96C77
ghost_rope_appear:
	db !animation_command_8E : dw sound(4, !sound_ghost_rope_appear)
	db !animation_command_8E : dw sound(7, !sound_ghost_rope_appear_echo)
	db $03 : dw !ghost_rope_frame1
	db $03 : dw !ghost_rope_frame2
	db $03 : dw !ghost_rope_frame3
	db $03 : dw !ghost_rope_frame4
	db $03 : dw !ghost_rope_frame5
	db $03 : dw !ghost_rope_frame6
	db !animation_command_81 : dw CODE_B9EE18
	db $03 : dw !ghost_rope_frame7
	db !animation_command_81 : dw CODE_B9EE1E
	db !animation_command_80, $00

;$F96C9A
collision_spark_effect:
	db $03 : dw !flash_frame6
	db $03 : dw !flash_frame5
	db $03 : dw !flash_frame4
	db $03 : dw !flash_frame3
	db $03 : dw !flash_frame2
	db $03 : dw !flash_frame1
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F96CB1
hook_idle:
	db $08 : dw !hook_graphic
	db !animation_command_80, $00

;$F96CB6
hook_move:
	db $08 : dw $00E0
	db !animation_command_80, $00

;$F96CBB
bullrush_idle:
	db $08 : dw !cattail_frame1
	db $08 : dw !cattail_frame2
	db $08 : dw !cattail_frame3
	db $08 : dw !cattail_frame4
	db $08 : dw !cattail_frame5
	db $08 : dw !cattail_frame6
	db $08 : dw !cattail_frame7
	db $08 : dw !cattail_frame6
	db $08 : dw !cattail_frame5
	db $08 : dw !cattail_frame4
	db $08 : dw !cattail_frame3
	db $08 : dw !cattail_frame2
	db !animation_command_80, $00

;$F96CE1
bullrush_still:
	db $08 : dw !cattail_frame8
	db !animation_command_80, $00

;$F96CE6
bullrush_lily_pad:
	db $08 : dw $01F4
	db !animation_command_80, $00

;$F96CEB
animal_crate_rambi_idle:
	db $02 : dw !rambi_crate_graphic
	db !animation_command_80, $00

;$F96CF0
animal_crate_squawks_idle:
	db $02 : dw !squawks_crate_graphic
	db !animation_command_80, $00

;$F96CF5
animal_crate_enguarde_idle:
	db $02 : dw !enguarde_crate_graphic
	db !animation_command_80, $00

;$F96CFA
animal_crate_rattly_idle:
	db $02 : dw !rattly_crate_graphic
	db !animation_command_80, $00

;$F96CFF
animal_crate_squitter_idle:
	db $02 : dw !squitter_crate_graphic
	db !animation_command_80, $00

;$F96D04
banana_bunch_idle:
	db $04 : dw !banana_bunch_frame1
	db $04 : dw !banana_bunch_frame2
	db $04 : dw !banana_bunch_frame3
	db $04 : dw !banana_bunch_frame4
	db $04 : dw !banana_bunch_frame5
	db $04 : dw !banana_bunch_frame6
	db $04 : dw !banana_bunch_frame5
	db $04 : dw !banana_bunch_frame4
	db $04 : dw !banana_bunch_frame3
	db $04 : dw !banana_bunch_frame2
	db !animation_command_80, $00

;$F96D24
level_target_idle:
	db $04 : dw !goal_target_frame1
	db !animation_command_80, $00

;$F96D29
level_target_trigger:
	db $0A : dw !goal_target_frame3
	db $04 : dw !goal_target_frame2
	db $04 : dw !goal_target_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F96D37
midway_barrel_idle:
	db $02 : dw !checkpoint_barrel_frame1
	db $02 : dw !checkpoint_barrel_frame2
	db $02 : dw !checkpoint_barrel_frame3
	db $02 : dw !checkpoint_barrel_frame4
	db $02 : dw !checkpoint_barrel_frame5
	db $02 : dw !checkpoint_barrel_frame6
	db $02 : dw !checkpoint_barrel_frame7
	db $02 : dw !checkpoint_barrel_frame8
	db !animation_command_80, $00

;$F96D51
no_animals_sign_rambi_idle:
	db $28 : dw !no_rambi_sign_graphic
	db !animation_command_80, $00

;$F96D56
no_animals_sign_squawks_idle:
	db $28 : dw !no_squawks_sign_graphic
	db !animation_command_80, $00

;$F96D5B
no_animals_sign_squitter_idle:
	db $28 : dw !no_squitter_sign_graphic
	db !animation_command_80, $00

;$F96D60
no_animals_sign_enguarde_idle:
	db $28 : dw !no_enguarde_sign_graphic
	db !animation_command_80, $00

;$F96D65
no_animals_sign_rattly_idle:
	db $28 : dw !no_rattly_sign_graphic
	db !animation_command_80, $00

;$F96D6A
crate_idle:
	db $28 : dw !crate_frame1
	db !animation_command_80, $00

;$F96D6F
crate_pickup:
	db $02 : dw !crate_frame1
	db $03 : dw !crate_frame2
	db $03 : dw !crate_frame3
	db $03 : dw !crate_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F96D80
crate_drop:
	db $03 : dw !crate_frame3
	db $03 : dw !crate_frame2
	db $03 : dw !crate_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F96D8E
crate_thrown:
	db $28 : dw !crate_frame4
	db !animation_command_80, $00

;$F96D93
chest_idle:
	db $28 : dw !chest_graphic
	db !animation_command_80, $00

;$F96D98
krool_letter_idle:
	db $28 : dw !cabin_letter_graphic
	db !animation_command_80, $00

;$F96D9D
level_target_pole:
	db $28 : dw !goal_pole_graphic
	db !animation_command_80, $00

;$F96DA2
level_target_barrel:
	db $28 : dw !goal_barrel_graphic
	db !animation_command_80, $00

;$F96DA7
unused_honey_splash:
	db $04 : dw !honey_splash_frame1
	db $04 : dw !honey_splash_frame2
	db $04 : dw !honey_splash_frame3
	db $04 : dw !honey_splash_frame4
	db $04 : dw !honey_splash_frame5
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F96DBB
barrel_invincibility_idle:
	db $28 : dw !invincibilty_barrel_graphic
	db !animation_command_80, $00

;$F96DC0
glimmer_idle:
	db $04 : dw !glimmer_idle_frame1
	db !animation_command_84 : dw turn_glimmer_if_needed
	db $04 : dw !glimmer_idle_frame2
	db $04 : dw !glimmer_idle_frame3
	db $04 : dw !glimmer_idle_frame4
	db $04 : dw !glimmer_idle_frame5
	db $04 : dw !glimmer_idle_frame6
	db $04 : dw !glimmer_idle_frame7
	db $04 : dw !glimmer_idle_frame8
	db $04 : dw !glimmer_idle_frame9
	db $04 : dw !glimmer_idle_frame10
	db $04 : dw !glimmer_idle_frame11
	db $04 : dw !glimmer_idle_frame12
	db $04 : dw !glimmer_idle_frame13
	db $04 : dw !glimmer_idle_frame14
	db $04 : dw !glimmer_idle_frame15
	db $04 : dw !glimmer_idle_frame16
	db !animation_command_80, $00

;$F96DF5
glimmer_turn:
	db $03 : dw !glimmer_turn_frame1
	db $02 : dw !glimmer_turn_frame2
	db $02 : dw !glimmer_turn_frame3
	db $02 : dw !glimmer_turn_frame4
	db $02 : dw !glimmer_turn_frame5
	db $02 : dw !glimmer_turn_frame6
	db $02 : dw !glimmer_turn_frame7
	db $02 : dw !glimmer_turn_frame8
	db !animation_command_81 : dw CODE_B9EE40
	db !animation_command_80, $00

;$F96E12
dk_barrel_idle:
	db $01 : dw !dk_barrel_frame1
	db !animation_command_81 : dw CODE_B9EE5F
	db $05 : dw !dk_barrel_frame1
	db $05 : dw !dk_barrel_frame2
	db $05 : dw !dk_barrel_frame3
	db $05 : dw !dk_barrel_frame4
	db $05 : dw !dk_barrel_frame5
	db !animation_command_81 : dw play_dk_barrel_sound_if_one_kong
	db $05 : dw !dk_barrel_frame6
	db $05 : dw !dk_barrel_frame7
	db $05 : dw !dk_barrel_frame8
	db $01 : dw !dk_barrel_frame1
	db !animation_command_81 : dw CODE_B9EE5F
	db $05 : dw !dk_barrel_frame1
	db $05 : dw !dk_barrel_frame2
	db $05 : dw !dk_barrel_frame3
	db $05 : dw !dk_barrel_frame4
	db $05 : dw !dk_barrel_frame5
	db $05 : dw !dk_barrel_frame6
	db $05 : dw !dk_barrel_frame7
	db $05 : dw !dk_barrel_frame8
	db !animation_command_80, $00

;$F96E53
dk_barrel_label_idle:
	db $01 : dw !dk_barrel_letters_frame1
	db $05 : dw !dk_barrel_letters_frame1
	db $05 : dw !dk_barrel_letters_frame2
	db $05 : dw !dk_barrel_letters_frame3
	db $05 : dw !dk_barrel_letters_frame4
	db $05 : dw !dk_barrel_letters_frame5
	db $05 : dw !dk_barrel_letters_frame6
	db $05 : dw !dk_barrel_letters_frame7
	db $05 : dw !dk_barrel_letters_frame8
	db !animation_command_80, $00

;$F96E70
animal_crate_open:
	db !animation_command_81 : dw spawn_animal_crate_smoke
	db $10 : dw !broken_animal_crate_graphic
	db !animation_command_81 : dw spawn_animal_crate_animal
	db $18 : dw !broken_animal_crate_graphic
	db !animation_command_81 : dw CODE_B9EE99
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F96E84
squitter_web_fly:
	db $03 : dw !squitter_web_shot_frame1
	db $03 : dw !squitter_web_shot_frame3
	db $03 : dw !squitter_web_shot_frame5
	db $03 : dw !squitter_web_shot_frame7
	db $02 : dw !squitter_web_shot_frame9
	db $02 : dw !squitter_web_shot_frame11
	db $02 : dw !squitter_web_shot_frame12
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F96E9E
web_platform_spawn:
	db !animation_command_8F : dw check_if_no_web_platforms_are_shooting, DATA_F96EE1
	db $01 : dw !squitter_web_platform_frame1
	db !animation_command_8F : dw check_if_no_web_platforms_are_shooting, DATA_F96EE1
	db $01 : dw !squitter_web_platform_frame1
	db !animation_command_8F : dw check_if_no_web_platforms_are_shooting, DATA_F96EE1
	db $01 : dw !squitter_web_platform_shot_frame1
	db !animation_command_8F : dw check_if_no_web_platforms_are_shooting, DATA_F96EE1
	db $01 : dw !squitter_web_platform_shot_frame1
	db !animation_command_8F : dw check_if_no_web_platforms_are_shooting, DATA_F96EE1
	db $01 : dw !squitter_web_platform_shot_frame2
	db !animation_command_8F : dw check_if_no_web_platforms_are_shooting, DATA_F96EE1
	db $01 : dw !squitter_web_platform_shot_frame2
	db !animation_command_8F : dw check_if_no_web_platforms_are_shooting, DATA_F96EE1
	db $01 : dw !squitter_web_platform_shot_frame3
	db !animation_command_8F : dw check_if_no_web_platforms_are_shooting, DATA_F96EE1
	db $01 : dw !squitter_web_platform_shot_frame3
	db !animation_command_82 : dw web_platform_spawn
DATA_F96EE1:
	db !animation_command_81 : dw CODE_B9EECB
	db $02 : dw !squitter_web_platform_frame2
	db $02 : dw !squitter_web_platform_frame3
	db $02 : dw !squitter_web_platform_frame4
	db $02 : dw !squitter_web_platform_frame5
	db $02 : dw !squitter_web_platform_frame6
	db $02 : dw !squitter_web_platform_frame7
	db $02 : dw !squitter_web_platform_frame8
	db $03 : dw !squitter_web_platform_frame9
	db $02 : dw !squitter_web_platform_frame10
	db $02 : dw !squitter_web_platform_frame11
	db $03 : dw !squitter_web_platform_frame12
	db $02 : dw !squitter_web_platform_frame11
	db $02 : dw !squitter_web_platform_frame10
	db $03 : dw !squitter_web_platform_frame9
	db $02 : dw !squitter_web_platform_frame10
	db $02 : dw !squitter_web_platform_frame11
	db $03 : dw !squitter_web_platform_frame12
	db $02 : dw !squitter_web_platform_frame11
	db $02 : dw !squitter_web_platform_frame10
	db $03 : dw !squitter_web_platform_frame9
	db !animation_command_81 : dw CODE_B9EEDB

DATA_F96F23:
	db $04 : dw !squitter_web_platform_frame10
	db !animation_command_83 : dw CODE_B9D4FE
	db $04 : dw !squitter_web_platform_frame11
	db $05 : dw !squitter_web_platform_frame12
	db $04 : dw !squitter_web_platform_frame11
	db $04 : dw !squitter_web_platform_frame10
	db $05 : dw !squitter_web_platform_frame9
	db $04 : dw !squitter_web_platform_frame10
	db $04 : dw !squitter_web_platform_frame11
	db !animation_command_82 : dw DATA_F96F23
	db !animation_command_80, $00

;$F96F43
web_platform_despawn:
	db $04 : dw !squitter_web_platform_frame10
	db $04 : dw !squitter_web_platform_frame11
	db $03 : dw !squitter_web_platform_frame12
	db $03 : dw !squitter_web_platform_frame11
	db $03 : dw !squitter_web_platform_frame10
	db $02 : dw !squitter_web_platform_frame9
	db $02 : dw !squitter_web_platform_frame8
	db $02 : dw !squitter_web_platform_frame9
	db $02 : dw !squitter_web_platform_frame10
	db $01 : dw !squitter_web_platform_frame11
	db $02 : dw !squitter_web_platform_frame12
	db $01 : dw !squitter_web_platform_frame11
	db $02 : dw !squitter_web_platform_frame10
	db $01 : dw !squitter_web_platform_frame9
	db $02 : dw !squitter_web_platform_frame8
	db $01 : dw !squitter_web_platform_frame9
	db $01 : dw !squitter_web_platform_frame10
	db $01 : dw !squitter_web_platform_frame11
	db $01 : dw !squitter_web_platform_frame12
	db $01 : dw !squitter_web_platform_frame11
	db $01 : dw !squitter_web_platform_frame10
	db $01 : dw !squitter_web_platform_frame9
	db $01 : dw !squitter_web_platform_frame8
	db $01 : dw !squitter_web_platform_frame9
	db $01 : dw !squitter_web_platform_frame10
	db $01 : dw !squitter_web_platform_frame11
	db $01 : dw !squitter_web_platform_frame12
	db $01 : dw !squitter_web_platform_frame11
	db $01 : dw !squitter_web_platform_frame10
	db $01 : dw !squitter_web_platform_frame9
	db $01 : dw !squitter_web_platform_frame8
	db $01 : dw !squitter_web_platform_frame9
	db $01 : dw !squitter_web_platform_frame10
	db $01 : dw !squitter_web_platform_frame12
	db $01 : dw !squitter_web_platform_frame10
	db $01 : dw !squitter_web_platform_frame8
	db $01 : dw !squitter_web_platform_frame10
	db $01 : dw !squitter_web_platform_frame12
	db $01 : dw !squitter_web_platform_frame10
	db $01 : dw !squitter_web_platform_frame8
	db $03 : dw !squitter_web_platform_frame10
	db $03 : dw !squitter_web_platform_frame9
	db $03 : dw !squitter_web_platform_frame8
	db $03 : dw !squitter_web_platform_frame7
	db !animation_command_81 : dw CODE_B9EEE2
	db $03 : dw !squitter_web_platform_frame6
	db $03 : dw !squitter_web_platform_frame5
	db $03 : dw !squitter_web_platform_frame4
	db $03 : dw !squitter_web_platform_frame3
	db $03 : dw !squitter_web_platform_frame2
	db !animation_command_81 : dw CODE_B9EEE8
	db !animation_command_80, $00

;$F96FDE
water_surface_splash:
	db $04 : dw !water_splash_frame1
	db $03 : dw !water_splash_frame2
	db $03 : dw !water_splash_frame3
	db $03 : dw !water_splash_frame4
	db $03 : dw !water_splash_frame5
	db $03 : dw !water_splash_frame6
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F96FF5
rain_cloud_loop:
	db $03 : dw !rain_cloud_rain_frame1
	db $03 : dw !rain_cloud_rain_frame2
	db $03 : dw !rain_cloud_rain_frame3
	db $03 : dw !rain_cloud_rain_frame4
	db $03 : dw !rain_cloud_rain_frame5
	db !animation_command_80, $00

;$F97006
rain_cloud_spawn:
	db $05 : dw !rain_cloud_appear_frame1
	db $05 : dw !rain_cloud_appear_frame2
	db $05 : dw !rain_cloud_appear_frame3
	db $05 : dw !rain_cloud_appear_frame4
	db $05 : dw !rain_cloud_appear_frame5
	db $05 : dw !rain_cloud_appear_frame6
	db !animation_command_81 : dw CODE_B9EEEB
DATA_F9701B:
	db $05 : dw !rain_cloud_appear_frame5
	db $05 : dw !rain_cloud_appear_frame6
	db !animation_command_82 : dw DATA_F9701B
	db !animation_command_80, $00

;$F97026
unused_dixie_tears:
	db !animation_command_8E : dw sound(5, !sound_dixie_cry)
	db $03 : dw !dixie_hurt_tears_frame1
	db $03 : dw !dixie_hurt_tears_frame2
	db $03 : dw !dixie_hurt_tears_frame3
	db $03 : dw !dixie_hurt_tears_frame4
	db $03 : dw !dixie_hurt_tears_frame5
	db $03 : dw !dixie_hurt_tears_frame6
	db $03 : dw !dixie_hurt_tears_frame1
	db $03 : dw !dixie_hurt_tears_frame2
	db $03 : dw !dixie_hurt_tears_frame3
	db $03 : dw !dixie_hurt_tears_frame4
	db $03 : dw !dixie_hurt_tears_frame5
	db $03 : dw !dixie_hurt_tears_frame6
	db $03 : dw !dixie_hurt_tears_frame1
	db $03 : dw !dixie_hurt_tears_frame2
	db $03 : dw !dixie_hurt_tears_frame3
	db $03 : dw !dixie_hurt_tears_frame4
	db $03 : dw !dixie_hurt_tears_frame5
	db $03 : dw !dixie_hurt_tears_frame6
	db $03 : dw !dixie_hurt_tears_frame1
	db $03 : dw !dixie_hurt_tears_frame2
	db $03 : dw !dixie_hurt_tears_frame3
	db $03 : dw !dixie_hurt_tears_frame4
	db $03 : dw !dixie_hurt_tears_frame5
	db $03 : dw !dixie_hurt_tears_frame6
	db $70 : dw !null_graphic
	db !animation_command_80, $00

;$F97076
DATA_F97076:
	db $1C : dw !krool_shoot_frame1
	db $0A : dw !krool_shoot_frame2
	db !animation_command_80, $00

;$F9707E
krem_coin_collected:
	db $28 : dw !token_collected_graphic
	db !animation_command_80, $00

;$F97083
dk_coin_collected:
	db $28 : dw !hero_coin_collected_graphic
	db !animation_command_80, $00

;$F97088
DATA_F97088:
	db $02 : dw !unknown_2308_frame6
	db $02 : dw !unknown_2308_frame5
	db $02 : dw !unknown_2308_frame4
	db $02 : dw !unknown_2308_frame3
	db $02 : dw !unknown_2308_frame2
	db $02 : dw !unknown_2308_frame1
	db $01 : dw !unknown_2308_frame6
	db $02 : dw !unknown_2308_frame5
	db $01 : dw !unknown_2308_frame4
	db $02 : dw !unknown_2308_frame3
	db $01 : dw !unknown_2308_frame2
	db $02 : dw !unknown_2308_frame1
	db !animation_command_81 : dw anim_delete_sprite_2
	db !animation_command_80, $00

;$F970B1
enguarde_no_player_idle:
	db $04 : dw !enguarde_idle_frame1
	db $04 : dw !enguarde_idle_frame2
	db $04 : dw !enguarde_idle_frame3
	db $04 : dw !enguarde_idle_frame4
	db $04 : dw !enguarde_idle_frame5
	db $04 : dw !enguarde_idle_frame6
	db $04 : dw !enguarde_idle_frame7
	db $04 : dw !enguarde_idle_frame8
	db !animation_command_80, $00

;$F970CB
enguarde_hurt_run:
	db $04 : dw !enguarde_hurt_graphic
	db !animation_command_81 : dw set_rattly_idle_no_player_animation
	db !animation_command_80, $00

;$F970D3
clapper_idle:
	db $04 : dw !clapper_idle_frame1
	db $04 : dw !clapper_idle_frame2
	db $04 : dw !clapper_idle_frame3
	db $04 : dw !clapper_idle_frame4
	db $04 : dw !clapper_idle_frame5
	db $04 : dw !clapper_idle_frame6
	db $04 : dw !clapper_idle_frame7
	db $04 : dw !clapper_idle_frame8
	db !animation_command_8E : dw sound(6, !sound_clapper_bark)
	db $0E : dw !clapper_idle_frame9
	db $04 : dw !clapper_idle_frame8
	db $04 : dw !clapper_idle_frame7
	db $04 : dw !clapper_idle_frame8
	db !animation_command_8E : dw sound(6, !sound_clapper_bark)
	db $0E : dw !clapper_idle_frame9
	db $04 : dw !clapper_idle_frame8
	db $04 : dw !clapper_idle_frame7
	db $04 : dw !clapper_idle_frame8
	db !animation_command_8E : dw sound(6, !sound_clapper_bark)
	db $18 : dw !clapper_idle_frame9
	db $04 : dw !clapper_idle_frame8
	db $04 : dw !clapper_idle_frame7
	db $04 : dw !clapper_idle_frame6
	db $04 : dw !clapper_idle_frame5
	db $04 : dw !clapper_idle_frame4
	db $04 : dw !clapper_idle_frame3
	db $04 : dw !clapper_idle_frame2
	db $18 : dw !clapper_idle_frame1
	db !animation_command_80, $00

;$F97129
clapper_interact:
	db $02 : dw !clapper_activate_frame1
	db !animation_command_8E : dw sound(6, !sound_clapper_bark)
	db $01 : dw !clapper_activate_frame2
	db $01 : dw !clapper_activate_frame3
	db $03 : dw !clapper_activate_frame4
	db $01 : dw !clapper_activate_frame5
	db $01 : dw !clapper_activate_frame6
	db $01 : dw !clapper_activate_frame7
	db $01 : dw !clapper_activate_frame8
	db $08 : dw !clapper_activate_frame9
	db $03 : dw !clapper_activate_frame10
	db !animation_command_81 : dw spawn_clapper_breath
	db !animation_command_81 : dw set_clapper_water_timer
	db $03 : dw !clapper_activate_frame11
	db $03 : dw !clapper_activate_frame12
	db !animation_command_81 : dw spawn_clapper_breath
	db $03 : dw !clapper_activate_frame13
	db $03 : dw !clapper_activate_frame14
	db !animation_command_81 : dw spawn_clapper_breath
	db $03 : dw !clapper_activate_frame15
	db $03 : dw !clapper_activate_frame15
	db !animation_command_81 : dw spawn_clapper_breath
	db $03 : dw !clapper_activate_frame15
	db $03 : dw !clapper_activate_frame15
	db !animation_command_81 : dw spawn_clapper_breath
	db $03 : dw !clapper_activate_frame15
	db $04 : dw !clapper_clap_frame1
	db $04 : dw !clapper_clap_frame2
	db $04 : dw !clapper_clap_frame3
	db $04 : dw !clapper_clap_frame4
	db $02 : dw !clapper_clap_frame5
	db $01 : dw !clapper_clap_frame6
	db $01 : dw !clapper_clap_frame7
	db !animation_command_8E : dw sound(7, !sound_clapper_clap)
	db $02 : dw !clapper_clap_frame8
	db $01 : dw !clapper_clap_frame7
	db $01 : dw !clapper_clap_frame6
	db $02 : dw !clapper_clap_frame5
	db $01 : dw !clapper_clap_frame6
	db $01 : dw !clapper_clap_frame7
	db !animation_command_8E : dw sound(7, !sound_clapper_clap)
	db $02 : dw !clapper_clap_frame8
	db $01 : dw !clapper_clap_frame7
	db $01 : dw !clapper_clap_frame6
	db $02 : dw !clapper_clap_frame5
	db $01 : dw !clapper_clap_frame6
	db $01 : dw !clapper_clap_frame7
	db !animation_command_8E : dw sound(7, !sound_clapper_clap)
	db $02 : dw !clapper_clap_frame8
	db $01 : dw !clapper_clap_frame7
	db $04 : dw !clapper_clap_frame6
	db $04 : dw !clapper_clap_frame4
	db $04 : dw !clapper_clap_frame3
	db $04 : dw !clapper_clap_frame2
	db $04 : dw !clapper_clap_frame1
	db !animation_command_81 : dw set_clapper_idle_animation
	db !animation_command_80, $00

;$F971D3
banana_idle:
	db $04 : dw !banana_frame5
	db $04 : dw !banana_frame6
	db $04 : dw !banana_frame7
	db $04 : dw !banana_frame8
	db $04 : dw !banana_frame1
	db $04 : dw !banana_frame2
	db $04 : dw !banana_frame3
	db $04 : dw !banana_frame4
	db !animation_command_80, $00

;$F971ED
yoshi_idle:
	db $04 : dw !yoshi_frame1
	db $04 : dw !yoshi_frame2
	db $04 : dw !yoshi_frame3
	db $04 : dw !yoshi_frame4
	db $04 : dw !yoshi_frame5
	db $04 : dw !yoshi_frame6
	db $04 : dw !yoshi_frame7
	db $04 : dw !yoshi_frame8
	db $04 : dw !yoshi_frame9
	db $04 : dw !yoshi_frame10
	db $04 : dw !yoshi_frame11
	db $04 : dw !yoshi_frame12
	db !animation_command_80, $00

;$F97213
mario_idle:
	db $14 : dw !mario_frame1
	db $05 : dw !mario_frame2
	db $05 : dw !mario_frame3
	db $04 : dw !mario_frame4
	db $04 : dw !mario_frame5
	db $04 : dw !mario_frame6
	db $04 : dw !mario_frame5
	db $04 : dw !mario_frame4
	db $04 : dw !mario_frame5
	db $04 : dw !mario_frame6
	db $04 : dw !mario_frame5
	db $04 : dw !mario_frame4
	db $04 : dw !mario_frame5
	db $04 : dw !mario_frame6
	db $04 : dw !mario_frame5
	db $04 : dw !mario_frame4
	db $04 : dw !mario_frame5
	db $04 : dw !mario_frame6
	db $04 : dw !mario_frame5
	db $04 : dw !mario_frame4
	db $06 : dw !mario_frame3
	db $07 : dw !mario_frame2
	db $50 : dw !mario_frame1
	db !animation_command_80, $00

;$F9725A
link_idle:
	db $08 : dw !link_frame1
	db $08 : dw !link_frame2
	db $08 : dw !link_frame3
	db $08 : dw !link_frame4
	db $08 : dw !link_frame5
	db $08 : dw !link_frame6
	db $08 : dw !link_frame7
	db $08 : dw !link_frame8
	db $08 : dw !link_frame9
	db $08 : dw !link_frame10
	db $08 : dw !link_frame11
	db $08 : dw !link_frame12
	db $08 : dw !link_frame13
	db $32 : dw !link_frame14
	db $08 : dw !link_frame13
	db $08 : dw !link_frame12
	db $08 : dw !link_frame11
	db $08 : dw !link_frame10
	db !animation_command_80, $00

;$F97292
klubba_barrel_sparkle:
	db $04 : dw !sparkle_frame1
	db $04 : dw !sparkle_frame2
	db $04 : dw !sparkle_frame3
	db $04 : dw !sparkle_frame4
	db $04 : dw !sparkle_frame5
	db $04 : dw !sparkle_frame6
	db $04 : dw !sparkle_frame7
	db $04 : dw !sparkle_frame8
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F972AF
kudgel_attack_land:
	db $0A : dw !klubba_idle_frame1
	db $04 : dw !klubba_idle_frame2
	db $28 : dw !klubba_idle_frame3
	db $0A : dw !klubba_idle_frame2
	db !animation_command_80, $00

;$F972BD
kudgel_idle:
	db $0A : dw !klubba_idle_frame1
	db $04 : dw !klubba_idle_frame2
	db !animation_command_8E : dw sound(6, !sound_cannonball_drop)
	db $28 : dw !klubba_idle_frame3
	db $0A : dw !klubba_idle_frame2
	db !animation_command_80, $00

;$F972CE
kudgel_club_idle:
	db $0A : dw !klubba_club_idle_frame1
	db $04 : dw !klubba_club_idle_frame2
	db $28 : dw !klubba_club_idle_frame3
	db $0A : dw !klubba_club_idle_frame2
	db !animation_command_80, $00

;$F972DC
klubba_attack:
	db !animation_command_8E : dw sound(5, !sound_klubba_kudgel_swing)
	db $05 : dw !kudgel_attack_frame1
	db $05 : dw !kudgel_attack_frame2
	db $04 : dw !kudgel_attack_frame3
	db $04 : dw !kudgel_attack_frame4
	db $03 : dw !kudgel_attack_frame5
	db $02 : dw !kudgel_attack_frame6
	db !animation_command_81 : dw set_hit_by_klubba_interaction
	db $02 : dw !kudgel_attack_frame7
	db $02 : dw !kudgel_attack_frame8
	db $05 : dw !kudgel_attack_frame9
	db $08 : dw !kudgel_attack_frame9
	db $05 : dw !kudgel_attack_frame10
	db $05 : dw !kudgel_attack_frame11
	db !animation_command_90 : dw CODE_B9E575, $028C
	db !animation_command_80, $00

;$F9730D
klubba_club_attack:
	db $05 : dw !kudgel_club_attack_frame1
	db $05 : dw !kudgel_club_attack_frame2
	db $04 : dw !kudgel_club_attack_frame3
	db $04 : dw !kudgel_club_attack_frame4
	db $03 : dw !kudgel_club_attack_frame5
	db $02 : dw !kudgel_club_attack_frame6
	db $02 : dw !kudgel_club_attack_frame7
	db $02 : dw !kudgel_club_attack_frame8
	db $05 : dw !kudgel_club_attack_frame9
	db $08 : dw !kudgel_club_attack_frame9
	db $05 : dw !kudgel_club_attack_frame10
	db $05 : dw !kudgel_club_attack_frame11
	db !animation_command_90 : dw CODE_B9E575, $028D
	db !animation_command_80, $00

;$F97338
kudgel_jump:
	db $15 : dw !kudgel_jump_graphic
	db $01 : dw !kudgel_fall_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97343
kudgel_club_jump:
	db $15 : dw !kudgel_club_jump_graphic
	db $01 : dw !kudgel_club_fall_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9734E
kudgel_fall:
	db $01 : dw !kudgel_fall_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97356
kudgel_club_fall:
	db $01 : dw !kudgel_club_fall_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9735E
kudgel_land:
	db $0D : dw !kudgel_jump_graphic
	db $08 : dw !klubba_idle_frame3
	db !animation_command_90 : dw CODE_B9E575, $028C
	db !animation_command_80, $00

;$F9736B
kudgel_club_land:
	db $0D : dw !kudgel_club_jump_graphic
	db $08 : dw !klubba_club_idle_frame3
	db !animation_command_90 : dw CODE_B9E575, $028D
	db !animation_command_80, $00

;$F97378
kudgel_attack_long:
	db !animation_command_8E : dw sound(5, !sound_klubba_kudgel_swing)
	db $05 : dw !kudgel_attack_frame1
	db $05 : dw !kudgel_attack_frame2
	db $04 : dw !kudgel_attack_frame3
	db $04 : dw !kudgel_attack_frame4
	db !animation_command_81 : dw CODE_B9EFCF
	db $03 : dw !kudgel_attack_frame5
	db $02 : dw !kudgel_attack_frame6
	db $02 : dw !kudgel_attack_frame7
	db $02 : dw !kudgel_attack_frame8
	db $05 : dw !kudgel_attack_frame9
	db !animation_command_81 : dw CODE_B9EFD4
	db $08 : dw !kudgel_attack_frame9
	db $05 : dw !kudgel_attack_frame10
	db $05 : dw !kudgel_attack_frame11
	db !animation_command_81 : dw CODE_B9EF2D
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F973AD
kudgel_club_attack_long:
	db $05 : dw !kudgel_club_attack_frame1
	db $05 : dw !kudgel_club_attack_frame2
	db $04 : dw !kudgel_club_attack_frame3
	db $04 : dw !kudgel_club_attack_frame4
	db $03 : dw !kudgel_club_attack_frame5
	db $02 : dw !kudgel_club_attack_frame6
	db $02 : dw !kudgel_club_attack_frame7
	db $02 : dw !kudgel_club_attack_frame8
	db $05 : dw !kudgel_club_attack_frame9
	db $08 : dw !kudgel_club_attack_frame9
	db $05 : dw !kudgel_club_attack_frame10
	db $05 : dw !kudgel_club_attack_frame11
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F973D6
kudgel_fall_attack:
	db !animation_command_8E : dw sound(5, !sound_klubba_kudgel_swing)
	db $02 : dw !kudgel_attack_frame7
	db $03 : dw !kudgel_attack_frame8
	db $03 : dw !kudgel_attack_frame9
	db $03 : dw !kudgel_attack_frame10
	db $02 : dw !kudgel_attack_frame11
	db !animation_command_81 : dw CODE_B9EF32
	db !animation_command_80, $00

;$F973ED
kudgel_club_fall_attack:
	db $02 : dw !kudgel_club_attack_frame7
	db $03 : dw !kudgel_club_attack_frame8
	db $03 : dw !kudgel_club_attack_frame9
	db $03 : dw !kudgel_club_attack_frame10
	db $02 : dw !kudgel_club_attack_frame11
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97401
kudgel_hurt:
	db !animation_command_8E : dw sound(6, !sound_kudgel_hit)
	db $04 : dw !kudgel_hurt_frame1
	db $04 : dw !kudgel_hurt_frame2
	db $04 : dw !kudgel_hurt_frame1
	db $04 : dw !kudgel_hurt_frame2
	db $04 : dw !kudgel_hurt_frame1
	db $04 : dw !kudgel_hurt_frame2
	db $04 : dw !kudgel_hurt_frame1
	db $04 : dw !kudgel_hurt_frame2
	db $04 : dw !kudgel_hurt_frame1
	db $04 : dw !kudgel_hurt_frame2
	db $04 : dw !kudgel_hurt_frame1
	db $04 : dw !kudgel_hurt_frame2
	db $04 : dw !kudgel_hurt_frame1
	db $04 : dw !kudgel_hurt_frame2
	db $04 : dw !kudgel_hurt_frame1
	db $04 : dw !kudgel_hurt_frame2
	db $05 : dw !kudgel_hurt_frame1
	db $05 : dw !kudgel_hurt_frame2
	db $06 : dw !kudgel_hurt_frame1
	db $06 : dw !kudgel_hurt_frame2
	db $07 : dw !kudgel_hurt_frame1
	db $07 : dw !kudgel_hurt_frame2
	db !animation_command_81 : dw CODE_B9EF37
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9744E
kudgel_club_hurt:
	db $04 : dw !kudgel_club_hurt_frame1
	db $04 : dw !kudgel_club_hurt_frame2
	db $04 : dw !kudgel_club_hurt_frame1
	db $04 : dw !kudgel_club_hurt_frame2
	db $04 : dw !kudgel_club_hurt_frame1
	db $04 : dw !kudgel_club_hurt_frame2
	db $04 : dw !kudgel_club_hurt_frame1
	db $04 : dw !kudgel_club_hurt_frame2
	db $04 : dw !kudgel_club_hurt_frame1
	db $04 : dw !kudgel_club_hurt_frame2
	db $04 : dw !kudgel_club_hurt_frame1
	db $04 : dw !kudgel_club_hurt_frame2
	db $04 : dw !kudgel_club_hurt_frame1
	db $04 : dw !kudgel_club_hurt_frame2
	db $04 : dw !kudgel_club_hurt_frame1
	db $04 : dw !kudgel_club_hurt_frame2
	db $05 : dw !kudgel_club_hurt_frame1
	db $05 : dw !kudgel_club_hurt_frame2
	db $06 : dw !kudgel_club_hurt_frame1
	db $06 : dw !kudgel_club_hurt_frame2
	db $07 : dw !kudgel_club_hurt_frame1
	db $07 : dw !kudgel_club_hurt_frame2
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97495
kudgel_jump_short:
	db $11 : dw !kudgel_jump_graphic
	db $01 : dw !kudgel_fall_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F974A0
kudgel_club_jump_short:
	db $11 : dw !kudgel_club_jump_graphic
	db $01 : dw !kudgel_club_fall_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F974AB
kudgel_death:
	db $04 : dw !kudgel_defeated_frame1
	db $04 : dw !kudgel_defeated_frame2
	db !animation_command_80, $00

;$F974B3
kudgel_club_death:
	db $04 : dw !kudgel_club_defeated_frame1
	db $04 : dw !kudgel_club_defeated_frame2
	db !animation_command_80, $00

;$F974BB
big_splash:
	db $03 : dw !big_splash_frame1
	db $02 : dw !big_splash_frame2
	db $03 : dw !big_splash_frame3
	db $02 : dw !big_splash_frame4
	db $03 : dw !big_splash_frame5
	db $02 : dw !big_splash_frame6
	db $03 : dw !big_splash_frame7
	db $02 : dw !big_splash_frame8
	db $03 : dw !big_splash_frame9
	db $02 : dw !big_splash_frame10
	db $03 : dw !big_splash_frame11
	db $02 : dw !big_splash_frame12
	db $03 : dw !big_splash_frame13
	db $02 : dw !big_splash_frame14
	db $03 : dw !big_splash_frame15
	db $02 : dw !big_splash_frame16
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F974F0
smoke_cloud_6:
	db $05 : dw !smoke_puff_3_frame1
	db $05 : dw !smoke_puff_3_frame2
	db $05 : dw !smoke_puff_3_frame3
	db $05 : dw !smoke_puff_3_frame4
	db $05 : dw !smoke_puff_3_frame5
	db $05 : dw !smoke_puff_3_frame6
	db $05 : dw !smoke_puff_3_frame7
	db $05 : dw !smoke_puff_3_frame8
	db $05 : dw !smoke_puff_3_frame9
	db $05 : dw !smoke_puff_3_frame10
	db $05 : dw !smoke_puff_3_frame11
	db $05 : dw !smoke_puff_3_frame12
	db $05 : dw !smoke_puff_3_frame13
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F9751C
kudgel_tnt_fireball_small:
	db $02 : dw !kudgel_defeated_explosion_frame1
	db $03 : dw !kudgel_defeated_explosion_frame2
	db $02 : dw !kudgel_defeated_explosion_frame3
	db $03 : dw !kudgel_defeated_explosion_frame4
	db $02 : dw !kudgel_defeated_explosion_frame5
	db $03 : dw !kudgel_defeated_explosion_frame6
	db $03 : dw !kudgel_defeated_explosion_frame7
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F97536
kudgel_dust:
	db $06 : dw !dust_frame1
	db $06 : dw !dust_frame2
	db $06 : dw !dust_frame3
	db $06 : dw !dust_frame4
	db $06 : dw !dust_frame5
	db $06 : dw !dust_frame6
	db $06 : dw !dust_frame7
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F97550
krool_lost_final_hit:
	db !animation_command_8E : dw sound(5, !sound_cannon_load)
	db !animation_command_81 : dw CODE_B9EF5A
	db $08 : dw !krool_shoot_frame1
	db $04 : dw !krool_shoot_frame2
	db $0D : dw !krool_shoot_frame3
	db $04 : dw !krool_shoot_frame2
	db $11 : dw !krool_shoot_frame1
	db $37 : dw !krool_concerned_graphic
	db $14 : dw !krool_shoot_frame1
	db $0F : dw !krool_concerned_graphic
	db $0F : dw !krool_shoot_frame1
	db $0A : dw !krool_concerned_graphic
	db $0A : dw !krool_shoot_frame1
	db $05 : dw !krool_concerned_graphic
	db $05 : dw !krool_shoot_frame1
	db !animation_command_81 : dw CODE_B9EFBB
	db $0D : dw !krool_shoot_frame1
	db !animation_command_81 : dw CODE_B9EFBB
	db $1A : dw !krool_shoot_frame1
	db !animation_command_8E : dw sound(5, !sound_explosion)
	db !animation_command_81 : dw CODE_B9EF3C
	db $07 : dw !krool_hurt_frame2
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97597
krool_lost_gun_final_hit:
	db $08 : dw !krool_gun_shoot_frame1
	db $04 : dw !krool_gun_shoot_frame2
	db $0D : dw !krool_gun_shoot_frame3
	db $04 : dw !krool_gun_shoot_frame2
	db $11 : dw !krool_gun_shoot_frame1
	db $37 : dw !krool_gun_concerned_graphic
	db $14 : dw !krool_gun_shoot_frame1
	db $0F : dw !krool_gun_concerned_graphic
	db $0F : dw !krool_gun_shoot_frame1
	db $0A : dw !krool_gun_concerned_graphic
	db $0A : dw !krool_gun_shoot_frame1
	db $05 : dw !krool_gun_concerned_graphic
	db $05 : dw !krool_gun_shoot_frame1
	db $0D : dw !krool_gun_shoot_frame1
	db $1F : dw !krool_gun_shoot_frame1
	db $17 : dw !krool_gun_concerned_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F975CC
krool_map_fall:
	db $05 : dw !krool_fall_into_kore_frame1
	db $05 : dw !krool_fall_into_kore_frame2
	db !animation_command_80, $00

;$F975D4
krool_soaked_puddle:
	db $09 : dw !krool_puddle_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F975DC
krool_water_drop:
	db $14 : dw !water_drop_frame1
	db !animation_command_90 : dw CODE_B9E575, $0229
	db !animation_command_80, $00

;$F975E6
krool_water_drop_2:
	db $1E : dw !water_drop_frame1
	db !animation_command_90 : dw CODE_B9E575, $0229
	db !animation_command_80, $00

;$F975F0
krool_water_drop_3:
	db $0A : dw !water_drop_frame1
	db !animation_command_90 : dw CODE_B9E575, $0229
	db !animation_command_80, $00

;$F975FA
krool_water_drop_4:
	db $19 : dw !water_drop_frame1
	db !animation_command_90 : dw CODE_B9E575, $0229
	db !animation_command_80, $00

;$F97604
krool_water_drop_5:
	db $05 : dw !water_drop_frame2
	db $05 : dw !water_drop_frame3
	db $05 : dw !water_drop_frame4
	db $05 : dw !water_drop_frame5
	db !animation_command_81 : dw CODE_B9EF41
	db $05 : dw !water_drop_frame6
	db $05 : dw !water_drop_frame7
	db $05 : dw !water_drop_frame8
	db $05 : dw !water_drop_frame9
	db $05 : dw !water_drop_frame10
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F97627
krool_lost_soaked:
	db $0C : dw !krool_soaked_frame1
	db $0C : dw !krool_soaked_frame2
	db $0C : dw !krool_soaked_frame3
	db $0C : dw !krool_soaked_frame2
	db $0C : dw !krool_soaked_frame1
	db $0C : dw !krool_soaked_frame2
	db $0C : dw !krool_soaked_frame3
	db $0C : dw !krool_soaked_frame2
	db $0C : dw !krool_soaked_frame1
	db $0C : dw !krool_soaked_frame2
	db $0C : dw !krool_soaked_frame3
	db $0C : dw !krool_soaked_frame2
	db $0C : dw !krool_soaked_frame1
	db $0C : dw !krool_soaked_frame2
	db $0C : dw !krool_soaked_frame3
	db $0C : dw !krool_soaked_frame2
	db $0C : dw !krool_soaked_frame1
	db $0C : dw !krool_soaked_frame2
	db $0C : dw !krool_soaked_frame3
	db $0B : dw !krool_soaked_frame2
	db !animation_command_81 : dw CODE_B9EF44
	db $01 : dw !krool_soaked_frame2
	db !animation_command_8E : dw sound(7, !sound_krool_gun_exhaust)
	db !animation_command_81 : dw CODE_B9EFD9
	db $1A : dw !krool_soaked_frame1
	db !animation_command_81 : dw CODE_B9EF50
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9767A
krool_lost_gun_soaked:
	db $0C : dw !krool_gun_soaked_frame1
	db $0C : dw !krool_gun_soaked_frame2
	db $0C : dw !krool_gun_soaked_frame3
	db $0C : dw !krool_gun_soaked_frame2
	db $0C : dw !krool_gun_soaked_frame1
	db $0C : dw !krool_gun_soaked_frame2
	db $0C : dw !krool_gun_soaked_frame3
	db $0C : dw !krool_gun_soaked_frame2
	db $0C : dw !krool_gun_soaked_frame1
	db $0C : dw !krool_gun_soaked_frame2
	db $0C : dw !krool_gun_soaked_frame3
	db $0C : dw !krool_gun_soaked_frame2
	db $0C : dw !krool_gun_soaked_frame1
	db $0C : dw !krool_gun_soaked_frame2
	db $0C : dw !krool_gun_soaked_frame3
	db $0C : dw !krool_gun_soaked_frame2
	db $0C : dw !krool_gun_soaked_frame1
	db $0C : dw !krool_gun_soaked_frame2
	db $0C : dw !krool_gun_soaked_frame3
	db $0C : dw !krool_gun_soaked_frame2
	db $1A : dw !krool_gun_soaked_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F976BE
krool_fish:
	db $02 : dw !krool_fish_frame1
	db $02 : dw !krool_fish_frame2
	db $02 : dw !krool_fish_frame3
	db $02 : dw !krool_fish_frame4
	db $02 : dw !krool_fish_frame5
	db $02 : dw !krool_fish_frame6
	db $02 : dw !krool_fish_frame7
	db $02 : dw !krool_fish_frame8
	db $02 : dw !krool_fish_frame7
	db $02 : dw !krool_fish_frame6
	db $02 : dw !krool_fish_frame5
	db $02 : dw !krool_fish_frame4
	db $02 : dw !krool_fish_frame3
	db $02 : dw !krool_fish_frame2
	db !animation_command_80, $00

;$F976EA
donkey_shot_by_krool:
	db !animation_command_8E : dw sound(6, !sound_dk_oof)
	db $02 : dw !donkey_struggle_frame12
	db $02 : dw !donkey_struggle_frame11
	db $02 : dw !donkey_struggle_frame10
	db $0A : dw !donkey_struggle_frame9
	db $04 : dw !donkey_struggle_frame10
	db $06 : dw !donkey_struggle_frame11
	db $07 : dw !donkey_struggle_frame12
	db !animation_command_90 : dw CODE_B9E575, $0243
	db !animation_command_80, $00

;$F97709
donkey_rope_shot_by_krool:
	db $02 : dw !donkey_bindings_struggle_frame12
	db $02 : dw !donkey_bindings_struggle_frame11
	db $02 : dw !donkey_bindings_struggle_frame10
	db $0A : dw !donkey_bindings_struggle_frame9
	db $04 : dw !donkey_bindings_struggle_frame10
	db $06 : dw !donkey_bindings_struggle_frame11
	db $07 : dw !donkey_bindings_struggle_frame12
	db !animation_command_90 : dw CODE_B9E575, $0244
	db !animation_command_80, $00

;$F97725
krool_melee_donkey:
	db $14 : dw !krool_melee_frame5
	db $02 : dw !krool_melee_frame1
	db $02 : dw !krool_melee_frame2
	db $02 : dw !krool_melee_frame3
	db $02 : dw !krool_melee_frame4
	db !animation_command_81 : dw CODE_B9EF55
	db $08 : dw !krool_melee_frame4
	db $03 : dw !krool_melee_frame3
	db $04 : dw !krool_melee_frame2
	db $05 : dw !krool_melee_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97748
krool_gun_melee_donkey:
	db $14 : dw !krool_gun_melee_frame5
	db $02 : dw !krool_gun_melee_frame1
	db $02 : dw !krool_gun_melee_frame2
	db $02 : dw !krool_gun_melee_frame3
	db $02 : dw !krool_gun_melee_frame4
	db $08 : dw !krool_gun_melee_frame4
	db $03 : dw !krool_gun_melee_frame3
	db $04 : dw !krool_gun_melee_frame2
	db $05 : dw !krool_gun_melee_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97768
krool_melee_donkey_heavy:
	db $32 : dw !krool_melee_frame5
	db $02 : dw !krool_melee_frame1
	db $02 : dw !krool_melee_frame2
	db $02 : dw !krool_melee_frame3
	db $02 : dw !krool_melee_frame4
	db !animation_command_81 : dw CODE_B9EF55
	db $08 : dw !krool_melee_frame4
	db $03 : dw !krool_melee_frame3
	db $04 : dw !krool_melee_frame2
	db $05 : dw !krool_melee_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9778B
krool_gun_melee_donkey_heavy:
	db $32 : dw !krool_gun_melee_frame5
	db $02 : dw !krool_gun_melee_frame1
	db $02 : dw !krool_gun_melee_frame2
	db $02 : dw !krool_gun_melee_frame3
	db $02 : dw !krool_gun_melee_frame4
	db $08 : dw !krool_gun_melee_frame4
	db $03 : dw !krool_gun_melee_frame3
	db $04 : dw !krool_gun_melee_frame2
	db $05 : dw !krool_gun_melee_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F977AB
donkey_idle:
	db $04 : dw !donkey_struggle_frame13
	db !animation_command_8E : dw sound(7, !sound_dk_grunt)
	db $04 : dw !donkey_struggle_frame14
	db $04 : dw !donkey_struggle_frame15
	db $04 : dw !donkey_struggle_frame16
	db $04 : dw !donkey_struggle_frame17
	db $04 : dw !donkey_struggle_frame18
	db !animation_command_80, $00

;$F977C2
donkey_credits:
	db $04 : dw !donkey_struggle_frame13
	db $04 : dw !donkey_struggle_frame14
	db $04 : dw !donkey_struggle_frame15
	db $04 : dw !donkey_struggle_frame16
	db $04 : dw !donkey_struggle_frame17
	db $04 : dw !donkey_struggle_frame18
	db !animation_command_80, $00

;$F977D6
donkey_rope_idle:
	db $04 : dw !donkey_bindings_struggle_frame13
	db $04 : dw !donkey_bindings_struggle_frame14
	db $04 : dw !donkey_bindings_struggle_frame15
	db $04 : dw !donkey_bindings_struggle_frame16
	db $04 : dw !donkey_bindings_struggle_frame17
	db $04 : dw !donkey_bindings_struggle_frame18
	db !animation_command_80, $00

;$F977EA
donkey_hurt:
	db !animation_command_8E : dw sound(6, !sound_dk_oof)
	db $02 : dw !donkey_struggle_frame1
	db $02 : dw !donkey_struggle_frame2
	db $02 : dw !donkey_struggle_frame3
	db $02 : dw !donkey_struggle_frame4
	db $02 : dw !donkey_struggle_frame5
	db $02 : dw !donkey_struggle_frame6
	db $03 : dw !donkey_struggle_frame7
	db $03 : dw !donkey_struggle_frame8
	db $0A : dw !donkey_struggle_frame9
	db $08 : dw !donkey_struggle_frame10
	db $07 : dw !donkey_struggle_frame11
	db $06 : dw !donkey_struggle_frame12
	db !animation_command_90 : dw CODE_B9E575, $0243
	db !animation_command_80, $00

;$F97818
donkey_rope_hurt:
	db $02 : dw !donkey_bindings_struggle_frame1
	db $02 : dw !donkey_bindings_struggle_frame2
	db $02 : dw !donkey_bindings_struggle_frame3
	db $02 : dw !donkey_bindings_struggle_frame4
	db $02 : dw !donkey_bindings_struggle_frame5
	db $02 : dw !donkey_bindings_struggle_frame6
	db $03 : dw !donkey_bindings_struggle_frame7
	db $03 : dw !donkey_bindings_struggle_frame8
	db $0A : dw !donkey_bindings_struggle_frame9
	db $08 : dw !donkey_bindings_struggle_frame10
	db $07 : dw !donkey_bindings_struggle_frame11
	db $06 : dw !donkey_bindings_struggle_frame12
	db !animation_command_90 : dw CODE_B9E575, $0244
	db !animation_command_80, $00

;$F97843
donkey_scared:
	db $03 : dw !donkey_scared_frame1
	db $03 : dw !donkey_scared_frame2
	db $03 : dw !donkey_scared_frame3
	db $03 : dw !donkey_scared_frame4
	db $02 : dw !donkey_scared_frame5
	db $02 : dw !donkey_scared_frame6
	db $02 : dw !donkey_scared_frame7
	db $02 : dw !donkey_scared_frame6
	db $02 : dw !donkey_scared_frame5
	db $02 : dw !donkey_scared_frame6
	db $02 : dw !donkey_scared_frame7
	db $02 : dw !donkey_scared_frame6
	db $02 : dw !donkey_scared_frame5
	db $02 : dw !donkey_scared_frame6
	db $02 : dw !donkey_scared_frame7
	db $02 : dw !donkey_scared_frame6
	db $02 : dw !donkey_scared_frame5
	db $02 : dw !donkey_scared_frame6
	db $02 : dw !donkey_scared_frame7
	db $02 : dw !donkey_scared_frame6
	db $02 : dw !donkey_scared_frame5
	db $02 : dw !donkey_scared_frame6
	db !animation_command_8E : dw sound(6, !sound_kongs_scared)
	db $02 : dw !donkey_scared_frame7
	db $03 : dw !donkey_scared_frame8
	db $03 : dw !donkey_scared_frame9
	db $03 : dw !donkey_scared_frame10
	db $03 : dw !donkey_scared_frame11
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame13
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame13
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame13
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame13
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame13
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame13
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame13
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame13
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame13
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame13
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame13
	db $03 : dw !donkey_scared_frame12
	db $03 : dw !donkey_scared_frame11
	db !animation_command_81 : dw CODE_B9EF81
	db $03 : dw !donkey_scared_frame10
	db $03 : dw !donkey_scared_frame9
	db $03 : dw !donkey_scared_frame8
	db $03 : dw !donkey_scared_frame3
	db $03 : dw !donkey_scared_frame2
	db $03 : dw !donkey_scared_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F978F9
donkey_rope_scared:
	db $03 : dw !donkey_bindings_scared_frame1
	db $03 : dw !donkey_bindings_scared_frame2
	db $03 : dw !donkey_bindings_scared_frame3
	db $03 : dw !donkey_bindings_scared_frame4
	db $02 : dw !donkey_bindings_scared_frame5
	db $02 : dw !donkey_bindings_scared_frame6
	db $02 : dw !donkey_bindings_scared_frame7
	db $02 : dw !donkey_bindings_scared_frame6
	db $02 : dw !donkey_bindings_scared_frame5
	db $02 : dw !donkey_bindings_scared_frame6
	db $02 : dw !donkey_bindings_scared_frame7
	db $02 : dw !donkey_bindings_scared_frame6
	db $02 : dw !donkey_bindings_scared_frame5
	db $02 : dw !donkey_bindings_scared_frame6
	db $02 : dw !donkey_bindings_scared_frame7
	db $02 : dw !donkey_bindings_scared_frame6
	db $02 : dw !donkey_bindings_scared_frame5
	db $02 : dw !donkey_bindings_scared_frame6
	db $02 : dw !donkey_bindings_scared_frame7
	db $02 : dw !donkey_bindings_scared_frame6
	db $02 : dw !donkey_bindings_scared_frame5
	db $02 : dw !donkey_bindings_scared_frame6
	db $02 : dw !donkey_bindings_scared_frame7
	db $03 : dw !donkey_bindings_scared_frame8
	db $03 : dw !donkey_bindings_scared_frame9
	db $03 : dw !donkey_bindings_scared_frame10
	db $03 : dw !donkey_bindings_scared_frame11
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame13
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame13
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame13
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame13
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame13
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame13
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame13
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame13
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame13
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame13
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame13
	db $03 : dw !donkey_bindings_scared_frame12
	db $03 : dw !donkey_bindings_scared_frame11
	db $03 : dw !donkey_bindings_scared_frame10
	db $03 : dw !donkey_bindings_scared_frame9
	db $03 : dw !donkey_bindings_scared_frame8
	db $03 : dw !donkey_bindings_scared_frame3
	db $03 : dw !donkey_bindings_scared_frame2
	db $03 : dw !donkey_bindings_scared_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F979A9
donkey_free:
	db $04 : dw !donkey_freed_frame1
	db $04 : dw !donkey_freed_frame2
	db $04 : dw !donkey_freed_frame3
	db $04 : dw !donkey_freed_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F979BA
donkey_punch:
	db $04 : dw !donkey_freed_frame5
	db $04 : dw !donkey_freed_frame6
	db $04 : dw !donkey_freed_frame7
	db $0A : dw !donkey_freed_frame8
	db $23 : dw !donkey_punch_frame1
	db $01 : dw !donkey_punch_frame2
	db $02 : dw !donkey_punch_frame3
	db $01 : dw !donkey_punch_frame4
	db $02 : dw !donkey_punch_frame5
	db $01 : dw !donkey_punch_frame6
	db !animation_command_8E : dw sound(5, !sound_dk_punch_krool)
	db $02 : dw !donkey_punch_frame7
	db !animation_command_81 : dw CODE_B9EF8B
	db $04 : dw !donkey_punch_frame8
	db $06 : dw !donkey_punch_frame9
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F979EC
krool_donkey_punched:
	db $01 : dw !krool_hurt_frame3
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F979F4
krool_gun_donkey_punched:
	db $01 : dw !krool_gun_hurt_frame3
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F979FC
krool_shoot_donkey:
	db $0A : dw !krool_shoot_frame1
	db $05 : dw !krool_shoot_frame2
	db $14 : dw !krool_shoot_frame3
	db $08 : dw !krool_shoot_frame2
	db !animation_command_90 : dw CODE_B9E575, $025E
	db !animation_command_80, $00

;$F97A0F
krool_gun_shoot_donkey:
	db $0A : dw !krool_gun_shoot_frame1
	db $05 : dw !krool_gun_shoot_frame2
	db $14 : dw !krool_gun_shoot_frame3
	db $08 : dw !krool_gun_shoot_frame2
	db !animation_command_90 : dw CODE_B9E575, $025F
	db !animation_command_80, $00

;$F97A22
donkey_rope_upper:
	db $01 : dw !donkey_rope_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97A2A
krool_idle:
	db $0C : dw !krool_shoot_frame1
	db $0C : dw !krool_idle_frame1
	db $0C : dw !krool_idle_frame2
	db $0C : dw !krool_idle_frame1
	db !animation_command_80, $00

;$F97A38
krool_gun_idle:
	db $0C : dw !krool_gun_shoot_frame1
	db $0C : dw !krool_gun_idle_frame1
	db $0C : dw !krool_gun_idle_frame2
	db $0C : dw !krool_gun_idle_frame1
	db !animation_command_80, $00

;$F97A46
krool_gun_recovered_wait:
	db $01 : dw !krool_gun_shoot_frame1

DATA_F97A49:
	db $0C : dw !krool_gun_shoot_frame1
	db $0C : dw !krool_gun_idle_frame1
	db $0C : dw !krool_gun_idle_frame2
	db $0C : dw !krool_gun_idle_frame1
	db !animation_command_82 : dw DATA_F97A49
	db !animation_command_80, $00

;$F97A5A
krool_dash:
	db $04 : dw !krool_move_frame1
	db $04 : dw !krool_move_frame2
	db $04 : dw !krool_move_frame3
	db !animation_command_81 : dw CODE_B9EFC5
	db $1E : dw !krool_move_frame4
	db !animation_command_81 : dw CODE_B9EFCA
	db $2D : dw !krool_move_frame5
	db !animation_command_81 : dw CODE_B9EFC5
	db $1E : dw !krool_move_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97A7A
krool_gun_dash:
	db $04 : dw !krool_gun_move_frame1
	db $04 : dw !krool_gun_move_frame2
	db $04 : dw !krool_gun_move_frame3
	db $1E : dw !krool_gun_move_frame4
	db $1E : dw !krool_gun_move_frame5
	db $1E : dw !krool_gun_move_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97A91
krool_dash_end:
	db $05 : dw !krool_turn_frame1
	db $05 : dw !krool_turn_frame2
	db !animation_command_81 : dw CODE_B9EFED
	db $04 : dw !krool_turn_frame1
	db $05 : dw !krool_move_frame4
	db $04 : dw !krool_move_frame3
	db $05 : dw !krool_move_frame2
	db $04 : dw !krool_move_frame1
	db !animation_command_90 : dw CODE_B9E575, $025E
	db !animation_command_80, $00

;$F97AB0
krool_gun_dash_end:
	db $05 : dw !krool_gun_turn_graphic
	db !animation_command_81 : dw CODE_B9EFB1
	db $05 : dw !krool_gun_turn_graphic
	db !animation_command_81 : dw CODE_B9EFB6
	db $04 : dw !krool_gun_turn_graphic
	db $05 : dw !krool_gun_move_frame4
	db $04 : dw !krool_gun_move_frame3
	db $05 : dw !krool_gun_move_frame2
	db $04 : dw !krool_gun_move_frame1
	db !animation_command_90 : dw CODE_B9E575, $025F
	db !animation_command_80, $00

;$F97AD2
krool_shoot:
	db $0A : dw !krool_shoot_frame1
	db $05 : dw !krool_shoot_frame2
	db $14 : dw !krool_shoot_frame3
	db $08 : dw !krool_shoot_frame2
	db !animation_command_90 : dw CODE_B9E575, $025E
	db !animation_command_80, $00

;$F97AE5
krool_gun_shoot:
	db $0A : dw !krool_gun_shoot_frame1
	db $05 : dw !krool_gun_shoot_frame2
	db $14 : dw !krool_gun_shoot_frame3
	db $08 : dw !krool_gun_shoot_frame2
	db !animation_command_90 : dw CODE_B9E575, $025F
	db !animation_command_80, $00

;$F97AF8
krool_shoot_fish:
	db $0A : dw !krool_shoot_frame1
	db $05 : dw !krool_shoot_frame2
	db $14 : dw !krool_shoot_frame3
	db $08 : dw !krool_shoot_frame2
	db $14 : dw !krool_shoot_frame1
	db $3C : dw !krool_concerned_graphic
	db !animation_command_90 : dw CODE_B9E575, $025E
	db !animation_command_80, $00

;$F97B11
krool_gun_shoot_fish:
	db $0A : dw !krool_gun_shoot_frame1
	db $05 : dw !krool_gun_shoot_frame2
	db $14 : dw !krool_gun_shoot_frame3
	db $08 : dw !krool_gun_shoot_frame2
	db $14 : dw !krool_gun_shoot_frame1
	db $3C : dw !krool_gun_concerned_graphic
	db !animation_command_90 : dw CODE_B9E575, $025F
	db !animation_command_80, $00

;$F97B2A
krool_cannon_ball_spikes_expanded:
	db !animation_command_8E : dw sound(5, !sound_krool_cannonball_spikes)
	db $04 : dw !spiked_cannonball_frame3
	db $04 : dw !spiked_cannonball_frame4
	db !animation_command_81 : dw CODE_B9EF90
	db $04 : dw !spiked_cannonball_frame5
	db $04 : dw !spiked_cannonball_frame6
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97B41
krool_cannon_ball_spikes_retracted:
	db $04 : dw !spiked_cannonball_frame2
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97B49
krool_cannon_ball_spiked:
	db $0D : dw !spiked_cannonball_frame1
	db $0D : dw !spiked_cannonball_frame2
	db !animation_command_81 : dw CODE_B9EF9A
	db $0D : dw !spiked_cannonball_frame3
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97B5A
krool_cannon_ball_spikes_removed:
	db !animation_command_8E : dw sound(5, !sound_krool_cannonball_spikes)
	db $04 : dw !spiked_cannonball_frame5
	db $04 : dw !spiked_cannonball_frame4
	db !animation_command_81 : dw CODE_B9EF95
	db $04 : dw !spiked_cannonball_frame3
	db $04 : dw !spiked_cannonball_frame2
	db $04 : dw !spiked_cannonball_frame1
	db $01 : dw !cannonball_frame1
	db !animation_command_81 : dw CODE_B9EFA2
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97B7A
krool_dash_fire:
	db $03 : dw !krool_gun_fire_frame1
	db $03 : dw !krool_gun_fire_frame2
	db $03 : dw !krool_gun_fire_frame3
	db $03 : dw !krool_gun_fire_frame4
	db $03 : dw !krool_gun_fire_frame5
	db $03 : dw !krool_gun_fire_frame6
	db $03 : dw !krool_gun_fire_frame7
	db $03 : dw !krool_gun_fire_frame8
	db !animation_command_80, $00

;$F97B94
krool_vacuum:
	db $04 : dw !krool_vacuum_frame1
	db $04 : dw !krool_vacuum_frame2
	db !animation_command_80, $00

;$F97B9C
krool_gun_vacuum:
	db $04 : dw !krool_gun_vacuum_frame1
	db $04 : dw !krool_gun_vacuum_frame2
	db !animation_command_80, $00

;$F97BA4
krool_vacuum_particles:
	db $04 : dw !krool_vacuum_particles_frame8
	db $04 : dw !krool_vacuum_particles_frame7
	db $04 : dw !krool_vacuum_particles_frame6
	db $04 : dw !krool_vacuum_particles_frame5
	db $04 : dw !krool_vacuum_particles_frame4
	db $04 : dw !krool_vacuum_particles_frame3
	db $04 : dw !krool_vacuum_particles_frame2
	db $04 : dw !krool_vacuum_particles_frame1
	db !animation_command_80, $00

;$F97BBE
krool_melee:
	db $39 : dw !krool_melee_frame5
	db !animation_command_81 : dw CODE_B9EFCF
	db $02 : dw !krool_melee_frame1
	db $02 : dw !krool_melee_frame2
	db $02 : dw !krool_melee_frame3
	db $02 : dw !krool_melee_frame4
	db !animation_command_81 : dw CODE_B9EFD4
	db $12 : dw !krool_melee_frame4
	db $05 : dw !krool_melee_frame3
	db $06 : dw !krool_melee_frame2
	db $07 : dw !krool_melee_frame1
	db $06 : dw !krool_vacuum_frame2
	db $06 : dw !krool_vacuum_frame1
	db $07 : dw !krool_shoot_frame1
	db !animation_command_81 : dw CODE_B9EFC0
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97BF0
krool_gun_melee:
	db $39 : dw !krool_gun_melee_frame5
	db $02 : dw !krool_gun_melee_frame1
	db $02 : dw !krool_gun_melee_frame2
	db $02 : dw !krool_gun_melee_frame3
	db $14 : dw !krool_gun_melee_frame4
	db $05 : dw !krool_gun_melee_frame3
	db $06 : dw !krool_gun_melee_frame2
	db $07 : dw !krool_gun_melee_frame1
	db $06 : dw !krool_gun_vacuum_frame2
	db $06 : dw !krool_gun_vacuum_frame1
	db $07 : dw !krool_gun_shoot_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97C16
smoke_cloud_4:
	db $02 : dw !smoke_puff_3_frame1
	db $02 : dw !smoke_puff_3_frame2
	db $02 : dw !smoke_puff_3_frame3
	db $02 : dw !smoke_puff_3_frame4
	db $02 : dw !smoke_puff_3_frame5
	db $02 : dw !smoke_puff_3_frame6
	db $02 : dw !smoke_puff_3_frame7
	db $02 : dw !smoke_puff_3_frame8
	db $02 : dw !smoke_puff_3_frame9
	db $02 : dw !smoke_puff_3_frame10
	db $02 : dw !smoke_puff_3_frame11
	db $02 : dw !smoke_puff_3_frame12
	db $02 : dw !smoke_puff_3_frame13
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F97C42
krool_backfire:
	db !animation_command_8E : dw sound(5, !sound_cannon_load)
	db $08 : dw !krool_shoot_frame1
	db $04 : dw !krool_shoot_frame2
	db $0D : dw !krool_shoot_frame3
	db $04 : dw !krool_shoot_frame2
	db $14 : dw !krool_shoot_frame1
	db $1E : dw !krool_concerned_graphic
	db !animation_command_81 : dw CODE_B9EFBB
	db $18 : dw !krool_shoot_frame1
	db !animation_command_81 : dw CODE_B9EFBB
	db $23 : dw !krool_concerned_graphic
	db !animation_command_8E : dw sound(5, !sound_explosion)
	db !animation_command_81 : dw CODE_B9EFA7
	db $17 : dw !krool_concerned_graphic
	db !animation_command_81 : dw CODE_B9EFDE
	db $78 : dw !krool_soot_graphic
	db !animation_command_8E : dw sound(7, !sound_krool_gun_exhaust)
	db !animation_command_81 : dw CODE_B9EFD9
	db $1A : dw !krool_soot_graphic
	db !animation_command_81 : dw CODE_B9EFAC
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97C83
krool_gun_backfire:
	db $08 : dw !krool_gun_shoot_frame1
	db $04 : dw !krool_gun_shoot_frame2
	db $0D : dw !krool_gun_shoot_frame3
	db $04 : dw !krool_gun_shoot_frame2
	db $14 : dw !krool_gun_shoot_frame1
	db $1E : dw !krool_gun_concerned_graphic
	db $18 : dw !krool_gun_shoot_frame1
	db $23 : dw !krool_gun_concerned_graphic
	db $17 : dw !krool_gun_concerned_graphic
	db !animation_command_81 : dw CODE_B9EFB1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97CA6
krool_backfire_final:
	db !animation_command_8E : dw sound(5, !sound_cannon_load)
	db $08 : dw !krool_shoot_frame1
	db $04 : dw !krool_shoot_frame2
	db $0D : dw !krool_shoot_frame3
	db $04 : dw !krool_shoot_frame2
	db $11 : dw !krool_shoot_frame1
	db $37 : dw !krool_concerned_graphic
	db $14 : dw !krool_shoot_frame1
	db $0F : dw !krool_concerned_graphic
	db $0F : dw !krool_shoot_frame1
	db $0A : dw !krool_concerned_graphic
	db $0A : dw !krool_shoot_frame1
	db $05 : dw !krool_concerned_graphic
	db $05 : dw !krool_shoot_frame1
	db !animation_command_81 : dw CODE_B9EFBB
	db $0D : dw !krool_shoot_frame1
	db !animation_command_81 : dw CODE_B9EFBB
	db $1A : dw !krool_shoot_frame1
	db !animation_command_8E : dw sound(5, !sound_explosion)
	db !animation_command_81 : dw CODE_B9EFA7
	db $17 : dw !krool_concerned_graphic
	db !animation_command_81 : dw CODE_B9EFDE
	db $78 : dw !krool_soot_graphic
	db !animation_command_8E : dw sound(7, !sound_krool_gun_exhaust)
	db !animation_command_81 : dw CODE_B9EFD9
	db $1A : dw !krool_soot_graphic
	db !animation_command_81 : dw CODE_B9EFAC
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97CFC
krool_gun_backfire_final:
	db $08 : dw !krool_gun_shoot_frame1
	db $04 : dw !krool_gun_shoot_frame2
	db $0D : dw !krool_gun_shoot_frame3
	db $04 : dw !krool_gun_shoot_frame2
	db $11 : dw !krool_gun_shoot_frame1
	db $37 : dw !krool_gun_concerned_graphic
	db $14 : dw !krool_gun_shoot_frame1
	db $0F : dw !krool_gun_concerned_graphic
	db $0F : dw !krool_gun_shoot_frame1
	db $0A : dw !krool_gun_concerned_graphic
	db $0A : dw !krool_gun_shoot_frame1
	db $05 : dw !krool_gun_concerned_graphic
	db $05 : dw !krool_gun_shoot_frame1
	db $0D : dw !krool_gun_shoot_frame1
	db $1F : dw !krool_gun_shoot_frame1
	db $17 : dw !krool_gun_concerned_graphic
	db !animation_command_81 : dw CODE_B9EFB1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97D34
krool_fireball:
	db $02 : dw !tnt_explosion_frame1
	db $03 : dw !tnt_explosion_frame2
	db $02 : dw !tnt_explosion_frame3
	db $03 : dw !tnt_explosion_frame4
	db $02 : dw !tnt_explosion_frame5
	db $03 : dw !tnt_explosion_frame6
	db $02 : dw !tnt_explosion_frame7
	db $03 : dw !tnt_explosion_frame8
	db $02 : dw !tnt_explosion_frame9
	db $03 : dw !tnt_explosion_frame10
	db $02 : dw !tnt_explosion_frame11
	db $03 : dw !tnt_explosion_frame12
	db $02 : dw !tnt_explosion_frame13
	db $03 : dw !tnt_explosion_frame14
	db $02 : dw !tnt_explosion_frame15
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F97D66
krool_soot_eyes_blink:
	db $46 : dw !krool_soot_eyes_frame1
	db !animation_command_8E : dw sound(6, !sound_krool_blink)
	db $03 : dw !krool_soot_eyes_frame2
	db !animation_command_81 : dw CODE_B9EFB1
	db $03 : dw !krool_soot_eyes_frame2
	db !animation_command_81 : dw CODE_B9EFB6
	db $03 : dw !krool_soot_eyes_frame2
	db $0E : dw !krool_soot_eyes_frame1
	db !animation_command_8E : dw sound(6, !sound_krool_blink)
	db $03 : dw !krool_soot_eyes_frame2
	db !animation_command_81 : dw CODE_B9EFB1
	db $03 : dw !krool_soot_eyes_frame2
	db !animation_command_81 : dw CODE_B9EFB6
	db $03 : dw !krool_soot_eyes_frame2
	db $0E : dw !krool_soot_eyes_frame1
	db !animation_command_8E : dw sound(6, !sound_krool_blink)
	db $03 : dw !krool_soot_eyes_frame2
	db !animation_command_81 : dw CODE_B9EFB1
	db $03 : dw !krool_soot_eyes_frame2
	db !animation_command_81 : dw CODE_B9EFB6
	db $03 : dw !krool_soot_eyes_frame2
	db !animation_command_80, $00

;$F97DA7
krool_soot_eyes_angry:
	db !animation_command_81 : dw CODE_B9EFB6
	db $32 : dw !krool_soot_eyes_frame2
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97DB2
fireball_explosion_2:
	db $03 : dw !smoke_puff_frame1
	db $03 : dw !smoke_puff_frame2
	db $03 : dw !smoke_puff_frame3
	db $03 : dw !smoke_puff_frame4
	db $03 : dw !smoke_puff_frame5
	db $03 : dw !smoke_puff_frame6
	db $03 : dw !smoke_puff_frame7
	db $03 : dw !smoke_puff_frame8
	db $03 : dw !smoke_puff_frame9
	db $03 : dw !smoke_puff_frame10
	db $03 : dw !smoke_puff_frame11
	db $03 : dw !smoke_puff_frame12
	db $03 : dw !smoke_puff_frame13
	db $03 : dw !smoke_puff_frame14
	db $03 : dw !smoke_puff_frame15
	db $03 : dw !smoke_puff_frame16
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F97DE7
krool_backfire_sparks:
	db $02 : dw !krool_backfire_sparks_frame1
	db $02 : dw !krool_backfire_sparks_frame2
	db $02 : dw !krool_backfire_sparks_frame3
	db $02 : dw !krool_backfire_sparks_frame4
	db $02 : dw !krool_backfire_sparks_frame5
	db $02 : dw !krool_backfire_sparks_frame6
	db $02 : dw !krool_backfire_sparks_frame7
	db $02 : dw !krool_backfire_sparks_frame8
	db $02 : dw !krool_backfire_sparks_frame9
	db $02 : dw !krool_backfire_sparks_frame10
	db $02 : dw !krool_backfire_sparks_frame11
	db $02 : dw !krool_backfire_sparks_frame12
	db $02 : dw !krool_backfire_sparks_frame13
	db $02 : dw !krool_backfire_sparks_frame14
	db $02 : dw !krool_backfire_sparks_frame15
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F97E19
krool_stun:
	db !animation_command_8E : dw sound(5, !sound_krool_down)
	db $0C : dw !krool_shoot_frame1
	db $07 : dw !krool_hurt_frame1
	db $07 : dw !krool_hurt_frame2
	db $07 : dw !krool_hurt_frame3
	db $07 : dw !krool_hurt_frame4
	db $07 : dw !krool_hurt_frame5
	db $07 : dw !krool_hurt_frame6
	db $07 : dw !krool_hurt_frame7
	db $07 : dw !krool_hurt_frame8
	db $14 : dw !krool_hurt_frame9
	db !animation_command_81 : dw CODE_B9EF7C
	db $50 : dw !krool_hurt_frame9
	db !animation_command_81 : dw CODE_B9EFE3
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97E48
krool_gun_stun:
	db $0C : dw !krool_gun_shoot_frame1
	db $07 : dw !krool_gun_hurt_frame1
	db $07 : dw !krool_gun_hurt_frame2
	db $07 : dw !krool_gun_hurt_frame3
	db $07 : dw !krool_gun_hurt_frame4
	db $07 : dw !krool_gun_hurt_frame5
	db $07 : dw !krool_gun_hurt_frame6
	db $07 : dw !krool_gun_hurt_frame7
	db $07 : dw !krool_gun_hurt_frame8
	db $07 : dw !krool_gun_hurt_frame9
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97E6B
krool_stun_recover:
	db !animation_command_8E : dw sound(5, !sound_krool_blink)
	db !animation_command_81 : dw CODE_B9EF77
	db $05 : dw !krool_hurt_frame8
	db $05 : dw !krool_hurt_frame7
	db $05 : dw !krool_hurt_frame6
	db $05 : dw !krool_hurt_frame5
	db $05 : dw !krool_hurt_frame4
	db $05 : dw !krool_hurt_frame3
	db $05 : dw !krool_hurt_frame2
	db $05 : dw !krool_hurt_frame1
	db !animation_command_81 : dw CODE_B9EF9D
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97E91
krool_gun_stun_recover:
	db $05 : dw !krool_gun_hurt_frame8
	db $05 : dw !krool_gun_hurt_frame7
	db $05 : dw !krool_gun_hurt_frame6
	db $05 : dw !krool_gun_hurt_frame5
	db $05 : dw !krool_gun_hurt_frame4
	db $05 : dw !krool_gun_hurt_frame3
	db $05 : dw !krool_gun_hurt_frame2
	db $05 : dw !krool_gun_hurt_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97EAE
krool_stun_2:
	db !animation_command_8E : dw sound(5, !sound_krool_down)
	db $0C : dw !krool_shoot_frame1
	db $07 : dw !krool_hurt_frame1
	db $07 : dw !krool_hurt_frame2
	db $07 : dw !krool_hurt_frame3
	db $07 : dw !krool_hurt_frame4
	db $07 : dw !krool_hurt_frame5
	db $07 : dw !krool_hurt_frame6
	db $07 : dw !krool_hurt_frame7
	db $07 : dw !krool_hurt_frame8
	db $07 : dw !krool_hurt_frame7
	db $04 : dw !krool_hurt_frame8
	db $14 : dw !krool_hurt_frame9
	db !animation_command_81 : dw CODE_B9EF7C
	db $50 : dw !krool_hurt_frame9
	db !animation_command_81 : dw CODE_B9EFE3
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97EE3
krool_gun_stun_2:
	db $0C : dw !krool_gun_shoot_frame1
	db $07 : dw !krool_gun_hurt_frame1
	db $07 : dw !krool_gun_hurt_frame2
	db $07 : dw !krool_gun_hurt_frame3
	db $07 : dw !krool_gun_hurt_frame4
	db $07 : dw !krool_gun_hurt_frame5
	db $07 : dw !krool_gun_hurt_frame6
	db $07 : dw !krool_gun_hurt_frame7
	db $07 : dw !krool_gun_hurt_frame8
	db $07 : dw !krool_gun_hurt_frame7
	db $04 : dw !krool_gun_hurt_frame8
	db $64 : dw !krool_gun_hurt_frame9
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97F0C
krool_stun_recover_2:
	db !animation_command_8E : dw sound(5, !sound_krool_blink)
	db !animation_command_81 : dw CODE_B9EF77
	db $0A : dw !krool_hurt_frame8
	db $05 : dw !krool_hurt_frame9
	db $0A : dw !krool_hurt_frame8
	db $05 : dw !krool_hurt_frame9
	db $05 : dw !krool_hurt_frame7
	db $05 : dw !krool_hurt_frame6
	db $05 : dw !krool_hurt_frame5
	db $05 : dw !krool_hurt_frame4
	db $05 : dw !krool_hurt_frame3
	db $05 : dw !krool_hurt_frame2
	db $05 : dw !krool_hurt_frame1
	db !animation_command_81 : dw CODE_B9EF81
	db !animation_command_81 : dw CODE_B9EF9D
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97F3E
krool_gun_stun_recover_2:
	db $0A : dw !krool_gun_hurt_frame8
	db $05 : dw !krool_gun_hurt_frame9
	db $0A : dw !krool_gun_hurt_frame8
	db $05 : dw !krool_gun_hurt_frame9
	db $05 : dw !krool_gun_hurt_frame7
	db $05 : dw !krool_gun_hurt_frame6
	db $05 : dw !krool_gun_hurt_frame5
	db $05 : dw !krool_gun_hurt_frame4
	db $05 : dw !krool_gun_hurt_frame3
	db $05 : dw !krool_gun_hurt_frame2
	db $05 : dw !krool_gun_hurt_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97F64
krool_stun_3:
	db !animation_command_8E : dw sound(5, !sound_krool_down)
	db !animation_command_81 : dw CODE_B9EF5A
	db $0C : dw !krool_shoot_frame1
	db $07 : dw !krool_hurt_frame1
	db $07 : dw !krool_hurt_frame2
	db $07 : dw !krool_hurt_frame3
	db $07 : dw !krool_hurt_frame4
	db $07 : dw !krool_hurt_frame5
	db $07 : dw !krool_hurt_frame6
	db $07 : dw !krool_hurt_frame7
	db $07 : dw !krool_hurt_frame8
	db $07 : dw !krool_hurt_frame9
	db $0A : dw !krool_hurt_frame8
	db !animation_command_81 : dw CODE_B9EF86
	db $5A : dw !krool_hurt_frame9
	db $06 : dw !krool_hurt_frame8
	db $14 : dw !krool_hurt_frame9
	db $06 : dw !krool_hurt_frame8
	db $0F : dw !krool_hurt_frame9
	db $06 : dw !krool_hurt_frame8
	db $06 : dw !krool_hurt_frame9
	db $06 : dw !krool_hurt_frame8
	db $06 : dw !krool_hurt_frame9
	db $06 : dw !krool_hurt_frame8
	db $06 : dw !krool_hurt_frame7
	db $06 : dw !krool_hurt_frame6
	db $06 : dw !krool_hurt_frame5
	db $06 : dw !krool_hurt_frame4
	db $06 : dw !krool_hurt_frame3
	db $06 : dw !krool_hurt_frame2
	db $06 : dw !krool_hurt_frame1
	db $2D : dw !krool_shoot_frame1
	db $14 : dw !krool_concerned_graphic
	db $0A : dw !krool_shoot_frame1
	db $08 : dw !krool_concerned_graphic
	db $08 : dw !krool_shoot_frame1
	db $06 : dw !krool_concerned_graphic
	db $06 : dw !krool_shoot_frame1
	db $04 : dw !krool_concerned_graphic
	db $04 : dw !krool_shoot_frame1
	db $04 : dw !krool_concerned_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F97FE4
krool_gun_stun_3:
	db $0C : dw !krool_gun_shoot_frame1
	db $07 : dw !krool_gun_hurt_frame1
	db $07 : dw !krool_gun_hurt_frame2
	db $07 : dw !krool_gun_hurt_frame3
	db $07 : dw !krool_gun_hurt_frame4
	db $07 : dw !krool_gun_hurt_frame5
	db $07 : dw !krool_gun_hurt_frame6
	db $07 : dw !krool_gun_hurt_frame7
	db $07 : dw !krool_gun_hurt_frame8
	db $07 : dw !krool_gun_hurt_frame9
	db $0A : dw !krool_gun_hurt_frame8
	db $5A : dw !krool_gun_hurt_frame9
	db $06 : dw !krool_gun_hurt_frame8
	db $14 : dw !krool_gun_hurt_frame9
	db $06 : dw !krool_gun_hurt_frame8
	db $0F : dw !krool_gun_hurt_frame9
	db $06 : dw !krool_gun_hurt_frame8
	db $06 : dw !krool_gun_hurt_frame9
	db $06 : dw !krool_gun_hurt_frame8
	db $06 : dw !krool_gun_hurt_frame9
	db $06 : dw !krool_gun_hurt_frame8
	db $06 : dw !krool_gun_hurt_frame7
	db $06 : dw !krool_gun_hurt_frame6
	db $06 : dw !krool_gun_hurt_frame5
	db $06 : dw !krool_gun_hurt_frame4
	db $06 : dw !krool_gun_hurt_frame3
	db $06 : dw !krool_gun_hurt_frame2
	db $06 : dw !krool_gun_hurt_frame1
	db $2D : dw !krool_gun_shoot_frame1
	db $14 : dw !krool_gun_concerned_graphic
	db $0A : dw !krool_gun_shoot_frame1
	db $08 : dw !krool_gun_concerned_graphic
	db $08 : dw !krool_gun_shoot_frame1
	db $06 : dw !krool_gun_concerned_graphic
	db $06 : dw !krool_gun_shoot_frame1
	db $04 : dw !krool_gun_concerned_graphic
	db $04 : dw !krool_gun_shoot_frame1
	db $04 : dw !krool_gun_concerned_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9805B
krool_cannon_ball_from_barrel:
	db $03 : dw !cannonball_frame1
	db $03 : dw !cannonball_frame2
	db $03 : dw !cannonball_frame3
	db $03 : dw !cannonball_frame4
	db !animation_command_80, $00

;$F98069
DATA_F98069:
	db $02 : dw !barrel_roll_frame8
	db $02 : dw !barrel_roll_frame7
	db $02 : dw !barrel_roll_frame6
	db $02 : dw !barrel_roll_frame5
	db $02 : dw !barrel_roll_frame4
	db $02 : dw !barrel_roll_frame3
	db $02 : dw !barrel_roll_frame2
	db $02 : dw !barrel_roll_frame1
	db !animation_command_80, $00

;$F98083
krool_barrel:
	db $02 : dw !barrel_roll_frame1
	db $02 : dw !barrel_roll_frame2
	db $02 : dw !barrel_roll_frame3
	db $02 : dw !barrel_roll_frame4
	db $02 : dw !barrel_roll_frame5
	db $02 : dw !barrel_roll_frame6
	db $02 : dw !barrel_roll_frame7
	db $02 : dw !barrel_roll_frame8
	db !animation_command_80, $00

;$F9809D
krool_gas_cloud:
	db $04 : dw !krool_gas_cloud_frame1
	db $04 : dw !krool_gas_cloud_frame2
	db $04 : dw !krool_gas_cloud_frame3
	db $04 : dw !krool_gas_cloud_frame4
	db $04 : dw !krool_gas_cloud_frame5
	db $04 : dw !krool_gas_cloud_frame6
	db $04 : dw !krool_gas_cloud_frame7
	db $04 : dw !krool_gas_cloud_frame8
	db !animation_command_80, $00

;$F980B7
king_zing_idle:
	db $03 : dw !king_zing_idle_frame1
	db $03 : dw !king_zing_idle_frame2
	db $03 : dw !king_zing_idle_frame3
	db $03 : dw !king_zing_idle_frame4
	db $03 : dw !king_zing_idle_frame5
	db $03 : dw !king_zing_idle_frame6
	db $03 : dw !king_zing_idle_frame7
	db $03 : dw !king_zing_idle_frame8
	db !animation_command_80, $00

;$F980D1
king_zing_turn:
	db $04 : dw !king_zing_turn_frame1
	db $04 : dw !king_zing_turn_frame2
	db !animation_command_81 : dw CODE_B9EFED
	db $04 : dw !king_zing_turn_frame1
	db !animation_command_81 : dw CODE_B9EFF2
	db !animation_command_90 : dw CODE_B9E575, $0230
	db !animation_command_80, $00

;$F980E7
king_zing_stinger_idle:
	db $03 : dw !king_zing_stinger_idle_frame1
	db $03 : dw !king_zing_stinger_idle_frame2
	db $03 : dw !king_zing_stinger_idle_frame3
	db $03 : dw !king_zing_stinger_idle_frame4
	db $03 : dw !king_zing_stinger_idle_frame5
	db $03 : dw !king_zing_stinger_idle_frame6
	db $03 : dw !king_zing_stinger_idle_frame7
	db $03 : dw !king_zing_stinger_idle_frame8
	db !animation_command_80, $00

;$F98101
king_zing_stinger_turn:
	db $04 : dw !king_zing_stinger_turn_frame1
	db $04 : dw !king_zing_stinger_turn_frame2
	db $04 : dw !king_zing_stinger_turn_frame1
	db !animation_command_90 : dw CODE_B9E575, $0232
	db !animation_command_80, $00

;$F98111
king_zing_hurt:
	db $02 : dw !king_zing_hurt_frame1
	db $03 : dw !king_zing_hurt_frame2
	db $05 : dw !king_zing_hurt_frame3
	db $05 : dw !king_zing_hurt_frame4
	db $05 : dw !king_zing_hurt_frame3
	db $05 : dw !king_zing_hurt_frame4
	db $05 : dw !king_zing_hurt_frame3
	db $05 : dw !king_zing_hurt_frame4
	db $05 : dw !king_zing_hurt_frame3
	db $05 : dw !king_zing_hurt_frame4
	db $05 : dw !king_zing_hurt_frame3
	db $05 : dw !king_zing_hurt_frame4
	db $05 : dw !king_zing_hurt_frame3
	db $05 : dw !king_zing_hurt_frame4
	db $05 : dw !king_zing_hurt_frame3
	db $05 : dw !king_zing_hurt_frame2
	db $06 : dw !king_zing_hurt_frame1
	db !animation_command_81 : dw CODE_B9F01F
	db !animation_command_90 : dw CODE_B9E575, $0230
	db !animation_command_80, $00

;$F9814E
king_zing_stinger_hurt:
	db $03 : dw !king_zing_stinger_hurt_frame1
	db $03 : dw !king_zing_stinger_hurt_frame2
	db $05 : dw !king_zing_stinger_hurt_frame3
	db $05 : dw !king_zing_stinger_hurt_frame4
	db $05 : dw !king_zing_stinger_hurt_frame3
	db $05 : dw !king_zing_stinger_hurt_frame4
	db $05 : dw !king_zing_stinger_hurt_frame3
	db $05 : dw !king_zing_stinger_hurt_frame4
	db $05 : dw !king_zing_stinger_hurt_frame3
	db $05 : dw !king_zing_stinger_hurt_frame4
	db $05 : dw !king_zing_stinger_hurt_frame3
	db $05 : dw !king_zing_stinger_hurt_frame4
	db $05 : dw !king_zing_stinger_hurt_frame3
	db $05 : dw !king_zing_stinger_hurt_frame4
	db $05 : dw !king_zing_stinger_hurt_frame3
	db $05 : dw !king_zing_stinger_hurt_frame2
	db $06 : dw !king_zing_stinger_hurt_frame1
	db !animation_command_90 : dw CODE_B9E575, $0232
	db !animation_command_80, $00

;$F98188
king_zing_small_idle:
	db $03 : dw !zinger_idle_frame1
	db $03 : dw !zinger_idle_frame2
	db $03 : dw !zinger_idle_frame3
	db $03 : dw !zinger_idle_frame4
	db $03 : dw !zinger_idle_frame5
	db $03 : dw !zinger_idle_frame6
	db $03 : dw !zinger_idle_frame7
	db $03 : dw !zinger_idle_frame8
	db !animation_command_80, $00

;$F981A2
king_zing_small_turn:
	db $04 : dw !zinger_turn_frame1
	db $04 : dw !zinger_turn_frame2
	db !animation_command_81 : dw CODE_B9EFED
	db $04 : dw !zinger_turn_frame1
	db !animation_command_81 : dw CODE_B9EFF2
	db !animation_command_90 : dw CODE_B9E575, $0240
	db !animation_command_80, $00

;$F981B8
king_zing_spike_up:
	db $01 : dw !spike_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F981C0
king_zing_spike_up_right:
	db $01 : dw !spike_frame2
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F981C8
king_zing_spike_right:
	db $01 : dw !spike_frame3
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F981D0
king_zing_spike_down_right:
	db $01 : dw !spike_frame4
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F981D8
king_zing_spike_down:
	db $01 : dw !spike_frame5
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F981E0
king_zing_spike_down_left:
	db $01 : dw !spike_frame6
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F981E8
king_zing_spike_left:
	db $01 : dw !spike_frame7
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F981F0
king_zing_spike_up_left:
	db $01 : dw !spike_frame8
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F981F8
king_zing_smoke_medium:
	db $03 : dw !smoke_puff_frame1
	db $03 : dw !smoke_puff_frame2
	db $03 : dw !smoke_puff_frame3
	db $03 : dw !smoke_puff_frame4
	db $03 : dw !smoke_puff_frame5
	db $03 : dw !smoke_puff_frame6
	db $03 : dw !smoke_puff_frame7
	db $03 : dw !smoke_puff_frame8
	db $03 : dw !smoke_puff_frame9
	db $03 : dw !smoke_puff_frame10
	db $03 : dw !smoke_puff_frame11
	db $03 : dw !smoke_puff_frame12
	db $03 : dw !smoke_puff_frame13
	db $03 : dw !smoke_puff_frame14
	db $03 : dw !smoke_puff_frame15
	db $03 : dw !smoke_puff_frame16
	db !animation_command_81 : dw CODE_B9EFE8
	db !animation_command_80, $00

;$F9822D
king_zing_smoke_large:
	db $04 : dw !smoke_puff_3_frame1
	db $04 : dw !smoke_puff_3_frame2
	db $04 : dw !smoke_puff_3_frame3
	db $04 : dw !smoke_puff_3_frame4
	db $04 : dw !smoke_puff_3_frame5
	db $04 : dw !smoke_puff_3_frame6
	db $04 : dw !smoke_puff_3_frame7
	db $04 : dw !smoke_puff_3_frame8
	db $04 : dw !smoke_puff_3_frame9
	db $03 : dw !smoke_puff_3_frame10
	db $03 : dw !smoke_puff_3_frame11
	db $03 : dw !smoke_puff_3_frame12
	db $03 : dw !smoke_puff_3_frame13
	db !animation_command_81 : dw CODE_B9EFE8
	db !animation_command_80, $00

;$F98259
smoke_cloud_3:
	db $01 : dw !smoke_puff_3_frame1
	db $01 : dw !smoke_puff_3_frame2
	db $01 : dw !smoke_puff_3_frame3
	db $01 : dw !smoke_puff_3_frame4
	db $01 : dw !smoke_puff_3_frame5
	db $01 : dw !smoke_puff_3_frame6
	db $01 : dw !smoke_puff_3_frame7
	db $02 : dw !smoke_puff_3_frame8
	db $02 : dw !smoke_puff_3_frame9
	db $02 : dw !smoke_puff_3_frame10
	db $02 : dw !smoke_puff_3_frame11
	db $03 : dw !smoke_puff_3_frame12
	db $03 : dw !smoke_puff_3_frame13
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F98285
smoke_cloud_5:
	db $03 : dw !smoke_puff_3_frame1
	db $03 : dw !smoke_puff_3_frame2
	db $03 : dw !smoke_puff_3_frame3
	db $03 : dw !smoke_puff_3_frame4
	db $03 : dw !smoke_puff_3_frame5
	db $03 : dw !smoke_puff_3_frame6
	db $03 : dw !smoke_puff_3_frame7
	db $03 : dw !smoke_puff_3_frame8
	db $03 : dw !smoke_puff_3_frame9
	db $03 : dw !smoke_puff_3_frame10
	db $03 : dw !smoke_puff_3_frame11
	db $03 : dw !smoke_puff_3_frame12
	db $03 : dw !smoke_puff_3_frame13
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F982B1
king_zing_death:
	db $02 : dw !zinger_turn_frame1
	db $02 : dw !zinger_turn_frame2
	db !animation_command_81 : dw CODE_B9EFED
	db $02 : dw !zinger_turn_frame1
	db $02 : dw !zinger_idle_frame1
	db $02 : dw !zinger_idle_frame2
	db $02 : dw !zinger_idle_frame3
	db !animation_command_80, $00

;$F982C8
kleever_shoot_fire_trail:
	db !animation_command_84 : dw CODE_B9F006
	db $04 : dw !kleever_fire_frame1
	db $03 : dw !kleever_fire_frame2
	db $03 : dw !kleever_fire_frame3
	db $03 : dw !kleever_fire_frame4
	db $03 : dw !kleever_fire_frame5
	db $03 : dw !kleever_fire_frame6
	db $03 : dw !kleever_fire_frame7
	db $02 : dw !kleever_fire_frame8
	db $02 : dw !kleever_fire_frame9
	db $01 : dw !kleever_fire_frame10
	db $01 : dw !kleever_fire_frame11
	db $01 : dw !kleever_fire_frame12
	db !animation_command_81 : dw CODE_B9EFF7
	db $02 : dw !kleever_fire_frame13
	db $02 : dw !kleever_fire_frame14
	db $02 : dw !kleever_fire_frame15
	db $02 : dw !kleever_fire_frame16
	db !animation_command_81 : dw CODE_B9EFFC
	db !animation_command_80, $00

;$F98303
kleever_lava_bubbles:
	db $05 : dw !lava_bubbles_frame1
	db $05 : dw !lava_bubbles_frame2
	db $05 : dw !lava_bubbles_frame3
	db $05 : dw !lava_bubbles_frame4
	db $05 : dw !lava_bubbles_frame5
	db $05 : dw !lava_bubbles_frame6
	db $05 : dw !lava_bubbles_frame7
	db $05 : dw !lava_bubbles_frame8
	db !animation_command_80, $00

;$F9831D
kleever_shoot_fireball:
	db $05 : dw !kleever_attack_frame5
	db !animation_command_81 : dw CODE_B9F001
	db $05 : dw !kleever_attack_frame4
	db !animation_command_81 : dw CODE_B9F001
	db $04 : dw !kleever_attack_frame3
	db !animation_command_81 : dw CODE_B9F001
	db $04 : dw !kleever_attack_frame2
	db !animation_command_81 : dw CODE_B9F010
	db !animation_command_81 : dw CODE_B9F001
	db $03 : dw !kleever_attack_frame1
	db !animation_command_81 : dw CODE_B9F001
	db $03 : dw !kleever_attack_frame1
	db !animation_command_81 : dw CODE_B9F001
	db $03 : dw !kleever_attack_frame1
	db !animation_command_81 : dw CODE_B9F001
	db $03 : dw !kleever_attack_frame1
	db !animation_command_81 : dw CODE_B9F001
	db !animation_command_8E : dw sound(5, !sound_blade_swing)
	db $03 : dw !kleever_attack_frame1
	db !animation_command_81 : dw CODE_B9F001
	db $03 : dw !kleever_attack_frame2
	db !animation_command_81 : dw CODE_B9F001
	db $03 : dw !kleever_attack_frame3
	db !animation_command_81 : dw CODE_B9F001
	db $02 : dw !kleever_attack_frame4
	db !animation_command_81 : dw CODE_B9F001
	db $02 : dw !kleever_attack_frame5
	db !animation_command_81 : dw CODE_B9F001
	db $01 : dw !kleever_attack_frame6
	db !animation_command_81 : dw CODE_B9F001
	db $01 : dw !kleever_attack_frame7
	db !animation_command_81 : dw CODE_B9F001
	db $0F : dw !kleever_attack_frame8
	db !animation_command_81 : dw CODE_B9F001
	db $02 : dw !kleever_attack_frame7
	db !animation_command_81 : dw CODE_B9F001
	db $02 : dw !kleever_attack_frame6
	db !animation_command_81 : dw CODE_B9F001
	db $02 : dw !kleever_attack_frame5
	db !animation_command_90 : dw CODE_B9F00B, $0210
	db !animation_command_80, $00

;$F98399
kleever_arm_shoot_fireball:
	db $06 : dw !kleever_arm_attack_frame1
	db $05 : dw !kleever_arm_attack_frame2
	db $04 : dw !kleever_arm_attack_frame3
	db $04 : dw !kleever_arm_attack_frame4
	db $03 : dw !kleever_arm_attack_frame5
	db $03 : dw !kleever_arm_attack_frame6
	db $03 : dw !kleever_arm_attack_frame7
	db $03 : dw !kleever_arm_attack_frame8
	db $03 : dw !kleever_arm_attack_frame9
	db $03 : dw !kleever_arm_attack_frame10
	db $03 : dw !kleever_arm_attack_frame11
	db $02 : dw !kleever_arm_attack_frame12
	db $02 : dw !kleever_arm_attack_frame13
	db $01 : dw !kleever_arm_attack_frame14
	db $01 : dw !kleever_arm_attack_frame15
	db $04 : dw !kleever_arm_attack_frame16
	db $04 : dw !kleever_arm_attack_frame17
	db $04 : dw !kleever_arm_attack_frame18
	db $03 : dw !kleever_arm_attack_frame16
	db $02 : dw !kleever_arm_attack_frame15
	db $02 : dw !kleever_arm_attack_frame14
	db $02 : dw !kleever_arm_attack_frame13
	db !animation_command_90 : dw CODE_B9E575, $0211
	db !animation_command_80, $00

;$F983E2
kleever_fireball:
	db $03 : dw !kleever_fire_ball_frame1
	db $03 : dw !kleever_fire_ball_frame2
	db $03 : dw !kleever_fire_ball_frame3
	db $03 : dw !kleever_fire_ball_frame4
	db $03 : dw !kleever_fire_ball_frame5
	db $03 : dw !kleever_fire_ball_frame6
	db $03 : dw !kleever_fire_ball_frame7
	db $03 : dw !kleever_fire_ball_frame8
	db !animation_command_80, $00

;$F983FC
kleever_arm_idle:
	db $03 : dw !kleever_arm_idle_frame1
	db $03 : dw !kleever_arm_idle_frame2
	db $03 : dw !kleever_arm_idle_frame3
	db $03 : dw !kleever_arm_idle_frame4
	db $03 : dw !kleever_arm_idle_frame5
	db $03 : dw !kleever_arm_idle_frame6
	db $03 : dw !kleever_arm_idle_frame7
	db $03 : dw !kleever_arm_idle_frame8
	db !animation_command_80, $00

;$F98416
kleever_idle:
	db $01 : dw !kleever_attack_frame5
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9841E
kleever_turn:
	db $04 : dw !kleever_turn_frame1
	db !animation_command_81 : dw CODE_B9F001
	db $04 : dw !kleever_turn_frame2
	db !animation_command_81 : dw CODE_B9F001
	db $04 : dw !kleever_turn_frame3
	db !animation_command_81 : dw CODE_B9F001
	db !animation_command_81 : dw CODE_B9F015
	db $04 : dw !kleever_turn_frame2
	db !animation_command_81 : dw CODE_B9F001
	db $04 : dw !kleever_turn_frame1
	db !animation_command_81 : dw CODE_B9F01A
	db !animation_command_80, $00

;$F98441
kleever_arm_turn:
	db $05 : dw !kleever_arm_turn1
	db $04 : dw !kleever_arm_turn2
	db $04 : dw !kleever_arm_turn3
	db $04 : dw !kleever_arm_turn2
	db $04 : dw !kleever_arm_turn1
	db !animation_command_90 : dw CODE_B9E575, $0211
	db !animation_command_80, $00

;$F98457
kleever_charge_wait:
	db $06 : dw !kleever_attack_frame4
	db $06 : dw !kleever_attack_frame3
	db $06 : dw !kleever_attack_frame2
	db $06 : dw !kleever_attack_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98468
kleever_charge_attack:
	db !animation_command_8E : dw sound(5, !sound_blade_swing)
	db $01 : dw !kleever_attack_frame3
	db $01 : dw !kleever_attack_frame4
	db $01 : dw !kleever_attack_frame5
	db $01 : dw !kleever_attack_frame6
	db $01 : dw !kleever_attack_frame7
	db $01 : dw !kleever_attack_frame8
	db $01 : dw !kleever_attack_frame9
	db $01 : dw !kleever_attack_frame10
	db $01 : dw !kleever_attack_frame11
	db $01 : dw !kleever_attack_frame12
	db $01 : dw !kleever_attack_frame13
	db $01 : dw !kleever_attack_frame14
	db $01 : dw !kleever_attack_frame15
	db $32 : dw !kleever_attack_frame16
	db $01 : dw !kleever_attack_frame15
	db $01 : dw !kleever_attack_frame14
	db $01 : dw !kleever_attack_frame13
	db $01 : dw !kleever_attack_frame12
	db $02 : dw !kleever_attack_frame11
	db $02 : dw !kleever_attack_frame10
	db $03 : dw !kleever_attack_frame9
	db $03 : dw !kleever_attack_frame8
	db $04 : dw !kleever_attack_frame7
	db $05 : dw !kleever_attack_frame6
	db !animation_command_90 : dw CODE_B9E575, $0210
	db !animation_command_80, $00

;$F984BA
kleever_attack:
	db !animation_command_8E : dw sound(5, !sound_blade_swing)
	db $02 : dw !kleever_attack_frame4
	db $02 : dw !kleever_attack_frame3
	db $02 : dw !kleever_attack_frame2
	db $02 : dw !kleever_attack_frame1
	db $01 : dw !kleever_attack_frame2
	db $01 : dw !kleever_attack_frame3
	db $01 : dw !kleever_attack_frame4
	db $01 : dw !kleever_attack_frame5
	db $01 : dw !kleever_attack_frame6
	db $01 : dw !kleever_attack_frame7
	db $01 : dw !kleever_attack_frame8
	db $01 : dw !kleever_attack_frame9
	db $01 : dw !kleever_attack_frame10
	db $01 : dw !kleever_attack_frame11
	db $01 : dw !kleever_attack_frame12
	db $01 : dw !kleever_attack_frame13
	db $01 : dw !kleever_attack_frame14
	db $02 : dw !kleever_attack_frame13
	db $01 : dw !kleever_attack_frame12
	db $02 : dw !kleever_attack_frame11
	db $01 : dw !kleever_attack_frame10
	db $02 : dw !kleever_attack_frame9
	db $02 : dw !kleever_attack_frame8
	db $02 : dw !kleever_attack_frame7
	db $02 : dw !kleever_attack_frame6
	db $02 : dw !kleever_attack_frame5
	db !animation_command_80, $00

;$F9850D
kleever_fragment:
	db $03 : dw !kleever_bone_frame1
	db $03 : dw !kleever_bone_frame2
	db $03 : dw !kleever_bone_frame3
	db $03 : dw !kleever_bone_frame4
	db $03 : dw !kleever_bone_frame5
	db $03 : dw !kleever_bone_frame6
	db !animation_command_80, $00

;$F98521
kleever_fragment_2:
	db $02 : dw !kleever_bone_frame1
	db $02 : dw !kleever_bone_frame2
	db $02 : dw !kleever_bone_frame3
	db $02 : dw !kleever_bone_frame4
	db $02 : dw !kleever_bone_frame5
	db $02 : dw !kleever_bone_frame6
	db !animation_command_80, $00

;$F98535
kleever_fragment_4:
	db $04 : dw !fragment_4_frame1
	db $04 : dw !fragment_4_frame2
	db $04 : dw !fragment_4_frame3
	db $04 : dw !fragment_4_frame4
	db $04 : dw !fragment_4_frame5
	db $04 : dw !fragment_4_frame6
	db $04 : dw !fragment_4_frame7
	db $04 : dw !fragment_4_frame8
	db $04 : dw !fragment_4_frame9
	db $04 : dw !fragment_4_frame10
	db $04 : dw !fragment_4_frame11
	db $04 : dw !fragment_4_frame12
	db $04 : dw !fragment_4_frame13
	db $04 : dw !fragment_4_frame14
	db $04 : dw !fragment_4_frame15
	db $04 : dw !fragment_4_frame16
	db !animation_command_80, $00

;$F98567
kleever_fragment_5:
	db $02 : dw !fragment_5_frame1
	db $02 : dw !fragment_5_frame2
	db $02 : dw !fragment_5_frame3
	db $02 : dw !fragment_5_frame4
	db $02 : dw !fragment_5_frame5
	db $02 : dw !fragment_5_frame6
	db $02 : dw !fragment_5_frame7
	db $02 : dw !fragment_5_frame8
	db $02 : dw !fragment_5_frame9
	db $02 : dw !fragment_5_frame10
	db $02 : dw !fragment_5_frame11
	db $02 : dw !fragment_5_frame12
	db $02 : dw !fragment_5_frame13
	db $02 : dw !fragment_5_frame14
	db $02 : dw !fragment_5_frame15
	db $02 : dw !fragment_5_frame16
	db !animation_command_80, $00

;$F98599
kleever_fragment_6:
	db $04 : dw !fragment_6_frame1
	db $03 : dw !fragment_6_frame2
	db $04 : dw !fragment_6_frame3
	db $03 : dw !fragment_6_frame4
	db $04 : dw !fragment_6_frame5
	db $03 : dw !fragment_6_frame6
	db $04 : dw !fragment_6_frame7
	db $03 : dw !fragment_6_frame8
	db !animation_command_80, $00

;$F985B3
kleever_fragment_7:
	db $04 : dw !fragment_7_frame1
	db $05 : dw !fragment_7_frame2
	db $04 : dw !fragment_7_frame3
	db $05 : dw !fragment_7_frame4
	db $04 : dw !fragment_7_frame5
	db $05 : dw !fragment_7_frame6
	db $04 : dw !fragment_7_frame7
	db $05 : dw !fragment_7_frame8
	db !animation_command_80, $00

;$F985CD
kleever_fragment_8:
	db $03 : dw !fragment_7_frame1
	db $03 : dw !fragment_7_frame2
	db $03 : dw !fragment_7_frame3
	db $03 : dw !fragment_7_frame4
	db $03 : dw !fragment_7_frame5
	db $03 : dw !fragment_7_frame6
	db $03 : dw !fragment_7_frame7
	db $03 : dw !fragment_7_frame8
	db !animation_command_80, $00

;$F985E7
kleever_fragment_9:
	db $04 : dw !fragment_8_frame1
	db $04 : dw !fragment_8_frame2
	db $04 : dw !fragment_8_frame3
	db $04 : dw !fragment_8_frame4
	db $04 : dw !fragment_8_frame5
	db $04 : dw !fragment_8_frame6
	db $04 : dw !fragment_8_frame7
	db $04 : dw !fragment_8_frame8
	db !animation_command_80, $00

;$F98601
kleever_fragment_3:
	db $02 : dw !fragment_8_frame1
	db $03 : dw !fragment_8_frame2
	db $02 : dw !fragment_8_frame3
	db $03 : dw !fragment_8_frame4
	db $02 : dw !fragment_8_frame5
	db $03 : dw !fragment_8_frame6
	db $02 : dw !fragment_8_frame7
	db $03 : dw !fragment_8_frame8
	db !animation_command_80, $00

;$F9861B
kleever_body_death:
	db $02 : dw !kleever_broken_hilt_frame1
	db $02 : dw !kleever_broken_hilt_frame2
	db $02 : dw !kleever_broken_hilt_frame3
	db $02 : dw !kleever_broken_hilt_frame4
	db $02 : dw !kleever_broken_hilt_frame5
	db $02 : dw !kleever_broken_hilt_frame6
	db $02 : dw !kleever_broken_hilt_frame7
	db $02 : dw !kleever_broken_hilt_frame8
	db !animation_command_80, $00

;$F98635
kleever_death_fire_trail:
	db $02 : dw !kleever_fire_swirl_frame1
	db $02 : dw !kleever_fire_swirl_frame2
	db $02 : dw !kleever_fire_swirl_frame3
	db $02 : dw !kleever_fire_swirl_frame4
	db $02 : dw !kleever_fire_swirl_frame5
	db $02 : dw !kleever_fire_swirl_frame6
	db $02 : dw !kleever_fire_swirl_frame7
	db $02 : dw !kleever_fire_swirl_frame8
	db !animation_command_80, $00

;$F9864F
kreepy_krow_death_spark:
	db $03 : dw !flash_frame1
	db $03 : dw !flash_frame2
	db $03 : dw !flash_frame3
	db $03 : dw !flash_frame2
	db $03 : dw !flash_frame3
	db $03 : dw !flash_frame4
	db $03 : dw !flash_frame3
	db $03 : dw !flash_frame4
	db $03 : dw !flash_frame5
	db $03 : dw !flash_frame4
	db $03 : dw !flash_frame5
	db $03 : dw !flash_frame4
	db $03 : dw !flash_frame5
	db $03 : dw !flash_frame4
	db $03 : dw !flash_frame5
	db $03 : dw !flash_frame6
	db !animation_command_81 : dw anim_delete_sprite
	db !animation_command_80, $00

;$F98684
kreepy_krow_death_spark_2:
	db $04 : dw !sparkle_frame1
DATA_F98687:
	db $04 : dw !sparkle_frame2
	db $04 : dw !sparkle_frame3
	db $04 : dw !sparkle_frame4
	db $04 : dw !sparkle_frame5
	db $04 : dw !sparkle_frame6
	db $04 : dw !sparkle_frame7
	db $04 : dw !sparkle_frame8
	db !animation_command_82 : dw DATA_F98687
	db !animation_command_80, $00

;$F986A1
krow_head_yell:
	db !animation_command_8E : dw sound(5, !sound_krow_caw)
	db $03 : dw !krow_head_caw_frame1
	db $04 : dw !krow_head_caw_frame2
	db $20 : dw !krow_head_caw_frame3
	db $08 : dw !krow_head_caw_frame2
	db $06 : dw !krow_head_caw_frame1
	db !animation_command_90 : dw CODE_B9E575, $0204
	db !animation_command_80, $00

;$F986BA
krow_head_hurt:
	db !animation_command_8E : dw sound(4, !sound_krow_hit)
	db $03 : dw !krow_head_caw_frame1
	db $04 : dw !krow_head_caw_frame2
	db $20 : dw !krow_head_caw_frame3
	db $08 : dw !krow_head_caw_frame2
	db $06 : dw !krow_head_caw_frame1
	db !animation_command_81 : dw CODE_B9F01F
	db !animation_command_90 : dw CODE_B9E575, $0204
	db !animation_command_80, $00

;$F986D6
kreepy_krow_head_yell:
	db !animation_command_8E : dw sound(5, !sound_krow_caw)
	db $03 : dw !krow_head_caw_frame1
	db $04 : dw !krow_head_caw_frame2
	db $20 : dw !krow_head_caw_frame3
	db $08 : dw !krow_head_caw_frame2
	db $06 : dw !krow_head_caw_frame1
	db !animation_command_90 : dw CODE_B9E575, $0204
	db !animation_command_80, $00

;$F986EF
krow_body_hurt:
	db !animation_command_8E : dw sound(7, !sound_krow_flap)
	db $02 : dw !krow_body_frame6
	db $02 : dw !krow_body_frame8
	db $02 : dw !krow_body_frame1
	db $02 : dw !krow_body_frame2
	db $02 : dw !krow_body_frame3
	db $02 : dw !krow_body_frame4
	db !animation_command_81 : dw CODE_B9F051
	db !animation_command_80, $00

;$F98709
krow_body_idle:
	db !animation_command_8E : dw sound(7, !sound_krow_flap)
	db !animation_command_81 : dw CODE_B9F033
	db $03 : dw !krow_body_frame5
	db !animation_command_81 : dw CODE_B9F029
	db $03 : dw !krow_body_frame6
	db !animation_command_81 : dw CODE_B9F038
	db $03 : dw !krow_body_frame7
	db !animation_command_81 : dw CODE_B9F024
	db $03 : dw !krow_body_frame8
	db !animation_command_81 : dw CODE_B9F024
	db $03 : dw !krow_body_frame1
	db !animation_command_81 : dw CODE_B9F024
	db $03 : dw !krow_body_frame2
	db !animation_command_81 : dw CODE_B9F029
	db $03 : dw !krow_body_frame3
	db !animation_command_81 : dw CODE_B9F02E
	db $03 : dw !krow_body_frame4
	db !animation_command_81 : dw CODE_B9F051
	db !animation_command_80, $00

;$F98741
krow_body_credits:
	db !animation_command_8E : dw sound(7, !sound_krow_flap)
	db $03 : dw !krow_body_frame5
	db $03 : dw !krow_body_frame6
	db $03 : dw !krow_body_frame7
	db $03 : dw !krow_body_frame8
	db $03 : dw !krow_body_frame1
	db $03 : dw !krow_body_frame2
	db $03 : dw !krow_body_frame3
	db $03 : dw !krow_body_frame4
	db !animation_command_80, $00

;$F9875E
krow_body_fly:
	db !animation_command_8E : dw sound(7, !sound_krow_flap)
	db $02 : dw !krow_body_frame6
	db $02 : dw !krow_body_frame8
	db $02 : dw !krow_body_frame1
	db $02 : dw !krow_body_frame2
	db $02 : dw !krow_body_frame3
	db $02 : dw !krow_body_frame4
	db !animation_command_81 : dw CODE_B9F051
	db !animation_command_80, $00

;$F98778
krow_body_final_hit:
	db !animation_command_8E : dw sound(7, !sound_krow_flap)
	db $04 : dw !krow_body_frame5
	db $04 : dw !krow_body_frame6
	db $04 : dw !krow_body_frame7
	db $04 : dw !krow_body_frame8
	db $04 : dw !krow_body_frame1
	db $04 : dw !krow_body_frame2
	db $04 : dw !krow_body_frame3
	db $04 : dw !krow_body_frame4
	db !animation_command_81 : dw CODE_B9F051
	db !animation_command_80, $00

;$F98798
krow_body_turn:
	db !animation_command_81 : dw CODE_B9F02E
	db $03 : dw !krow_body_frame4
	db !animation_command_81 : dw CODE_B9F029
	db $03 : dw !krow_body_frame6
	db !animation_command_81 : dw CODE_B9F024
	db $03 : dw !krow_body_frame8
	db !animation_command_81 : dw CODE_B9F038
	db $03 : dw !krow_body_turn_frame1
	db !animation_command_81 : dw CODE_B9F033
	db $03 : dw !krow_body_turn_frame2
	db !animation_command_81 : dw CODE_B9F03D
	db $03 : dw !krow_body_turn_frame3
	db !animation_command_81 : dw CODE_B9F051
	db !animation_command_80, $00

;$F987C1
krow_head_idle:
	db $01 : dw !krow_head_frame1
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F987C9
krow_head_swoop_attack:
	db $08 : dw !krow_head_frame2
	db $0F : dw !krow_head_frame3
	db $08 : dw !krow_head_frame2
	db !animation_command_90 : dw CODE_B9E575, $0204
	db !animation_command_80, $00

;$F987D9
krow_angry_head:
	db $08 : dw !krow_head_frame2
	db $28 : dw !krow_head_frame3
	db $08 : dw !krow_head_frame2
	db $14 : dw !krow_head_frame3
	db $0A : dw !krow_head_turn_frame1
	db $0A : dw !krow_head_turn_frame2
	db $0A : dw !krow_head_turn_frame1
	db $28 : dw !krow_head_frame3
	db $08 : dw !krow_head_frame2
	db $08 : dw !krow_head_frame1
	db !animation_command_80, $00

;$F987F9
krow_head_turn:
	db $03 : dw !krow_head_frame1
	db $03 : dw !krow_head_frame1
	db $03 : dw !krow_head_frame1
	db !animation_command_84 : dw CODE_B9F042
	db $03 : dw !krow_head_turn_frame1
	db !animation_command_84 : dw CODE_B9F047
	db $03 : dw !krow_head_turn_frame2
	db !animation_command_84 : dw CODE_B9F04C
	db $03 : dw !krow_head_turn_frame3
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98819
krow_egg_right_idle:
	db $01 : dw !krow_egg_frame10
	db $01 : dw !krow_egg_frame11
	db $01 : dw !krow_egg_frame12
	db $01 : dw !krow_egg_frame13
	db $01 : dw !krow_egg_frame14
	db $01 : dw !krow_egg_frame15
	db $01 : dw !krow_egg_frame16
	db $04 : dw !krow_egg_frame1
	db $06 : dw !krow_egg_frame2
	db $0A : dw !krow_egg_frame3
	db $08 : dw !krow_egg_frame2
	db $03 : dw !krow_egg_frame1
	db $04 : dw !krow_egg_frame16
	db $02 : dw !krow_egg_frame1
	db $02 : dw !krow_egg_frame2
	db $02 : dw !krow_egg_frame1
	db !animation_command_81 : dw CODE_B9F05B
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98851
krow_egg_left_idle:
	db $01 : dw !krow_egg_frame9
	db $01 : dw !krow_egg_frame8
	db $01 : dw !krow_egg_frame7
	db $01 : dw !krow_egg_frame6
	db $01 : dw !krow_egg_frame5
	db $01 : dw !krow_egg_frame4
	db $01 : dw !krow_egg_frame3
	db $01 : dw !krow_egg_frame2
	db $01 : dw !krow_egg_frame1
	db $06 : dw !krow_egg_frame16
	db $0A : dw !krow_egg_frame15
	db $08 : dw !krow_egg_frame16
	db $03 : dw !krow_egg_frame1
	db $04 : dw !krow_egg_frame2
	db $02 : dw !krow_egg_frame1
	db $02 : dw !krow_egg_frame16
	db $02 : dw !krow_egg_frame1
	db !animation_command_81 : dw CODE_B9F05B
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F9888C
krow_egg_held:
	db $01 : dw !krow_egg_frame9
	db !animation_command_81 : dw CODE_B9F056
	db !animation_command_80, $00

;$F98894
krow_egg_right_land:
	db !animation_command_84 : dw CODE_B9F060
	db $02 : dw !krow_egg_frame10
	db $02 : dw !krow_egg_frame11
	db $02 : dw !krow_egg_frame12
	db $02 : dw !krow_egg_frame13
	db $02 : dw !krow_egg_frame14
	db $02 : dw !krow_egg_frame15
	db $02 : dw !krow_egg_frame16
	db $02 : dw !krow_egg_frame1
	db $02 : dw !krow_egg_frame2
	db $02 : dw !krow_egg_frame3
	db $02 : dw !krow_egg_frame4
	db $02 : dw !krow_egg_frame5
	db $02 : dw !krow_egg_frame6
	db $02 : dw !krow_egg_frame7
	db $02 : dw !krow_egg_frame8
	db $02 : dw !krow_egg_frame9
	db !animation_command_81 : dw CODE_B9F056
	db !animation_command_80, $00

;$F988CC
krow_egg_left_thrown:
	db $02 : dw !krow_egg_frame1
	db $02 : dw !krow_egg_frame2
	db $02 : dw !krow_egg_frame3
	db $02 : dw !krow_egg_frame4
	db $02 : dw !krow_egg_frame5
	db $02 : dw !krow_egg_frame6
	db $02 : dw !krow_egg_frame7
	db $02 : dw !krow_egg_frame8
	db $02 : dw !krow_egg_frame9
	db $02 : dw !krow_egg_frame10
	db $02 : dw !krow_egg_frame11
	db $02 : dw !krow_egg_frame12
	db $02 : dw !krow_egg_frame13
	db $02 : dw !krow_egg_frame14
	db $02 : dw !krow_egg_frame15
	db $02 : dw !krow_egg_frame16
	db !animation_command_80, $00

;$F988FE
krow_egg_left_land:
	db !animation_command_84 : dw CODE_B9F060
	db $02 : dw !krow_egg_frame9
	db $02 : dw !krow_egg_frame8
	db $02 : dw !krow_egg_frame7
	db $02 : dw !krow_egg_frame6
	db $02 : dw !krow_egg_frame5
	db $02 : dw !krow_egg_frame4
	db $02 : dw !krow_egg_frame3
	db $02 : dw !krow_egg_frame2
	db $02 : dw !krow_egg_frame1
	db $02 : dw !krow_egg_frame16
	db $02 : dw !krow_egg_frame15
	db $02 : dw !krow_egg_frame14
	db $02 : dw !krow_egg_frame13
	db $02 : dw !krow_egg_frame12
	db $02 : dw !krow_egg_frame11
	db $02 : dw !krow_egg_frame10
	db !animation_command_81 : dw CODE_B9F056
	db !animation_command_80, $00

;$F98936
krow_egg_right_thrown:
	db $02 : dw !krow_egg_frame16
	db $02 : dw !krow_egg_frame15
	db $02 : dw !krow_egg_frame14
	db $02 : dw !krow_egg_frame13
	db $02 : dw !krow_egg_frame12
	db $02 : dw !krow_egg_frame11
	db $02 : dw !krow_egg_frame10
	db $02 : dw !krow_egg_frame9
	db $02 : dw !krow_egg_frame8
	db $02 : dw !krow_egg_frame7
	db $02 : dw !krow_egg_frame6
	db $02 : dw !krow_egg_frame5
	db $02 : dw !krow_egg_frame4
	db $02 : dw !krow_egg_frame3
	db $02 : dw !krow_egg_frame2
	db $02 : dw !krow_egg_frame1
	db !animation_command_80, $00

;$F98968
krow_egg_left_fall:
	db $04 : dw !krow_egg_frame16
	db $04 : dw !krow_egg_frame15
	db $04 : dw !krow_egg_frame14
	db $04 : dw !krow_egg_frame13
	db $04 : dw !krow_egg_frame12
	db $04 : dw !krow_egg_frame11
	db $04 : dw !krow_egg_frame10
	db $04 : dw !krow_egg_frame9
	db $04 : dw !krow_egg_frame8
	db $04 : dw !krow_egg_frame7
	db $04 : dw !krow_egg_frame6
	db $04 : dw !krow_egg_frame5
	db $04 : dw !krow_egg_frame4
	db $04 : dw !krow_egg_frame3
	db $04 : dw !krow_egg_frame2
	db $04 : dw !krow_egg_frame1
	db !animation_command_80, $00

;$F9899A
krow_egg_right_fall:
	db $04 : dw !krow_egg_frame1
	db $04 : dw !krow_egg_frame2
	db $04 : dw !krow_egg_frame3
	db $04 : dw !krow_egg_frame4
	db $04 : dw !krow_egg_frame5
	db $04 : dw !krow_egg_frame6
	db $04 : dw !krow_egg_frame7
	db $04 : dw !krow_egg_frame8
	db $04 : dw !krow_egg_frame9
	db $04 : dw !krow_egg_frame10
	db $04 : dw !krow_egg_frame11
	db $04 : dw !krow_egg_frame12
	db $04 : dw !krow_egg_frame13
	db $04 : dw !krow_egg_frame14
	db $04 : dw !krow_egg_frame15
	db $04 : dw !krow_egg_frame16
	db !animation_command_80, $00

;$F989CC
krow_egg_crack:
	db !animation_command_8E : dw sound(4, !sound_egg_crack)
	db $0C : dw !krow_egg_crack_frame1
	db $0C : dw !krow_egg_crack_frame2
	db $0C : dw !krow_egg_crack_frame3
	db $0C : dw !krow_egg_crack_frame4
	db $0C : dw !krow_egg_crack_frame5
	db !animation_command_81 : dw CODE_B9F065
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F989E6
kreepy_krow_head_final_hit:
	db $06 : dw !krow_head_caw_frame1
	db !animation_command_8E : dw sound(5, !sound_krow_caw)
	db $08 : dw !krow_head_caw_frame2
	db $14 : dw !krow_head_caw_frame3
	db $08 : dw !krow_head_caw_frame2
	db $03 : dw !krow_head_caw_frame1
	db !animation_command_8E : dw sound(5, !sound_krow_caw)
	db $04 : dw !krow_head_caw_frame2
	db $0B : dw !krow_head_caw_frame3
	db $06 : dw !krow_head_caw_frame2
	db $03 : dw !krow_head_caw_frame1
	db !animation_command_8E : dw sound(5, !sound_krow_caw)
	db $04 : dw !krow_head_caw_frame2
	db $12 : dw !krow_head_caw_frame3
	db $0B : dw !krow_head_caw_frame2
	db $07 : dw !krow_head_caw_frame1
	db !animation_command_80, $00

;$F98A18
krow_head_final_hit:
	db !animation_command_8E, $1A, $04
	db $06 : dw !krow_head_caw_frame1
	db !animation_command_8E : dw sound(5, !sound_krow_caw)
	db $08 : dw !krow_head_caw_frame2
	db $14 : dw !krow_head_caw_frame3
	db $08 : dw !krow_head_caw_frame2
	db $03 : dw !krow_head_caw_frame1
	db !animation_command_8E : dw sound(5, !sound_krow_caw)
	db $04 : dw !krow_head_caw_frame2
	db $0B : dw !krow_head_caw_frame3
	db $06 : dw !krow_head_caw_frame2
	db $03 : dw !krow_head_caw_frame1
	db !animation_command_8E : dw sound(5, !sound_krow_caw)
	db $04 : dw !krow_head_caw_frame2
	db $12 : dw !krow_head_caw_frame3
	db $0B : dw !krow_head_caw_frame2
	db $07 : dw !krow_head_caw_frame1
	db $02 : dw !krow_head_frame1
	db !animation_command_81 : dw CODE_B9F06A
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98A56
krow_body_defeat:
	db $07 : dw !krow_body_hurt_frame1
	db $07 : dw !krow_body_hurt_frame2
	db $06 : dw !krow_body_hurt_frame3
	db $06 : dw !krow_body_hurt_frame4
	db $05 : dw !krow_body_hurt_frame5
	db $05 : dw !krow_body_hurt_frame6
	db !animation_command_90 : dw CODE_B9E575, $020D
	db !animation_command_80, $00

;$F98A6F
krow_head_defeat:
	db $01 : dw !krow_head_frame1
	db $07 : dw !krow_head_hurt_frame1
	db $07 : dw !krow_head_hurt_frame2
	db $06 : dw !krow_head_hurt_frame3
	db $06 : dw !krow_head_hurt_frame4
	db $05 : dw !krow_head_hurt_frame5
	db $05 : dw !krow_head_hurt_frame6
	db !animation_command_81 : dw set_celebrate_interaction_and_clear_level
	db !animation_command_90 : dw CODE_B9E575, $020E
	db !animation_command_80, $00

;$F98A8E
krow_body_struggle:
	db !animation_command_8E : dw sound(4, !sound_krow_defeated)
DATA_F98A91:
	db $3C : dw !krow_body_hurt_frame6
	db $07 : dw !krow_body_defeated_frame1
	db $0A : dw !krow_body_defeated_frame2
	db $03 : dw !krow_body_defeated_frame1
	db $32 : dw !krow_body_hurt_frame6
	db $0A : dw !krow_body_defeated_frame1
	db $28 : dw !krow_body_hurt_frame6
	db $08 : dw !krow_body_defeated_frame1
	db $0C : dw !krow_body_defeated_frame2
	db $06 : dw !krow_body_defeated_frame1
	db $0B : dw !krow_body_defeated_frame2
	db $04 : dw !krow_body_defeated_frame1
	db $32 : dw !krow_body_hurt_frame6
	db $03 : dw !krow_body_defeated_frame1
	db $07 : dw !krow_body_defeated_frame2
	db $02 : dw !krow_body_defeated_frame1
	db !animation_command_82 : dw DATA_F98A91
	db !animation_command_80, $00

;$F98AC6
krow_head_struggle:
	db $23 : dw !krow_head_hurt_frame6
	db $07 : dw !krow_head_defeated_frame1
	db $0A : dw !krow_head_defeated_frame2
	db $03 : dw !krow_head_defeated_frame1
	db $32 : dw !krow_head_hurt_frame6
	db $0A : dw !krow_head_defeated_frame1
	db $28 : dw !krow_head_hurt_frame6
	db $08 : dw !krow_head_defeated_frame1
	db $0C : dw !krow_head_defeated_frame2
	db $06 : dw !krow_head_defeated_frame1
	db $0B : dw !krow_head_defeated_frame2
	db $04 : dw !krow_head_defeated_frame1
	db $32 : dw !krow_head_hurt_frame6
	db $03 : dw !krow_head_defeated_frame1
	db $07 : dw !krow_head_defeated_frame2
	db $02 : dw !krow_head_defeated_frame1
.loop_point:
	db $23 : dw !krow_head_hurt_frame6
	db $07 : dw !krow_head_defeated_frame1
	db $0A : dw !krow_head_defeated_frame2
	db $03 : dw !krow_head_defeated_frame1
	db !animation_command_82 : dw .loop_point
	db !animation_command_80, $00

;$F98B07
funky_barrel_wings:
	db $01 : dw !funky_plane_wings_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98B0F
funky_barrel:
	db $01 : dw !funky_plane_barrel_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98B17
funky_barrel_propeller:
	db $03 : dw !funky_plane_propeller_frame1
	db $03 : dw !funky_plane_propeller_frame2
	db $03 : dw !funky_plane_propeller_frame3
	db $03 : dw !funky_plane_propeller_frame4
	db !animation_command_80, $00

;$F98B25
funky_barrel_map:
	db $03 : dw !isle_funky_plane_frame1
	db $03 : dw !isle_funky_plane_frame2
	db $03 : dw !isle_funky_plane_frame3
	db !animation_command_80, $00

;$F98B30
klubba_barrel:
	db $01 : dw !kiosk_barrel_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98B38
cranky_idle:
	db $0B : dw !cranky_frame1
	db $0B : dw !cranky_frame2
	db $0B : dw !cranky_frame1
	db $0B : dw !cranky_frame3
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98B4C
cranky_shake_cane:
	db $08 : dw !cranky_frame4
	db $08 : dw !cranky_frame5
	db $08 : dw !cranky_frame6
	db $08 : dw !cranky_frame7
	db $08 : dw !cranky_frame8
	db $06 : dw !cranky_frame9
	db $06 : dw !cranky_frame10
	db $06 : dw !cranky_frame11
	db $06 : dw !cranky_frame12
	db $04 : dw !cranky_frame13
	db $04 : dw !cranky_frame14
	db $04 : dw !cranky_frame15
	db $04 : dw !cranky_frame16
	db $04 : dw !cranky_frame15
	db $04 : dw !cranky_frame14
	db $04 : dw !cranky_frame15
	db $04 : dw !cranky_frame16
	db $04 : dw !cranky_frame15
	db $04 : dw !cranky_frame14
	db $04 : dw !cranky_frame15
	db $04 : dw !cranky_frame16
	db $04 : dw !cranky_frame15
	db $04 : dw !cranky_frame14
	db $04 : dw !cranky_frame13
	db $06 : dw !cranky_frame12
	db $06 : dw !cranky_frame11
	db $06 : dw !cranky_frame10
	db $06 : dw !cranky_frame9
	db $08 : dw !cranky_frame8
	db $08 : dw !cranky_frame7
	db $08 : dw !cranky_frame6
	db $08 : dw !cranky_frame5
	db $08 : dw !cranky_frame4
	db $08 : dw !cranky_frame3
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98BBA
cranky_lean:
	db $08 : dw !cranky_frame4
	db $08 : dw !cranky_frame5
	db $08 : dw !cranky_frame6
	db $08 : dw !cranky_frame7
	db $14 : dw !cranky_frame8
	db $08 : dw !cranky_frame7
	db $08 : dw !cranky_frame6
	db $08 : dw !cranky_frame5
	db $08 : dw !cranky_frame4
	db $08 : dw !cranky_frame3
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98BE0
funky_surf:
	db $04 : dw !funky_frame7
	db $04 : dw !funky_frame8
	db $04 : dw !funky_frame9
	db $04 : dw !funky_frame10
	db $04 : dw !funky_frame11
	db $04 : dw !funky_frame12
	db $04 : dw !funky_frame13
	db $04 : dw !funky_frame14
	db $04 : dw !funky_frame15
	db $04 : dw !funky_frame16
	db $04 : dw !funky_frame17
	db $04 : dw !funky_frame18
	db $04 : dw !funky_frame19
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98C0F
funky_board_surf:
	db $04 : dw !funky_surf_board_frame7
	db $04 : dw !funky_surf_board_frame8
	db $04 : dw !funky_surf_board_frame9
	db $04 : dw !funky_surf_board_frame10
	db $04 : dw !funky_surf_board_frame11
	db $04 : dw !funky_surf_board_frame12
	db $04 : dw !funky_surf_board_frame13
	db $04 : dw !funky_surf_board_frame14
	db $04 : dw !funky_surf_board_frame15
	db $04 : dw !funky_surf_board_frame16
	db $04 : dw !funky_surf_board_frame17
	db $04 : dw !funky_surf_board_frame18
	db $04 : dw !funky_surf_board_frame19
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98C3E
funky_idle:
	db $08 : dw !funky_frame1
	db $08 : dw !funky_frame2
	db $08 : dw !funky_frame3
	db $08 : dw !funky_frame2
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98C52
funky_idle_to_surf:
	db $04 : dw !funky_frame1
	db $04 : dw !funky_frame2
	db $04 : dw !funky_frame3
	db $04 : dw !funky_frame4
	db $04 : dw !funky_frame5
	db $04 : dw !funky_frame6
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98C6C
funky_surf_to_idle:
	db $04 : dw !funky_frame6
	db $04 : dw !funky_frame5
	db $04 : dw !funky_frame4
	db $04 : dw !funky_frame3
	db $04 : dw !funky_frame2
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98C83
funky_board_idle:
	db $08 : dw !funky_surf_board_frame1
	db $08 : dw !funky_surf_board_frame2
	db $08 : dw !funky_surf_board_frame3
	db $08 : dw !funky_surf_board_frame2
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98C97
funky_board_idle_to_surf:
	db $04 : dw !funky_surf_board_frame1
	db $04 : dw !funky_surf_board_frame2
	db $04 : dw !funky_surf_board_frame3
	db $04 : dw !funky_surf_board_frame4
	db $04 : dw !funky_surf_board_frame5
	db $04 : dw !funky_surf_board_frame6
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98CB1
funky_board_surf_to_idle:
	db $04 : dw !funky_surf_board_frame6
	db $04 : dw !funky_surf_board_frame5
	db $04 : dw !funky_surf_board_frame4
	db $04 : dw !funky_surf_board_frame3
	db $04 : dw !funky_surf_board_frame2
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98CC8
swanky_point:
	db $06 : dw !swanky_present_frame2
	db $06 : dw !swanky_present_frame3
	db $06 : dw !swanky_present_frame4
	db $06 : dw !swanky_present_frame5
	db $06 : dw !swanky_present_frame6
	db $28 : dw !swanky_present_frame7
	db $06 : dw !swanky_present_frame8
	db $06 : dw !swanky_present_frame9
	db $06 : dw !swanky_present_frame10
	db $28 : dw !swanky_present_frame11
	db $06 : dw !swanky_present_frame10
	db $06 : dw !swanky_present_frame9
	db $06 : dw !swanky_present_frame8
	db $28 : dw !swanky_present_frame7
	db $06 : dw !swanky_present_frame8
	db $06 : dw !swanky_present_frame9
	db $06 : dw !swanky_present_frame10
	db $06 : dw !swanky_present_frame11
	db $06 : dw !swanky_present_frame12
	db $28 : dw !swanky_present_frame13
	db $06 : dw !swanky_present_frame12
	db $06 : dw !swanky_present_frame11
	db $06 : dw !swanky_present_frame10
	db $06 : dw !swanky_present_frame9
	db $06 : dw !swanky_present_frame8
	db $06 : dw !swanky_present_frame7
	db $06 : dw !swanky_present_frame6
	db $06 : dw !swanky_present_frame5
	db $06 : dw !swanky_present_frame4
	db $06 : dw !swanky_present_frame3
	db $06 : dw !swanky_present_frame2
	db $06 : dw !swanky_present_frame1
	db $06 : dw !swanky_touch_hair_frame1
	db $06 : dw !swanky_touch_hair_frame2
	db $06 : dw !swanky_touch_hair_frame3
	db $06 : dw !swanky_touch_hair_frame4
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98D3C
swanky_idle:
	db $06 : dw !swanky_present_frame1
	db $06 : dw !swanky_smile_frame1
	db $06 : dw !swanky_smile_frame2
	db $3F : dw !swanky_smile_frame3
	db $06 : dw !swanky_smile_frame2
	db $06 : dw !swanky_smile_frame1
	db $06 : dw !swanky_present_frame1
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98D59
swanky_touch_hair:
	db $06 : dw !swanky_touch_hair_frame5
	db $06 : dw !swanky_touch_hair_frame6
	db $06 : dw !swanky_touch_hair_frame7
	db $06 : dw !swanky_touch_hair_frame8
	db $06 : dw !swanky_touch_hair_frame9
	db $06 : dw !swanky_touch_hair_frame10
	db $06 : dw !swanky_touch_hair_frame4
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98D76
swanky_touch_hair_to_idle:
	db $08 : dw !swanky_touch_hair_frame3
	db $08 : dw !swanky_touch_hair_frame2
	db $08 : dw !swanky_touch_hair_frame1
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98D87
swanky_idle_2:
	db $50 : dw !swanky_present_frame1
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98D92
swanky_idle_3:
	db $50 : dw !swanky_present_frame1
DATA_F98D95:
	db $27 : dw !swanky_present_frame1
	db !animation_command_81 : dw CODE_B9EFB6
	db $04 : dw !swanky_smile_sparkle_frame1
	db $04 : dw !swanky_smile_sparkle_frame2
	db $06 : dw !swanky_smile_sparkle_frame3
	db $04 : dw !swanky_smile_sparkle_frame2
	db $04 : dw !swanky_smile_sparkle_frame1
	db !animation_command_81 : dw CODE_B9EFB1
	db $26 : dw !swanky_present_frame1
	db $64 : dw !swanky_present_frame1
	db $64 : dw !swanky_present_frame1
	db $64 : dw !swanky_present_frame1
	db $34 : dw !swanky_present_frame1
	db $2A : dw !swanky_present_frame1
	db $2A : dw !swanky_present_frame1
	db $2A : dw !swanky_present_frame1
	db $18 : dw !swanky_present_frame1
	db !animation_command_82 : dw DATA_F98D95
	db !animation_command_80, $00

;$F98DCD
wrinkly_open_book:
	db $06 : dw !wrinkly_frame1
	db $06 : dw !wrinkly_frame2
	db $06 : dw !wrinkly_frame3
	db $28 : dw !wrinkly_frame4
	db $06 : dw !wrinkly_frame5
	db $06 : dw !wrinkly_frame6
	db $06 : dw !wrinkly_frame7
	db $06 : dw !wrinkly_frame8
	db $06 : dw !wrinkly_frame9
	db $06 : dw !wrinkly_frame10
	db $06 : dw !wrinkly_frame11
	db $28 : dw !wrinkly_frame12
	db $06 : dw !wrinkly_frame13
	db $06 : dw !wrinkly_frame14
	db $06 : dw !wrinkly_frame15
	db $06 : dw !wrinkly_frame16
	db $06 : dw !wrinkly_frame17
	db $06 : dw !wrinkly_frame18
	db $06 : dw !wrinkly_frame19
	db $06 : dw !wrinkly_frame20
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98E11
wrinkly_read:
	db $0C : dw !wrinkly_frame19
	db $0C : dw !wrinkly_frame18
	db $0C : dw !wrinkly_frame19
	db $0C : dw !wrinkly_frame20
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98E25
wrinkly_turn_page_forward:
	db $06 : dw !wrinkly_frame18
	db $06 : dw !wrinkly_frame21
	db $06 : dw !wrinkly_frame22
	db $06 : dw !wrinkly_frame23
	db $06 : dw !wrinkly_frame24
	db $06 : dw !wrinkly_frame25
	db $06 : dw !wrinkly_frame26
	db $06 : dw !wrinkly_frame27
	db $06 : dw !wrinkly_frame28
	db $06 : dw !wrinkly_frame29
	db $06 : dw !wrinkly_frame18
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98E4E
wrinkly_read_2:
	db $06 : dw !wrinkly_frame18
	db $06 : dw !wrinkly_frame19
	db $06 : dw !wrinkly_frame20
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98E5F
wrinkly_turn_page_back:
	db $22 : dw !wrinkly_frame18
	db $03 : dw !wrinkly_frame29
	db $04 : dw !wrinkly_frame28
	db $03 : dw !wrinkly_frame27
	db $04 : dw !wrinkly_frame26
	db $03 : dw !wrinkly_frame25
	db $04 : dw !wrinkly_frame24
	db $03 : dw !wrinkly_frame23
	db $04 : dw !wrinkly_frame22
	db $03 : dw !wrinkly_frame21
	db $22 : dw !wrinkly_frame18
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98E88
wrinkly_read_3:
	db $1C : dw !wrinkly_frame18
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98E93
wrinkly_turn_page_fast:
	db $04 : dw !wrinkly_frame18
	db $04 : dw !wrinkly_frame21
	db $04 : dw !wrinkly_frame22
	db $04 : dw !wrinkly_frame23
	db $04 : dw !wrinkly_frame24
	db $04 : dw !wrinkly_frame25
	db $04 : dw !wrinkly_frame26
	db $04 : dw !wrinkly_frame27
	db $04 : dw !wrinkly_frame28
	db $04 : dw !wrinkly_frame29
	db $04 : dw !wrinkly_frame18
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98EBC
wrinkly_shirt_open_book:
	db $06 : dw !wrinkly_book_frame1
	db $06 : dw !wrinkly_book_frame2
	db $06 : dw !wrinkly_book_frame3
	db $28 : dw !wrinkly_book_frame4
	db $06 : dw !wrinkly_book_frame5
	db $06 : dw !wrinkly_book_frame6
	db $06 : dw !wrinkly_book_frame7
	db $06 : dw !wrinkly_book_frame8
	db $06 : dw !wrinkly_book_frame9
	db $06 : dw !wrinkly_book_frame10
	db $06 : dw !wrinkly_book_frame11
	db $28 : dw !wrinkly_book_frame12
	db $06 : dw !wrinkly_book_frame12
	db $06 : dw !wrinkly_book_frame13
	db $06 : dw !wrinkly_book_frame14
	db $06 : dw !wrinkly_book_frame14
	db $06 : dw !wrinkly_book_frame15
	db $06 : dw !wrinkly_book_frame16
	db $06 : dw !wrinkly_book_frame17
	db $06 : dw !wrinkly_book_frame18
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98F00
wrinkly_shirt_read:
	db $0C : dw !wrinkly_book_frame17
	db $0C : dw !wrinkly_book_frame16
	db $0C : dw !wrinkly_book_frame17
	db $0C : dw !wrinkly_book_frame18
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98F14
wrinkly_shirt_turn_page_forward:
	db $06 : dw !wrinkly_book_frame16
	db $06 : dw !wrinkly_book_frame20
	db $06 : dw !wrinkly_book_frame21
	db $06 : dw !wrinkly_book_frame22
	db $06 : dw !wrinkly_book_frame23
	db $06 : dw !wrinkly_book_frame24
	db $06 : dw !wrinkly_book_frame25
	db $06 : dw !wrinkly_book_frame26
	db $06 : dw !wrinkly_book_frame27
	db $06 : dw !wrinkly_book_frame28
	db $06 : dw !wrinkly_book_frame16
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98F3D
wrinkly_shirt_read_2:
	db $06 : dw !wrinkly_book_frame16
	db $06 : dw !wrinkly_book_frame17
	db $06 : dw !wrinkly_book_frame18
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98F4E
wrinkly_shirt_turn_page_back:
	db $22 : dw !wrinkly_book_frame16
	db $03 : dw !wrinkly_book_frame28
	db $04 : dw !wrinkly_book_frame27
	db $03 : dw !wrinkly_book_frame26
	db $04 : dw !wrinkly_book_frame25
	db $03 : dw !wrinkly_book_frame24
	db $04 : dw !wrinkly_book_frame23
	db $03 : dw !wrinkly_book_frame22
	db $04 : dw !wrinkly_book_frame21
	db $03 : dw !wrinkly_book_frame20
	db $22 : dw !wrinkly_book_frame16
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98F77
wrinkly_shirt_read_3:
	db $1C : dw !wrinkly_book_frame16
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98F82
wrinkly_shirt_turn_page_fast:
	db $04 : dw !wrinkly_book_frame16
	db $04 : dw !wrinkly_book_frame20
	db $04 : dw !wrinkly_book_frame21
	db $04 : dw !wrinkly_book_frame22
	db $04 : dw !wrinkly_book_frame23
	db $04 : dw !wrinkly_book_frame24
	db $04 : dw !wrinkly_book_frame25
	db $04 : dw !wrinkly_book_frame26
	db $04 : dw !wrinkly_book_frame27
	db $04 : dw !wrinkly_book_frame28
	db $04 : dw !wrinkly_book_frame16
	db !animation_command_81 : dw CODE_B9F080
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

;$F98FAB
lost_world_rock_step:
	db $01 : dw !krocodile_kore_step1_graphic
	db !animation_command_83 : dw CODE_B9D12B
	db !animation_command_80, $00

namespace off

assert pc() <= $F99400 : padbyte $00 : pad $F99400

;$F99400
DATA_F99400:
	incbin "data/screens/graphics/secret_ending_screen_layer_2_tiledata.bin"

;$F9C775
DATA_F9C775:
	incbin "data/screens/8x8_tilemaps/secret_ending_screen_layer_2_8x8_tilemap.bin"
