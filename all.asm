sa1rom 0,1,2,3
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



;RESET_start:
;	JML RESET_start_hi_hop+$8000
;NMI_start:
;	JML NMI_start_hi_hop+$8000
;IRQ_start:
;	JML IRQ_start_hi_hop+$8000

check bankcross half

org $C00000
	incsrc "bank_C0.asm"
org $008000
	incsrc "bank_80.asm"
	warnpc $00FFB0 : padbyte $00 : pad $00FFB0
	incsrc "rom_header.asm"
org $C10000
	check bankcross full
	incsrc "bank_C1-ED.asm"
org $EE0000
	incsrc "bank_EE-F2.asm"
org $F30000
	check bankcross half
	incsrc "bank_F3.asm"
org $338000
	incsrc "bank_B3.asm"
org $F40000
	incsrc "bank_F4.asm"
org $348000
	incsrc "bank_B4.asm"
org $F50000
if !version == 0
	db $32, $02, $93, $12
else
	db $02, $12, $93, $32
endif
	incsrc "bank_F5.asm"
org $358000
	incsrc "bank_B5.asm"
org $F60000
	incsrc "bank_F6.asm"
org $368000
	incsrc "bank_B6.asm"
org $F70000
	check bankcross full
	incsrc "bank_F7.asm"
org $F80000
	check bankcross half
	incsrc "bank_F8.asm"
org $388000
DATA_B88000:
if !version == 0
	db $12, $29, $DE, $B3
else
	db $B3, $DE, $12, $29
endif
	incsrc "bank_B8.asm"
org $F90000
	check bankcross full
	incsrc "bank_F9.asm"
org $39D000
	incsrc "bank_B9.asm"
org $FA0000
	incsrc "bank_FA.asm"
org $3A9000
	incsrc "bank_BA.asm"
org $FB0000
	check bankcross half
	incsrc "bank_FB.asm"
org $3B8000
	incsrc "bank_BB.asm"
if !version == 0
	db $00, $AA, $AC, $3C
else
	db $3C, $AC, $AA, $00
endif
org $FC0000
	incsrc "bank_FC.asm"
org $3C8000
	incsrc "bank_BC.asm"
org $FD0000
	check bankcross full
	incsrc "bank_FD.asm"
org $FE0000
	incsrc "bank_FE.asm"
org $3EB800
	incsrc "bank_BE.asm"
org $FF0000
	incsrc "bank_FF.asm"
org $FFFFFF
	db $00
