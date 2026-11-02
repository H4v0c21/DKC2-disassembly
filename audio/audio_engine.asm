namespace APU
arch spc700
base audio_engine				;	> ARAM address of audio engine

instrument_lookup_table:
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00


CODE_0660:
	MOV A, cpu_command_parameter		;$0660  \
	ASL A					;$0663   |
	MOV Y, A				;$0664   |
	MOV A, sub_track_table+Y		;$0665   |
	MOV song_data_address, A		;$0668   |
	MOV A, sub_track_table+1+Y		;$066A   |
	MOV song_data_address+1, A		;$066D   |
	JMP CODE_0678				;$066F  /

CODE_0672:
	MOV song_data_address+1, #song_data>>8	;$0672  \
	MOV song_data_address, #song_data&$00FF	;$0675   |
CODE_0678:					;	 |
	CALL CODE_100B				;$0678   |
	MOV A, #$00				;$067B   |
	MOV sound_engine_toggle, A		;$067D   |
	MOV mono_stereo_toggle, A		;$067F   |
	MOV SPC.control, A			;$0681   |
check_for_cpu_command:				;	 |
	MOV A, cpu_transaction			;$0683   |
	CMP A, SPC.CPUIO1			;$0685   |
	BEQ .CPU_command_received		;$0687   |
	JMP CODE_0781				;$0689  /

.CPU_command_received
	MOV X, SPC.CPUIO3			;$068C  \ \ Get CPU command parameter
	MOV cpu_command_parameter, X		;$068E   |/ Save it for later use
	MOV X, SPC.CPUIO2			;$0691   |> Get CPU request
	MOV SPC.CPUIO1, A			;$0693   |\ Update CPU transaction id
	INC A					;$0695   | |
	MOV cpu_transaction, A			;$0696   |/ Update next expected CPU transaction id
	MOV A, X				;$0698   |> Get CPU request from X
	CMP A, #$80				;$0699   |\
	BPL .execute_cpu_command		;$069B   |/ If a CPU command was sent then execute it
	JMP CODE_0773				;$069D  /> Else a sound effect was queued, handle playing it

.execute_cpu_command
	AND A, #$07				;$06A0  \
	ASL A					;$06A2   |
	MOV X, A				;$06A3   |
	JMP (.CPU_command_table+X)		;$06A4  /

.CPU_command_table:
	dw CPU_command_F8			;00/F8
	dw CPU_command_F9			;01/F9
	dw CPU_command_FA_set_mono_stereo	;02/FA Set Mono/Stereo
	dw CPU_command_FB_transition_song	;03/FB Transition song
	dw CPU_command_FC_set_var_pitch_loop	;04/FC Start looping a sound with variable speed/pitch
	dw CPU_command_FD_stop_var_pitch_loop	;05/FD Stop looping a sound with variable speed/pitch
	dw CPU_command_FE_play_mode		;06/FE Play mode
	dw CPU_command_FF_upload_mode		;07/FF Upload mode

CPU_command_FB_transition_song:
	MOV X, #$7F				;$06B7  \
.clear_dsp					;	 |
	MOV A, #DSPc[7].vol_r			;$06B9   |> A = last channel volume register address
.next_channel					;	 |
	MOV Y, A				;$06BB   |\
	MOV SPC.DSP_addr, Y			;$06BC   |/ Set DSP write address to Y
	CALL CODE_06EB				;$06BE   |
	DEC Y					;$06C1   |
	MOV SPC.DSP_addr, Y			;$06C2   |
	CALL CODE_06EB				;$06C4   |
	MOV A, Y				;$06C7   |\ Get DSP register index in A
	SETC					;$06C8   | |
	SBC A, #$0F				;$06C9   |/ Move to previous channel DSP index
	BPL .next_channel			;$06CB   |> If index greater than 0, we have more channel registers to init
	MOV SPC.DSP_addr, #DSPs.master_vol_l	;$06CD   |
	CALL CODE_06EB				;$06D0   |
	MOV SPC.DSP_addr, #DSPs.master_vol_r	;$06D3   |
	CALL CODE_06EB				;$06D6   |
	MOV SPC.DSP_addr, #DSPs.echo_vol_l	;$06D9   |
	CALL CODE_06EB				;$06DC   |
	MOV SPC.DSP_addr, #DSPs.echo_vol_r	;$06DF   |
	CALL CODE_06EB				;$06E2   |
	DEC X					;$06E5   |
	BNE .clear_dsp				;$06E6   |
	JMP CODE_0660				;$06E8  /

CODE_06EB:
	MOV A, SPC.DSP_data			;$06EB  \ \
	BEQ .write_to_DSP			;$06ED   |/ If DSP value is 0
	BMI .add_2				;$06EF   |
	DEC A					;$06F1   |
	DEC A					;$06F2   |
	BRA .write_to_DSP			;$06F3  /

.add_2
	INC A					;$06F5  \
	INC A					;$06F6   |
.write_to_DSP					;	 |
	MOV SPC.DSP_data, A			;$06F7   |
	RET					;$06F9  /

CPU_command_FA_set_mono_stereo:
	MOV A, cpu_command_parameter		;$06FA  \
	MOV mono_stereo_toggle, A		;$06FD   |
	JMP CODE_0781				;$06FF  /

CPU_command_F9:
	MOV A, cpu_command_parameter		;$0702  \
	MOV ARAM_E7, A				;$0705   |
	JMP CODE_0781				;$0707  /

CPU_command_F8:
	MOV A, cpu_command_parameter		;$070A  \
	MOV ARAM_E8, A				;$070D   |
	JMP CODE_0781				;$070F  /

CPU_command_FD_stop_var_pitch_loop:
	MOV A, song_master_volume		;$0712  \
	PUSH A					;$0715   |
	PUSH X					;$0716   |
	MOV X, #$05				;$0717   |
	MOV A, cpu_command_parameter		;$0719   |
	MOV song_master_volume, A		;$071C   |
	MOV SPC.DSP_addr, #DSPc[5].vol_l	;$071F   |
	MOV A, SPC.DSP_data			;$0722   |
	CALL CODE_0C59				;$0724   |
	MOV SPC.DSP_data, A			;$0727   |
	INC SPC.DSP_addr			;$0729   |
	MOV A, SPC.DSP_data			;$072B   |
	CALL CODE_0C59				;$072D   |
	MOV SPC.DSP_data, A			;$0730   |
	POP X					;$0732   |
	POP A					;$0733   |
	MOV song_master_volume, A		;$0734   |
	BRA CODE_0781				;$0737  /

CPU_command_FC_set_var_pitch_loop:
	MOV A, cpu_command_parameter		;$0739  \
	BMI CODE_074A				;$073C   |
	CLRC					;$073E   |
	MOV A, cpu_command_parameter		;$073F   |
	MOV ARAM_EC, A				;$0742   |
	MOV A, #$00				;$0744   |
	MOV ARAM_ED, A				;$0746   |
	BRA CODE_0756				;$0748  /

CODE_074A:
	MOV cpu_command_parameter, A		;$074A  \
	MOV A, cpu_command_parameter		;$074D   |
	MOV ARAM_EC, A				;$0750   |
	MOV A, #$FF				;$0752   |
	MOV ARAM_ED, A				;$0754   |
CODE_0756:					;	 |
	MOVW YA, ARAM_EC			;$0756   |
	ADDW YA, ARAM_EC			;$0758   |
	ADDW YA, ARAM_EC			;$075A   |
	ADDW YA, ARAM_EC			;$075C   |
	ADDW YA, ARAM_EC			;$075E   |
	ADDW YA, ARAM_EC			;$0760   |
	ADDW YA, ARAM_EC			;$0762   |
	ADDW YA, ARAM_EC			;$0764   |
	MOVW ARAM_EC, YA			;$0766   |
	MOV SPC.DSP_addr, #DSPs.echo_enable	;$0768   |
	MOV A, SPC.DSP_data			;$076B   |
	AND A, #$DF				;$076D   |
	MOV SPC.DSP_data, A			;$076F   |
	BRA CODE_0781				;$0771  /

CODE_0773:
	MOV X, cpu_command_parameter		;$0773  \> Get channel number to play sound on
	CALL CODE_10F7				;$0776   |
	BRA CODE_078E				;$0779  /

CPU_command_FE_play_mode:
	MOV sound_engine_toggle, #$01		;$077B  \
	MOV SPC.control, #$00			;$077E   |
CODE_0781:					;	 |
	MOV A, sound_engine_toggle		;$0781   |
	BNE CODE_0788				;$0783   |
	JMP check_for_cpu_command		;$0785  /

CODE_0788:
	MOV (SPC.timer_1_divider), (ARAM_E4)	;$0788  \
	MOV SPC.control, #$01			;$078B   |
CODE_078E:					;	 |
	MOV A, SPC.timer_1_output		;$078E   |
	BEQ CODE_078E				;$0790   |
	MOV SPC.control, #$01			;$0792   |
	MOV ARAM_20, #$00			;$0795   |
	CLRC					;$0798   |
	ADC (ARAM_1E), (song_tempo)		;$0799   |
	ROR ARAM_20				;$079C   |
	MOV ARAM_23, #$00			;$079E   |
	CLRC					;$07A1   |
	ADC (ARAM_21), (sfx_tempo)		;$07A2   |
	ROR ARAM_23				;$07A5   |
	MOV X, #$00				;$07A7   |
CODE_07A9:					;	 |
	MOV A, ARAM_20				;$07A9   |
	BNE CODE_07B2				;$07AB   |
	CALL CODE_09BC				;$07AD   |
	BRA CODE_07B7				;$07B0  /

CODE_07B2:
	CALL CODE_0813				;$07B2  \
	BNE CODE_07B2				;$07B5   |
CODE_07B7:					;	 |
	MOV A, channel_unknown_01E0+X		;$07B7   |
	BEQ CODE_07D0				;$07BA   |
	PUSH X					;$07BC   |
	MOV A, X				;$07BD   |
	OR A, #$08				;$07BE   |
	MOV X, A				;$07C0   |
	MOV A, ARAM_23				;$07C1   |
	BNE CODE_07CA				;$07C3   |
	CALL CODE_09BC				;$07C5   |
	BRA CODE_07CF				;$07C8  /

CODE_07CA:
	CALL CODE_0813				;$07CA  \
	BNE CODE_07CA				;$07CD   |
CODE_07CF:					;	 |
	POP X					;$07CF   |
CODE_07D0:					;	 |
	INC X					;$07D0   |
	CMP X, #$08				;$07D1   |
	BEQ .check_for_cpu_command		;$07D3   |
	JMP CODE_07A9				;$07D5  /

.check_for_cpu_command:
	JMP check_for_cpu_command		;$07D8   >

CPU_command_FF_upload_mode:
	MOV A, cpu_command_parameter		;$07DB  \
	BEQ CODE_07E3				;$07DE   |
	JMP handle_cpu_data_upload		;$07E0  /

CODE_07E3:
	MOV SPC.DSP_addr, #DSPs.key_off		;$07E3  \
	MOV SPC.DSP_data, #$FF			;$07E6   |
	MOV SPC.control, #$00			;$07E9   |
	MOV SPC.timer_2_divider, #$C8		;$07EC   |
	MOV SPC.control, #$02			;$07EF   |
.wait						;	 |
	MOV A, SPC.timer_2_output		;$07F2   |
	BEQ .wait				;$07F4   |
	MOV SPC.DSP_addr, #DSPs.flags		;$07F6   |
	MOV SPC.DSP_data, #$A0			;$07F9   |
	MOV X, #$00				;$07FC   |
	MOV SPC.DSP_addr, #DSPs.echo_enable	;$07FE   |
	MOV SPC.DSP_data, X			;$0801   |
	MOV SPC.DSP_addr, #DSPs.echo_vol_l	;$0803   |
	MOV SPC.DSP_data, X			;$0806   |
	MOV SPC.DSP_addr, #DSPs.echo_vol_r	;$0808   |
	MOV SPC.DSP_data, X			;$080B   |
	CALL CODE_100B				;$080D   |
	JMP handle_cpu_data_upload		;$0810  /

CODE_0813:
	MOV A, channel_enable+X			;$0813  \
	BNE CODE_081B				;$0816   |
	MOV A, #$00				;$0818   |
	RET					;$081A  /

CODE_081B:
	DEC channel_wait_timer_lo+X		;$081B  \
	MOV A, channel_wait_timer_lo+X		;$081D   |
	CMP A, #$01				;$081F   |
	BEQ CODE_0839				;$0821   |
	CMP A, #$FF				;$0823   |
	BNE CODE_082F				;$0825   |
	MOV A, channel_wait_timer_hi+X		;$0827   |
	BEQ CODE_0850				;$0829   |
	DEC channel_wait_timer_hi+X		;$082B   |
	BRA CODE_084A				;$082D  /

CODE_082F:
	CMP A, #$00				;$082F  \
	BNE CODE_084A				;$0831   |
	MOV A, channel_wait_timer_hi+X		;$0833   |
	BEQ CODE_0850				;$0835   |
	BRA CODE_084A				;$0837  /

CODE_0839:
	MOV A, channel_wait_timer_hi+X		;$0839  \
	BNE CODE_084A				;$083B   |
	MOV A, channel_unknown_01E0+X		;$083D   |
	BNE CODE_084A				;$0840   |
	MOV A, channel_bit_table+X		;$0842   |
	MOV SPC.DSP_addr, #DSPs.key_off		;$0845   |
	MOV SPC.DSP_data, A			;$0848   |
CODE_084A:					;	 |
	CALL CODE_09BC				;$084A   |
	MOV A, #$00				;$084D   |
	RET					;$084F  /

CODE_0850:
	MOV A, channel_seq_address_lo+X		;$0850  \
	MOV Y, channel_seq_address_hi+X		;$0852   |
	MOVW ARAM_00, YA			;$0854   |
	MOV Y, #$00				;$0856   |
	MOV A, ($00)+Y				;$0858   |
	BMI CODE_0862				;$085A   |
	PUSH X					;$085C   |
	ASL A					;$085D   |
	MOV X, A				;$085E   |
	JMP (DATA_0FA5+X)			;$085F  /

CODE_0862:
	CALL CODE_0867				;$0862  \
	BRA CODE_084A				;$0865  /

CODE_0867:
	CMP A, #$80				;$0867  \
	BNE CODE_088B				;$0869   |
	MOV A, channel_unknown_01E0+X		;$086B   |
	BNE CODE_0888				;$086E   |
	MOV A, channel_bit_table+X		;$0870   |
	MOV SPC.DSP_addr, #DSPs.key_off		;$0873   |
	MOV SPC.DSP_data, A			;$0876   |
	MOV A, X				;$0878   |
	AND A, #$07				;$0879   |
	XCN A					;$087B   |
	OR A, #$02				;$087C   |
	MOV SPC.DSP_addr, A			;$087E   |
	MOV A, #$00				;$0880   |
	MOV SPC.DSP_data, A			;$0882   |
	INC SPC.DSP_addr			;$0884   |
	MOV SPC.DSP_data, A			;$0886   |
CODE_0888:					;	 |
	JMP CODE_0983				;$0888  /

CODE_088B:
	CMP A, #$E0				;$088B  \
	BMI CODE_0899				;$088D   |
	CMP A, #$E1				;$088F   |
	BEQ CODE_0897				;$0891   |
	MOV A, channel_variable_note_1+X	;$0893   |
	BRA CODE_0899				;$0895  /

CODE_0897:
	MOV A, channel_variable_note_2+X	;$0897  \
CODE_0899:					;	 |
	CLRC					;$0899   |
	ADC A, #$24				;$089A   |
	ADC A, channel_pitch+X			;$089C   |
	ASL A					;$089F   |
	PUSH X					;$08A0   |
	MOV Y, channel_pitch_fine+X		;$08A1   |
	BEQ CODE_08DF				;$08A3   |
	MOV X, A				;$08A5   |
	MOV ARAM_04, Y				;$08A6   |
	MOV A, Y				;$08A8   |
	BPL CODE_08AE				;$08A9   |
	EOR A, #$FF				;$08AB   |
	INC A					;$08AD   |
CODE_08AE:					;	 |
	MOV Y, A				;$08AE   |
	PUSH Y					;$08AF   |
	MOV A, pitch_table+X			;$08B0   |
	MUL YA					;$08B3   |
	MOV ARAM_02, Y				;$08B4   |
	MOV ARAM_03, #$00			;$08B6   |
	POP Y					;$08B9   |
	MOV A, pitch_table_hi+X			;$08BA   |
	MUL YA					;$08BD   |
	ADDW YA, ARAM_02			;$08BE   |
	MOV ARAM_03, Y				;$08C0   |
	LSR ARAM_03				;$08C2   |
	ROR A					;$08C4   |
	LSR ARAM_03				;$08C5   |
	ROR A					;$08C7   |
	MOV ARAM_02, A				;$08C8   |
	MOV A, pitch_table_hi+X			;$08CA   |
	MOV Y, A				;$08CD   |
	MOV A, pitch_table+X			;$08CE   |
	MOV X, ARAM_04				;$08D1   |
	BMI CODE_08D9				;$08D3   |
	ADDW YA, ARAM_02			;$08D5   |
	BRA CODE_08DB				;$08D7  /

CODE_08D9:
	SUBW YA, ARAM_02			;$08D9  \
CODE_08DB:					;	 |
	MOVW ARAM_02, YA			;$08DB   |
	BRA CODE_08EA				;$08DD  /

CODE_08DF:
	MOV X, A				;$08DF  \
	MOV A, pitch_table+X			;$08E0   |
	MOV ARAM_02, A				;$08E3   |
	MOV A, pitch_table_hi+X			;$08E5   |
	MOV ARAM_03, A				;$08E8   |
CODE_08EA:					;	 |
	POP A					;$08EA   |
	MOV X, A				;$08EB   |
	AND A, #$07				;$08EC   |
	XCN A					;$08EE   |
	MOV SPC.DSP_addr, A			;$08EF   |
	MOV A, channel_unknown_01E0+X		;$08F1   |
	BEQ CODE_08F9				;$08F4   |
	JMP CODE_0983				;$08F6  /

CODE_08F9:
	MOV A, channel_vol_l+X			;$08F9  \
	CALL CODE_0C59				;$08FC   |
	MOV SPC.DSP_data, A			;$08FF   |
	INC SPC.DSP_addr			;$0901   |
	MOV A, channel_vol_r+X			;$0903   |
	CALL CODE_0C59				;$0906   |
	MOV SPC.DSP_data, A			;$0909   |
	INC SPC.DSP_addr			;$090B   |
	MOV A, channel_effects+X		;$090D   |
	AND A, #$01				;$0910   |
	BEQ CODE_092B				;$0912   |
	MOV A, channel_pitch_slide_delay+X	;$0914   |
	MOV channel_p_slide_delay_timer+X, A	;$0917   |
	MOV A, channel_pitch_slide_interval+X	;$091A   |
	MOV channel_unknown_0100+X, A		;$091D   |
	MOV A, channel_pitch_slide_up_count+X	;$0920   |
	MOV channel_unknown_94+X, A		;$0923   |
	MOV A, channel_pitch_slide_down_count+X	;$0925   |
	MOV channel_unknown_01C0+X, A		;$0928   |
CODE_092B:					;	 |
	MOV A, channel_effects+X		;$092B   |
	AND A, #$02				;$092E   |
	BEQ CODE_094D				;$0930   |
	MOV A, channel_vibrato_depth+X		;$0932   |
	BPL CODE_093D				;$0935   |
	EOR A, #$FF				;$0937   |
	INC A					;$0939   |
	MOV channel_vibrato_depth+X, A		;$093A   |
CODE_093D:					;	 |
	MOV A, channel_vibrato_length+X		;$093D   |
	LSR A					;$0940   |
	MOV channel_vibrato_position+X, A	;$0941   |
	MOV A, channel_vibrato_rate+X		;$0943   |
	MOV channel_vibrato_step+X, A		;$0946   |
	MOV A, channel_vibrato_delay+X		;$0948   |
	MOV channel_vibrato_delay_timer+X, A	;$094B   |
CODE_094D:					;	 |
	MOV A, ARAM_02				;$094D   |
	MOV channel_unknown_84+X, A		;$094F   |
	MOV SPC.DSP_data, A			;$0951   |
	INC SPC.DSP_addr			;$0953   |
	MOV A, ARAM_03				;$0955   |
	MOV channel_unknown_74+X, A		;$0957   |
	MOV SPC.DSP_data, A			;$0959   |
	INC SPC.DSP_addr			;$095B   |
	MOV A, channel_instrument+X		;$095D   |
	MOV SPC.DSP_data, A			;$0960   |
	INC SPC.DSP_addr			;$0962   |
	MOV A, channel_adsr_1+X			;$0964   |
	MOV SPC.DSP_data, A			;$0967   |
	INC SPC.DSP_addr			;$0969   |
	MOV A, channel_adsr_2+X			;$096B   |
	MOV SPC.DSP_data, A			;$096E   |
	INC SPC.DSP_addr			;$0970   |
	MOV SPC.DSP_data, #$7F			;$0972   |
	MOV SPC.DSP_addr, #DSPs.key_off		;$0975   |
	MOV SPC.DSP_data, #$00			;$0978   |
	MOV SPC.DSP_addr, #DSPs.key_on		;$097B   |
	MOV A, channel_bit_table+X		;$097E   |
	MOV SPC.DSP_data, A			;$0981   |
CODE_0983:					;	 |
	MOV A, channel_default_duration_lo+X	;$0983   |
	BEQ CODE_0997				;$0986   |
	MOV ARAM_00, #$01			;$0988   |
	MOV A, channel_default_duration_lo+X	;$098B   |
	MOV channel_wait_timer_lo+X, A		;$098E   |
	MOV A, channel_default_duration_hi+X	;$0990   |
	MOV channel_wait_timer_hi+X, A		;$0993   |
	BRA CODE_09AE				;$0995  /

CODE_0997:
	MOV Y, #$01				;$0997  \
	MOV A, ($00)+Y				;$0999   |
	MOV channel_wait_timer_lo+X, A		;$099B   |
	MOV A, channel_long_duration+X		;$099D   |
	BEQ CODE_09AB				;$09A0   |
	MOV A, channel_wait_timer_lo+X		;$09A2   |
	MOV channel_wait_timer_hi+X, A		;$09A4   |
	INC Y					;$09A6   |
	MOV A, ($00)+Y				;$09A7   |
	MOV channel_wait_timer_lo+X, A		;$09A9   |
CODE_09AB:					;	 |
	INC Y					;$09AB   |
	MOV ARAM_00, Y				;$09AC   |
CODE_09AE:					;	 |
	MOV ARAM_01, #$00			;$09AE   |
	MOV A, channel_seq_address_lo+X		;$09B1   |
	MOV Y, channel_seq_address_hi+X		;$09B3   |
	ADDW YA, ARAM_00			;$09B5   |
	MOV channel_seq_address_hi+X, Y		;$09B7   |
	MOV channel_seq_address_lo+X, A		;$09B9   |
	RET					;$09BB  /

CODE_09BC:
	MOV A, channel_effects+X		;$09BC  \
	AND A, #$01				;$09BF   |
	BNE CODE_09C6				;$09C1   |
	JMP CODE_0A39				;$09C3  /

CODE_09C6:
	MOV A, channel_p_slide_delay_timer+X	;$09C6  \
	BEQ CODE_09DA				;$09C9   |
	CMP A, #$FF				;$09CB   |
	BEQ CODE_0A39				;$09CD   |
	DEC A					;$09CF   |
	MOV channel_p_slide_delay_timer+X, A	;$09D0   |
	BNE CODE_0A39				;$09D3   |
	MOV A, #$01				;$09D5   |
	MOV channel_unknown_0100+X, A		;$09D7   |
CODE_09DA:					;	 |
	MOV A, channel_unknown_0100+X		;$09DA   |
	DEC A					;$09DD   |
	MOV channel_unknown_0100+X, A		;$09DE   |
	BNE CODE_0A39				;$09E1   |
	MOV A, channel_pitch_slide_interval+X	;$09E3   |
	MOV channel_unknown_0100+X, A		;$09E6   |
	MOV A, channel_unknown_01C0+X		;$09E9   |
	BEQ CODE_0A10				;$09EC   |
	DEC A					;$09EE   |
	MOV channel_unknown_01C0+X, A		;$09EF   |
	MOV A, channel_pitch_delta+X		;$09F2   |
	EOR A, #$FF				;$09F5   |
	INC A					;$09F7   |
	MOV ARAM_00, A				;$09F8   |
	BPL CODE_0A00				;$09FA   |
	MOV A, #$FF				;$09FC   |
	BRA CODE_0A02				;$09FE  /

CODE_0A00:
	MOV A, #$00				;$0A00  \
CODE_0A02:					;	 |
	MOV ARAM_01, A				;$0A02   |
	MOV A, channel_unknown_84+X		;$0A04   |
	MOV Y, channel_unknown_74+X		;$0A06   |
	ADDW YA, ARAM_00			;$0A08   |
	MOV channel_unknown_74+X, Y		;$0A0A   |
	MOV channel_unknown_84+X, A		;$0A0C   |
	BRA CODE_0A1B				;$0A0E  /

CODE_0A10:
	MOV A, channel_pitch_delta+X		;$0A10  \
	MOV ARAM_00, A				;$0A13   |
	BPL CODE_0A00				;$0A15   |
	MOV A, #$FF				;$0A17   |
	BRA CODE_0A02				;$0A19  /

CODE_0A1B:
	MOV A, channel_unknown_01E0+X		;$0A1B  \
	BNE CODE_0A30				;$0A1E   |
	MOV A, X				;$0A20   |
	AND A, #$07				;$0A21   |
	XCN A					;$0A23   |
	OR A, #$02				;$0A24   |
	MOV SPC.DSP_addr, A			;$0A26   |
	MOV A, channel_unknown_84+X		;$0A28   |
	MOV SPC.DSP_data, A			;$0A2A   |
	INC SPC.DSP_addr			;$0A2C   |
	MOV SPC.DSP_data, Y			;$0A2E   |
CODE_0A30:					;	 |
	DEC channel_unknown_94+X		;$0A30   |
	BNE CODE_0A39				;$0A32   |
	MOV A, #$FF				;$0A34   |
	MOV channel_p_slide_delay_timer+X, A	;$0A36   |
CODE_0A39:					;	 |
	MOV A, channel_effects+X		;$0A39   |
	AND A, #$02				;$0A3C   |
	BEQ CODE_0AB4				;$0A3E   |
	MOV A, channel_vibrato_delay_timer+X	;$0A40   |
	BEQ CODE_0A48				;$0A42   |
	DEC channel_vibrato_delay_timer+X	;$0A44   |
	BRA CODE_0AB4				;$0A46  /

CODE_0A48:
	DEC channel_vibrato_step+X		;$0A48  \
	BNE CODE_0AB4				;$0A4A   |
	MOV A, channel_vibrato_rate+X		;$0A4C   |
	MOV channel_vibrato_step+X, A		;$0A4F   |
	MOV A, channel_vibrato_depth+X		;$0A51   |
	MOV ARAM_00, A				;$0A54   |
	BPL CODE_0A5C				;$0A56   |
	MOV A, #$FF				;$0A58   |
	BRA CODE_0A5E				;$0A5A  /

CODE_0A5C:
	MOV A, #$00				;$0A5C  \
CODE_0A5E:					;	 |
	MOV ARAM_01, A				;$0A5E   |
	MOV A, channel_unknown_84+X		;$0A60   |
	MOV Y, channel_unknown_74+X		;$0A62   |
	CMP X, #$0D				;$0A64   |
	BNE CODE_0A87				;$0A66   |
	PUSH A					;$0A68   |
	MOV A, ARAM_EC				;$0A69   |
	CMP A, ARAM_EE				;$0A6B   |
	BNE CODE_0A78				;$0A6D   |
	MOV A, ARAM_ED				;$0A6F   |
	CMP A, ARAM_EF				;$0A71   |
	BNE CODE_0A78				;$0A73   |
	POP A					;$0A75   |
	BRA CODE_0A87				;$0A76  /

CODE_0A78:
	POP A					;$0A78  \
	SUBW YA, ARAM_EE			;$0A79   |
	ADDW YA, ARAM_EC			;$0A7B   |
	PUSH A					;$0A7D   |
	MOV A, ARAM_EC				;$0A7E   |
	MOV ARAM_EE, A				;$0A80   |
	MOV A, ARAM_ED				;$0A82   |
	MOV ARAM_EF, A				;$0A84   |
	POP A					;$0A86   |
CODE_0A87:					;	 |
	ADDW YA, ARAM_00			;$0A87   |
	MOV channel_unknown_74+X, Y		;$0A89   |
	MOV channel_unknown_84+X, A		;$0A8B   |
	MOV A, channel_unknown_01E0+X		;$0A8D   |
	BNE CODE_0AA2				;$0A90   |
	MOV A, X				;$0A92   |
	AND A, #$07				;$0A93   |
	XCN A					;$0A95   |
	OR A, #$02				;$0A96   |
	MOV SPC.DSP_addr, A			;$0A98   |
	MOV A, channel_unknown_84+X		;$0A9A   |
	MOV SPC.DSP_data, A			;$0A9C   |
	INC SPC.DSP_addr			;$0A9E   |
	MOV SPC.DSP_data, Y			;$0AA0   |
CODE_0AA2:					;	 |
	DEC channel_vibrato_position+X		;$0AA2   |
	BNE CODE_0AB4				;$0AA4   |
	MOV A, channel_vibrato_length+X		;$0AA6   |
	MOV channel_vibrato_position+X, A	;$0AA9   |
	MOV A, channel_vibrato_depth+X		;$0AAB   |
	EOR A, #$FF				;$0AAE   |
	INC A					;$0AB0   |
	MOV channel_vibrato_depth+X, A		;$0AB1   |
CODE_0AB4:					;	 |
	MOV A, channel_effects+X		;$0AB4   |
	AND A, #$0C				;$0AB7   |
	BNE CODE_0ABE				;$0AB9   | Note: this path may be unused
	JMP CODE_0B17				;$0ABB  /

CODE_0ABE:
	MOV A, channel_unknown_02A4+X		;$0ABE  \
	BEQ CODE_0ACD				;$0AC1   |
	MOV A, channel_unknown_02A4+X		;$0AC3   | This may be a bug, $02A4 does the opposite
	DEC A					;$0AC6   |
	MOV channel_unknown_02A4+X, A		;$0AC7   |
	JMP CODE_0B17				;$0ACA  /

CODE_0ACD:
	MOV A, channel_unknown_02B4+X		;$0ACD  \
	DEC A					;$0AD0   |
	MOV channel_unknown_02B4+X, A		;$0AD1   |
	BEQ CODE_0AD9				;$0AD4   |
	JMP CODE_0B17				;$0AD6  /

CODE_0AD9:
	MOV A, channel_unknown_02C4+X		;$0AD9  \
	MOV channel_unknown_02B4+X, A		;$0ADC   |
	MOV A, channel_unknown_01E0+X		;$0ADF   |
	BNE CODE_0AF8				;$0AE2   |
	MOV A, X				;$0AE4   |
	AND A, #$07				;$0AE5   |
	XCN A					;$0AE7   |
	OR A, #$00				;$0AE8   |
	MOV SPC.DSP_addr, A			;$0AEA   |
	MOV A, channel_vol_l+X			;$0AEC   |
	MOV SPC.DSP_data, A			;$0AEF   |
	MOV A, channel_vol_r+X			;$0AF1   |
	INC SPC.DSP_addr			;$0AF4   |
	MOV SPC.DSP_data, A			;$0AF6   |
CODE_0AF8:					;	 |
	MOV A, channel_unknown_02E4+X		;$0AF8   |
	DEC A					;$0AFB   |
	MOV channel_unknown_02E4+X, A		;$0AFC   |
	BNE CODE_0B17				;$0AFF   |
	MOV A, channel_effects+X		;$0B01   |
	AND A, #$08				;$0B04   |
	BNE CODE_0B17				;$0B06   |
	MOV A, channel_unknown_02F4+X		;$0B08   |
	MOV channel_unknown_02E4+X, A		;$0B0B   |
	MOV A, channel_unknown_02D4+X		;$0B0E   |
	EOR A, #$FF				;$0B11   |
	INC A					;$0B13   |
	MOV channel_unknown_02D4+X, A		;$0B14   |
CODE_0B17:					;	 |
	RET					;$0B17  /

command_00_end_sequence:
	POP X					;$0B18  \
	MOV A, #$00				;$0B19   |
	MOV channel_enable+X, A			;$0B1B   |
	MOV A, channel_unknown_01E0+X		;$0B1E   |\
	BNE CODE_0B2B				;$0B21   |/ If sound effect is playing?
	MOV SPC.DSP_addr, #DSPs.key_off		;$0B23   |
	MOV A, channel_bit_table+X		;$0B26   |
	MOV SPC.DSP_data, A			;$0B29   |
CODE_0B2B:					;	 |
	MOV A, X				;$0B2B   |
	CMP A, #$08				;$0B2C   |
	BCC CODE_0B61				;$0B2E   |
	PUSH X					;$0B30   |
	SETC					;$0B31   |
	SBC A, #$08				;$0B32   |
	MOV X, A				;$0B34   |
	MOV A, #$00				;$0B35   |
	MOV channel_unknown_01E0+X, A		;$0B37   |
	MOV SPC.DSP_addr, #DSPs.noise_enable	;$0B3A   |
	MOV A, channel_bit_table+X		;$0B3D   |
	EOR A, #$FF				;$0B40   |
	AND A, SPC.DSP_data			;$0B42   |
	MOV SPC.DSP_data, A			;$0B44   |
	MOV SPC.DSP_addr, #DSPs.echo_enable	;$0B46   |
	MOV A, channel_echo_state+X		;$0B49   |
	BEQ CODE_0B57				;$0B4C   |
	MOV A, channel_bit_table+X		;$0B4E   |
	OR A, SPC.DSP_data			;$0B51   |
	MOV SPC.DSP_data, A			;$0B53   |
	BRA CODE_0B60				;$0B55  /

CODE_0B57:
	MOV A, channel_bit_table+X		;$0B57  \
	EOR A, #$FF				;$0B5A   |
	AND A, SPC.DSP_data			;$0B5C   |
	MOV SPC.DSP_data, A			;$0B5E   |
CODE_0B60:					;	 |
	POP X					;$0B60   |
CODE_0B61:					;	 |
	MOV A, #$00				;$0B61   |
	RET					;$0B63  /


get_channel_number_and_wait_1_tick:
	POP Y					;$0B64  \ \ Pull return address from stack
	POP A					;$0B65   |/ So we can access the channel number
	POP X					;$0B66   |> Pull channel number from stack into X
	PUSH A					;$0B67   |\ Push return address back to stack
	PUSH Y					;$0B68   |/
wait_1_tick:					;	 |
	MOV Y, #$01				;$0B69   |\ Wait a single tick
	MOV channel_wait_timer_lo+X, Y		;$0B6B   | |
	MOV A, #$00				;$0B6D   | |
	MOV channel_wait_timer_hi+X, A		;$0B6F   |/
	RET					;$0B71  /> Return

command_01_set_instrument:			;	\
	CALL get_channel_number_and_wait_1_tick	;$0B72   |
	CALL CODE_0B8B				;$0B75   |
update_command_address_2_bytes:			;	 |
	MOV ARAM_00, #$02			;$0B78   |\ Load length of set instrument command
update_command_address:				;	 | |
	MOV ARAM_01, #$00			;$0B7B   |/
	MOV A, channel_seq_address_lo+X		;$0B7E   |\ Get current track command address
	MOV Y, channel_seq_address_hi+X		;$0B80   |/
	ADDW YA, $00				;$0B82   |> Add command length to address to move to next command
	MOV channel_seq_address_hi+X, Y		;$0B84   |\ Update track command address
	MOV channel_seq_address_lo+X, A		;$0B86   |/
	MOV A, #$01				;$0B88   |
	RET					;$0B8A  /> Return

CODE_0B8B:
	PUSH X					;$0B8B  \
	MOV A, ($00)+Y				;$0B8C   |
	MOV X, A				;$0B8E   |
	MOV A, instrument_lookup_table+X	;$0B8F   |
	POP X					;$0B92   |
	MOV channel_instrument+X, A		;$0B93   |
	RET					;$0B96  /

CODE_0B97:
	CALL get_channel_number_and_wait_1_tick	;$0B97  \
	CALL CODE_0B8B				;$0B9A   |
	INC Y					;$0B9D   |
	MOV A, ($00)+Y				;$0B9E   |
	MOV channel_pitch+X, A			;$0BA0   |
	INC Y					;$0BA3   |
	MOV A, ($00)+Y				;$0BA4   |
	MOV channel_pitch_fine+X, A		;$0BA6   |
	INC Y					;$0BA8   |
	CALL CODE_0BC2				;$0BA9   |
	INC Y					;$0BAC   |
	CALL set_adsr				;$0BAD   |
	MOV ARAM_00, #$08			;$0BB0   |
	JMP update_command_address		;$0BB3  /

command_02_set_volume_l_and_r:
	CALL get_channel_number_and_wait_1_tick	;$0BB6  \
	CALL CODE_0BC2				;$0BB9   |
CODE_0BBC:					;	 |
	MOV ARAM_00, #$03			;$0BBC   |> Load length of set_volume_l_and_r command
	JMP update_command_address		;$0BBF  /

CODE_0BC2:
	MOV A, mono_stereo_toggle		;$0BC2  \
	BNE CODE_0BD2				;$0BC4   |
	MOV A, ($00)+Y				;$0BC6   |
	MOV channel_vol_l+X, A			;$0BC8   |
	INC Y					;$0BCB   |
CODE_0BCC:					;	 |
	MOV A, ($00)+Y				;$0BCC   |
	MOV channel_vol_r+X, A			;$0BCE   |
	RET					;$0BD1  /

CODE_0BD2:
	MOV A, ($00)+Y				;$0BD2  \
	BPL CODE_0BD9				;$0BD4   |
	EOR A, #$FF				;$0BD6   |
	INC A					;$0BD8   |
CODE_0BD9:					;	 |
	LSR A					;$0BD9   |
	MOV ARAM_03, A				;$0BDA   |
	INC Y					;$0BDC   |
	CLRC					;$0BDD   |
	MOV A, ($00)+Y				;$0BDE   |
	BPL CODE_0BE5				;$0BE0   |
	EOR A, #$FF				;$0BE2   |
	INC A					;$0BE4   |
CODE_0BE5:					;	 |
	LSR A					;$0BE5   |
	CLRC					;$0BE6   |
	ADC A, ARAM_03				;$0BE7   |
	MOV channel_vol_l+X, A			;$0BE9   |
	MOV channel_vol_r+X, A			;$0BEC   |
	RET					;$0BEF  /

command_23_set_vol_single_val:
	CALL get_channel_number_and_wait_1_tick	;$0BF0  \
	MOV channel_vol_l+X, A			;$0BF3   |
	CALL CODE_0BCC				;$0BF6   |
	MOV A, channel_vol_r+X			;$0BF9   |
	MOV channel_vol_l+X, A			;$0BFC   |
	JMP update_command_address_2_bytes	;$0BFF  /

command_20_load_volume_preset_1:
	CALL get_channel_number_and_wait_1_tick	;$0C02  \
	MOV A, vol_preset_1_l			;$0C05   |
	MOV channel_vol_l+X, A			;$0C08   |
	MOV A, vol_preset_1_r			;$0C0B   |
	MOV channel_vol_r+X, A			;$0C0E   |
	MOV A, mono_stereo_toggle		;$0C11   |
	BNE CODE_0C2E				;$0C13   |
	JMP CODE_0ED6				;$0C15  /

command_31_load_volume_preset_2:
	CALL get_channel_number_and_wait_1_tick	;$0C18  \
	MOV A, vol_preset_2_l			;$0C1B   |
	MOV channel_vol_l+X, A			;$0C1E   |
	MOV A, vol_preset_2_r			;$0C21   |
	MOV channel_vol_r+X, A			;$0C24   |
	MOV A, mono_stereo_toggle		;$0C27   |
	BNE CODE_0C2E				;$0C29   |
	JMP CODE_0ED6				;$0C2B  /

CODE_0C2E:
	MOV A, channel_vol_l+X			;$0C2E  \
	BPL CODE_0C36				;$0C31   |
	EOR A, #$FF				;$0C33   |
	INC A					;$0C35   |
CODE_0C36:					;	 |
	LSR A					;$0C36   |
	MOV $00, A				;$0C37   |
	MOV A, channel_vol_r+X			;$0C39   |
	BPL CODE_0C41				;$0C3C   |
	EOR A, #$FF				;$0C3E   |
	INC A					;$0C40   |
CODE_0C41:					;	 |
	LSR A					;$0C41   |
	CLRC					;$0C42   |
	ADC A, $00				;$0C43   |
	MOV channel_vol_l+X, A			;$0C45   |
	MOV channel_vol_r+X, A			;$0C48   |
	JMP CODE_0ED6				;$0C4B  /

command_24_set_master_volume_indirect:
	CALL get_channel_number_and_wait_1_tick	;$0C4E  \
	MOV A, ($00)+Y				;$0C51   |
	MOV song_master_volume, A		;$0C53   |
	JMP update_command_address_2_bytes	;$0C56  /

CODE_0C59:
	PUSH X					;$0C59  \
	MOV Y, song_master_volume		;$0C5A   |
	CMP X, #$08				;$0C5D   |
	BCS CODE_0C6F				;$0C5F   |
	CMP A, #$00				;$0C61   |
	BMI CODE_0C71				;$0C63   |
	MUL YA					;$0C65   |
	MOV X, #$64				;$0C66   |
	DIV YA, X				;$0C68   |
	CMP A, #$7F				;$0C69   |
	BMI CODE_0C6F				;$0C6B   |
	MOV A, #$7F				;$0C6D   |
CODE_0C6F:					;	 |
	POP X					;$0C6F   |
	RET					;$0C70  /

CODE_0C71:
	EOR A, #$FF				;$0C71  \
	INC A					;$0C73   |
	MUL YA					;$0C74   |
	MOV X, #$64				;$0C75   |
	DIV YA, X				;$0C77   |
	CMP A, #$7F				;$0C78   |
	BMI CODE_0C7E				;$0C7A   |
	MOV A, #$7F				;$0C7C   |
CODE_0C7E:					;	 |
	EOR A, #$FF				;$0C7E   |
	INC A					;$0C80   |
	POP X					;$0C81   |
	RET					;$0C82  /

command_1E_set_volume_presets:
	CALL get_channel_number_and_wait_1_tick	;$0C83  \
	MOV A, ($00)+Y				;$0C86   |
	MOV vol_preset_1_l, A			;$0C88   |
	INC Y					;$0C8B   |
	MOV A, ($00)+Y				;$0C8C   |
	MOV vol_preset_1_r, A			;$0C8E   |
	INC Y					;$0C91   |
	MOV A, ($00)+Y				;$0C92   |
	MOV vol_preset_2_l, A			;$0C94   |
	INC Y					;$0C97   |
	MOV A, ($00)+Y				;$0C98   |
	MOV vol_preset_2_r, A			;$0C9A   |
	JMP update_command_address_5_bytes	;$0C9D  /

CODE_0CA0:
	CALL get_channel_number_and_wait_1_tick	;$0CA0  \
	MOV A, ($00)+Y				;$0CA3   |
	CALL CODE_10F0				;$0CA5   |
	MOV SPC.DSP_addr, #DSPs.echo_delay	;$0CA8   |
	CLRC					;$0CAB   |
	LSR A					;$0CAC   |
	MOV SPC.DSP_data, A			;$0CAD   |
	MOV SPC.DSP_addr, #DSPs.echo_buf_addr	;$0CAF   |
	ROL A					;$0CB2   |
	ROL A					;$0CB3   |
	ROL A					;$0CB4   |
	MOV ARAM_00, A				;$0CB5   |
	MOV A, #$FF				;$0CB7   |
	SETC					;$0CB9   |
	SBC A, $00				;$0CBA   |
	MOV SPC.DSP_data, A			;$0CBC   |
	MOV ARAM_04B7, A			;$0CBE   |
	MOV Y, A				;$0CC1   |
	MOV A, #$00				;$0CC2   |
	MOVW ARAM_00, YA			;$0CC4   |
.CODE_0CC6:					;	 |
	MOV Y, A				;$0CC6   |
.CODE_0CC7:					;	 |
	MOV ($00)+Y, A				;$0CC7   |
	INC Y					;$0CC9   |
	BNE .CODE_0CC7				;$0CCA   |
	INC ARAM_01				;$0CCC   |
	MOV Y, ARAM_01				;$0CCE   |
	CMP Y, #$00				;$0CD0   |
	BNE .CODE_0CC6				;$0CD2   |
	JMP update_command_address_2_bytes	;$0CD4  /

command_03_jump_to_sequence:
	CALL get_channel_number_and_wait_1_tick	;$0CD7  \
	MOV A, ($00)+Y				;$0CDA   |
	MOV channel_seq_address_lo+X, A		;$0CDC   |
	INC Y					;$0CDE   |
	MOV A, ($00)+Y				;$0CDF   |
	MOV channel_seq_address_hi+X, A		;$0CE1   |
	MOV A, #$01				;$0CE3   |
	RET					;$0CE5  /

command_04_loop_subsequence:
	CALL get_channel_number_and_wait_1_tick	;$0CE6  \
	MOV A, ($00)+Y				;$0CE9   |
	MOV ARAM_04, A				;$0CEB   |
	INC Y					;$0CED   |
	CALL CODE_0D1C				;$0CEE   |
CODE_0CF1:					;	 |
	MOV channel_seq_loop_address_lo+Y, A	;$0CF1   |
CODE_0CF4:					;	 |
	INC channel_unknown_D4+X		;$0CF4   |
	MOVW YA, ARAM_02			;$0CF6   |
	MOV channel_seq_address_lo+X, A		;$0CF8   |
	MOV channel_seq_address_hi+X, Y		;$0CFA   |
	MOV A, #$01				;$0CFC   |
	RET					;$0CFE  /

command_21_play_subsequence:
	CALL get_channel_number_and_wait_1_tick	;$0CFF  \
	MOV ARAM_04, #$01			;$0D02   |
	CALL CODE_0D1C				;$0D05   |
	BEQ CODE_0D0E				;$0D08   |
	DEC A					;$0D0A   |
	JMP CODE_0CF1				;$0D0B  /

CODE_0D0E:
	DEC A					;$0D0E  \
	MOV channel_seq_loop_address_lo+Y, A	;$0D0F   |
	MOV A, channel_seq_loop_address_hi+Y	;$0D12   |
	DEC A					;$0D15   |
	MOV channel_seq_loop_address_hi+Y, A	;$0D16   |
	JMP CODE_0CF4				;$0D19  /

CODE_0D1C:
	MOV A, ($00)+Y				;$0D1C  \
	MOV ARAM_02, A				;$0D1E   |
	INC Y					;$0D20   |
	MOV A, ($00)+Y				;$0D21   |
	MOV ARAM_03, A				;$0D23   |
	MOV Y, channel_unknown_D4+X		;$0D25   |
	MOV A, ARAM_04				;$0D27   |
	MOV channel_seq_loop_count+Y, A		;$0D29   |
	MOV A, channel_seq_address_hi+X		;$0D2C   |
	MOV channel_seq_loop_address_hi+Y, A	;$0D2E   |
	MOV A, channel_seq_address_lo+X		;$0D31   |
	RET					;$0D33  /

command_05_return_from_sub:
	CALL get_channel_number_and_wait_1_tick	;$0D34  \
	DEC channel_unknown_D4+X		;$0D37   |
	MOV Y, channel_unknown_D4+X		;$0D39   |
	MOV A, channel_seq_loop_address_hi+Y	;$0D3B   |
	MOV channel_seq_address_hi+X, A		;$0D3E   |
	MOV A, channel_seq_loop_address_lo+Y	;$0D40   |
	MOV channel_seq_address_lo+X, A		;$0D43   |
	MOV A, channel_seq_loop_count+Y		;$0D45   |
	DEC A					;$0D48   |
	MOV channel_seq_loop_count+Y, A		;$0D49   |
	BEQ update_command_address_4_bytes	;$0D4C   |
	MOV A, channel_seq_address_lo+X		;$0D4E   |
	MOV Y, channel_seq_address_hi+X		;$0D50   |
	MOVW ARAM_00, YA			;$0D52   |
	MOV Y, #$02				;$0D54   |
	MOV A, ($00)+Y				;$0D56   |
	MOV ARAM_02, A				;$0D58   |
	INC Y					;$0D5A   |
	MOV A, ($00)+Y				;$0D5B   |
	MOV ARAM_03, A				;$0D5D   |
	INC channel_unknown_D4+X		;$0D5F   |
	MOVW YA, ARAM_02			;$0D61   |
	MOV channel_seq_address_lo+X, A		;$0D63   |
	MOV channel_seq_address_hi+X, Y		;$0D65   |
	MOV A, #$01				;$0D67   |
	RET					;$0D69  /

update_command_address_4_bytes:
	MOV ARAM_00, #$04			;$0D6A  \
	JMP update_command_address		;$0D6D  /

command_06_set_default_duration:
	CALL get_channel_number_and_wait_1_tick	;$0D70  \
	MOV A, ($00)+Y				;$0D73   |
	MOV channel_default_duration_lo+X, A	;$0D75   |
	MOV A, channel_long_duration+X		;$0D78   |
	BEQ .normal_duration			;$0D7B   |
	MOV A, channel_default_duration_lo+X	;$0D7D   |
	MOV channel_default_duration_hi+X, A	;$0D80   |
	INC Y					;$0D83   |
	MOV A, ($00)+Y				;$0D84   |
	MOV channel_default_duration_lo+X, A	;$0D86   |
.normal_duration				;	 |
	INC Y					;$0D89   |
	MOV ARAM_00, Y				;$0D8A   |
	JMP update_command_address		;$0D8C  /

command_07_default_duration_off:
	POP X					;$0D8F  \
	MOV A, #$00				;$0D90   |
	MOV channel_default_duration_lo+X, A	;$0D92   |
	MOV channel_default_duration_hi+X, A	;$0D95   |
	JMP CODE_0DDF				;$0D98  /

command_08_pitch_slide_up:
	POP X					;$0D9B  \> Get channel number
	MOV Y, #$04				;$0D9C   |\ Get param 04 (pitch delta) from pitch slide up command
	MOV A, ($00)+Y				;$0D9E   |/
	BRA write_pitch_slide_parameters	;$0DA0  /> Go write the remaining pitch slide parameters

command_09_pitch_slide_down:
	POP X					;$0DA2  \> Get channel number
	MOV Y, #$04				;$0DA3   |\ Get param 04 (pitch delta) from pitch slide up command
	MOV A, ($00)+Y				;$0DA5   | |
	EOR A, #$FF				;$0DA7   | |
	INC A					;$0DA9   |/
write_pitch_slide_parameters:			;	 |
	MOV channel_pitch_delta+X, A		;$0DAA   |> Write param 04 (pitch delta)
	MOV A, channel_effects+X		;$0DAD   |\
	OR A, #$01				;$0DB0   | | Flag this channel as using a pitch slide effect
	MOV channel_effects+X, A		;$0DB2   |/
	CALL wait_1_tick			;$0DB5   |
	MOV A, ($00)+Y				;$0DB8   |\ Param 01 (delay)
	MOV channel_pitch_slide_delay+X, A	;$0DBA   |/
	INC Y					;$0DBD   |\
	MOV A, ($00)+Y				;$0DBE   | | Param 02 (interval)
	MOV channel_pitch_slide_interval+X, A	;$0DC0   |/
	INC Y					;$0DC3   |\
	MOV A, ($00)+Y				;$0DC4   | | Param 03 (pitch up count)
	MOV channel_pitch_slide_up_count+X, A	;$0DC6   |/
	INC Y					;$0DC9   |> Skip param 04 because we already handled it
	INC Y					;$0DCA   |\
	MOV A, ($00)+Y				;$0DCB   | | param 05 (pitch down count)
	MOV channel_pitch_slide_down_count+X, A	;$0DCD   |/
	MOV ARAM_00, #$06			;$0DD0   |\ Command was 6 bytes
	JMP update_command_address		;$0DD3  / /

command_0A_pitch_slide_off:
	POP X					;$0DD6  \
	MOV A, channel_effects+X		;$0DD7   |
	AND A, #$FE				;$0DDA   |
	MOV channel_effects+X, A		;$0DDC   |
CODE_0DDF:					;	 |
	MOV A, #$01				;$0DDF   |
	MOV ARAM_00, A				;$0DE1   |
	MOV channel_wait_timer_lo+X, A		;$0DE3   |
	DEC A					;$0DE5   |
	MOV channel_wait_timer_hi+X, A		;$0DE6   |
	JMP update_command_address		;$0DE8  /

command_0B_change_tempo:
	POP X					;$0DEB  \
	MOV Y, #$01				;$0DEC   |
	MOV A, ($00)+Y				;$0DEE   |
	MOV song_tempo, A			;$0DF0   |
CODE_0DF2:					;	 |
	CALL wait_1_tick			;$0DF2   |
	JMP update_command_address_2_bytes	;$0DF5  /

command_0C_change_tempo_rel:
	POP X					;$0DF8  \
	MOV Y, #$01				;$0DF9   |
	MOV A, ($00)+Y				;$0DFB   |
	CLRC					;$0DFD   |
	ADC A, song_tempo			;$0DFE   |
	MOV song_tempo, A			;$0E00   |
	JMP CODE_0DF2				;$0E02  /

command_0E_vibrato_off:
	POP X					;$0E05  \
	MOV A, channel_effects+X		;$0E06   |
	AND A, #$FD				;$0E09   |
	MOV channel_effects+X, A		;$0E0B   |
	JMP CODE_0DDF				;$0E0E  /

command_0D_vibrato:
	POP X					;$0E11  \
	MOV A, #$00				;$0E12   |
	CALL set_vibrato			;$0E14   |
	JMP update_command_address_4_bytes	;$0E17  /

command_0F_vibrato_with_delay:
	POP X					;$0E1A  \> Get channel number
	MOV Y, #$04				;$0E1B   |\ Get param 04 (delay)
	MOV A, ($00)+Y				;$0E1D   |/
	CALL set_vibrato			;$0E1F   |
	JMP update_command_address_5_bytes	;$0E22  /

set_vibrato:
	MOV channel_vibrato_delay+X, A		;$0E25  \
	MOV A, channel_effects+X		;$0E28   |
	OR A, #$02				;$0E2B   |
	MOV channel_effects+X, A		;$0E2D   |
	CALL wait_1_tick			;$0E30   |
	MOV A, ($00)+Y				;$0E33   |
	MOV channel_vibrato_length+X, A		;$0E35   |
	INC Y					;$0E38   |
	MOV A, ($00)+Y				;$0E39   |
	MOV channel_vibrato_rate+X, A		;$0E3B   |
	INC Y					;$0E3E   |
	MOV A, ($00)+Y				;$0E3F   |
	MOV channel_vibrato_depth+X, A		;$0E41   |
	RET					;$0E44  /

command_10_set_adsr:
	CALL get_channel_number_and_wait_1_tick	;$0E45  \
	CALL set_adsr				;$0E48   |
	JMP CODE_0BBC				;$0E4B  /

set_adsr:
	MOV A, ($00)+Y				;$0E4E  \
	MOV channel_adsr_1+X, A			;$0E50   |
	INC Y					;$0E53   |
	MOV A, ($00)+Y				;$0E54   |
	MOV channel_adsr_2+X, A			;$0E56   |
	RET					;$0E59  /

command_1C_set_variable_note_1:
	POP X					;$0E5A  \
	MOV Y, #$01				;$0E5B   |
	MOV A, ($00)+Y				;$0E5D   |
	MOV channel_variable_note_1+X, A	;$0E5F   |
	JMP set_variable_note_done		;$0E61  /

command_1D_set_variable_note_2:
	POP X					;$0E64  \
	MOV Y, #$01				;$0E65   |
	MOV A, ($00)+Y				;$0E67   |
	MOV channel_variable_note_2+X, A	;$0E69   |
set_variable_note_done:				;	 |
	CALL wait_1_tick			;$0E6B   |
	JMP update_command_address_2_bytes	;$0E6E  /

command_12_fine_tune:
	CALL get_channel_number_and_wait_1_tick	;$0E71  \
	MOV A, ($00)+Y				;$0E74   |
	MOV channel_pitch_fine+X, A		;$0E76   |
	JMP update_command_address_2_bytes	;$0E78  /

command_13_change_instr_pitch:
	CALL get_channel_number_and_wait_1_tick	;$0E7B  \
	MOV channel_wait_timer_hi+X, A		;$0E7E   |
	MOV A, ($00)+Y				;$0E80   |
	MOV channel_pitch+X, A			;$0E82   |
	JMP update_command_address_2_bytes	;$0E85  /

command_14_change_instr_pitch_rel:
	CALL get_channel_number_and_wait_1_tick	;$0E88  \
	MOV A, ($00)+Y				;$0E8B   |
	CLRC					;$0E8D   |
	ADC A, channel_pitch+X			;$0E8E   |
	MOV channel_pitch+X, A			;$0E91   |
	JMP update_command_address_2_bytes	;$0E94  /

CODE_0E97:
	POP X					;$0E97  \
	MOV SPC.DSP_addr, #DSPs.echo_fb_vol	;$0E98   |
	MOV Y, #$01				;$0E9B   |
	MOV A, ($00)+Y				;$0E9D   |
	MOV SPC.DSP_data, A			;$0E9F   |
	INC Y					;$0EA1   |
	MOV SPC.DSP_addr, #DSPs.echo_vol_l	;$0EA2   |
	MOV A, ($00)+Y				;$0EA5   |
	MOV ARAM_0232, A			;$0EA7   |
	MOV SPC.DSP_data, A			;$0EAA   |
	MOV SPC.DSP_addr, #DSPs.echo_vol_r	;$0EAC   |
	INC Y					;$0EAF   |
	MOV A, ($00)+Y				;$0EB0   |
	MOV ARAM_0233, A			;$0EB2   |
	MOV SPC.DSP_data, A			;$0EB5   |
	MOV A, #$00				;$0EB7   |
	MOV ARAM_04B5, A			;$0EB9   |
	MOV SPC.DSP_addr, #DSPs.flags		;$0EBC   |
	MOV SPC.DSP_data, A			;$0EBF   |
	JMP update_command_address_4_bytes	;$0EC1  /

CODE_0EC4:
	CALL get_channel_number_and_wait_1_tick	;$0EC4  \
	MOV SPC.DSP_addr, #DSPs.echo_enable	;$0EC7   |
	MOV A, channel_bit_table+X		;$0ECA   |
	OR A, SPC.DSP_data			;$0ECD   |
	MOV SPC.DSP_data, A			;$0ECF   |
	MOV A, #$01				;$0ED1   |
	MOV channel_echo_state+X, A		;$0ED3   |
CODE_0ED6:					;	 |
	MOV ARAM_00, #$01			;$0ED6   |
	JMP update_command_address		;$0ED9  /

CODE_0EDC:
	POP X					;$0EDC  \
	MOV SPC.DSP_addr, #DSPs.echo_enable	;$0EDD   |
	MOV A, channel_bit_table+X		;$0EE0   |
	EOR A, #$FF				;$0EE3   |
	AND A, SPC.DSP_data			;$0EE5   |
	MOV SPC.DSP_data, A			;$0EE7   |
	MOV A, #$00				;$0EE9   |
	MOV channel_echo_state+X, A		;$0EEB   |
	MOV channel_wait_timer_hi+X, A		;$0EEE   |
	INC A					;$0EF0   |
	MOV channel_wait_timer_lo+X, A		;$0EF1   |
	JMP CODE_0ED6				;$0EF3  /

CODE_0EF6:
	CALL get_channel_number_and_wait_1_tick	;$0EF6  \
	MOV SPC.DSP_addr, #DSPc[0].echo_filter	;$0EF9   |
CODE_0EFC:					;	 |
	MOV A, ($00)+Y				;$0EFC   |
	MOV SPC.DSP_data, A			;$0EFE   |
	INC Y					;$0F00   |
	CLRC					;$0F01   |
	ADC SPC.DSP_addr, #$10			;$0F02   |
	CMP SPC.DSP_addr, #$8F			;$0F05   |
	BNE CODE_0EFC				;$0F08   |
	MOV ARAM_00, #$09			;$0F0A   |
	JMP update_command_address		;$0F0D  /

CODE_0F10:
	CALL get_channel_number_and_wait_1_tick	;$0F10  \
	MOV A, ($00)+Y				;$0F13   |
	MOV ARAM_04B4, A			;$0F15   |
	OR A, ARAM_04B5				;$0F18   |
	MOV SPC.DSP_addr, #DSPs.flags		;$0F1B   |
	MOV SPC.DSP_data, A			;$0F1E   |
	JMP update_command_address_2_bytes	;$0F20  /

CODE_0F23:
	POP X					;$0F23  \
	MOV SPC.DSP_addr, #DSPs.noise_enable	;$0F24   |
	MOV A, channel_bit_table+X		;$0F27   |
	OR A, SPC.DSP_data			;$0F2A   |
	MOV SPC.DSP_data, A			;$0F2C   |
CODE_0F2E:					;	 |
	CALL wait_1_tick			;$0F2E   |
	JMP CODE_0ED6				;$0F31  /

CODE_0F34:
	POP X					;$0F34  \
	MOV SPC.DSP_addr, #DSPs.noise_enable	;$0F35   |
	MOV A, channel_bit_table+X		;$0F38   |
	EOR A, #$FF				;$0F3B   |
	AND A, SPC.DSP_data			;$0F3D   |
	MOV SPC.DSP_data, A			;$0F3F   |
	JMP CODE_0F2E				;$0F41  /

CODE_0F44:
	POP X					;$0F44  \
	MOV Y, #$04				;$0F45   |
	MOV A, ($00)+Y				;$0F47   |
	EOR A, #$FF				;$0F49   |
	INC A					;$0F4B   |
	BRA CODE_0F53				;$0F4C  /

CODE_0F4E:
	POP X					;$0F4E  \
	MOV Y, #$04				;$0F4F   |
	MOV A, ($00)+Y				;$0F51   |
CODE_0F53:					;	 |
	MOV channel_pitch_delta+X, A		;$0F53   |
	MOV A, channel_effects+X		;$0F56   |
	OR A, #$01				;$0F59   |
	MOV channel_effects+X, A		;$0F5B   |
	CALL wait_1_tick			;$0F5E   |
	MOV A, ($00)+Y				;$0F61   |
	MOV channel_pitch_slide_delay+X, A	;$0F63   |
	INC Y					;$0F66   |
	MOV A, ($00)+Y				;$0F67   |
	MOV channel_pitch_slide_interval+X, A	;$0F69   |
	INC Y					;$0F6C   |
	MOV A, ($00)+Y				;$0F6D   |
	MOV channel_pitch_slide_down_count+X, A	;$0F6F   |
	ASL A					;$0F72   |
	MOV channel_pitch_slide_up_count+X, A	;$0F73   |
update_command_address_5_bytes:			;	 |
	MOV ARAM_00, #$05			;$0F76   |
	JMP update_command_address		;$0F79  /

command_2B_long_duration_on:
	CALL get_channel_number_and_wait_1_tick	;$0F7C  \
	INC A					;$0F7F   |
	MOV channel_long_duration+X, A		;$0F80   |
	JMP CODE_0ED6				;$0F83  /

command_2C_long_duration_off:
	CALL get_channel_number_and_wait_1_tick	;$0F86  \ \ This routine returns with A = 0
	MOV channel_long_duration+X, A		;$0F89   |/ So to zero the flag just write A to it
	JMP CODE_0ED6				;$0F8C  /

update_command_address_7_bytes:
	MOV ARAM_00, #$07			;$0F8F  \
	JMP update_command_address		;$0F92  /

channel_bit_table:
	db $01, $02, $04, $08, $10, $20, $40, $80
	db $01, $02, $04, $08, $10, $20, $40, $80

DATA_0FA5:
	dw command_00_end_sequence		;00: end_sequence
	dw command_01_set_instrument		;01: set_instrument
	dw command_02_set_volume_l_and_r	;02: set_volume_l_and_r
	dw command_03_jump_to_sequence		;03: jump_to_sequence
	dw command_04_loop_subsequence		;04: loop_subsequence
	dw command_05_return_from_sub		;05: return_from_sub
	dw command_06_set_default_duration	;06: set_default_duration
	dw command_07_default_duration_off	;07: default_duration_off
	dw command_08_pitch_slide_up		;08: pitch_slide_up
	dw command_09_pitch_slide_down		;09: pitch_slide_down
	dw command_0A_pitch_slide_off		;0A: pitch_slide_off
	dw command_0B_change_tempo		;0B: change_tempo
	dw command_0C_change_tempo_rel		;0C: change_tempo_rel
	dw command_0D_vibrato			;0D: vibrato
	dw command_0E_vibrato_off		;0E: vibrato_off
	dw command_0F_vibrato_with_delay	;0F: vibrato_with_delay
	dw command_10_set_adsr			;10: set_adsr
	dw !null_pointer			;11: unimplemented command
	dw command_12_fine_tune			;12: fine_tune
	dw command_13_change_instr_pitch	;13: change_instr_pitch
	dw command_14_change_instr_pitch_rel	;14: change_instr_pitch_rel
	dw CODE_0E97				;15: set_echo
	dw CODE_0EC4				;16: echo_on
	dw CODE_0EDC				;17: echo_off
	dw CODE_0EF6				;18: set_fir
	dw CODE_0F10				;19: dsp_flag
	dw CODE_0F23				;1A: noise_on
	dw CODE_0F34				;1B: noise_off
	dw command_1C_set_variable_note_1	;1C: set_variable_note_1
	dw command_1D_set_variable_note_2	;1D: set_variable_note_2
	dw command_1E_set_volume_presets	;1E: set_volume_presets
	dw CODE_0CA0				;1F: echo_delay
	dw command_20_load_volume_preset_1	;20: load_volume_preset_1
	dw command_21_play_subsequence		;21: play_subsequence 
	dw CODE_0B97				;22: set_voice_parameters
	dw command_23_set_vol_single_val	;23: set_vol_single_val
	dw command_24_set_master_volume_indirect;24: set_master_volume_indirect
	dw !null_pointer			;25: unimplemented command
	dw CODE_0F44				;26: simple_pitch_slide_down
	dw CODE_0F4E				;27: simple_pitch_slide_up
	dw !null_pointer			;28: unimplemented command
	dw !null_pointer			;29: unimplemented command
	dw !null_pointer			;2A: unimplemented command
	dw command_2B_long_duration_on		;2B: long_duration_on
	dw command_2C_long_duration_off		;2C: long_duration_off
	dw !null_pointer			;2D: unimplemented command
	dw !null_pointer			;2E: unimplemented command
	dw !null_pointer			;2F: unimplemented command
	dw CODE_0EDC				;30: echo_off (copy)
	dw command_31_load_volume_preset_2	;31: load_volume_preset_2
	dw CODE_0EDC				;32: echo_off (copy)


;Init various registers and ARAM values before loading song
CODE_100B:
	MOV A, #$00				;$100B  \
	MOV ARAM_EC, A				;$100D   |
	MOV ARAM_ED, A				;$100F   |
	MOV ARAM_EE, A				;$1011   |
	MOV ARAM_EF, A				;$1013   |
	MOV SPC.DSP_addr, #DSPs.flags		;$1015   |
	MOV SPC.DSP_data, #$E0			;$1018   |
	MOV SPC.DSP_addr, #DSPs.echo_vol_l	;$101B   |
	MOV ARAM_0232, A			;$101E   |
	MOV SPC.DSP_data, A			;$1021   |
	MOV SPC.DSP_addr, #DSPs.echo_vol_r	;$1023   |
	MOV ARAM_0233, A			;$1026   |
	MOV SPC.DSP_data, A			;$1029   |
	MOV SPC.DSP_addr, #DSPs.echo_fb_vol	;$102B   |
	MOV SPC.DSP_data, A			;$102E   |
	MOV SPC.DSP_addr, #DSPs.key_on		;$1030   |
	MOV SPC.DSP_data, A			;$1033   |
	MOV SPC.DSP_addr, #DSPs.key_off		;$1035   |
	MOV SPC.DSP_data, #$FF			;$1038   |
	MOV SPC.DSP_addr, #DSPs.pitch_mod	;$103B   |
	MOV SPC.DSP_data, A			;$103E   |
	MOV SPC.DSP_addr, #DSPs.noise_enable	;$1040   |
	MOV SPC.DSP_data, A			;$1043   |
	MOV SPC.DSP_addr, #DSPs.echo_enable	;$1045   |
	MOV SPC.DSP_data, A			;$1048   |
	MOV A, #$3C				;$104A   |\
	MOV ARAM_0230, A			;$104C   | |
	MOV ARAM_0231, A			;$104F   |/
	MOV SPC.DSP_addr, #DSPs.master_vol_l	;$1052   |\ Set master volume
	MOV SPC.DSP_data, A			;$1055   | |
	MOV SPC.DSP_addr, #DSPs.master_vol_r	;$1057   | |
	MOV SPC.DSP_data, A			;$105A   |/
	MOV A, #$64				;$105C   |\
	MOV song_master_volume, A		;$105E   |/
	MOV SPC.DSP_addr, #DSPs.sample_dir_addr	;$1061   |\ Set sample table address
	MOV SPC.DSP_data, #sample_table>>8	;$1064   | |
	MOV Y, #$08				;$1067   | |> Unknown
	MOV SPC.DSP_addr, #$0000		;$1069   |/
.clear						;	 |
	MOV A, #$7F				;$106C   |
	MOV SPC.DSP_data, A			;$106E   |
	INC SPC.DSP_addr			;$1070   |
	MOV SPC.DSP_data, A			;$1072   |
	CLRC					;$1074   |
	ADC SPC.DSP_addr, #DSPc.source		;$1075   |
	MOV A, #$00				;$1078   |
	MOV SPC.DSP_data, A			;$107A   |
	INC SPC.DSP_addr			;$107C   |
	MOV SPC.DSP_data, A			;$107E   |
	INC SPC.DSP_addr			;$1080   |
	MOV SPC.DSP_data, #$FF			;$1082   |
	CLRC					;$1085   |
	ADC SPC.DSP_addr, #DSPc.sample		;$1086   |
	DEC Y					;$1089   |
	BNE .clear				;$108A   |
	MOV ARAM_E7, #$FF			;$108C   |
	MOV ARAM_E8, #$FF			;$108F   |
	MOV A, #$64				;$1092   |
	MOV ARAM_E4, A				;$1094   |
	MOV A, #$20				;$1096   |
	MOV ARAM_04B5, A			;$1098   |
	MOV ARAM_00, #$08			;$109B   |
	MOV X, #$00				;$109E   |
	MOV Y, #$00				;$10A0   |
	MOV ARAM_0A, Y				;$10A2   |
	MOV ARAM_04B4, Y			;$10A4   |
	MOV ARAM_01, Y				;$10A7   |
CODE_10A9:					;	 |
	MOV A, #$01				;$10A9   |
	MOV channel_wait_timer_lo+X, A		;$10AB   |
	MOV channel_enable+X, A			;$10AD   |
	MOV A, (song_data_address)+Y		;$10B0   |
	MOV channel_seq_address_lo+X, A		;$10B2   |
	INC Y					;$10B4   |
	MOV A, (song_data_address)+Y		;$10B5   |
	MOV channel_seq_address_hi+X, A		;$10B7   |
	MOV A, $01				;$10B9   |
	MOV channel_unknown_D4+X, A		;$10BB   |
	MOV A, #$00				;$10BD   |
	MOV channel_long_duration+X, A		;$10BF   |
	MOV channel_wait_timer_hi+X, A		;$10C2   |
	MOV channel_default_duration_lo+X, A	;$10C4   |
	MOV channel_default_duration_hi+X, A	;$10C7   |
	MOV channel_effects+X, A		;$10CA   |
	MOV channel_pitch+X, A			;$10CD   |
	MOV channel_pitch_fine+X, A		;$10D0   |
	MOV channel_unknown_01E0+X, A		;$10D2   |
	MOV channel_echo_state+X, A		;$10D5   |
	INC X					;$10D8   |
	INC Y					;$10D9   |
	CLRC					;$10DA   |
	ADC ARAM_01, #$08			;$10DB   |
	DBNZ ARAM_00, CODE_10A9			;$10DE   |
	MOV A, (song_data_address)+Y		;$10E1   |
	MOV song_tempo, A			;$10E3   |
	INC Y					;$10E5   |
	MOV A, (song_data_address)+Y		;$10E6   |
	MOV sfx_tempo, A			;$10E8   |
	MOV A, #$00				;$10EA   |
	MOV ARAM_1E, A				;$10EC   |
	MOV ARAM_21, A				;$10EE   |
CODE_10F0:					;	 |
	MOV SPC.DSP_addr, #DSPs.flags		;$10F0   |
	MOV SPC.DSP_data, #$20			;$10F3   |
	RET					;$10F6  /

CODE_10F7:
	PUSH A					;$10F7  \> Preserve sound effect number
	CMP A, #!track_specific_sfx_base_id	;$10F8   |
	BPL CODE_1104				;$10FA   |
	SETC					;$10FC   |
	SBC A, global_sfx_data			;$10FD   |
	BPL CODE_110D				;$1100   |
	BRA CODE_1111				;$1102  /

CODE_1104:
	SETC					;$1104  \
	SBC A, #!track_specific_sfx_base_id	;$1105   |
	SETC					;$1107   |
	SBC A, track_sfx_data			;$1108   |
	BMI CODE_1111				;$110B   |
CODE_110D:					;	 |
	POP A					;$110D   |
	MOV A, #$00				;$110E   |
	PUSH A					;$1110   |
CODE_1111:					;	 |
	POP A					;$1111   |
	ASL A					;$1112   |
	PUSH A					;$1113   |
	MOV A, #$01				;$1114   |
	MOV channel_unknown_01E0+X, A		;$1116   |
	MOV SPC.DSP_addr, #DSPs.noise_enable	;$1119   |
	MOV A, channel_bit_table+X		;$111C   |
	EOR A, #$FF				;$111F   |
	AND A, SPC.DSP_data			;$1121   |
	MOV SPC.DSP_data, A			;$1123   |
	MOV A, X				;$1125   |
	CLRC					;$1126   |
	ADC A, #$08				;$1127   |
	MOV X, A				;$1129   |
	ASL A					;$112A   |
	ASL A					;$112B   |
	ASL A					;$112C   |
	MOV channel_unknown_D4+X, A		;$112D   |
	MOV A, #$01				;$112F   |
	MOV channel_enable+X, A			;$1131   |
	DEC A					;$1134   |
	MOV channel_default_duration_lo+X, A	;$1135   |
	MOV channel_default_duration_hi+X, A	;$1138   |
	MOV channel_wait_timer_hi+X, A		;$113B   |
	MOV channel_long_duration+X, A		;$113D   |
	MOV channel_unknown_01E0+X, A		;$1140   |
	MOV channel_effects+X, A		;$1143   |
	MOV channel_pitch+X, A			;$1146   |
	MOV channel_echo_state+X, A		;$1149   |
	MOV channel_pitch_fine+X, A		;$114C   |
	MOV A, #$7F				;$114E   |
	MOV channel_vol_l+X, A			;$1150   |
	MOV channel_vol_r+X, A			;$1153   |
	MOV channel_unknown_0314+X, A		;$1156   |
	MOV channel_unknown_0324+X, A		;$1159   |
	MOV A, #$8E				;$115C   |
	MOV channel_adsr_1+X, A			;$115E   |
	MOV A, #$E0				;$1161   |
	MOV channel_adsr_2+X, A			;$1163   |
	POP A					;$1166   |
	CMP A, #$C0				;$1167   |
	BCS CODE_1179				;$1169   |
	MOV Y, A				;$116B   |
	MOV A, global_sfx_table+Y		;$116C   |
	MOV channel_seq_address_lo+X, A		;$116F   |
	INC Y					;$1171   |
	MOV A, global_sfx_table+Y		;$1172   |
	MOV channel_seq_address_hi+X, A		;$1175   |
	BRA CODE_1188				;$1177  /

CODE_1179:
	SETC					;$1179  \
	SBC A, #$C0				;$117A   |
	MOV Y, A				;$117C   |
	MOV A, track_sfx_table+Y		;$117D   |
	MOV channel_seq_address_lo+X, A		;$1180   |
	INC Y					;$1182   |
	MOV A, track_sfx_table+Y		;$1183   |
	MOV channel_seq_address_hi+X, A		;$1186   |
CODE_1188:					;	 |
	MOV A, #$02				;$1188   |
	MOV channel_wait_timer_lo+X, A		;$118A   |
	MOV SPC.DSP_addr, #DSPs.echo_enable	;$118C   |
	MOV A, channel_bit_table+X		;$118F   |
	EOR A, #$FF				;$1192   |
	AND A, SPC.DSP_data			;$1194   |
	MOV SPC.DSP_data, A			;$1196   |
	RET					;$1198  /



pitch_table:
	%offset(pitch_table_hi, 1)
	dw $0000
	dw $0040
	dw $0044
	dw $0048
	dw $004C
	dw $0051
	dw $0055
	dw $005B
	dw $0060
	dw $0066
	dw $006C
	dw $0072
	dw $0079
	dw $0080
	dw $0088
	dw $0090
	dw $0098
	dw $00A1
	dw $00AB
	dw $00B5
	dw $00C0
	dw $00CB
	dw $00D7
	dw $00E4
	dw $00F2
	dw $0100
	dw $010F
	dw $011F
	dw $0130
	dw $0143
	dw $0156
	dw $016A
	dw $0180
	dw $0196
	dw $01AF
	dw $01C8
	dw $01E3
	dw $0200
	dw $021E
	dw $023F
	dw $0261
	dw $0285
	dw $02AB
	dw $02D4
	dw $02FF
	dw $032D
	dw $035D
	dw $0390
	dw $03C7
	dw $0400
	dw $043D
	dw $047D
	dw $04C2
	dw $050A
	dw $0557
	dw $05A8
	dw $05FE
	dw $065A
	dw $06BA
	dw $0721
	dw $078D
	dw $0800
	dw $087A
	dw $08FB
	dw $0984
	dw $0A14
	dw $0AAE
	dw $0B50
	dw $0BFD
	dw $0CB3
	dw $0D74
	dw $0E41
	dw $0F1A
	dw $1000
	dw $10F4
	dw $11F6
	dw $1307
	dw $1429
	dw $155C
	dw $16A1
	dw $17F9
	dw $1966
	dw $1AE9
	dw $1C82
	dw $1E34
	dw $2000
	dw $21E7
	dw $23EB
	dw $260E
	dw $2851
	dw $2AB7
	dw $2D41
	dw $2FF2
	dw $32CC
	dw $35D1
	dw $3904
	dw $3C68
	dw $3FFF
	db $FF

base off
namespace off
arch 65816