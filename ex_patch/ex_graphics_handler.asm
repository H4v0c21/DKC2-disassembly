
ex_graphics_handler:
	TXA
	CMP #!ex_graphics_id_start
	BCS .is_ex_graphic
	LDA.l DATA_BC8000,x
	STA $40
	LDA.l DATA_BC8002,x
	STA $42
	RTL

.is_ex_graphic
	PHA
	SEC
	SBC #!ex_graphics_id_start
	TAX
	LDA.l ex_graphics_address_table,x
	STA $40
	LDA.l ex_graphics_bank_table,x
	STA $42
	PLX
	RTL


ex_graphics_handler_2:
	TXA
	CMP #!ex_graphics_id_start
	BCS .is_ex_graphic
	LDA.l DATA_BC8000,x
	STA $40
	INC A
	STA $44
	LDA.l DATA_BC8002,x
	STA $42
	STA $46
	RTL

.is_ex_graphic
	PHA
	SEC
	SBC #!ex_graphics_id_start
	TAX
	LDA.l ex_graphics_address_table,x
	STA $40
	INC A
	STA $44
	LDA.l ex_graphics_bank_table,x
	STA $42
	STA $46
	PLX
	RTL


ex_graphics_address_table:
	%offset(ex_graphics_bank_table, 2)


