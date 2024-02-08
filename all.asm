!exhi = 1
!bypass_anti_piracy = 1

if !exhi == 1
	exhirom
else
	hirom
endif

optimize dp always
optimize address mirrors
;!version = 1
!override_pirate_panic = 0
!pirate_panic_replacement = $23


org $008000			;dummy org so functions work
	incsrc macros.asm
	incsrc constants.asm
	incsrc ram.asm
	incsrc sram.asm
	incsrc vram.asm
	incsrc structs.asm
	incsrc mmio.asm
	incsrc audio_constants.asm

org $C00000
check bankcross half
	incsrc "bank_C0.asm"
	warnpc $C07FFC
	padbyte $00
	pad $C07FFC
if !version == 1
	db $19, $3F, $AA, $C3
else
	db $AA, $C3, $3F, $19
endif

;weird copy of ship hold tilemap that fills the end of bank 80
org $80F4B0
	incbin "data/levels/32x32_tilemaps/ship_hold_32x32_tilemap.bin":0000-0AF6

;some random looking bytes
	db $56, $3F, $2C, $01, $05, $E3, $67, $AB
	db $09, $37

org $808000
	incsrc "bank_80.asm"
org $C10000
	check bankcross full
	incsrc "bank_C1-ED.asm"
	padbyte $00
	pad $EE0000
org $EE0000
	incsrc "bank_EE-F2.asm"
	padbyte $00
	pad $F30000
org $F30000
	check bankcross half
	incsrc "bank_F3.asm"
	padbyte $00
	pad $F38000
org $B38000
	incsrc "bank_B3.asm"
	padbyte $00
	pad $B40000
org $F40000
	incsrc "bank_F4.asm"
	padbyte $00
	pad $F48000
org $B48000
	incsrc "bank_B4.asm"
	padbyte $00
	pad $B50000
org $F50000
if !version == 0
	db $32, $02, $93, $12
else
	db $02, $12, $93, $32
endif
	incsrc "bank_F5.asm"
	padbyte $00
	pad $F58000
org $B58000
	incsrc "bank_B5.asm"
	padbyte $00
	pad $B60000
org $F60000
	incsrc "bank_F6.asm"
	padbyte $00
	pad $F68000
org $B68000
	incsrc "bank_B6.asm"
	padbyte $00
	pad $B70000
org $F70000
	check bankcross full
	incsrc "bank_F7.asm"
	padbyte $00
	pad $F80000
org $F80000
	check bankcross half
	incsrc "bank_F8.asm"
	padbyte $00
	pad $F88000
org $B88000
DATA_B88000:
if !version == 0
	db $12, $29, $DE, $B3
else
	db $B3, $DE, $12, $29
endif
	incsrc "bank_B8.asm"
	padbyte $00
	pad $B90000
org $F90000
	check bankcross full
	incsrc "bank_F9.asm"
	warnpc $F9D000
	padbyte $00
	pad $F9D000
org $B9D000
	incsrc "bank_B9.asm"
	padbyte $00
	pad $BA0000

check bankcross half
org $FA0000
	incsrc "bank_FA.asm"
	warnpc $FA9000
	padbyte $00
	pad $FA9000
org $BA9000
	incsrc "bank_BA.asm"
	padbyte $00
	pad $BB0000
org $FB0000
	check bankcross half
	incsrc "bank_FB.asm"
	padbyte $00
	pad $FB8000
org $BB8000
	incsrc "bank_BB.asm"
	padbyte $00
	pad $BBFFFC
if !version == 0
	db $00, $AA, $AC, $3C
else
	db $3C, $AC, $AA, $00
endif
org $FC0000
	incsrc "bank_FC.asm"
	padbyte $00
	pad $FC8000
org $BC8000
	incsrc "bank_BC.asm"
	padbyte $00
	pad $BD0000

org $FD0000
	check bankcross full
	incsrc "bank_FD.asm"
	padbyte $00
	pad $FE0000
org $FE0000
	incsrc "bank_FE.asm"
	warnpc $FEB800
	padbyte $00
	pad $FEB800
org $BEB800
	incsrc "bank_BE.asm"
	padbyte $00
	pad $BF0000
org $FF0000
	incsrc "bank_FF.asm"
	padbyte $00
	pad $FFFFFF
org $FFFFFF
	db $00


;6,112 KB
if !exhi == 1
check bankcross full
	org $400000
		incsrc "exhi/bank_40.asm"
	org $410000
		incsrc "exhi/bank_41.asm"
	org $420000
		incsrc "exhi/bank_42.asm"
	org $430000
		incsrc "exhi/bank_43.asm"
	org $440000
		incsrc "exhi/bank_44.asm"
	org $450000
		incsrc "exhi/bank_45.asm"
	org $460000
		incsrc "exhi/bank_46.asm"
	org $470000
		incsrc "exhi/bank_47.asm"
	org $480000
		incsrc "exhi/bank_48.asm"
	org $490000
		incsrc "exhi/bank_49.asm"
	org $4A0000
		incsrc "exhi/bank_4A.asm"
	org $4B0000
		incsrc "exhi/bank_4B.asm"
	org $4C0000
		incsrc "exhi/bank_4C.asm"
	org $4D0000
		incsrc "exhi/bank_4D.asm"
	org $4E0000
		incsrc "exhi/bank_4E.asm"
	org $4F0000
		incsrc "exhi/bank_4F.asm"
	org $500000
		incsrc "exhi/bank_50.asm"
	org $510000
		incsrc "exhi/bank_51.asm"
	org $520000
		incsrc "exhi/bank_52.asm"
	org $530000
		incsrc "exhi/bank_53.asm"
	org $540000
		incsrc "exhi/bank_54.asm"
	org $550000
		incsrc "exhi/bank_55.asm"
	org $560000
		incsrc "exhi/bank_56.asm"
	org $570000
		incsrc "exhi/bank_57.asm"
	org $580000
		incsrc "exhi/bank_58.asm"
	org $590000
		incsrc "exhi/bank_59.asm"
	org $5A0000
		incsrc "exhi/bank_5A.asm"
	org $5B0000
		incsrc "exhi/bank_5B.asm"
	org $5C0000
		incsrc "exhi/bank_5C.asm"
	org $5D0000
		incsrc "exhi/bank_5D.asm"
	org $5E0000
		incsrc "exhi/bank_5E.asm"
	org $5F0000
		incsrc "exhi/bank_5F.asm"

;7,968 KB
check bankcross full
	org $600000
		incsrc "exhi/bank_60.asm"
	org $610000
		incsrc "exhi/bank_61.asm"
	org $620000
		incsrc "exhi/bank_62.asm"
	org $630000
		incsrc "exhi/bank_63.asm"
	org $640000
		incsrc "exhi/bank_64.asm"
	org $650000
		incsrc "exhi/bank_65.asm"
	org $660000
		incsrc "exhi/bank_66.asm"
	org $670000
		incsrc "exhi/bank_67.asm"
	org $680000
		incsrc "exhi/bank_68.asm"
	org $690000
		incsrc "exhi/bank_69.asm"
	org $6A0000
		incsrc "exhi/bank_6A.asm"
	org $6B0000
		incsrc "exhi/bank_6B.asm"
	org $6C0000
		incsrc "exhi/bank_6C.asm"
	org $6D0000
		incsrc "exhi/bank_6D.asm"
	org $6E0000
		incsrc "exhi/bank_6E.asm"
	org $6F0000
		incsrc "exhi/bank_6F.asm"
	org $700000
		incsrc "exhi/bank_70.asm"
	org $710000
		incsrc "exhi/bank_71.asm"
	org $720000
		incsrc "exhi/bank_72.asm"
	org $730000
		incsrc "exhi/bank_73.asm"
	org $740000
		incsrc "exhi/bank_74.asm"
	org $750000
		incsrc "exhi/bank_75.asm"
	org $760000
		incsrc "exhi/bank_76.asm"
	org $770000
		incsrc "exhi/bank_77.asm"
	org $780000
		incsrc "exhi/bank_78.asm"
	org $790000
		incsrc "exhi/bank_79.asm"
	org $7A0000
		incsrc "exhi/bank_7A.asm"
	org $7B0000
		incsrc "exhi/bank_7B.asm"
	org $7C0000
		incsrc "exhi/bank_7C.asm"
	org $7D0000
		incsrc "exhi/bank_7D.asm"

;8,032 KB
check bankcross half
	org $3E8000
		incsrc "exhi/bank_3E.asm"
	org $3F8000
		incsrc "exhi/bank_3F.asm"
endif
