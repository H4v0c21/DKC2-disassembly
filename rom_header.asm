!ex_ram_size		= $00
!special_version	= $00
!cart_type_sub		= $00
!map_mode		= $23	;SA-1
!cart_type		= $35	;ROM, RAM, SRAM, SA-1
!rom_size		= $0C 	;2 ^ 0x0C = 4096 KB
!sram_size		= $01	;2 ^ 0x01 = 2 KB
!region			= $01	;North America
!version		= $00
!check_complement	= $0000
!check_sum		= $0000

	db "01"
	db "ADNE"
	db $00, $00, $00, $00, $00, $00, $00
	db !ex_ram_size
	db !special_version
	db !cart_type_sub
	db "DIDDY'S KONG QUEST   "
	db !map_mode
	db !cart_type
	db !rom_size
	db !sram_size
	db !region
	db $33
	db !version
	dw !check_complement
	dw !check_sum

;CPU NATIVE VECTORS
	dw !null_pointer	;unused
	dw !null_pointer	;unused
	dw !null_pointer	;COP
	dw !null_pointer	;BRK
	dw !null_pointer	;ABORT
	dw NMI_start;+$8000	;NMI
	dw !null_pointer	;RESET (unused)
	dw IRQ_start;+$8000	;IRQ

;CPU EMULATION VECTORS
	dw !null_pointer	;unused
	dw !null_pointer	;unused
	dw !null_pointer	;COP
	dw !null_pointer	;BRK (unused)
	dw !null_pointer	;ABORT
	dw !null_pointer	;NMI
	dw RESET_start;+$8000	;RESET
	dw !null_pointer	;IRQ/BRK