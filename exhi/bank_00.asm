NMI_start_force_bank_80:
	JML NMI_start

IRQ_start_force_bank_80:
	JML IRQ_start

RESET_start_force_bank_80:
	JML RESET_start

warnpc $00FFB0 : org $00FFB0 : incsrc "rom_header.asm"