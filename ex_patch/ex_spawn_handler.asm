
;spawn handler
ex_spawn_script_check:
	CMP #!ex_spawn_id_start
	BCS .ex_spawn_script
;normal_spawn_script
	TAX
	LDA.l DATA_FBE800,x
	TAY
	LDX alternate_sprite
	JSL CODE_BB8474
	RTL
	
.ex_spawn_script
	TAX
	LDA.l DATA_FBE800,x
	TAY
	LDX alternate_sprite
	JSL .set_ex_spawn_bank
	RTL
	
.set_ex_spawn_bank
	PHB
	%pea_shift_dbr(ex_spawn_scripts)
	PLB
	PLB
	JML parse_initscript_entry
