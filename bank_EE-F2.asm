spc_base_engine:

arch spc700
base !spc_base_eng_loc

namespace APU

APU_reset:
	CLRP					;$04D8  \> Clear direct page
	MOV X, #$FF				;$04D9   |\
	MOV SP, X				;$04DB   |/ Reset stack pointer
	INC X					;$04DC   |\ X = 0
	MOV SPC.CPUIO1, X			;$04DD   |/ Set CPU transaction id to 0
	INC X					;$04DF   |\
	MOV cpu_transaction, X			;$04E0   |/ Set next expected CPU transaction id to 1
	MOV A, #$00				;$04E2   |> A = 0
	MOV $00, A				;$04E4   |\
	MOV $01, #$D0				;$04E6   |/ Set $00 to $D000
.next_page					;	 |\ Zero fills $D000-$FFFF
	MOV Y, A				;$04E9   | | Reset Y index to 0
.next_byte					;	 | |\
	MOV ($00)+Y, A				;$04EA   | | | Set byte to 0
	INC Y					;$04EC   | | | Update index to next byte
	BNE .next_byte				;$04ED   | |/ If not end of page then move to next byte
	INC $01					;$04EF   | | Else increase page number
	BNE .next_page				;$04F1   |/ And zero fill the next page until the end of ARAM
handle_CPU_data_upload:				;	 |
	MOV X, #$FF				;$04F3   |\
	MOV SPC.DSP_addr, #DSPs.flags		;$04F5   | | Reset DSP flags
	MOV SPC.DSP_data, X			;$04F8   |/
	MOV SPC.DSP_addr, #DSPs.echo_delay	;$04FA   |\ Reset echo delay
	MOV SPC.DSP_data, #$00			;$04FD   | |
	MOV SPC.DSP_addr, #DSPs.echo_buf_addr	;$0500   | | Reset echo buffer address
	MOV SPC.DSP_data, X			;$0503   |/
	MOV $04B7, X				;$0505   |
	MOV X, cpu_transaction			;$0508   |
.wait_for_CPU_data_destination			;	 |
	CMP X, SPC.CPUIO1			;$050A   |\
	BNE .wait_for_CPU_data_destination	;$050C   |/ If the CPU didnt send an ARAM destination yet then wait
	MOVW YA, SPC.CPUIO2			;$050E   |> Read ARAM destination address sent by the CPU into Y and A
	MOV SPC.CPUIO1, X			;$0510   |\ Update transaction id (acknowledge that the APU received the destination)
	INC X					;$0512   |/
	MOV .first_byte_write_instruction+1, A	;$0513   |\ Patch address of 2 MOV instructions to point to the ARAM address...
	MOV .second_byte_write_instruction+1, A	;$0516   | | That the CPU wants to write to
	MOV .first_byte_write_instruction+2, Y	;$0519   | | This is done twice because the CPU sends 2 bytes at a time
	MOV .second_byte_write_instruction+2, Y	;$051C   |/
.wait_for_CPU_data_size				;	 |
	CMP X, SPC.CPUIO1			;$051F   |\
	BNE .wait_for_CPU_data_size		;$0521   |/ If the CPU didnt send the data size yet then wait until it does
	MOVW YA, SPC.CPUIO2			;$0523   |> Read data sent by the CPU into Y and A
	MOV SPC.CPUIO1, X			;$0525   |\ Update transaction id (acknowledge that the APU received the data size)
	INC X					;$0527   |/
	MOV cpu_upload_size, A			;$0528   |\ Update remaining words
	MOV cpu_upload_size+1, Y		;$052A   |/
	DECW cpu_upload_size			;$052C   |\
	BMI .execute_requested_APU_code		;$052E   |/ If the upload size is 0 the CPU wants the APU to jump
	MOV Y, #$00				;$0530   |> Reset write index since this is a new block of data
.wait_for_CPU_data				;	 |
	CMP X, SPC.CPUIO1			;$0532   |\
	BNE .wait_for_CPU_data			;$0534   |/ If the CPU didnt send any data yet then wait until it does
	MOV A, SPC.CPUIO2			;$0536   |> Read data sent by the CPU into A
.first_byte_write_instruction			;	 |\ The next instruction is dynamically patched to point to the write address
	MOV !null_pointer+Y, A			;$0538   | | Write 1st byte to dynamically patched ARAM destination
	MOV A, SPC.CPUIO3			;$053B   |/ Get 2nd data byte sent by the CPU
	MOV SPC.CPUIO1, X			;$053D   |\ Update the transaction id to tell the CPU we want more data
	INC X					;$053F   | | Increment CPU transaction id
	INC Y					;$0540   |/ Increment write offset
.second_byte_write_instruction			;	 |\ The next instruction is dynamically patched to point to the write address
	MOV !null_pointer+Y, A			;$0541   | | Write 2nd byte to dynamically patched ARAM destination
	INC Y					;$0544   |/ Increment write offset
	BEQ .cross_page_boundary		;$0545   |
.next_word					;	 |
	DECW cpu_upload_size			;$0547   |
	BPL .wait_for_CPU_data			;$0549   |
	JMP .wait_for_CPU_data_destination	;$054B  /

.cross_page_boundary
	INC .first_byte_write_instruction+2	;$054E  \ \ Increment high byte of ARAM destination address directly...
	INC .second_byte_write_instruction+2	;$0551   |/ To effectively move to the next page
	BRA .next_word				;$0554  /

.execute_requested_APU_code
	MOV cpu_transaction, X			;$0556  \> Acknowledge CPU execution request
	MOV X, #$00				;$0558   |
	JMP (.first_byte_write_instruction+1+X)	;$055A  /> Jump to the destination code requested by the CPU

	db $00
	dw $D604

base off
arch 65816

namespace off
spc_sound_engine:
namespace APU

arch spc700
base !spc_sound_eng_loc
DATA_0560:
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

base $0660
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
check_for_CPU_command:				;	 |
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
	BPL .execute_CPU_command		;$069B   |/ If a CPU command was sent then execute it
	JMP CODE_0773				;$069D  /> Else a sound effect was queued, handle playing it

.execute_CPU_command
	AND A, #$07				;$06A0  \
	ASL A					;$06A2   |
	MOV X, A				;$06A3   |
	JMP (.CPU_command_table+X)		;$06A4  /

.CPU_command_table
	dw CODE_070A				;00/F8
	dw CODE_0702				;01/F9
	dw CODE_06FA				;02/FA Set Mono/Stereo
	dw CODE_06B7				;03/FB Transition song
	dw CODE_0739				;04/FC Skull Cart start loop sound?
	dw CODE_0712				;05/FD Skull Cart stop loop sound?
	dw CODE_077B				;06/FE Play mode
	dw CODE_07DB				;07/FF Upload mode

CODE_06B7:
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

CODE_06FA:
	MOV A, cpu_command_parameter		;$06FA  \
	MOV mono_stereo_toggle, A		;$06FD   |
	JMP CODE_0781				;$06FF  /

CODE_0702:
	MOV A, cpu_command_parameter		;$0702  \
	MOV $E7, A				;$0705   |
	JMP CODE_0781				;$0707  /

CODE_070A:
	MOV A, cpu_command_parameter		;$070A  \
	MOV $E8, A				;$070D   |
	JMP CODE_0781				;$070F  /

CODE_0712:
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

CODE_0739:
	MOV A, cpu_command_parameter		;$0739  \
	BMI CODE_074A				;$073C   |
	CLRC					;$073E   |
	MOV A, cpu_command_parameter		;$073F   |
	MOV $EC, A				;$0742   |
	MOV A, #$00				;$0744   |
	MOV $ED, A				;$0746   |
	BRA CODE_0756				;$0748  /

CODE_074A:
	MOV cpu_command_parameter, A		;$074A   |
	MOV A, cpu_command_parameter		;$074D   |
	MOV $EC, A				;$0750   |
	MOV A, #$FF				;$0752   |
	MOV $ED, A				;$0754   |
CODE_0756:					;   |
	MOVW YA, $EC				;$0756   |
	ADDW YA, $EC				;$0758   |
	ADDW YA, $EC				;$075A   |
	ADDW YA, $EC				;$075C   |
	ADDW YA, $EC				;$075E   |
	ADDW YA, $EC				;$0760   |
	ADDW YA, $EC				;$0762   |
	ADDW YA, $EC				;$0764   |
	MOVW $EC, YA				;$0766   |
	MOV SPC.DSP_addr, #DSPs.echo_enable	;$0768   |
	MOV A, SPC.DSP_data			;$076B   |
	AND A, #$DF				;$076D   |
	MOV SPC.DSP_data, A			;$076F   |
	BRA CODE_0781				;$0771   |

CODE_0773:
	MOV X, cpu_command_parameter		;$0773  \> Get channel number to play sound on
	CALL CODE_10F7				;$0776   |
	BRA CODE_078E				;$0779  /

CODE_077B:
	MOV sound_engine_toggle, #$01		;$077B  \
	MOV SPC.control, #$00			;$077E   |
CODE_0781:					;	 |
	MOV A, sound_engine_toggle		;$0781   |
	BNE CODE_0788				;$0783   |
	JMP check_for_CPU_command		;$0785  /

CODE_0788:
	MOV (SPC.timer_1_divider), ($E4)	;$0788  \
	MOV SPC.control, #$01			;$078B   |
CODE_078E:					;	 |
	MOV A, SPC.timer_1_output		;$078E   |
	BEQ CODE_078E				;$0790   |
	MOV SPC.control, #$01			;$0792   |
	MOV $20, #$00				;$0795   |
	CLRC					;$0798   |
	ADC ($1E), (song_tempo)			;$0799   |
	ROR $20					;$079C   |
	MOV $23, #$00				;$079E   |
	CLRC					;$07A1   |
	ADC ($21), (sfx_tempo)			;$07A2   |
	ROR $23					;$07A5   |
	MOV X, #$00				;$07A7   |
CODE_07A9:					;	 |
	MOV A, $20				;$07A9   |
	BNE CODE_07B2				;$07AB   |
	CALL CODE_09BC				;$07AD   |
	BRA CODE_07B7				;$07B0  /

CODE_07B2:
	CALL CODE_0813				;$07B2  \
	BNE CODE_07B2				;$07B5   |
CODE_07B7:					;	 |
	MOV A, $01E0+X				;$07B7   |
	BEQ CODE_07D0				;$07BA   |
	PUSH X					;$07BC   |
	MOV A, X				;$07BD   |
	OR A, #$08				;$07BE   |
	MOV X, A				;$07C0   |
	MOV A, $23				;$07C1   |
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
	BEQ .check_for_CPU_command		;$07D3   |
	JMP CODE_07A9				;$07D5  /

.check_for_CPU_command:
	JMP check_for_CPU_command		;$07D8   >

CODE_07DB:
	MOV A, cpu_command_parameter		;$07DB  \
	BEQ CODE_07E3				;$07DE   |
	JMP handle_CPU_data_upload		;$07E0  /

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
	JMP handle_CPU_data_upload		;$0810  /

CODE_0813:
	MOV A, channel_enable+X			;$0813  \
	BNE CODE_081B				;$0816   |
	MOV A, #$00				;$0818   |
	RET					;$081A  /

CODE_081B:
	DEC channel_wait_timer_lo+X		;$081B   |
	MOV A, channel_wait_timer_lo+X		;$081D   |
	CMP A, #$01				;$081F   |
	BEQ CODE_0839				;$0821   |
	CMP A, #$FF				;$0823   |
	BNE CODE_082F				;$0825   |
	MOV A, channel_wait_timer_hi+X		;$0827   |
	BEQ CODE_0850				;$0829   |
	DEC channel_wait_timer_hi+X		;$082B   |
	BRA CODE_084A				;$082D   |

CODE_082F:
	CMP A, #$00				;$082F   |
	BNE CODE_084A				;$0831   |
	MOV A, channel_wait_timer_hi+X		;$0833   |
	BEQ CODE_0850				;$0835   |
	BRA CODE_084A				;$0837   |

CODE_0839:
	MOV A, channel_wait_timer_hi+X		;$0839   |
	BNE CODE_084A				;$083B   |
	MOV A, $01E0+X				;$083D   |
	BNE CODE_084A				;$0840   |
	MOV A, channel_bit_table+X		;$0842   |
	MOV SPC.DSP_addr, #DSPs.key_off		;$0845   |
	MOV SPC.DSP_data, A			;$0848   |
CODE_084A:					;   |
	CALL CODE_09BC				;$084A   |
	MOV A, #$00				;$084D   |
	RET					;$084F   |

CODE_0850:
	MOV A, channel_seq_address_lo+X		;$0850   |
	MOV Y, channel_seq_address_hi+X		;$0852   |
	MOVW $00, YA				;$0854   |
	MOV Y, #$00				;$0856   |
	MOV A, ($00)+Y				;$0858   |
	BMI CODE_0862				;$085A   |
	PUSH X					;$085C   |
	ASL A					;$085D   |
	MOV X, A				;$085E   |
	JMP (DATA_0FA5+X)			;$085F   |

CODE_0862:
	CALL CODE_0867				;$0862   |
	BRA CODE_084A				;$0865   |

CODE_0867:
	CMP A, #$80				;$0867   |
	BNE CODE_088B				;$0869   |
	MOV A, $01E0+X				;$086B   |
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
CODE_0888:					;   |
	JMP CODE_0983				;$0888   |

CODE_088B:
	CMP A, #$E0				;$088B   |
	BMI CODE_0899				;$088D   |
	CMP A, #$E1				;$088F   |
	BEQ CODE_0897				;$0891   |
	MOV A, channel_variable_note_1+X	;$0893   |
	BRA CODE_0899				;$0895   |

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
	MOV $04, Y				;$08A6   |
	MOV A, Y				;$08A8   |
	BPL CODE_08AE				;$08A9   |
	EOR A, #$FF				;$08AB   |
	INC A					;$08AD   |
CODE_08AE:					;	 |
	MOV Y, A				;$08AE   |
	PUSH Y					;$08AF   |
	MOV A, pitch_table+X			;$08B0   |
	MUL YA					;$08B3   |
	MOV $02, Y				;$08B4   |
	MOV $03, #$00				;$08B6   |
	POP Y					;$08B9   |
	MOV A, pitch_table_hi+X			;$08BA   |
	MUL YA					;$08BD   |
	ADDW YA, $02				;$08BE   |
	MOV $03, Y				;$08C0   |
	LSR $03					;$08C2   |
	ROR A					;$08C4   |
	LSR $03					;$08C5   |
	ROR A					;$08C7   |
	MOV $02, A				;$08C8   |
	MOV A, pitch_table_hi+X			;$08CA   |
	MOV Y, A				;$08CD   |
	MOV A, pitch_table+X			;$08CE   |
	MOV X, $04				;$08D1   |
	BMI CODE_08D9				;$08D3   |
	ADDW YA, $02				;$08D5   |
	BRA CODE_08DB				;$08D7  /

CODE_08D9:
	SUBW YA, $02				;$08D9   |
CODE_08DB:					;   |
	MOVW $02, YA				;$08DB   |
	BRA CODE_08EA				;$08DD   |

CODE_08DF:
	MOV X, A				;$08DF   |
	MOV A, pitch_table+X			;$08E0   |
	MOV $02, A				;$08E3   |
	MOV A, pitch_table_hi+X			;$08E5   |
	MOV $03, A				;$08E8   |
CODE_08EA:					;   |
	POP A					;$08EA   |
	MOV X, A				;$08EB   |
	AND A, #$07				;$08EC   |
	XCN A					;$08EE   |
	MOV SPC.DSP_addr, A			;$08EF   |
	MOV A, $01E0+X				;$08F1   |
	BEQ CODE_08F9				;$08F4   |
	JMP CODE_0983				;$08F6   |

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
	MOV $0100+X, A				;$091D   |
	MOV A, channel_pitch_slide_up_count+X	;$0920   |
	MOV channel_unknown_94+X, A		;$0923   |
	MOV A, channel_pitch_slide_down_count+X	;$0925   |
	MOV $01C0+X, A				;$0928   |
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
	MOV A, $02				;$094D   |
	MOV channel_unknown_84+X, A		;$094F   |
	MOV SPC.DSP_data, A			;$0951   |
	INC SPC.DSP_addr			;$0953   |
	MOV A, $03				;$0955   |
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
	MOV $00, #$01				;$0988   |
	MOV A, channel_default_duration_lo+X	;$098B   |
	MOV channel_wait_timer_lo+X, A		;$098E   |
	MOV A, channel_default_duration_hi+X	;$0990   |
	MOV channel_wait_timer_hi+X, A		;$0993   |
	BRA CODE_09AE				;$0995  /

CODE_0997:
	MOV Y, #$01				;$0997   |
	MOV A, ($00)+Y				;$0999   |
	MOV channel_wait_timer_lo+X, A		;$099B   |
	MOV A, channel_long_duration+X		;$099D   |
	BEQ CODE_09AB				;$09A0   |
	MOV A, channel_wait_timer_lo+X		;$09A2   |
	MOV channel_wait_timer_hi+X, A		;$09A4   |
	INC Y					;$09A6   |
	MOV A, ($00)+Y				;$09A7   |
	MOV channel_wait_timer_lo+X, A		;$09A9   |
CODE_09AB:					;   |
	INC Y					;$09AB   |
	MOV $00, Y				;$09AC   |
CODE_09AE:					;   |
	MOV $01, #$00				;$09AE   |
	MOV A, channel_seq_address_lo+X		;$09B1   |
	MOV Y, channel_seq_address_hi+X		;$09B3   |
	ADDW YA, $00				;$09B5   |
	MOV channel_seq_address_hi+X, Y		;$09B7   |
	MOV channel_seq_address_lo+X, A		;$09B9   |
	RET					;$09BB   |

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
	MOV $0100+X, A				;$09D7   |
CODE_09DA:					;   |
	MOV A, $0100+X				;$09DA   |
	DEC A					;$09DD   |
	MOV $0100+X, A				;$09DE   |
	BNE CODE_0A39				;$09E1   |
	MOV A, channel_pitch_slide_interval+X	;$09E3   |
	MOV $0100+X, A				;$09E6   |
	MOV A, $01C0+X				;$09E9   |
	BEQ CODE_0A10				;$09EC   |
	DEC A					;$09EE   |
	MOV $01C0+X, A				;$09EF   |
	MOV A, channel_pitch_delta+X		;$09F2   |
	EOR A, #$FF				;$09F5   |
	INC A					;$09F7   |
	MOV $00, A				;$09F8   |
	BPL CODE_0A00				;$09FA   |
	MOV A, #$FF				;$09FC   |
	BRA CODE_0A02				;$09FE   |

CODE_0A00:
	MOV A, #$00				;$0A00  \
CODE_0A02:					;	 |
	MOV $01, A				;$0A02   |
	MOV A, channel_unknown_84+X		;$0A04   |
	MOV Y, channel_unknown_74+X		;$0A06   |
	ADDW YA, $00				;$0A08   |
	MOV channel_unknown_74+X, Y		;$0A0A   |
	MOV channel_unknown_84+X, A		;$0A0C   |
	BRA CODE_0A1B				;$0A0E  /

CODE_0A10:
	MOV A, channel_pitch_delta+X		;$0A10  \
	MOV $00, A				;$0A13   |
	BPL CODE_0A00				;$0A15   |
	MOV A, #$FF				;$0A17   |
	BRA CODE_0A02				;$0A19  /

CODE_0A1B:
	MOV A, $01E0+X				;$0A1B   |
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
CODE_0A30:					;   |
	DEC channel_unknown_94+X		;$0A30   |
	BNE CODE_0A39				;$0A32   |
	MOV A, #$FF				;$0A34   |
	MOV channel_p_slide_delay_timer+X, A	;$0A36   |
CODE_0A39:					;   |
	MOV A, channel_effects+X		;$0A39   |
	AND A, #$02				;$0A3C   |
	BEQ CODE_0AB4				;$0A3E   |
	MOV A, channel_vibrato_delay_timer+X	;$0A40   |
	BEQ CODE_0A48				;$0A42   |
	DEC channel_vibrato_delay_timer+X	;$0A44   |
	BRA CODE_0AB4				;$0A46   |

CODE_0A48:
	DEC channel_vibrato_step+X		;$0A48   |
	BNE CODE_0AB4				;$0A4A   |
	MOV A, channel_vibrato_rate+X		;$0A4C   |
	MOV channel_vibrato_step+X, A		;$0A4F   |
	MOV A, channel_vibrato_depth+X		;$0A51   |
	MOV $00, A				;$0A54   |
	BPL CODE_0A5C				;$0A56   |
	MOV A, #$FF				;$0A58   |
	BRA CODE_0A5E				;$0A5A   |

CODE_0A5C:
	MOV A, #$00				;$0A5C   |
CODE_0A5E:					;   |
	MOV $01, A				;$0A5E   |
	MOV A, channel_unknown_84+X		;$0A60   |
	MOV Y, channel_unknown_74+X		;$0A62   |
	CMP X, #$0D				;$0A64   |
	BNE CODE_0A87				;$0A66   |
	PUSH A					;$0A68   |
	MOV A, $EC				;$0A69   |
	CMP A, $EE				;$0A6B   |
	BNE CODE_0A78				;$0A6D   |
	MOV A, $ED				;$0A6F   |
	CMP A, $EF				;$0A71   |
	BNE CODE_0A78				;$0A73   |
	POP A					;$0A75   |
	BRA CODE_0A87				;$0A76   |

CODE_0A78:
	POP A					;$0A78  \
	SUBW YA, $EE				;$0A79   |
	ADDW YA, $EC				;$0A7B   |
	PUSH A					;$0A7D   |
	MOV A, $EC				;$0A7E   |
	MOV $EE, A				;$0A80   |
	MOV A, $ED				;$0A82   |
	MOV $EF, A				;$0A84   |
	POP A					;$0A86   |
CODE_0A87:					;	 |
	ADDW YA, $00				;$0A87   |
	MOV channel_unknown_74+X, Y		;$0A89   |
	MOV channel_unknown_84+X, A		;$0A8B   |
	MOV A, $01E0+X				;$0A8D   |
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
	BNE CODE_0ABE				;$0AB9   |
	JMP CODE_0B17				;$0ABB  /

CODE_0ABE:
	MOV A, $02A4+X				;$0ABE  \
	BEQ CODE_0ACD				;$0AC1   |
	MOV A, $02A4+X				;$0AC3   |
	DEC A					;$0AC6   |
	MOV $02A4+X, A				;$0AC7   |
	JMP CODE_0B17				;$0ACA  /

CODE_0ACD:
	MOV A, $02B4+X				;$0ACD  \
	DEC A					;$0AD0   |
	MOV $02B4+X, A				;$0AD1   |
	BEQ CODE_0AD9				;$0AD4   |
	JMP CODE_0B17				;$0AD6  /

CODE_0AD9:
	MOV A, $02C4+X				;$0AD9  \
	MOV $02B4+X, A				;$0ADC   |
	MOV A, $01E0+X				;$0ADF   |
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
	MOV A, $02E4+X				;$0AF8   |
	DEC A					;$0AFB   |
	MOV $02E4+X, A				;$0AFC   |
	BNE CODE_0B17				;$0AFF   |
	MOV A, channel_effects+X		;$0B01   |
	AND A, #$08				;$0B04   |
	BNE CODE_0B17				;$0B06   |
	MOV A, $02F4+X				;$0B08   |
	MOV $02E4+X, A				;$0B0B   |
	MOV A, $02D4+X				;$0B0E   |
	EOR A, #$FF				;$0B11   |
	INC A					;$0B13   |
	MOV $02D4+X, A				;$0B14   |
CODE_0B17:					;	 |
	RET					;$0B17  /

command_00_end_sequence:
	POP X					;$0B18  \
	MOV A, #$00				;$0B19   |
	MOV channel_enable+X, A			;$0B1B   |
	MOV A, $01E0+X				;$0B1E   |\
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
	MOV $01E0+X, A				;$0B37   |
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

;called at the start of all command routines
;probably for parsing command
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
	MOV $00, #$02				;$0B78   |\ Load length of set instrument command
update_command_address:				;	 | |
	MOV $01, #$00				;$0B7B   |/
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
	MOV A, DATA_0560+X			;$0B8F   |
	POP X					;$0B92   |
	MOV channel_instrument+X, A		;$0B93   |
	RET					;$0B96  /

CODE_0B97:					;   |
	CALL get_channel_number_and_wait_1_tick	;$0B97   |
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
	MOV $00, #$08				;$0BB0   |
	JMP update_command_address		;$0BB3   |

command_02_set_volume_l_and_r:
	CALL get_channel_number_and_wait_1_tick	;$0BB6   |
	CALL CODE_0BC2				;$0BB9   |
CODE_0BBC:					;	 |
	MOV $00, #$03				;$0BBC   |> Load length of set_volume_l_and_r command
	JMP update_command_address		;$0BBF   |

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
	MOV A, ($00)+Y				;$0BD2   |
	BPL CODE_0BD9				;$0BD4   |
	EOR A, #$FF				;$0BD6   |
	INC A					;$0BD8   |
CODE_0BD9:					;   |
	LSR A					;$0BD9   |
	MOV $03, A				;$0BDA   |
	INC Y					;$0BDC   |
	CLRC					;$0BDD   |
	MOV A, ($00)+Y				;$0BDE   |
	BPL CODE_0BE5				;$0BE0   |
	EOR A, #$FF				;$0BE2   |
	INC A					;$0BE4   |
CODE_0BE5:					;   |
	LSR A					;$0BE5   |
	CLRC					;$0BE6   |
	ADC A, $03				;$0BE7   |
	MOV channel_vol_l+X, A			;$0BE9   |
	MOV channel_vol_r+X, A			;$0BEC   |
	RET					;$0BEF   |

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
	MOV A, channel_vol_l+X			;$0C2E   |
	BPL CODE_0C36				;$0C31   |
	EOR A, #$FF				;$0C33   |
	INC A					;$0C35   |
CODE_0C36:					;   |
	LSR A					;$0C36   |
	MOV $00, A				;$0C37   |
	MOV A, channel_vol_r+X			;$0C39   |
	BPL CODE_0C41				;$0C3C   |
	EOR A, #$FF				;$0C3E   |
	INC A					;$0C40   |
CODE_0C41:					;   |
	LSR A					;$0C41   |
	CLRC					;$0C42   |
	ADC A, $00				;$0C43   |
	MOV channel_vol_l+X, A			;$0C45   |
	MOV channel_vol_r+X, A			;$0C48   |
	JMP CODE_0ED6				;$0C4B   |

command_24_set_master_volume_indirect:
	CALL get_channel_number_and_wait_1_tick	;$0C4E  \
	MOV A, ($00)+Y				;$0C51   |
	MOV song_master_volume, A		;$0C53   |
	JMP update_command_address_2_bytes	;$0C56  /

CODE_0C59:
	PUSH X					;$0C59   |
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
CODE_0C6F:					;   |
	POP X					;$0C6F   |
	RET					;$0C70   |

CODE_0C71:
	EOR A, #$FF				;$0C71   |
	INC A					;$0C73   |
	MUL YA					;$0C74   |
	MOV X, #$64				;$0C75   |
	DIV YA, X				;$0C77   |
	CMP A, #$7F				;$0C78   |
	BMI CODE_0C7E				;$0C7A   |
	MOV A, #$7F				;$0C7C   |
CODE_0C7E:					;   |
	EOR A, #$FF				;$0C7E   |
	INC A					;$0C80   |
	POP X					;$0C81   |
	RET					;$0C82   |

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
	JMP CODE_0F76				;$0C9D  /

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
	MOV $00, A				;$0CB5   |
	MOV A, #$FF				;$0CB7   |
	SETC					;$0CB9   |
	SBC A, $00				;$0CBA   |
	MOV SPC.DSP_data, A			;$0CBC   |
	MOV $04B7, A				;$0CBE   |
	MOV Y, A				;$0CC1   |
	MOV A, #$00				;$0CC2   |
	MOVW $00, YA				;$0CC4   |
CODE_0CC6:					;	 |
	MOV Y, A				;$0CC6   |
CODE_0CC7:					;	 |
	MOV ($00)+Y, A				;$0CC7   |
	INC Y					;$0CC9   |
	BNE CODE_0CC7				;$0CCA   |
	INC $01					;$0CCC   |
	MOV Y, $01				;$0CCE   |
	CMP Y, #$00				;$0CD0   |
	BNE CODE_0CC6				;$0CD2   |
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
	MOV $04, A				;$0CEB   |
	INC Y					;$0CED   |
	CALL CODE_0D1C				;$0CEE   |
CODE_0CF1:					;	 |
	MOV channel_seq_loop_address_lo+Y, A	;$0CF1   |
CODE_0CF4:					;	 |
	INC channel_unknown_D4+X		;$0CF4   |
	MOVW YA, $02				;$0CF6   |
	MOV channel_seq_address_lo+X, A		;$0CF8   |
	MOV channel_seq_address_hi+X, Y		;$0CFA   |
	MOV A, #$01				;$0CFC   |
	RET					;$0CFE  /

command_21_play_subsequence:
	CALL get_channel_number_and_wait_1_tick	;$0CFF  \
	MOV $04, #$01				;$0D02   |
	CALL CODE_0D1C				;$0D05   |
	BEQ CODE_0D0E				;$0D08   |
	DEC A					;$0D0A   |
	JMP CODE_0CF1				;$0D0B  /

CODE_0D0E:
	DEC A					;$0D0E   |
	MOV channel_seq_loop_address_lo+Y, A	;$0D0F   |
	MOV A, channel_seq_loop_address_hi+Y	;$0D12   |
	DEC A					;$0D15   |
	MOV channel_seq_loop_address_hi+Y, A	;$0D16   |
	JMP CODE_0CF4				;$0D19   |

CODE_0D1C:
	MOV A, ($00)+Y				;$0D1C   |
	MOV $02, A				;$0D1E   |
	INC Y					;$0D20   |
	MOV A, ($00)+Y				;$0D21   |
	MOV $03, A				;$0D23   |
	MOV Y, channel_unknown_D4+X		;$0D25   |
	MOV A, $04				;$0D27   |
	MOV channel_seq_loop_count+Y, A		;$0D29   |
	MOV A, channel_seq_address_hi+X		;$0D2C   |
	MOV channel_seq_loop_address_hi+Y, A	;$0D2E   |
	MOV A, channel_seq_address_lo+X		;$0D31   |
	RET					;$0D33   |

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
	BEQ CODE_0D6A				;$0D4C   |
	MOV A, channel_seq_address_lo+X		;$0D4E   |
	MOV Y, channel_seq_address_hi+X		;$0D50   |
	MOVW $00, YA				;$0D52   |
	MOV Y, #$02				;$0D54   |
	MOV A, ($00)+Y				;$0D56   |
	MOV $02, A				;$0D58   |
	INC Y					;$0D5A   |
	MOV A, ($00)+Y				;$0D5B   |
	MOV $03, A				;$0D5D   |
	INC channel_unknown_D4+X		;$0D5F   |
	MOVW YA, $02				;$0D61   |
	MOV channel_seq_address_lo+X, A		;$0D63   |
	MOV channel_seq_address_hi+X, Y		;$0D65   |
	MOV A, #$01				;$0D67   |
	RET					;$0D69  /

CODE_0D6A:
	MOV $00, #$04				;$0D6A  \
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
	MOV $00, Y				;$0D8A   |
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
	MOV A, ($00)+Y				;$0DB8   |\ param 01 (delay)
	MOV channel_pitch_slide_delay+X, A	;$0DBA   |/
	INC Y					;$0DBD   |\
	MOV A, ($00)+Y				;$0DBE   | | param 02 (interval)
	MOV channel_pitch_slide_interval+X, A	;$0DC0   |/
	INC Y					;$0DC3   |\
	MOV A, ($00)+Y				;$0DC4   | | param 03 (pitch up count)
	MOV channel_pitch_slide_up_count+X, A	;$0DC6   |/
	INC Y					;$0DC9   |> Skip param 04 because we already handled it
	INC Y					;$0DCA   |\
	MOV A, ($00)+Y				;$0DCB   | | param 05 (pitch down count)
	MOV channel_pitch_slide_down_count+X, A	;$0DCD   |/
	MOV $00, #$06				;$0DD0   |\ Command was 6 bytes
	JMP update_command_address		;$0DD3  / /

command_0A_pitch_slide_off:
	POP X					;$0DD6  \
	MOV A, channel_effects+X		;$0DD7   |
	AND A, #$FE				;$0DDA   |
	MOV channel_effects+X, A		;$0DDC   |
CODE_0DDF:					;	 |
	MOV A, #$01				;$0DDF   |
	MOV $00, A				;$0DE1   |
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
	JMP CODE_0D6A				;$0E17  /

command_0F_vibrato_with_delay:
	POP X					;$0E1A  \> Get channel number
	MOV Y, #$04				;$0E1B   |\ Get param 04 (delay)
	MOV A, ($00)+Y				;$0E1D   |/
	CALL set_vibrato			;$0E1F   |
	JMP CODE_0F76				;$0E22  /

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
	MOV A, ($00)+Y				;$0E4E   |
	MOV channel_adsr_1+X, A			;$0E50   |
	INC Y					;$0E53   |
	MOV A, ($00)+Y				;$0E54   |
	MOV channel_adsr_2+X, A			;$0E56   |
	RET					;$0E59   |

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
	MOV $0232, A				;$0EA7   |
	MOV SPC.DSP_data, A			;$0EAA   |
	MOV SPC.DSP_addr, #DSPs.echo_vol_r	;$0EAC   |
	INC Y					;$0EAF   |
	MOV A, ($00)+Y				;$0EB0   |
	MOV $0233, A				;$0EB2   |
	MOV SPC.DSP_data, A			;$0EB5   |
	MOV A, #$00				;$0EB7   |
	MOV $04B5, A				;$0EB9   |
	MOV SPC.DSP_addr, #DSPs.flags		;$0EBC   |
	MOV SPC.DSP_data, A			;$0EBF   |
	JMP CODE_0D6A				;$0EC1  /

CODE_0EC4:
	CALL get_channel_number_and_wait_1_tick	;$0EC4  \
	MOV SPC.DSP_addr, #DSPs.echo_enable	;$0EC7   |
	MOV A, channel_bit_table+X		;$0ECA   |
	OR A, SPC.DSP_data			;$0ECD   |
	MOV SPC.DSP_data, A			;$0ECF   |
	MOV A, #$01				;$0ED1   |
	MOV channel_echo_state+X, A		;$0ED3   |
CODE_0ED6:					;	 |
	MOV $00, #$01				;$0ED6   |
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
	MOV SPC.DSP_addr, #DSPc[0].echo_fir_filter	;$0EF9   |
CODE_0EFC:					;	 |
	MOV A, ($00)+Y				;$0EFC   |
	MOV SPC.DSP_data, A			;$0EFE   |
	INC Y					;$0F00   |
	CLRC					;$0F01   |
	ADC SPC.DSP_addr, #$10			;$0F02   |
	CMP SPC.DSP_addr, #$8F			;$0F05   |
	BNE CODE_0EFC				;$0F08   |
	MOV $00, #$09				;$0F0A   |
	JMP update_command_address		;$0F0D  /

CODE_0F10:
	CALL get_channel_number_and_wait_1_tick	;$0F10  \
	MOV A, ($00)+Y				;$0F13   |
	MOV $04B4, A				;$0F15   |
	OR A, $04B5				;$0F18   |
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
CODE_0F76:					;	 |
	MOV $00, #$05				;$0F76   |
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

CODE_0F8F:
	MOV $00, #$07				;$0F8F  \
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

;initialize various registers and ARAM values before loading song
CODE_100B:
	MOV A, #$00				;$100B  \
	MOV $EC, A				;$100D   |
	MOV $ED, A				;$100F   |
	MOV $EE, A				;$1011   |
	MOV $EF, A				;$1013   |
	MOV SPC.DSP_addr, #DSPs.flags		;$1015   |
	MOV SPC.DSP_data, #$E0			;$1018   |
	MOV SPC.DSP_addr, #DSPs.echo_vol_l	;$101B   |
	MOV $0232, A				;$101E   |
	MOV SPC.DSP_data, A			;$1021   |
	MOV SPC.DSP_addr, #DSPs.echo_vol_r	;$1023   |
	MOV $0233, A				;$1026   |
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
	MOV $0230, A				;$104C   | |
	MOV $0231, A				;$104F   |/
	MOV SPC.DSP_addr, #DSPs.master_vol_l	;$1052   |\ Set master volume
	MOV SPC.DSP_data, A			;$1055   | |
	MOV SPC.DSP_addr, #DSPs.master_vol_r	;$1057   | |
	MOV SPC.DSP_data, A			;$105A   |/
	MOV A, #$64				;$105C   |\
	MOV song_master_volume, A		;$105E   |/
	MOV SPC.DSP_addr, #DSPs.sample_dir_addr	;$1061   |\ Set sample table address
	MOV SPC.DSP_data, #sample_table>>8	;$1064   | |
	MOV Y, #$08				;$1067   | |> Unknown
	MOV SPC.DSP_addr, #sample_table&$00FF	;$1069   |/
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
	MOV $E7, #$FF				;$108C   |
	MOV $E8, #$FF				;$108F   |
	MOV A, #$64				;$1092   |
	MOV $E4, A				;$1094   |
	MOV A, #$20				;$1096   |
	MOV $04B5, A				;$1098   |
	MOV $00, #$08				;$109B   |
	MOV X, #$00				;$109E   |
	MOV Y, #$00				;$10A0   |
	MOV $0A, Y				;$10A2   |
	MOV $04B4, Y				;$10A4   |
	MOV $01, Y				;$10A7   |
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
	MOV $01E0+X, A				;$10D2   |
	MOV channel_echo_state+X, A		;$10D5   |
	INC X					;$10D8   |
	INC Y					;$10D9   |
	CLRC					;$10DA   |
	ADC $01, #$08				;$10DB   |
	DBNZ $00, CODE_10A9			;$10DE   |
	MOV A, (song_data_address)+Y		;$10E1   |
	MOV song_tempo, A			;$10E3   |
	INC Y					;$10E5   |
	MOV A, (song_data_address)+Y		;$10E6   |
	MOV sfx_tempo, A			;$10E8   |
	MOV A, #$00				;$10EA   |
	MOV $1E, A				;$10EC   |
	MOV $21, A				;$10EE   |
CODE_10F0:					;	 |
	MOV SPC.DSP_addr, #DSPs.flags		;$10F0   |
	MOV SPC.DSP_data, #$20			;$10F3   |
	RET					;$10F6  /

CODE_10F7:
	PUSH A					;$10F7  \> Preserve sound effect number
	CMP A, #!dyn_snd_base_id		;$10F8   |
	BPL CODE_1104				;$10FA   |
	SETC					;$10FC   |
	SBC A, global_sfx_data			;$10FD   |
	BPL CODE_110D				;$1100   |
	BRA CODE_1111				;$1102  /

CODE_1104:
	SETC					;$1104   |
	SBC A, #!dyn_snd_base_id		;$1105   |
	SETC					;$1107   |
	SBC A, track_sfx_data			;$1108   |
	BMI CODE_1111				;$110B   |
CODE_110D:					;   |
	POP A					;$110D   |
	MOV A, #$00				;$110E   |
	PUSH A					;$1110   |
CODE_1111:					;   |
	POP A					;$1111   |
	ASL A					;$1112   |
	PUSH A					;$1113   |
	MOV A, #$01				;$1114   |
	MOV $01E0+X, A				;$1116   |
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
	MOV $01E0+X, A				;$1140   |
	MOV channel_effects+X, A		;$1143   |
	MOV channel_pitch+X, A			;$1146   |
	MOV channel_echo_state+X, A		;$1149   |
	MOV channel_pitch_fine+X, A		;$114C   |
	MOV A, #$7F				;$114E   |
	MOV channel_vol_l+X, A			;$1150   |
	MOV channel_vol_r+X, A			;$1153   |
	MOV $0314+X, A				;$1156   |
	MOV $0324+X, A				;$1159   |
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
	BRA CODE_1188				;$1177   |

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



sample_table:
	dl brr_sample_EECE62			;00
	dl brr_sample_EECFFC			;01
	dl brr_sample_EED1CC			;02
	dl brr_sample_EED47C			;03
	dl brr_sample_EED63A			;04
	dl brr_sample_EED87E			;05
	dl brr_sample_EEDC73			;06
	dl brr_sample_EEE055			;07
	dl brr_sample_EEE1AF			;08
	dl brr_sample_EEE8CE			;09
	dl brr_sample_EEE9A2			;0A
	dl brr_sample_EEEE4B			;0B
	dl brr_sample_EEF6B6			;0C
	dl brr_sample_EEF8C5			;0D
	dl brr_sample_EEFDC8			;0E
	dl brr_sample_EEFFDF			;0F
	dl brr_sample_EF001A			;10
	dl brr_sample_EF05BE			;11
	dl brr_sample_EF0997			;12
	dl brr_sample_EF120B			;13
	dl brr_sample_EF1EDC			;14
	dl brr_sample_EF288C			;15
	dl brr_sample_EF2F7E			;16
	dl brr_sample_EF3288			;17
	dl brr_sample_EF335C			;18
	dl brr_sample_EF35BC			;19
	dl brr_sample_EF37B0			;1A
	dl brr_sample_EF3A10			;1B
	dl brr_sample_EF3D5A			;1C
	dl brr_sample_EF4512			;1D
	dl brr_sample_EF4C79			;1E
	dl brr_sample_EF5053			;1F
	dl brr_sample_EF5910			;20
	dl brr_sample_EF5927			;21
	dl brr_sample_EF596B			;22
	dl brr_sample_EF5D96			;23
	dl brr_sample_EF63EF			;24
	dl brr_sample_EF66CD			;25
	dl brr_sample_EF66ED			;26
	dl brr_sample_EF6731			;27
	dl brr_sample_EF6748			;28
	dl brr_sample_EF69CC			;29
	dl brr_sample_EF720B			;2A
	dl brr_sample_EF72FA			;2B
	dl brr_sample_EF7A2B			;2C
	dl brr_sample_EF8006			;2D
	dl brr_sample_EF818E			;2E
	dl brr_sample_EF8880			;2F
	dl brr_sample_EF90BF			;30
	dl brr_sample_EF90D6			;31
	dl brr_sample_EF943B			;32
	dl brr_sample_EF9677			;33
	dl brr_sample_EFA228			;34
	dl brr_sample_EFA7E8			;35
	dl brr_sample_EFA81A			;36
	dl brr_sample_EFAC18			;37
	dl brr_sample_EFAC4A			;38
	dl brr_sample_EFAC7C			;39
	dl brr_sample_EFACAE			;3A
	dl brr_sample_EFACE0			;3B
	dl brr_sample_EFAD12			;3C
	dl brr_sample_EFAD44			;3D
	dl brr_sample_EFAD76			;3E
	dl brr_sample_EFADA8			;3F
	dl brr_sample_EFADDA			;40
	dl brr_sample_EFAE0C			;41
	dl brr_sample_EFAE3E			;42
	dl brr_sample_EFAE70			;43
	dl brr_sample_EFAEA2			;44
	dl brr_sample_EFAED4			;45
	dl brr_sample_EFAF06			;46
	dl brr_sample_EFAF38			;47
	dl brr_sample_EFAF6A			;48
	dl brr_sample_EFAF9C			;49
	dl brr_sample_EFAFCE			;4A
	dl brr_sample_EFB000			;4B
	dl brr_sample_EFB032			;4C
	dl brr_sample_EFB064			;4D
	dl brr_sample_EFB096			;4E
	dl brr_sample_EFB0C8			;4F
	dl brr_sample_EFB0FA			;50
	dl brr_sample_EFB11A			;51
	dl brr_sample_EFB13A			;52
	dl brr_sample_EFB15A			;53
	dl brr_sample_EFB17A			;54
	dl brr_sample_EFB19A			;55
	dl brr_sample_EFB1BA			;56
	dl brr_sample_EFB1DA			;57
	dl brr_sample_EFB1FA			;58
	dl brr_sample_EFB21A			;59
	dl brr_sample_EFB23A			;5A
	dl brr_sample_EFB26B			;5B
	dl brr_sample_EFB29C			;5C
	dl brr_sample_EFB2CD			;5D
	dl brr_sample_EFB2FE			;5E
	dl brr_sample_EFB32F			;5F
	dl brr_sample_EFB360			;60
	dl brr_sample_EFB391			;61
	dl brr_sample_EFB3C2			;62
	dl brr_sample_EFB3F3			;63
	dl brr_sample_EFB424			;64
	dl brr_sample_EFB455			;65
	dl brr_sample_EFB486			;66
	dl brr_sample_EFB4B7			;67
	dl brr_sample_EFB4E8			;68
	dl brr_sample_EFB519			;69
	dl brr_sample_EFB54A			;6A
	dl brr_sample_EFB57B			;6B
	dl brr_sample_EFB5AC			;6C
	dl brr_sample_EFB5DD			;6D
	dl brr_sample_EFB60E			;6E
	dl brr_sample_EFB63F			;6F
	dl brr_sample_EFB670			;70
	dl brr_sample_EFB6A1			;71
	dl brr_sample_EFB6D2			;72
	dl brr_sample_EFB703			;73
	dl brr_sample_EFB734			;74
	dl brr_sample_EFB765			;75
	dl brr_sample_EFB796			;76
	dl brr_sample_EFB7C7			;77
	dl brr_sample_EFB7F8			;78
	dl brr_sample_EFB829			;79
	dl brr_sample_EFB85A			;7A
	dl brr_sample_EFB912			;7B
	dl brr_sample_EFD404			;7C
	dl brr_sample_EFDB08			;7D
	dl brr_sample_EFE26F			;7E
	dl brr_sample_EFE8F5			;7F
	dl brr_sample_EFECBD			;80
	dl brr_sample_EFEDF4			;81
	dl brr_sample_EFEEF5			;82
	dl brr_sample_EFF035			;83
	dl brr_sample_EFF11B			;84
	dl brr_sample_EFF894			;85
	dl brr_sample_EFFAFC			;86
	dl brr_sample_EFFECD			;87
	dl brr_sample_F00162			;88
	dl brr_sample_F0062F			;89
	dl brr_sample_F00823			;8A
	dl brr_sample_F009FC			;8B
	dl brr_sample_F00A1C			;8C
	dl brr_sample_F00FAF			;8D
	dl brr_sample_F01674			;8E
	dl brr_sample_F01B6E			;8F
	dl brr_sample_F01BA9			;90
	dl brr_sample_F02667			;91
	dl brr_sample_F02800			;92
	dl brr_sample_F02988			;93
	dl brr_sample_F02C2F			;94
	dl brr_sample_F03A17			;95
	dl brr_sample_F03A5B			;96
	dl brr_sample_F03B1D			;97
	dl brr_sample_F03D2B			;98
	dl brr_sample_F04854			;99
	dl brr_sample_F057E3			;9A
	dl brr_sample_F05FFD			;9B
	dl brr_sample_F073F1			;9C
	dl brr_sample_F08A2D			;9D
	dl brr_sample_F09BFB			;9E
	dl brr_sample_F0A157			;9F
	dl brr_sample_F0A5FF			;A0
	dl brr_sample_F0AE2B			;A1
	dl brr_sample_F0B2B0			;A2
	dl brr_sample_F0B7FA			;A3
	dl brr_sample_F0BD45			;A4
	dl brr_sample_F0C93E			;A5
	dl brr_sample_F0CD45			;A6
	dl brr_sample_F0DC8C			;A7
	dl brr_sample_F0F65E			;A8
	dl brr_sample_F1078A			;A9
	dl brr_sample_F10F26			;AA
	dl brr_sample_F117C7			;AB
	dl brr_sample_F11EEE			;AC
	dl brr_sample_F11F0D			;AD
	dl brr_sample_F12A9A			;AE
	dl brr_sample_F133B1			;AF
	dl brr_sample_F139DC			;B0
	dl brr_sample_F14B98			;B1
	dl brr_sample_F14DA6			;B2
	dl brr_sample_F15542			;B3
	dl brr_sample_F15C0F			;B4
	dl brr_sample_F1663C			;B5
	dl brr_sample_F16F1C			;B6
	dl brr_sample_F179D9			;B7
	dl brr_sample_F18004			;B8
	dl brr_sample_F186E4			;B9
	dl brr_sample_F192E5			;BA
	dl brr_sample_F19304			;BB
	dl brr_sample_F19311			;BC
	dl brr_sample_F1946B			;BD
	dl brr_sample_F1A225			;BE
	dl brr_sample_F1A811			;BF
	dl brr_sample_F1AD5B			;C0
	dl brr_sample_F1B55A			;C1
	dl brr_sample_F1B795			;C2
	dl brr_sample_F1B9D0			;C3
	dl brr_sample_F1BC0B			;C4
	dl brr_sample_F1C03F			;C5
	dl brr_sample_F1C916			;C6
	dl brr_sample_F1CC05			;C7
	dl brr_sample_F1CD4E			;C8
	dl brr_sample_F1CFF6			;C9
	dl brr_sample_F1D190			;CA
	dl brr_sample_F1D68A			;CB
	dl brr_sample_F1DF7C			;CC
	dl brr_sample_F1E973			;CD
	dl brr_sample_F1EDA6			;CE
	dl brr_sample_F1F188			;CF
	dl brr_sample_F1F195			;D0
	dl brr_sample_F1F337			;D1
	dl brr_sample_F1F92C			;D2
	dl brr_sample_F20080			;D3
	dl brr_sample_F202BB			;D4
	dl brr_sample_F218D4			;D5
	dl brr_sample_F21E5D			;D6
	dl brr_sample_F22132			;D7
	dl brr_sample_F225B6			;D8
	dl brr_sample_F22C44			;D9
	dl brr_sample_F232D2			;DA
	dl !null_pointer			;DB
	dl !null_pointer			;DC
	dl !null_pointer			;DD
	dl !null_pointer			;DE
	dl !null_pointer			;DF
	dl !null_pointer			;E0
	dl !null_pointer			;E1
	dl !null_pointer			;E2
	dl !null_pointer			;E3
	dl !null_pointer			;E4
	dl !null_pointer			;E5
	dl !null_pointer			;E6
	dl !null_pointer			;E7
	dl !null_pointer			;E8
	dl !null_pointer			;E9
	dl !null_pointer			;EA
	dl !null_pointer			;EB
	dl !null_pointer			;EC
	dl !null_pointer			;ED
	dl !null_pointer			;EE
	dl !null_pointer			;EF
	dl !null_pointer			;F0
	dl !null_pointer			;F1
	dl !null_pointer			;F2
	dl !null_pointer			;F3
	dl !null_pointer			;F4
	dl !null_pointer			;F5
	dl !null_pointer			;F6
	dl !null_pointer			;F7
	dl !null_pointer			;F8
	dl !null_pointer			;F9
	dl !null_pointer			;FA
	dl !null_pointer			;FB
	dl !null_pointer			;FC
	dl !null_pointer			;FD
	dl !null_pointer			;FE
	dl !null_pointer			;FF

song_data:
	%offset(song_sample_maps, 3)
	dl null_song_data, null_sample_map			;00
	dl island_map_song_data, island_map_sample_map		;01
	dl main_theme_song_data, main_theme_sample_map		;02
	dl swamp_song_data, swamp_sample_map			;03
	dl swanky_song_data, swanky_sample_map			;04
	dl forest_song_data, forest_sample_map			;05
	dl ship_deck_song_data, ship_deck_sample_map		;06
	dl mine_song_data, mine_sample_map			;07
	dl funky_song_data, funky_sample_map			;08
	dl brambles_song_data, brambles_sample_map		;09
	dl klubba_song_data, klubba_sample_map			;0A
	dl wasp_hive_song_data, wasp_hive_sample_map		;0B
	dl wrinkly_song_data, wrinkly_sample_map		;0C
	dl lava_song_data, lava_sample_map			;0D
	dl roller_coaster_song_data, roller_coaster_sample_map	;0E
	dl bonus_song_data, bonus_sample_map			;0F
	dl ship_hold_song_data, ship_hold_sample_map		;10
	dl fanfare_song_data, fanfare_sample_map		;11
	dl ship_deck_2_song_data, ship_deck_2_sample_map	;12
	dl rescue_kong_song_data, rescue_kong_sample_map	;13
	dl game_over_song_data, game_over_sample_map		;14
	dl big_boss_song_data, big_boss_sample_map		;15
	dl castle_song_data, castle_sample_map			;16
	dl haunted_song_data, haunted_sample_map		;17
	dl file_select_song_data, file_select_sample_map	;18
	dl cranky_song_data, cranky_sample_map			;19
	dl ice_song_data, ice_sample_map			;1A
	dl jungle_song_data, jungle_sample_map			;1B
	dl lost_world_song_data, lost_world_sample_map		;1C
	dl rigging_song_data, rigging_sample_map		;1D
	dl credits_song_data, credits_sample_map		;1E
	dl k_rool_song_data, k_rool_sample_map			;1F
	dl bonus_song_data, bonus_sample_map_2			;20
	dl big_boss_song_data, big_boss_sample_map_2		;21
	dl bonus_song_data, bonus_sample_map			;22
	dl bonus_song_data, bonus_sample_map_3			;23
	dl secret_ending_song_data, secret_ending_sample_map	;24
	dl bonus_song_data, bonus_sample_map_4			;25
	dl DATA_F2E728, DATA_EE1935				;26
	dl DATA_F2E72C, DATA_EE1937				;27
	db $00, $00, $00

DATA_EE1179:
	db $00, $00

DATA_EE117B:
	%offset(DATA_EE117D, 2)
	dl dummy_sfx_data					;00
	dl dummy_sfx_data					;01
	dl dummy_sfx_data					;02
	dl swamp_forest_mine_brambles_hive_sfx_data		;03
	dl swamp_forest_mine_brambles_hive_sfx_data		;04
	dl swamp_forest_mine_brambles_hive_sfx_data		;05
	dl ship_ice_ending_sfx_data				;06
	dl swamp_forest_mine_brambles_hive_sfx_data		;07
	dl dummy_sfx_data					;08
	dl swamp_forest_mine_brambles_hive_sfx_data		;09
	dl boss_1_sfx_data					;0A
	dl swamp_forest_mine_brambles_hive_sfx_data		;0B
	dl dummy_sfx_data					;0C
	dl lava_castle_boss_2_sfx_data				;0D
	dl roller_coaster_sfx_data				;0E
	dl swamp_forest_mine_brambles_hive_sfx_data		;0F
	dl ship_ice_ending_sfx_data				;10
	dl dummy_sfx_data					;11
	dl ship_ice_ending_sfx_data				;12
	dl boss_1_sfx_data					;13
	dl dummy_sfx_data					;14
	dl boss_1_sfx_data					;15
	dl lava_castle_boss_2_sfx_data				;16
	dl roller_coaster_sfx_data				;17
	dl dummy_sfx_data					;18
	dl dummy_sfx_data					;19
	dl ship_ice_ending_sfx_data				;1A
	dl jungle_sfx_data					;1B
	dl dummy_sfx_data					;1C
	dl ship_ice_ending_sfx_data				;1D
	dl ship_ice_ending_sfx_data				;1E
	dl boss_1_sfx_data					;1F
	dl roller_coaster_sfx_data				;20
	dl lava_castle_boss_2_sfx_data				;21
	dl lava_castle_boss_2_sfx_data				;22
	dl ship_ice_ending_sfx_data				;23
	dl ship_ice_ending_sfx_data				;24
	dl ship_ice_ending_sfx_data				;25
	dl dummy_sfx_data					;26
	dl dummy_sfx_data					;27
	dl dummy_sfx_data					;28

DATA_EE11F6:
	db $00, $00, $00


global_sample_map:
	dw $0001
	dw $0002
	dw $0003
	dw $0004
	dw $0006
	dw $0008
	dw $0007
	dw $0005
	dw $0000
	dw $00A5
	dw $000C
	dw $0009
	dw $0011
	dw $000A
	dw $008B
	dw $0043
	dw $0047
	dw $0049
	dw $004B
	dw $004D
	dw $FFFF

null_sample_map:
	dw $0094
	dw $0015
	dw $00AB
	dw $00C4
	dw $00CD
	dw $00D3
	dw $000D
	dw $000E
	dw $000B
	dw $009A
	dw $000F
	dw $0010
	dw $002B
	dw $00D8
	dw $00BC
	dw $00A1
	dw $009F
	dw $00C6
	dw $009D
	dw $00CC
	dw $FFFF

island_map_sample_map:
	dw $001D
	dw $001C
	dw $00A2
	dw $00A3
	dw $00A4
	dw $0014
	dw $009A
	dw $0094
	dw $0010
	dw $008F
	dw $FFFF

main_theme_sample_map:
	dw $001E
	dw $001F
	dw $0020
	dw $0021
	dw $0022
	dw $0023
	dw $0024
	dw $00A2
	dw $00A4
	dw $00A3
	dw $0014
	dw $002B
	dw $FFFF

swamp_sample_map:
	dw $0014
	dw $0015
	dw $0088
	dw $0089
	dw $0017
	dw $0026
	dw $0027
	dw $001C
	dw $0025
	dw $0029
	dw $0022
	dw $002B
	dw $0028
	dw $002A
	dw $002C
	dw $0050
	dw $0015
	dw $0018
	dw $008F
	dw $000E
	dw $000B
	dw $009A
	dw $000D
	dw $000F
	dw $009F
	dw $00C6
	dw $00D3
	dw $00C4
	dw $00A1
	dw $00D7
	dw $00D8
	dw $0094
	dw $0010
	dw $FFFF

swanky_sample_map:
	dw $0014
	dw $008C
	dw $00A2
	dw $0018
	dw $0019
	dw $008D
	dw $001B
	dw $008E
	dw $002B
	dw $008F
	dw $FFFF

forest_sample_map:
	dw $0037
	dw $0039
	dw $003B
	dw $003D
	dw $003F
	dw $0041
	dw $0045
	dw $0048
	dw $004A
	dw $004C
	dw $004E
	dw $004F
	dw $002D
	dw $008A
	dw $0014
	dw $008D
	dw $0032
	dw $00A3
	dw $002F
	dw $002E
	dw $0021
	dw $0029
	dw $0015
	dw $008F
	dw $0050
	dw $0051
	dw $0052
	dw $0053
	dw $0054
	dw $0055
	dw $0056
	dw $0057
	dw $0058
	dw $0059
	dw $00C4
	dw $00A1
	dw $000B
	dw $009A
	dw $000E
	dw $00C6
	dw $000F
	dw $0010
	dw $00D3
	dw $009F
	dw $000D
	dw $00D7
	dw $009D
	dw $FFFF

ship_deck_sample_map:
	dw $009E
	dw $00A8
	dw $00A7
	dw $008F
	dw $001E
	dw $0013
	dw $00A0
	dw $0021
	dw $0022
	dw $0024
	dw $0094
	dw $009F
	dw $000B
	dw $009A
	dw $000D
	dw $009F
	dw $00C6
	dw $0053
	dw $00D8
	dw $FFFF

mine_sample_map:
	dw $00B3
	dw $002F
	dw $00B2
	dw $00AD
	dw $00AE
	dw $008B
	dw $0018
	dw $0014
	dw $00B4
	dw $001A
	dw $002B
	dw $0039
	dw $003B
	dw $003D
	dw $003F
	dw $0041
	dw $0043
	dw $0045
	dw $0047
	dw $0048
	dw $0049
	dw $004A
	dw $004B
	dw $004C
	dw $004D
	dw $004E
	dw $004F
	dw $008F
	dw $009F
	dw $000F
	dw $0010
	dw $00A1
	dw $00BC
	dw $00C6
	dw $000E
	dw $00C4
	dw $00D7
	dw $000B
	dw $009A
	dw $000D
	dw $009D
	dw $FFFF

funky_sample_map:
	dw $007A
	dw $0018
	dw $007B
	dw $007C
	dw $007D
	dw $007E
	dw $007F
	dw $0080
	dw $0081
	dw $0082
	dw $0083
	dw $0084
	dw $0085
	dw $002B
	dw $008F
	dw $FFFF

brambles_sample_map:
	dw $0015
	dw $0014
	dw $0018
	dw $002E
	dw $0034
	dw $008E
	dw $001B
	dw $0033
	dw $0035
	dw $00B3
	dw $008F
	dw $0028
	dw $00A6
	dw $0050
	dw $0051
	dw $0052
	dw $0053
	dw $0054
	dw $0055
	dw $0056
	dw $0057
	dw $0058
	dw $0059
	dw $0037
	dw $0039
	dw $003B
	dw $003D
	dw $003F
	dw $0041
	dw $0045
	dw $0048
	dw $004A
	dw $004C
	dw $004E
	dw $004F
	dw $000D
	dw $00A1
	dw $00BC
	dw $00C6
	dw $000E
	dw $000B
	dw $009A
	dw $00D3
	dw $00C4
	dw $009D
	dw $00D8
	dw $009F
	dw $0010
	dw $000F
	dw $FFFF

klubba_sample_map:
	dw $00A2
	dw $0021
	dw $0014
	dw $001E
	dw $00B6
	dw $00A4
	dw $00A5
	dw $002B
	dw $008F
	dw $FFFF

wasp_hive_sample_map:
	dw $0014
	dw $0015
	dw $0090
	dw $0028
	dw $008F
	dw $008E
	dw $0091
	dw $0092
	dw $0093
	dw $002E
	dw $00D5
	dw $00B5
	dw $001C
	dw $000E
	dw $000D
	dw $000F
	dw $00C6
	dw $0010
	dw $00C6
	dw $00A1
	dw $00D7
	dw $009F
	dw $00A9
	dw $00D8
	dw $00BC
	dw $FFFF

wrinkly_sample_map:
	dw $00B8
	dw $00D6
	dw $00C0
	dw $00D4
	dw $00D1
	dw $00C5
	dw $0088
	dw $0089
	dw $0097
	dw $002B
	dw $008F
	dw $FFFF

lava_sample_map:
	dw $008D
	dw $0019
	dw $0018
	dw $00D4
	dw $00A0
	dw $0014
	dw $008D
	dw $00AF
	dw $008E
	dw $0021
	dw $0039
	dw $003B
	dw $003D
	dw $003F
	dw $0041
	dw $0045
	dw $0048
	dw $004A
	dw $004C
	dw $004E
	dw $008F
	dw $00A9
	dw $00AA
	dw $000E
	dw $000D
	dw $000B
	dw $009A
	dw $000F
	dw $00C6
	dw $0010
	dw $00D7
	dw $009F
	dw $FFFF

roller_coaster_sample_map:
	dw $0014
	dw $005A
	dw $005B
	dw $005C
	dw $005D
	dw $005E
	dw $005F
	dw $0060
	dw $0061
	dw $0062
	dw $0063
	dw $0064
	dw $0065
	dw $0066
	dw $0067
	dw $0068
	dw $0069
	dw $006A
	dw $006B
	dw $006C
	dw $006D
	dw $006E
	dw $006F
	dw $0070
	dw $0071
	dw $0072
	dw $0073
	dw $0074
	dw $0075
	dw $0076
	dw $0077
	dw $0078
	dw $0079
	dw $0098
	dw $0095
	dw $0096
	dw $0097
	dw $0088
	dw $0089
	dw $0085
	dw $003D
	dw $003F
	dw $0041
	dw $0045
	dw $0048
	dw $004A
	dw $004F
	dw $008F
	dw $00C6
	dw $00CC
	dw $00D0
	dw $00D1
	dw $00D2
	dw $FFFF

bonus_sample_map:
	dw $00B5
	dw $00B6
	dw $00B7
	dw $00B3
	dw $00B8
	dw $0033
	dw $008D
	dw $0036
	dw $008D
	dw $00A2
	dw $0019
	dw $0036
	dw $002B
	dw $000D
	dw $000B
	dw $009A
	dw $00C6
	dw $000F
	dw $0010
	dw $0053
	dw $000E
	dw $0015
	dw $00A1
	dw $00BC
	dw $008F
	dw $009F
	dw $00D8
	dw $FFFF

ship_hold_sample_map:
	dw $0015
	dw $0014
	dw $001D
	dw $0024
	dw $001E
	dw $001C
	dw $00A6
	dw $0037
	dw $0039
	dw $003B
	dw $003D
	dw $003F
	dw $0041
	dw $0043
	dw $0045
	dw $0047
	dw $004F
	dw $0018
	dw $002E
	dw $008F
	dw $000B
	dw $009A
	dw $000E
	dw $000D
	dw $0053
	dw $00CD
	dw $0099
	dw $000F
	dw $0010
	dw $009B
	dw $009F
	dw $00BC
	dw $0050
	dw $00DA
	dw $FFFF

fanfare_sample_map:
	dw $0014
	dw $00BE
	dw $00A2
	dw $00A4
	dw $00B5
	dw $00A0
	dw $002B
	dw $008F
	dw $FFFF

ship_deck_2_sample_map:
	dw $0014
	dw $008E
	dw $00A5
	dw $0018
	dw $0021
	dw $0034
	dw $001B
	dw $0033
	dw $0036
	dw $008D
	dw $002E
	dw $0024
	dw $008F
	dw $0094
	dw $009F
	dw $000B
	dw $009A
	dw $000D
	dw $009F
	dw $00C6
	dw $0053
	dw $FFFF

rescue_kong_sample_map:
	dw $001D
	dw $0014
	dw $00AF
	dw $00B5
	dw $001C
	dw $00A5
	dw $0033
	dw $00BC
	dw $FFFF

game_over_sample_map:
	dw $008D
	dw $0024
	dw $0018
	dw $0014
	dw $0033
	dw $002B
	dw $008F
	dw $FFFF

big_boss_sample_map:
	dw $0014
	dw $00A5
	dw $00A2
	dw $0021
	dw $0022
	dw $0023
	dw $001D
	dw $0024
	dw $00A3
	dw $00A4
	dw $001E
	dw $008F
	dw $002E
	dw $002B
	dw $000D
	dw $00AB
	dw $00A1
	dw $00C4
	dw $00BC
	dw $002B
	dw $00D7
	dw $0086
	dw $009A
	dw $0094
	dw $FFFF

castle_sample_map:
	dw $00AF
	dw $001D
	dw $00A2
	dw $00A4
	dw $0014
	dw $00B0
	dw $0024
	dw $00B1
	dw $0022
	dw $00AC
	dw $008F
	dw $002E
	dw $009F
	dw $00C6
	dw $000B
	dw $009A
	dw $000D
	dw $00C4
	dw $00A1
	dw $00BC
	dw $000F
	dw $0010
	dw $00D7
	dw $0053
	dw $000E
	dw $00D8
	dw $00A9
	dw $FFFF

haunted_sample_map:
	dw $0014
	dw $00B8
	dw $00BA
	dw $00BE
	dw $00B6
	dw $00A2
	dw $00B9
	dw $00BD
	dw $001E
	dw $00A4
	dw $003F
	dw $0028
	dw $00BB
	dw $008F
	dw $002E
	dw $00C6
	dw $00CC
	dw $00D0
	dw $00D1
	dw $00D2
	dw $00C1
	dw $00C2
	dw $00C3
	dw $008E
	dw $FFFF

file_select_sample_map:
	dw $000C
	dw $0017
	dw $000D
	dw $0019
	dw $0018
	dw $00B7
	dw $0028
	dw $0087
	dw $002B
	dw $008F
	dw $FFFF

cranky_sample_map:
	dw $00B8
	dw $0028
	dw $0029
	dw $00AF
	dw $002B
	dw $0016
	dw $0017
	dw $0019
	dw $0015
	dw $009F
	dw $002B
	dw $008F
	dw $FFFF

ice_sample_map:
	dw $0012
	dw $0088
	dw $0037
	dw $0039
	dw $003B
	dw $003F
	dw $0041
	dw $0043
	dw $0045
	dw $0047
	dw $0048
	dw $004A
	dw $00AF
	dw $002C
	dw $00C5
	dw $0014
	dw $00C0
	dw $008F
	dw $002E
	dw $000B
	dw $009A
	dw $000E
	dw $000F
	dw $0010
	dw $000D
	dw $009F
	dw $00CD
	dw $0099
	dw $00C6
	dw $002B
	dw $0053
	dw $0050
	dw $00D8
	dw $00DA
	dw $FFFF

jungle_sample_map:
	dw $00C8
	dw $00C9
	dw $00CA
	dw $000D
	dw $0031
	dw $0029
	dw $00CB
	dw $0086
	dw $00C7
	dw $0028
	dw $00C0
	dw $00A6
	dw $0031
	dw $0096
	dw $008F
	dw $000F
	dw $0010
	dw $000E
	dw $000D
	dw $00C6
	dw $00D7
	dw $000B
	dw $009A
	dw $009F
	dw $00D8
	dw $0053
	dw $00B8
	dw $FFFF

lost_world_sample_map:
	dw $00CE
	dw $00CF
	dw $0014
	dw $001D
	dw $0021
	dw $00A6
	dw $0090
	dw $00BF
	dw $009F
	dw $FFFF

rigging_sample_map:
	dw $0013
	dw $001E
	dw $0036
	dw $0024
	dw $0021
	dw $0086
	dw $00A1
	dw $009C
	dw $009D
	dw $0014
	dw $008F
	dw $000B
	dw $009A
	dw $0099
	dw $000F
	dw $0010
	dw $000E
	dw $000D
	dw $00C6
	dw $0053
	dw $00D8
	dw $009F
	dw $00DA
	dw $FFFF

credits_sample_map:
	dw $00CE
	dw $00CF
	dw $00C0
	dw $00A6
	dw $0090
	dw $00B8
	dw $002E
	dw $0034
	dw $008E
	dw $00B6
	dw $005A
	dw $005B
	dw $005C
	dw $005D
	dw $005E
	dw $005F
	dw $0060
	dw $0061
	dw $0062
	dw $0063
	dw $0064
	dw $0065
	dw $0066
	dw $0067
	dw $0068
	dw $0069
	dw $006A
	dw $006B
	dw $006C
	dw $006D
	dw $006E
	dw $006F
	dw $0070
	dw $0071
	dw $0072
	dw $0073
	dw $0074
	dw $0075
	dw $0076
	dw $0077
	dw $0078
	dw $0079
	dw $0037
	dw $0039
	dw $003B
	dw $003D
	dw $003F
	dw $0041
	dw $0045
	dw $0048
	dw $004A
	dw $004C
	dw $004E
	dw $004F
	dw $002B
	dw $000D
	dw $0050
	dw $0053
	dw $00A1
	dw $00C6
	dw $009F
	dw $000F
	dw $0010
	dw $00CD
	dw $00D7
	dw $0099
	dw $FFFF

k_rool_sample_map:
	dw $00CE
	dw $00CF
	dw $0021
	dw $00A2
	dw $00BE
	dw $002E
	dw $0090
	dw $00A6
	dw $0096
	dw $008F
	dw $0014
	dw $000D
	dw $00D9
	dw $009D
	dw $0053
	dw $00BC
	dw $00D2
	dw $0086
	dw $00AD
	dw $0088
	dw $0094
	dw $FFFF

bonus_sample_map_2:
	dw $00B5
	dw $00B6
	dw $00B7
	dw $00B3
	dw $00B8
	dw $0033
	dw $008D
	dw $0036
	dw $008D
	dw $00A2
	dw $0019
	dw $0036
	dw $008F
	dw $000D
	dw $00C6
	dw $00CC
	dw $00D0
	dw $00D1
	dw $00D2
	dw $0067
	dw $00C1
	dw $00C2
	dw $00C3
	dw $008E
	dw $FFFF

big_boss_sample_map_2:
	dw $0014
	dw $00A5
	dw $00A2
	dw $0021
	dw $0022
	dw $0023
	dw $001D
	dw $0024
	dw $00A3
	dw $00A4
	dw $001E
	dw $008F
	dw $002E
	dw $000D
	dw $00D7
	dw $0086
	dw $00BD
	dw $00A9
	dw $00AA
	dw $002B
	dw $00C6
	dw $00A1
	dw $002F
	dw $00D9
	dw $00BC
	dw $FFFF
	dw $FFFF

bonus_sample_map_3:
	dw $00B5
	dw $00B6
	dw $00B7
	dw $00B3
	dw $00B8
	dw $0033
	dw $008D
	dw $0036
	dw $008D
	dw $00A2
	dw $0019
	dw $0036
	dw $000D
	dw $00C6
	dw $008F
	dw $0050
	dw $0099
	dw $00DA
	dw $FFFF

secret_ending_sample_map:
	dw $00A7
	dw $009D
	dw $00D9
	dw $0088
	dw $00D3
	dw $00C1
	dw $00C2
	dw $00C3
	dw $FFFF

bonus_sample_map_4:
	dw $00B5
	dw $00B6
	dw $00B7
	dw $00B3
	dw $00B8
	dw $0033
	dw $008D
	dw $0036
	dw $008D
	dw $00A2
	dw $0019
	dw $0036
	dw $000D
	dw $000B
	dw $009A
	dw $00C6
	dw $000F
	dw $0010
	dw $0053
	dw $000E
	dw $008F
	dw $009F
	dw $00D8
	dw $0094
	dw $FFFF

DATA_EE1935:
	dw $FFFF

DATA_EE1937:
	dw $FFFF

	incsrc "data/sound/music/null_song_data.asm"
	incsrc "data/sound/music/island_map_song_data.asm"
	incsrc "data/sound/music/main_theme_song_data.asm"
	incsrc "data/sound/music/swamp_song_data.asm"
	incsrc "data/sound/music/swanky_song_data.asm"
	incsrc "data/sound/music/forest_song_data.asm"
	incsrc "data/sound/music/ship_deck_song_data.asm"
	incsrc "data/sound/music/mine_song_data.asm"
	incsrc "data/sound/music/funky_song_data.asm"
	incsrc "data/sound/music/brambles_song_data.asm"
	incsrc "data/sound/music/klubba_song_data.asm"
	incsrc "data/sound/music/wasp_hive_song_data.asm"
	incsrc "data/sound/music/wrinkly_song_data.asm"
	incsrc "data/sound/music/lava_song_data.asm"
	incsrc "data/sound/music/roller_coaster_song_data.asm"
	incsrc "data/sound/music/bonus_song_data.asm"

check bankcross off
;$EECE62
brr_sample_EECE62:
	dw $0000
	dw datasize(brr_sample_EECE62)-4
	incbin "data/sound/samples/sample_EECE62.brr"

;$EECFFC
brr_sample_EECFFC:
	dw $0000
	dw datasize(brr_sample_EECFFC)-4
	incbin "data/sound/samples/sample_EECFFC.brr"

;$EED1CC
brr_sample_EED1CC:
	dw $0000
	dw datasize(brr_sample_EED1CC)-4
	incbin "data/sound/samples/sample_EED1CC.brr"

;$EED47C
brr_sample_EED47C:
	dw $0000
	dw datasize(brr_sample_EED47C)-4
	incbin "data/sound/samples/sample_EED47C.brr"

;$EED63A
brr_sample_EED63A:
	dw $0000
	dw datasize(brr_sample_EED63A)-4
	incbin "data/sound/samples/sample_EED63A.brr"

;$EED87E
brr_sample_EED87E:
	dw $0000
	dw datasize(brr_sample_EED87E)-4
	incbin "data/sound/samples/sample_EED87E.brr"

;$EEDC73
brr_sample_EEDC73:
	dw $0000
	dw datasize(brr_sample_EEDC73)-4
	incbin "data/sound/samples/sample_EEDC73.brr"

;$EEE055
brr_sample_EEE055:
	dw $0000
	dw datasize(brr_sample_EEE055)-4
	incbin "data/sound/samples/sample_EEE055.brr"

;$EEE1AF
brr_sample_EEE1AF:
	dw $0000
	dw datasize(brr_sample_EEE1AF)-4
	incbin "data/sound/samples/sample_EEE1AF.brr"

;$EEE8CE
brr_sample_EEE8CE:
	dw $0000
	dw datasize(brr_sample_EEE8CE)-4
	incbin "data/sound/samples/sample_EEE8CE.brr"

;$EEE9A2
brr_sample_EEE9A2:
	dw $0000
	dw datasize(brr_sample_EEE9A2)-4
	incbin "data/sound/samples/sample_EEE9A2.brr"

;$EEEE4B
brr_sample_EEEE4B:
	dw $0000
	dw datasize(brr_sample_EEEE4B)-4
	incbin "data/sound/samples/sample_EEEE4B.brr"

;$EEF6B6
brr_sample_EEF6B6:
	dw $0000
	dw datasize(brr_sample_EEF6B6)-4
	incbin "data/sound/samples/sample_EEF6B6.brr"

;$EEF8C5
brr_sample_EEF8C5:
	dw $0000
	dw datasize(brr_sample_EEF8C5)-4
	incbin "data/sound/samples/sample_EEF8C5.brr"

;$EEFDC8
brr_sample_EEFDC8:
	dw $0000
	dw datasize(brr_sample_EEFDC8)-4
	incbin "data/sound/samples/sample_EEFDC8.brr"

;$EEFFDF
brr_sample_EEFFDF:
	dw $0000
	dw datasize(brr_sample_EEFFDF)-4
	incbin "data/sound/samples/sample_EEFFDF.brr"

;$EF001A
brr_sample_EF001A:
	dw $0000
	dw datasize(brr_sample_EF001A)-4
	incbin "data/sound/samples/sample_EF001A.brr"

;$EF05BE
brr_sample_EF05BE:
	dw $0000
	dw datasize(brr_sample_EF05BE)-4
	incbin "data/sound/samples/sample_EF05BE.brr"

;$EF0997
brr_sample_EF0997:
	dw $076B
	dw datasize(brr_sample_EF0997)-4
	incbin "data/sound/samples/sample_EF0997.brr"

;$EF120B
brr_sample_EF120B:
	dw $0870
	dw datasize(brr_sample_EF120B)-4
	incbin "data/sound/samples/sample_EF120B.brr"

;$EF1EDC
brr_sample_EF1EDC:
	dw $0000
	dw datasize(brr_sample_EF1EDC)-4
	incbin "data/sound/samples/sample_EF1EDC.brr"

;$EF288C
brr_sample_EF288C:
	dw $0000
	dw datasize(brr_sample_EF288C)-4
	incbin "data/sound/samples/sample_EF288C.brr"

;$EF2F7E
brr_sample_EF2F7E:
	dw $02F4
	dw datasize(brr_sample_EF2F7E)-4
	incbin "data/sound/samples/sample_EF2F7E.brr"

;$EF3288
brr_sample_EF3288:
	dw $0000
	dw datasize(brr_sample_EF3288)-4
	incbin "data/sound/samples/sample_EF3288.brr"

;$EF335C
brr_sample_EF335C:
	dw $01F8
	dw datasize(brr_sample_EF335C)-4
	incbin "data/sound/samples/sample_EF335C.brr"

;$EF35BC
brr_sample_EF35BC:
	dw $018C
	dw datasize(brr_sample_EF35BC)-4
	incbin "data/sound/samples/sample_EF35BC.brr"

;$EF37B0
brr_sample_EF37B0:
	dw $0000
	dw datasize(brr_sample_EF37B0)-4
	incbin "data/sound/samples/sample_EF37B0.brr"

;$EF3A10
brr_sample_EF3A10:
	dw $0225
	dw datasize(brr_sample_EF3A10)-4
	incbin "data/sound/samples/sample_EF3A10.brr"

;$EF3D5A
brr_sample_EF3D5A:
	dw $0762
	dw datasize(brr_sample_EF3D5A)-4
	incbin "data/sound/samples/sample_EF3D5A.brr"

;$EF4512
brr_sample_EF4512:
	dw $0000
	dw datasize(brr_sample_EF4512)-4
	incbin "data/sound/samples/sample_EF4512.brr"

;$EF4C79
brr_sample_EF4C79:
	dw $0048
	dw datasize(brr_sample_EF4C79)-4
	incbin "data/sound/samples/sample_EF4C79.brr"

;$EF5053
brr_sample_EF5053:
	dw $0000
	dw datasize(brr_sample_EF5053)-4
	incbin "data/sound/samples/sample_EF5053.brr"

;$EF5910
brr_sample_EF5910:
	dw $0000
	dw datasize(brr_sample_EF5910)-4
	incbin "data/sound/samples/sample_EF5910.brr"

;$EF5927
brr_sample_EF5927:
	dw $0000
	dw datasize(brr_sample_EF5927)-4
	incbin "data/sound/samples/sample_EF5927.brr"

;$EF596B
brr_sample_EF596B:
	dw $0000
	dw datasize(brr_sample_EF596B)-4
	incbin "data/sound/samples/sample_EF596B.brr"

;$EF5D96
brr_sample_EF5D96:
	dw $0000
	dw datasize(brr_sample_EF5D96)-4
	incbin "data/sound/samples/sample_EF5D96.brr"

;$EF63EF
brr_sample_EF63EF:
	dw $029A
	dw datasize(brr_sample_EF63EF)-4
	incbin "data/sound/samples/sample_EF63EF.brr"

;$EF66CD
brr_sample_EF66CD:
	dw $0000
	dw datasize(brr_sample_EF66CD)-4
	incbin "data/sound/samples/sample_EF66CD.brr"

;$EF66ED
brr_sample_EF66ED:
	dw $0000
	dw datasize(brr_sample_EF66ED)-4
	incbin "data/sound/samples/sample_EF66ED.brr"

;$EF6731
brr_sample_EF6731:
	dw $0000
	dw datasize(brr_sample_EF6731)-4
	incbin "data/sound/samples/sample_EF6731.brr"

;$EF6748
brr_sample_EF6748:
	dw $0264
	dw datasize(brr_sample_EF6748)-4
	incbin "data/sound/samples/sample_EF6748.brr"

;$EF69CC
brr_sample_EF69CC:
	dw $071A
	dw datasize(brr_sample_EF69CC)-4
	incbin "data/sound/samples/sample_EF69CC.brr"

;$EF720B
brr_sample_EF720B:
	dw $00CF
	dw datasize(brr_sample_EF720B)-4
	incbin "data/sound/samples/sample_EF720B.brr"

;$EF72FA
brr_sample_EF72FA:
	dw $05FA
	dw datasize(brr_sample_EF72FA)-4
	incbin "data/sound/samples/sample_EF72FA.brr"

;$EF7A2B
brr_sample_EF7A2B:
	dw $0000
	dw datasize(brr_sample_EF7A2B)-4
	incbin "data/sound/samples/sample_EF7A2B.brr"

;$EF8006
brr_sample_EF8006:
	dw $0000
	dw datasize(brr_sample_EF8006)-4
	incbin "data/sound/samples/sample_EF8006.brr"

;$EF818E
brr_sample_EF818E:
	dw $0519
	dw datasize(brr_sample_EF818E)-4
	incbin "data/sound/samples/sample_EF818E.brr"

;$EF8880
brr_sample_EF8880:
	dw $0000
	dw datasize(brr_sample_EF8880)-4
	incbin "data/sound/samples/sample_EF8880.brr"

;$EF90BF
brr_sample_EF90BF:
	dw $0000
	dw datasize(brr_sample_EF90BF)-4
	incbin "data/sound/samples/sample_EF90BF.brr"

;$EF90D6
brr_sample_EF90D6:
	dw $0000
	dw datasize(brr_sample_EF90D6)-4
	incbin "data/sound/samples/sample_EF90D6.brr"

;$EF943B
brr_sample_EF943B:
	dw $0000
	dw datasize(brr_sample_EF943B)-4
	incbin "data/sound/samples/sample_EF943B.brr"

;$EF9677
brr_sample_EF9677:
	dw $07E0
	dw datasize(brr_sample_EF9677)-4
	incbin "data/sound/samples/sample_EF9677.brr"

;$EFA228
brr_sample_EFA228:
	dw $0000
	dw datasize(brr_sample_EFA228)-4
	incbin "data/sound/samples/sample_EFA228.brr"

;$EFA7E8
brr_sample_EFA7E8:
	dw $0000
	dw datasize(brr_sample_EFA7E8)-4
	incbin "data/sound/samples/sample_EFA7E8.brr"

;$EFA81A
brr_sample_EFA81A:
	dw $0384
	dw datasize(brr_sample_EFA81A)-4
	incbin "data/sound/samples/sample_EFA81A.brr"

;$EFAC18
brr_sample_EFAC18:
	dw $0000
	dw datasize(brr_sample_EFAC18)-4
	incbin "data/sound/samples/sample_EFAC18.brr"

;$EFAC4A
brr_sample_EFAC4A:
	dw $0000
	dw datasize(brr_sample_EFAC4A)-4
	incbin "data/sound/samples/sample_EFAC4A.brr"

;$EFAC7C
brr_sample_EFAC7C:
	dw $0000
	dw datasize(brr_sample_EFAC7C)-4
	incbin "data/sound/samples/sample_EFAC7C.brr"

;$EFACAE
brr_sample_EFACAE:
	dw $0000
	dw datasize(brr_sample_EFACAE)-4
	incbin "data/sound/samples/sample_EFACAE.brr"

;$EFACE0
brr_sample_EFACE0:
	dw $0000
	dw datasize(brr_sample_EFACE0)-4
	incbin "data/sound/samples/sample_EFACE0.brr"

;$EFAD12
brr_sample_EFAD12:
	dw $0000
	dw datasize(brr_sample_EFAD12)-4
	incbin "data/sound/samples/sample_EFAD12.brr"

;$EFAD44
brr_sample_EFAD44:
	dw $0000
	dw datasize(brr_sample_EFAD44)-4
	incbin "data/sound/samples/sample_EFAD44.brr"

;$EFAD76
brr_sample_EFAD76:
	dw $0000
	dw datasize(brr_sample_EFAD76)-4
	incbin "data/sound/samples/sample_EFAD76.brr"

;$EFADA8
brr_sample_EFADA8:
	dw $0000
	dw datasize(brr_sample_EFADA8)-4
	incbin "data/sound/samples/sample_EFADA8.brr"

;$EFADDA
brr_sample_EFADDA:
	dw $0000
	dw datasize(brr_sample_EFADDA)-4
	incbin "data/sound/samples/sample_EFADDA.brr"

;$EFAE0C
brr_sample_EFAE0C:
	dw $0000
	dw datasize(brr_sample_EFAE0C)-4
	incbin "data/sound/samples/sample_EFAE0C.brr"

;$EFAE3E
brr_sample_EFAE3E:
	dw $0000
	dw datasize(brr_sample_EFAE3E)-4
	incbin "data/sound/samples/sample_EFAE3E.brr"

;$EFAE70
brr_sample_EFAE70:
	dw $0000
	dw datasize(brr_sample_EFAE70)-4
	incbin "data/sound/samples/sample_EFAE70.brr"

;$EFAEA2
brr_sample_EFAEA2:
	dw $0000
	dw datasize(brr_sample_EFAEA2)-4
	incbin "data/sound/samples/sample_EFAEA2.brr"

;$EFAED4
brr_sample_EFAED4:
	dw $0000
	dw datasize(brr_sample_EFAED4)-4
	incbin "data/sound/samples/sample_EFAED4.brr"

;$EFAF06
brr_sample_EFAF06:
	dw $0000
	dw datasize(brr_sample_EFAF06)-4
	incbin "data/sound/samples/sample_EFAF06.brr"

;$EFAF38
brr_sample_EFAF38:
	dw $0000
	dw datasize(brr_sample_EFAF38)-4
	incbin "data/sound/samples/sample_EFAF38.brr"

;$EFAF6A
brr_sample_EFAF6A:
	dw $0000
	dw datasize(brr_sample_EFAF6A)-4
	incbin "data/sound/samples/sample_EFAF6A.brr"

;$EFAF9C
brr_sample_EFAF9C:
	dw $0000
	dw datasize(brr_sample_EFAF9C)-4
	incbin "data/sound/samples/sample_EFAF9C.brr"

;$EFAFCE
brr_sample_EFAFCE:
	dw $0000
	dw datasize(brr_sample_EFAFCE)-4
	incbin "data/sound/samples/sample_EFAFCE.brr"

;$EFB000
brr_sample_EFB000:
	dw $0000
	dw datasize(brr_sample_EFB000)-4
	incbin "data/sound/samples/sample_EFB000.brr"

;$EFB032
brr_sample_EFB032:
	dw $0000
	dw datasize(brr_sample_EFB032)-4
	incbin "data/sound/samples/sample_EFB032.brr"

;$EFB064
brr_sample_EFB064:
	dw $0000
	dw datasize(brr_sample_EFB064)-4
	incbin "data/sound/samples/sample_EFB064.brr"

;$EFB096
brr_sample_EFB096:
	dw $0000
	dw datasize(brr_sample_EFB096)-4
	incbin "data/sound/samples/sample_EFB096.brr"

;$EFB0C8
brr_sample_EFB0C8:
	dw $0000
	dw datasize(brr_sample_EFB0C8)-4
	incbin "data/sound/samples/sample_EFB0C8.brr"

;$EFB0FA
brr_sample_EFB0FA:
	dw $0000
	dw datasize(brr_sample_EFB0FA)-4
	incbin "data/sound/samples/sample_EFB0FA.brr"

;$EFB11A
brr_sample_EFB11A:
	dw $0000
	dw datasize(brr_sample_EFB11A)-4
	incbin "data/sound/samples/sample_EFB11A.brr"

;$EFB13A
brr_sample_EFB13A:
	dw $0000
	dw datasize(brr_sample_EFB13A)-4
	incbin "data/sound/samples/sample_EFB13A.brr"

;$EFB15A
brr_sample_EFB15A:
	dw $0000
	dw datasize(brr_sample_EFB15A)-4
	incbin "data/sound/samples/sample_EFB15A.brr"

;$EFB17A
brr_sample_EFB17A:
	dw $0000
	dw datasize(brr_sample_EFB17A)-4
	incbin "data/sound/samples/sample_EFB17A.brr"

;$EFB19A
brr_sample_EFB19A:
	dw $0000
	dw datasize(brr_sample_EFB19A)-4
	incbin "data/sound/samples/sample_EFB19A.brr"

;$EFB1BA
brr_sample_EFB1BA:
	dw $0000
	dw datasize(brr_sample_EFB1BA)-4
	incbin "data/sound/samples/sample_EFB1BA.brr"

;$EFB1DA
brr_sample_EFB1DA:
	dw $0000
	dw datasize(brr_sample_EFB1DA)-4
	incbin "data/sound/samples/sample_EFB1DA.brr"

;$EFB1FA
brr_sample_EFB1FA:
	dw $0000
	dw datasize(brr_sample_EFB1FA)-4
	incbin "data/sound/samples/sample_EFB1FA.brr"

;$EFB21A
brr_sample_EFB21A:
	dw $0000
	dw datasize(brr_sample_EFB21A)-4
	incbin "data/sound/samples/sample_EFB21A.brr"

;$EFB23A
brr_sample_EFB23A:
	dw $0000
	dw datasize(brr_sample_EFB23A)-4
	incbin "data/sound/samples/sample_EFB23A.brr"

;$EFB26B
brr_sample_EFB26B:
	dw $0000
	dw datasize(brr_sample_EFB26B)-4
	incbin "data/sound/samples/sample_EFB26B.brr"

;$EFB29C
brr_sample_EFB29C:
	dw $0000
	dw datasize(brr_sample_EFB29C)-4
	incbin "data/sound/samples/sample_EFB29C.brr"

;$EFB2CD
brr_sample_EFB2CD:
	dw $0000
	dw datasize(brr_sample_EFB2CD)-4
	incbin "data/sound/samples/sample_EFB2CD.brr"

;$EFB2FE
brr_sample_EFB2FE:
	dw $0000
	dw datasize(brr_sample_EFB2FE)-4
	incbin "data/sound/samples/sample_EFB2FE.brr"

;$EFB32F
brr_sample_EFB32F:
	dw $0000
	dw datasize(brr_sample_EFB32F)-4
	incbin "data/sound/samples/sample_EFB32F.brr"

;$EFB360
brr_sample_EFB360:
	dw $0000
	dw datasize(brr_sample_EFB360)-4
	incbin "data/sound/samples/sample_EFB360.brr"

;$EFB391
brr_sample_EFB391:
	dw $0000
	dw datasize(brr_sample_EFB391)-4
	incbin "data/sound/samples/sample_EFB391.brr"

;$EFB3C2
brr_sample_EFB3C2:
	dw $0000
	dw datasize(brr_sample_EFB3C2)-4
	incbin "data/sound/samples/sample_EFB3C2.brr"

;$EFB3F3
brr_sample_EFB3F3:
	dw $0000
	dw datasize(brr_sample_EFB3F3)-4
	incbin "data/sound/samples/sample_EFB3F3.brr"

;$EFB424
brr_sample_EFB424:
	dw $0000
	dw datasize(brr_sample_EFB424)-4
	incbin "data/sound/samples/sample_EFB424.brr"

;$EFB455
brr_sample_EFB455:
	dw $0000
	dw datasize(brr_sample_EFB455)-4
	incbin "data/sound/samples/sample_EFB455.brr"

;$EFB486
brr_sample_EFB486:
	dw $0000
	dw datasize(brr_sample_EFB486)-4
	incbin "data/sound/samples/sample_EFB486.brr"

;$EFB4B7
brr_sample_EFB4B7:
	dw $0000
	dw datasize(brr_sample_EFB4B7)-4
	incbin "data/sound/samples/sample_EFB4B7.brr"

;$EFB4E8
brr_sample_EFB4E8:
	dw $0000
	dw datasize(brr_sample_EFB4E8)-4
	incbin "data/sound/samples/sample_EFB4E8.brr"

;$EFB519
brr_sample_EFB519:
	dw $0000
	dw datasize(brr_sample_EFB519)-4
	incbin "data/sound/samples/sample_EFB519.brr"

;$EFB54A
brr_sample_EFB54A:
	dw $0000
	dw datasize(brr_sample_EFB54A)-4
	incbin "data/sound/samples/sample_EFB54A.brr"

;$EFB57B
brr_sample_EFB57B:
	dw $0000
	dw datasize(brr_sample_EFB57B)-4
	incbin "data/sound/samples/sample_EFB57B.brr"

;$EFB5AC
brr_sample_EFB5AC:
	dw $0000
	dw datasize(brr_sample_EFB5AC)-4
	incbin "data/sound/samples/sample_EFB5AC.brr"

;$EFB5DD
brr_sample_EFB5DD:
	dw $0000
	dw datasize(brr_sample_EFB5DD)-4
	incbin "data/sound/samples/sample_EFB5DD.brr"

;$EFB60E
brr_sample_EFB60E:
	dw $0000
	dw datasize(brr_sample_EFB60E)-4
	incbin "data/sound/samples/sample_EFB60E.brr"

;$EFB63F
brr_sample_EFB63F:
	dw $0000
	dw datasize(brr_sample_EFB63F)-4
	incbin "data/sound/samples/sample_EFB63F.brr"

;$EFB670
brr_sample_EFB670:
	dw $0000
	dw datasize(brr_sample_EFB670)-4
	incbin "data/sound/samples/sample_EFB670.brr"

;$EFB6A1
brr_sample_EFB6A1:
	dw $0000
	dw datasize(brr_sample_EFB6A1)-4
	incbin "data/sound/samples/sample_EFB6A1.brr"

;$EFB6D2
brr_sample_EFB6D2:
	dw $0000
	dw datasize(brr_sample_EFB6D2)-4
	incbin "data/sound/samples/sample_EFB6D2.brr"

;$EFB703
brr_sample_EFB703:
	dw $0000
	dw datasize(brr_sample_EFB703)-4
	incbin "data/sound/samples/sample_EFB703.brr"

;$EFB734
brr_sample_EFB734:
	dw $0000
	dw datasize(brr_sample_EFB734)-4
	incbin "data/sound/samples/sample_EFB734.brr"

;$EFB765
brr_sample_EFB765:
	dw $0000
	dw datasize(brr_sample_EFB765)-4
	incbin "data/sound/samples/sample_EFB765.brr"

;$EFB796
brr_sample_EFB796:
	dw $0000
	dw datasize(brr_sample_EFB796)-4
	incbin "data/sound/samples/sample_EFB796.brr"

;$EFB7C7
brr_sample_EFB7C7:
	dw $0000
	dw datasize(brr_sample_EFB7C7)-4
	incbin "data/sound/samples/sample_EFB7C7.brr"

;$EFB7F8
brr_sample_EFB7F8:
	dw $0000
	dw datasize(brr_sample_EFB7F8)-4
	incbin "data/sound/samples/sample_EFB7F8.brr"

;$EFB829
brr_sample_EFB829:
	dw $0000
	dw datasize(brr_sample_EFB829)-4
	incbin "data/sound/samples/sample_EFB829.brr"

;$EFB85A
brr_sample_EFB85A:
	dw $0000
	dw datasize(brr_sample_EFB85A)-4
	incbin "data/sound/samples/sample_EFB85A.brr"

;$EFB912
brr_sample_EFB912:
	dw $0000
	dw datasize(brr_sample_EFB912)-4
	incbin "data/sound/samples/sample_EFB912.brr"

;$EFD404
brr_sample_EFD404:
	dw $0000
	dw datasize(brr_sample_EFD404)-4
	incbin "data/sound/samples/sample_EFD404.brr"

;$EFDB08
brr_sample_EFDB08:
	dw $0000
	dw datasize(brr_sample_EFDB08)-4
	incbin "data/sound/samples/sample_EFDB08.brr"

;$EFE26F
brr_sample_EFE26F:
	dw $0000
	dw datasize(brr_sample_EFE26F)-4
	incbin "data/sound/samples/sample_EFE26F.brr"

;$EFE8F5
brr_sample_EFE8F5:
	dw $0000
	dw datasize(brr_sample_EFE8F5)-4
	incbin "data/sound/samples/sample_EFE8F5.brr"

;$EFECBD
brr_sample_EFECBD:
	dw $0000
	dw datasize(brr_sample_EFECBD)-4
	incbin "data/sound/samples/sample_EFECBD.brr"

;$EFEDF4
brr_sample_EFEDF4:
	dw $0000
	dw datasize(brr_sample_EFEDF4)-4
	incbin "data/sound/samples/sample_EFEDF4.brr"

;$EFEEF5
brr_sample_EFEEF5:
	dw $0000
	dw datasize(brr_sample_EFEEF5)-4
	incbin "data/sound/samples/sample_EFEEF5.brr"

;$EFF035
brr_sample_EFF035:
	dw $0000
	dw datasize(brr_sample_EFF035)-4
	incbin "data/sound/samples/sample_EFF035.brr"

;$EFF11B
brr_sample_EFF11B:
	dw $0000
	dw datasize(brr_sample_EFF11B)-4
	incbin "data/sound/samples/sample_EFF11B.brr"

;$EFF894
brr_sample_EFF894:
	dw $0000
	dw datasize(brr_sample_EFF894)-4
	incbin "data/sound/samples/sample_EFF894.brr"

;$EFFAFC
brr_sample_EFFAFC:
	dw $0000
	dw datasize(brr_sample_EFFAFC)-4
	incbin "data/sound/samples/sample_EFFAFC.brr"

;$EFFECD
brr_sample_EFFECD:
	dw $0195
	dw datasize(brr_sample_EFFECD)-4
	incbin "data/sound/samples/sample_EFFECD.brr"

;$F00162
brr_sample_F00162:
	dw $032A
	dw datasize(brr_sample_F00162)-4
	incbin "data/sound/samples/sample_F00162.brr"

;$F0062F
brr_sample_F0062F:
	dw $0000
	dw datasize(brr_sample_F0062F)-4
	incbin "data/sound/samples/sample_F0062F.brr"

;$F00823
brr_sample_F00823:
	dw $01B0
	dw datasize(brr_sample_F00823)-4
	incbin "data/sound/samples/sample_F00823.brr"

;$F009FC
brr_sample_F009FC:
	dw $0000
	dw datasize(brr_sample_F009FC)-4
	incbin "data/sound/samples/sample_F009FC.brr"

;$F00A1C
brr_sample_F00A1C:
	dw $0000
	dw datasize(brr_sample_F00A1C)-4
	incbin "data/sound/samples/sample_F00A1C.brr"

;$F00FAF
brr_sample_F00FAF:
	dw $029A
	dw datasize(brr_sample_F00FAF)-4
	incbin "data/sound/samples/sample_F00FAF.brr"

;$F01674
brr_sample_F01674:
	dw $04EC
	dw datasize(brr_sample_F01674)-4
	incbin "data/sound/samples/sample_F01674.brr"

;$F01B6E
brr_sample_F01B6E:
	dw $0000
	dw datasize(brr_sample_F01B6E)-4
	incbin "data/sound/samples/sample_F01B6E.brr"

;$F01BA9
brr_sample_F01BA9:
	dw $0000
	dw datasize(brr_sample_F01BA9)-4
	incbin "data/sound/samples/sample_F01BA9.brr"

;$F02667
brr_sample_F02667:
	dw $0000
	dw datasize(brr_sample_F02667)-4
	incbin "data/sound/samples/sample_F02667.brr"

;$F02800
brr_sample_F02800:
	dw $0000
	dw datasize(brr_sample_F02800)-4
	incbin "data/sound/samples/sample_F02800.brr"

;$F02988
brr_sample_F02988:
	dw $0000
	dw datasize(brr_sample_F02988)-4
	incbin "data/sound/samples/sample_F02988.brr"

;$F02C2F
brr_sample_F02C2F:
	dw $0711
	dw datasize(brr_sample_F02C2F)-4
	incbin "data/sound/samples/sample_F02C2F.brr"

;$F03A17
brr_sample_F03A17:
	dw $0000
	dw datasize(brr_sample_F03A17)-4
	incbin "data/sound/samples/sample_F03A17.brr"

;$F03A5B
brr_sample_F03A5B:
	dw $0000
	dw datasize(brr_sample_F03A5B)-4
	incbin "data/sound/samples/sample_F03A5B.brr"

;$F03B1D
brr_sample_F03B1D:
	dw $0087
	dw datasize(brr_sample_F03B1D)-4
	incbin "data/sound/samples/sample_F03B1D.brr"

;$F03D2B
brr_sample_F03D2B:
	dw $0654
	dw datasize(brr_sample_F03D2B)-4
	incbin "data/sound/samples/sample_F03D2B.brr"

;$F04854
brr_sample_F04854:
	dw $0000
	dw datasize(brr_sample_F04854)-4
	incbin "data/sound/samples/sample_F04854.brr"

;$F057E3
brr_sample_F057E3:
	dw $0000
	dw datasize(brr_sample_F057E3)-4
	incbin "data/sound/samples/sample_F057E3.brr"

;$F05FFD
brr_sample_F05FFD:
	dw $0000
	dw datasize(brr_sample_F05FFD)-4
	incbin "data/sound/samples/sample_F05FFD.brr"

;$F073F1
brr_sample_F073F1:
	dw $0000
	dw datasize(brr_sample_F073F1)-4
	incbin "data/sound/samples/sample_F073F1.brr"

;$F08A2D
brr_sample_F08A2D:
	dw $0000
	dw datasize(brr_sample_F08A2D)-4
	incbin "data/sound/samples/sample_F08A2D.brr"

;$F09BFB
brr_sample_F09BFB:
	dw $0402
	dw datasize(brr_sample_F09BFB)-4
	incbin "data/sound/samples/sample_F09BFB.brr"

;$F0A157
brr_sample_F0A157:
	dw $0000
	dw datasize(brr_sample_F0A157)-4
	incbin "data/sound/samples/sample_F0A157.brr"

;$F0A5FF
brr_sample_F0A5FF:
	dw $069C
	dw datasize(brr_sample_F0A5FF)-4
	incbin "data/sound/samples/sample_F0A5FF.brr"

;$F0AE2B
brr_sample_F0AE2B:
	dw $0000
	dw datasize(brr_sample_F0AE2B)-4
	incbin "data/sound/samples/sample_F0AE2B.brr"

;$F0B2B0
brr_sample_F0B2B0:
	dw $052B
	dw datasize(brr_sample_F0B2B0)-4
	incbin "data/sound/samples/sample_F0B2B0.brr"

;$F0B7FA
brr_sample_F0B7FA:
	dw $0000
	dw datasize(brr_sample_F0B7FA)-4
	incbin "data/sound/samples/sample_F0B7FA.brr"

;$F0BD45
brr_sample_F0BD45:
	dw $0816
	dw datasize(brr_sample_F0BD45)-4
	incbin "data/sound/samples/sample_F0BD45.brr"

;$F0C93E
brr_sample_F0C93E:
	dw $0000
	dw datasize(brr_sample_F0C93E)-4
	incbin "data/sound/samples/sample_F0C93E.brr"

;$F0CD45
brr_sample_F0CD45:
	dw $0C7B
	dw datasize(brr_sample_F0CD45)-4
	incbin "data/sound/samples/sample_F0CD45.brr"

;$F0DC8C
brr_sample_F0DC8C:
	dw $0000
	dw datasize(brr_sample_F0DC8C)-4
	incbin "data/sound/samples/sample_F0DC8C.brr"

;$F0F65E
brr_sample_F0F65E:
	dw $0000
	dw datasize(brr_sample_F0F65E)-4
	incbin "data/sound/samples/sample_F0F65E.brr"

;$F1078A
brr_sample_F1078A:
	dw $0000
	dw datasize(brr_sample_F1078A)-4
	incbin "data/sound/samples/sample_F1078A.brr"

;$F10F26
brr_sample_F10F26:
	dw $0000
	dw datasize(brr_sample_F10F26)-4
	incbin "data/sound/samples/sample_F10F26.brr"

;$F117C7
brr_sample_F117C7:
	dw $0001
	dw datasize(brr_sample_F117C7)-4
	incbin "data/sound/samples/sample_F117C7.brr"

;$F11EEE
brr_sample_F11EEE:
	dw $0000
	dw datasize(brr_sample_F11EEE)-4
	incbin "data/sound/samples/sample_F11EEE.brr"

;$F11F0D
brr_sample_F11F0D:
	dw $0000
	dw datasize(brr_sample_F11F0D)-4
	incbin "data/sound/samples/sample_F11F0D.brr"

;$F12A9A
brr_sample_F12A9A:
	dw $0000
	dw datasize(brr_sample_F12A9A)-4
	incbin "data/sound/samples/sample_F12A9A.brr"

;$F133B1
brr_sample_F133B1:
	dw $0603
	dw datasize(brr_sample_F133B1)-4
	incbin "data/sound/samples/sample_F133B1.brr"

;$F139DC
brr_sample_F139DC:
	dw $054F
	dw datasize(brr_sample_F139DC)-4
	incbin "data/sound/samples/sample_F139DC.brr"

;$F14B98
brr_sample_F14B98:
	dw $01EF
	dw datasize(brr_sample_F14B98)-4
	incbin "data/sound/samples/sample_F14B98.brr"

;$F14DA6
brr_sample_F14DA6:
	dw $0000
	dw datasize(brr_sample_F14DA6)-4
	incbin "data/sound/samples/sample_F14DA6.brr"

;$F15542
brr_sample_F15542:
	dw $06AE
	dw datasize(brr_sample_F15542)-4
	incbin "data/sound/samples/sample_F15542.brr"

;$F15C0F
brr_sample_F15C0F:
	dw $0000
	dw datasize(brr_sample_F15C0F)-4
	incbin "data/sound/samples/sample_F15C0F.brr"

;$F1663C
brr_sample_F1663C:
	dw $0000
	dw datasize(brr_sample_F1663C)-4
	incbin "data/sound/samples/sample_F1663C.brr"

;$F16F1C
brr_sample_F16F1C:
	dw $0A8C
	dw datasize(brr_sample_F16F1C)-4
	incbin "data/sound/samples/sample_F16F1C.brr"

;$F179D9
brr_sample_F179D9:
	dw $0603
	dw datasize(brr_sample_F179D9)-4
	incbin "data/sound/samples/sample_F179D9.brr"

;$F18004
brr_sample_F18004:
	dw $065D
	dw datasize(brr_sample_F18004)-4
	incbin "data/sound/samples/sample_F18004.brr"

;$F186E4
brr_sample_F186E4:
	dw $0000
	dw datasize(brr_sample_F186E4)-4
	incbin "data/sound/samples/sample_F186E4.brr"

;$F192E5
brr_sample_F192E5:
	dw $0000
	dw datasize(brr_sample_F192E5)-4
	incbin "data/sound/samples/sample_F192E5.brr"

;$F19304
brr_sample_F19304:
	dw $0000
	dw datasize(brr_sample_F19304)-4
	incbin "data/sound/samples/sample_F19304.brr"

;$F19311
brr_sample_F19311:
	dw $0000
	dw datasize(brr_sample_F19311)-4
	incbin "data/sound/samples/sample_F19311.brr"

;$F1946B
brr_sample_F1946B:
	dw $0912
	dw datasize(brr_sample_F1946B)-4
	incbin "data/sound/samples/sample_F1946B.brr"

;$F1A225
brr_sample_F1A225:
	dw $0000
	dw datasize(brr_sample_F1A225)-4
	incbin "data/sound/samples/sample_F1A225.brr"

;$F1A811
brr_sample_F1A811:
	dw $0000
	dw datasize(brr_sample_F1A811)-4
	incbin "data/sound/samples/sample_F1A811.brr"

;$F1AD5B
brr_sample_F1AD5B:
	dw $0000
	dw datasize(brr_sample_F1AD5B)-4
	incbin "data/sound/samples/sample_F1AD5B.brr"

;$F1B55A
brr_sample_F1B55A:
	dw $0000
	dw datasize(brr_sample_F1B55A)-4
	incbin "data/sound/samples/sample_F1B55A.brr"

;$F1B795
brr_sample_F1B795:
	dw $0000
	dw datasize(brr_sample_F1B795)-4
	incbin "data/sound/samples/sample_F1B795.brr"

;$F1B9D0
brr_sample_F1B9D0:
	dw $0000
	dw datasize(brr_sample_F1B9D0)-4
	incbin "data/sound/samples/sample_F1B9D0.brr"

;$F1BC0B
brr_sample_F1BC0B:
	dw $0000
	dw datasize(brr_sample_F1BC0B)-4
	incbin "data/sound/samples/sample_F1BC0B.brr"

;$F1C03F
brr_sample_F1C03F:
	dw $0708
	dw datasize(brr_sample_F1C03F)-4
	incbin "data/sound/samples/sample_F1C03F.brr"

;$F1C916
brr_sample_F1C916:
	dw $0000
	dw datasize(brr_sample_F1C916)-4
	incbin "data/sound/samples/sample_F1C916.brr"

;$F1CC05
brr_sample_F1CC05:
	dw $0000
	dw datasize(brr_sample_F1CC05)-4
	incbin "data/sound/samples/sample_F1CC05.brr"

;$F1CD4E
brr_sample_F1CD4E:
	dw $0000
	dw datasize(brr_sample_F1CD4E)-4
	incbin "data/sound/samples/sample_F1CD4E.brr"

;$F1CFF6
brr_sample_F1CFF6:
	dw $0000
	dw datasize(brr_sample_F1CFF6)-4
	incbin "data/sound/samples/sample_F1CFF6.brr"

;$F1D190
brr_sample_F1D190:
	dw $0372
	dw datasize(brr_sample_F1D190)-4
	incbin "data/sound/samples/sample_F1D190.brr"

;$F1D68A
brr_sample_F1D68A:
	dw $0000
	dw datasize(brr_sample_F1D68A)-4
	incbin "data/sound/samples/sample_F1D68A.brr"

;$F1DF7C
brr_sample_F1DF7C:
	dw $0000
	dw datasize(brr_sample_F1DF7C)-4
	incbin "data/sound/samples/sample_F1DF7C.brr"

;$F1E973
brr_sample_F1E973:
	dw $0000
	dw datasize(brr_sample_F1E973)-4
	incbin "data/sound/samples/sample_F1E973.brr"

;$F1EDA6
brr_sample_F1EDA6:
	dw $03D5
	dw datasize(brr_sample_F1EDA6)-4
	incbin "data/sound/samples/sample_F1EDA6.brr"

;$F1F188
brr_sample_F1F188:
	dw $0000
	dw datasize(brr_sample_F1F188)-4
	incbin "data/sound/samples/sample_F1F188.brr"

;$F1F195
brr_sample_F1F195:
	dw $0000
	dw datasize(brr_sample_F1F195)-4
	incbin "data/sound/samples/sample_F1F195.brr"

;$F1F337
brr_sample_F1F337:
	dw $037B
	dw datasize(brr_sample_F1F337)-4
	incbin "data/sound/samples/sample_F1F337.brr"

;$F1F92C
brr_sample_F1F92C:
	dw $0000
	dw datasize(brr_sample_F1F92C)-4
	incbin "data/sound/samples/sample_F1F92C.brr"

;$F20080
brr_sample_F20080:
	dw $0000
	dw datasize(brr_sample_F20080)-4
	incbin "data/sound/samples/sample_F20080.brr"

;$F202BB
brr_sample_F202BB:
	dw $13E6
	dw datasize(brr_sample_F202BB)-4
	incbin "data/sound/samples/sample_F202BB.brr"

;$F218D4
brr_sample_F218D4:
	dw $0000
	dw datasize(brr_sample_F218D4)-4
	incbin "data/sound/samples/sample_F218D4.brr"

;$F21E5D
brr_sample_F21E5D:
	dw $01C2
	dw datasize(brr_sample_F21E5D)-4
	incbin "data/sound/samples/sample_F21E5D.brr"

;$F22132
brr_sample_F22132:
	dw $0000
	dw datasize(brr_sample_F22132)-4
	incbin "data/sound/samples/sample_F22132.brr"

;$F225B6
brr_sample_F225B6:
	dw $0465
	dw datasize(brr_sample_F225B6)-4
	incbin "data/sound/samples/sample_F225B6.brr"

;$F22C44
brr_sample_F22C44:
	dw $0000
	dw datasize(brr_sample_F22C44)-4
	incbin "data/sound/samples/sample_F22C44.brr"

;$F232D2
brr_sample_F232D2:
	dw $0000
	dw datasize(brr_sample_F232D2)-4
	incbin "data/sound/samples/sample_F232D2.brr"

check bankcross full
	incsrc "data/sound/music/ship_hold_song_data.asm"
	incsrc "data/sound/music/fanfare_song_data.asm"
	incsrc "data/sound/music/ship_deck_2_song_data.asm"
	incsrc "data/sound/music/rescue_kong_song_data.asm"
	incsrc "data/sound/music/game_over_song_data.asm"
	incsrc "data/sound/music/big_boss_song_data.asm"
	incsrc "data/sound/music/castle_song_data.asm"
	incsrc "data/sound/music/haunted_song_data.asm"
	incsrc "data/sound/music/file_select_song_data.asm"
	incsrc "data/sound/music/cranky_song_data.asm"
	incsrc "data/sound/music/ice_song_data.asm"
	incsrc "data/sound/music/jungle_song_data.asm"
	incsrc "data/sound/music/lost_world_song_data.asm"
	incsrc "data/sound/music/rigging_song_data.asm"
	incsrc "data/sound/music/credits_song_data.asm"
	incsrc "data/sound/music/k_rool_song_data.asm"

DATA_F2E691:
namespace APU
	dw song_data, $0000	;Unused placeholder for track $20 (reuses track $0F data instead)
namespace off

DATA_F2E695:
namespace APU
	dw song_data, $0000	;Unused placeholder for track $21 (reuses track $15 data instead)
namespace off

DATA_F2E699:
namespace APU
	dw song_data, $0000	;Unused placeholder for track $22 (reuses track $0F data instead)
namespace off

DATA_F2E69D:
namespace APU
	dw song_data, $0000	;Unused placeholder for track $23 (reuses track $0F data instead)
namespace off

	incsrc "data/sound/music/secret_ending_song_data.asm"

DATA_F2E724:
namespace APU
	dw song_data, $0000	;Unused placeholder for track $25 (reuses track $0F data instead)
namespace off

DATA_F2E728:
namespace APU
	dw song_data, $0000	;Placeholder for track $26
namespace off

DATA_F2E72C:
namespace APU
	dw song_data, $0000	;Placeholder for track $27
namespace off

	incsrc "data/sound/sound_effects/global_sfx_data.asm"
	incsrc "data/sound/sound_effects/dummy_sfx_data.asm"
	incsrc "data/sound/sound_effects/roller_coaster_sfx_data.asm"
	incsrc "data/sound/sound_effects/ship_ice_ending_sfx_data.asm"
	incsrc "data/sound/sound_effects/swamp_forest_mine_brambles_hive_sfx_data.asm"
	incsrc "data/sound/sound_effects/unused_krockhead_sfx_data.asm"
	incsrc "data/sound/sound_effects/jungle_sfx_data.asm"
	incsrc "data/sound/sound_effects/boss_1_sfx_data.asm"
	incsrc "data/sound/sound_effects/lava_castle_boss_2_sfx_data.asm"

DATA_F2FB66:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $08
namespace off

DATA_F2FB6A:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $09
namespace off

DATA_F2FB6E:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0A
namespace off

DATA_F2FB72:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0B
namespace off

DATA_F2FB76:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0C
namespace off

DATA_F2FB7A:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0D
namespace off

DATA_F2FB7E:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0E
namespace off

DATA_F2FB82:
namespace APU
	dw track_sfx_data, $0002		;Unused placeholder for song-specific sound effect set $0F
namespace off
