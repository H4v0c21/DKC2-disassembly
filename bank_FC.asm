;$FC0000
DATA_FC0000:
	incbin "data/screens/graphics/the_end_text_tiledata.bin"

;$FC0660
DATA_FC0660:
	%offset(DATA_FC06A0, $0040)
	%offset(DATA_FC06E0, $0080)
	%offset(DATA_FC0720, $00C0)
	%offset(DATA_FC0760, $0100)
	%offset(DATA_FC07A0, $0140)
	%offset(DATA_FC07E0, $0180)
	%offset(DATA_FC0820, $01C0)
	%offset(DATA_FC0860, $0200)
	%offset(DATA_FC08A0, $0240)
	%offset(DATA_FC08E0, $0280)
	%offset(DATA_FC0920, $02C0)
	%offset(DATA_FC0960, $0300)
	%offset(DATA_FC09A0, $0340)
	%offset(DATA_FC09E0, $0380)
	%offset(DATA_FC0A20, $03C0)
	%offset(DATA_FC0A60, $0400)
	%offset(DATA_FC0AA0, $0440)
	%offset(DATA_FC0AE0, $0480)
	%offset(DATA_FC0B20, $04C0)
	%offset(DATA_FC0B60, $0500)
	%offset(DATA_FC0BA0, $0540)
	%offset(DATA_FC0BE0, $0580)
	%offset(DATA_FC0C20, $05C0)
	%offset(DATA_FC0C60, $0600)
	%offset(DATA_FC0CA0, $0640)
	%offset(DATA_FC0CE0, $0680)
	%offset(DATA_FC0D20, $06C0)
	%offset(DATA_FC0D60, $0700)
	%offset(DATA_FC0DA0, $0740)
	%offset(DATA_FC0DE0, $0780)
	%offset(DATA_FC0E20, $07C0)
	%offset(DATA_FC0E60, $0800)
	%offset(DATA_FC0EA0, $0840)
	%offset(DATA_FC0EE0, $0880)
	%offset(DATA_FC0F20, $08C0)
	%offset(DATA_FC0F60, $0900)
	%offset(DATA_FC0FA0, $0940)
	%offset(DATA_FC0FE0, $0980)
	%offset(DATA_FC1020, $09C0)
	%offset(DATA_FC1060, $0A00)
	%offset(DATA_FC10A0, $0A40)
	%offset(DATA_FC10E0, $0A80)
	%offset(DATA_FC1120, $0AC0)
	%offset(DATA_FC1160, $0B00)
	%offset(DATA_FC11A0, $0B40)
	%offset(DATA_FC11E0, $0B80)
	%offset(DATA_FC1220, $0BC0)
	%offset(DATA_FC1260, $0C00)
	%offset(DATA_FC12A0, $0C40)
	%offset(DATA_FC12E0, $0C80)
	%offset(DATA_FC1320, $0CC0)
	%offset(DATA_FC1360, $0D00)
	%offset(DATA_FC13A0, $0D40)
	%offset(DATA_FC13E0, $0D80)
	%offset(DATA_FC1420, $0DC0)
	%offset(DATA_FC1460, $0E00)
	incbin "data/misc_graphics/world_map_8x16_text_tiledata.bin"

;$FC14A0
DATA_FC14A0:
	incbin "data/misc_graphics/world_map_arrows_tiledata.bin"

;$FC14E0
DATA_FC14E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame1.bin"

;$FC18E0
DATA_FC18E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame2.bin"

;$FC1CE0
DATA_FC1CE0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame3.bin"

;$FC20E0
DATA_FC20E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame4.bin"

;$FC24E0
DATA_FC24E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame5.bin"

;$FC28E0
DATA_FC28E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame6.bin"

;$FC2CE0
DATA_FC2CE0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame7.bin"

;$FC30E0
DATA_FC30E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame8.bin"

;$FC34E0
DATA_FC34E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame9.bin"

;$FC38E0
DATA_FC38E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame10.bin"

;$FC3CE0
DATA_FC3CE0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame11.bin"

;$FC40E0
DATA_FC40E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame12.bin"

;$FC44E0
DATA_FC44E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame13.bin"

;$FC48E0
DATA_FC48E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame14.bin"

;$FC4CE0
DATA_FC4CE0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame15.bin"

;$FC50E0
DATA_FC50E0:
	incbin "data/misc_graphics/world_map_icons_tiledata_frame16.bin"

;$FC54E0
DATA_FC54E0:
	incbin "data/misc_graphics/k_rool_water_drop_tiledata.bin"

;$FC5680
;also used for k.rool roof fragments
DATA_FC5680:
	incbin "data/misc_graphics/kleever_fragments_6_tiledata.bin"

;$FC5900
forest_collision:
	incbin "data/levels/collision_maps/forest_collision.bin"

;$FC5B8C
ship_hold_collision:
	incbin "data/levels/collision_maps/ship_hold_collision.bin"

;$FC5D94
wasp_hive_collision:
	incbin "data/levels/collision_maps/wasp_hive_collision.bin"

;$FC6154
ship_deck_collision:
	incbin "data/levels/collision_maps/ship_deck_collision.bin"

;$FC63FC
ship_mast_collision:
	incbin "data/levels/collision_maps/ship_mast_collision.bin"

;$FC665C
carnival_collision:
	incbin "data/levels/collision_maps/carnival_collision.bin"

;$FC689C
lava_collision:
	incbin "data/levels/collision_maps/lava_collision.bin"

;$FC6A0C
mine_collision:
	incbin "data/levels/collision_maps/mine_collision.bin"

;$FC6AA8
swamp_collision:
	incbin "data/levels/collision_maps/swamp_collision.bin"

;$FC6B30
brambles_collision:
	incbin "data/levels/collision_maps/brambles_collision.bin"

;$FC70E8
castle_collision:
	incbin "data/levels/collision_maps/castle_collision.bin"

;$FC7478
k_rool_2_collision:
	incbin "data/levels/collision_maps/k_rool_2_collision.bin"

;$FC749C
k_rool_collision:
	incbin "data/levels/collision_maps/k_rool_collision.bin"

;$FC74E0
ice_collision:
	incbin "data/levels/collision_maps/ice_collision.bin"

;$FC7A58
jungle_collision:
	incbin "data/levels/collision_maps/jungle_collision.bin"
