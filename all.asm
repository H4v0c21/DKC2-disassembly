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



org $008000
	check bankcross half
	bank_80:
		incsrc "bank_80.asm"
		warnpc $00FFB0 : padbyte $80 : pad $00FFB0
		incsrc "rom_header.asm"
org $018000
	check bankcross half
	bank_B3:
		incsrc "bank_B3.asm"
		padbyte $B3 : pad (bank_B3+$8000-1)
org $C10000
	check bankcross full
	bank_F9:
		incsrc "bank_F9.asm"
		padbyte $F9 : pad (bank_F9+$D000-1)
org $03D000
	check bankcross half
	bank_B9:
		incsrc "bank_B9.asm"
		padbyte $B9 : pad (bank_B9+$3000-1)
org $C20000
	check bankcross full
	bank_FA:
		incsrc "bank_FA.asm"
		padbyte $FA : pad (bank_FA+$9000-1)
org $059000
	check bankcross half
	bank_BA:
		incsrc "bank_BA.asm"
		padbyte $BA : pad (bank_BA+$7000-1)
org $C30000
	check bankcross full
	bank_FE:
		incsrc "bank_FE.asm"
		padbyte $FE : pad (bank_FE+$B800-1)
org $07B800
	check bankcross half
	bank_BE:
		incsrc "bank_BE.asm"
		padbyte $BE : pad (bank_BE+$4800-1)
org $088000
	check bankcross half
	bank_B4:
		incsrc "bank_B4.asm"
		padbyte $B4 : pad (bank_B4+$8000-1)
org $098000
	check bankcross half
	bank_B5:
		incsrc "bank_B5.asm"
		padbyte $B5 : pad (bank_B5+$8000-1)
org $0A8000
	check bankcross half
	bank_B6:
		incsrc "bank_B6.asm"
		padbyte $B6 : pad (bank_B6+$8000-1)
org $0B8000
	check bankcross half
	bank_B8:
		incsrc "bank_B8.asm"
		padbyte $B8 : pad (bank_B8+$8000-1)
org $0C8000
	check bankcross half
	bank_BB:
		incsrc "bank_BB.asm"
		padbyte $BB : pad (bank_BB+$8000-1)
org $0D8000
	check bankcross half
	bank_BC:
		incsrc "bank_BC.asm"
		padbyte $BC : pad (bank_BC+$8000-1)
org $C70000
	check bankcross full
	bank_F7:
		incsrc "bank_F7.asm"
		padbyte $F7 : pad (bank_F7+$10000-1)
org $C80000
	check bankcross full
	bank_FD:
		incsrc "bank_FD.asm"
		padbyte $FD : pad (bank_FD+$10000-1)
org $C90000
	check bankcross full
	bank_FF:
		incsrc "bank_FF.asm"
		padbyte $FF : pad (bank_FF+$10000-1)
org $CA0000
	check bankcross off
	bank_C1_ED:
		incsrc "bank_C1-ED.asm"
		padbyte $C1 : pad (bank_C1_ED+$2D0000-1)
org $F70000
	check bankcross off
	bank_EE_F2:
		incsrc "bank_EE-F2.asm"
		padbyte $EE : pad (bank_EE_F2+$50000-1)
org $FC0000
	check bankcross half
	bank_C0:
		incsrc "bank_C0.asm"
		padbyte $C0 : pad (bank_C0+$8000-1)
org $FC8000
	check bankcross half
	bank_F3:
		incsrc "bank_F3.asm"
		padbyte $F3 : pad (bank_F3+$8000-1)
org $FD0000
	check bankcross half
	bank_F4:
		incsrc "bank_F4.asm"
		padbyte $F4 : pad (bank_F4+$8000-1)
org $FD8000
	check bankcross half
	bank_F5:
		incsrc "bank_F5.asm"
		padbyte $F5 : pad (bank_F5+$8000-1)
org $FE0000
	check bankcross half
	bank_F6:
		incsrc "bank_F6.asm"
		padbyte $F6 : pad (bank_F6+$8000-1)
org $FE8000
	check bankcross half
	bank_F8:
		incsrc "bank_F8.asm"
		padbyte $F8 : pad (bank_F8+$8000-1)
org $FF0000
	check bankcross half
	bank_FB:
		incsrc "bank_FB.asm"
		padbyte $FB : pad (bank_FB+$8000-1)
org $FF8000
	check bankcross half
	bank_FC:
		incsrc "bank_FC.asm"
		padbyte $FC : pad (bank_FC+$8000-1)
org $FFFFFF
	db $00