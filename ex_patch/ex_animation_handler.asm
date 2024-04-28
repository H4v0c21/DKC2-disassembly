;ex animation handler
ex_animation_handler:
	PHA				;preserve animation id
	SEC
	SBC #!ex_animation_id_start
	BPL .ex_animation
;normal_animation
	PLA
	ASL A
	ASL A
	TXY
	TAX
	LDA.l DATA_F90002,x
	STA $26
	LDA.l DATA_F90000,x
	TYX
	PHB
	%pea_shift_dbr(DATA_F90000)
	PLB
	PLB
	JML ex_animation_handler_return

.ex_animation:
	PLY				;pull old preserved animation id to get rid of it
	ASL A
	ASL A
	TXY
	TAX
	LDA.l ex_animation_table_b,x
	STA $26
	LDA.l ex_animation_table,x
	TYX
	PHB
	%pea_shift_dbr(ex_animation_table)
	PLB
	PLB
	JML ex_animation_handler_return


ex_animation_handler_2:
	PHA				;preserve animation id
	SEC
	SBC #!ex_animation_id_start
	BPL .ex_animation
;normal_animation
	PLA
	ASL A
	ASL A
	TXY
	TAX
	LDA.l DATA_F90000,x
	TYX
	RTL

.ex_animation:
	PLY				;pull old preserved animation id to get rid of it
	ASL A
	ASL A
	TXY
	TAX
	LDA.l ex_animation_table,x
	TYX
	RTL


ex_animation_bank_handler:
	LDA $36,x
	CMP #!ex_animation_id_start
	BCS .ex_animation
;normal_animation
	PHB
	%pea_shift_dbr(DATA_F90000)
	PLB
	PLB
	JML ex_animation_bank_handler_return

.ex_animation:
	PHB
	%pea_shift_dbr(ex_animation_table)
	PLB
	PLB
	JML ex_animation_bank_handler_return