namespace APU
arch spc700
base audio_core					;	> ARAM address of audio core

init_engine:
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
handle_cpu_data_upload:				;	 |
	MOV X, #$FF				;$04F3   |\
	MOV SPC.DSP_addr, #DSPs.flags		;$04F5   | | Reset DSP flags
	MOV SPC.DSP_data, X			;$04F8   |/
	MOV SPC.DSP_addr, #DSPs.echo_delay	;$04FA   |\ Reset echo delay
	MOV SPC.DSP_data, #$00			;$04FD   | |
	MOV SPC.DSP_addr, #DSPs.echo_buf_addr	;$0500   | | Reset echo buffer address
	MOV SPC.DSP_data, X			;$0503   |/
	MOV $04B7, X				;$0505   |
	MOV X, cpu_transaction			;$0508   |
.wait_for_cpu_data_destination			;	 |
	CMP X, SPC.CPUIO1			;$050A   |\
	BNE .wait_for_cpu_data_destination	;$050C   |/ If the CPU didnt send an ARAM destination yet then wait
	MOVW YA, SPC.CPUIO2			;$050E   |> Read ARAM destination address sent by the CPU into Y and A
	MOV SPC.CPUIO1, X			;$0510   |\ Update transaction id (acknowledge APU has the destination)
	INC X					;$0512   |/
	MOV .first_byte_write_instruction+1, A	;$0513   |\ Patch address of 2 MOV instructions to the ARAM address...
	MOV .second_byte_write_instruction+1, A	;$0516   | | That the CPU wants to write to
	MOV .first_byte_write_instruction+2, Y	;$0519   | | This is done twice because the CPU sends 2 bytes at a time
	MOV .second_byte_write_instruction+2, Y	;$051C   |/
.wait_for_cpu_data_size				;	 |
	CMP X, SPC.CPUIO1			;$051F   |\
	BNE .wait_for_cpu_data_size		;$0521   |/ If the CPU didnt send data size yet then wait until it does
	MOVW YA, SPC.CPUIO2			;$0523   |> Read data sent by the CPU into Y and A
	MOV SPC.CPUIO1, X			;$0525   |\ Update transaction id (acknowledge APU has the data size)
	INC X					;$0527   |/
	MOV cpu_upload_size, A			;$0528   |\ Update remaining words
	MOV cpu_upload_size+1, Y		;$052A   |/
	DECW cpu_upload_size			;$052C   |\
	BMI .execute_requested_apu_code		;$052E   |/ If the upload size is 0 the CPU wants the APU to jump
	MOV Y, #$00				;$0530   |> Reset write index since this is a new block of data
.wait_for_cpu_data				;	 |
	CMP X, SPC.CPUIO1			;$0532   |\
	BNE .wait_for_cpu_data			;$0534   |/ If the CPU didnt send any data yet then wait until it does
	MOV A, SPC.CPUIO2			;$0536   |> Read data sent by the CPU into A
.first_byte_write_instruction			;	 |\ Next instruction is dynamically patched with write address
	MOV !null_pointer+Y, A			;$0538   | | Write 1st byte to dynamically patched ARAM destination
	MOV A, SPC.CPUIO3			;$053B   |/ Get 2nd data byte sent by the CPU
	MOV SPC.CPUIO1, X			;$053D   |\ Update the transaction id to tell the CPU we want more data
	INC X					;$053F   | | Increment CPU transaction id
	INC Y					;$0540   |/ Increment write offset
.second_byte_write_instruction			;	 |\ Next instruction is dynamically patched with write address
	MOV !null_pointer+Y, A			;$0541   | | Write 2nd byte to dynamically patched ARAM destination
	INC Y					;$0544   |/ Increment write offset
	BEQ .cross_page_boundary		;$0545   |
.next_word					;	 |
	DECW cpu_upload_size			;$0547   |
	BPL .wait_for_cpu_data			;$0549   |
	JMP .wait_for_cpu_data_destination	;$054B  /

.cross_page_boundary
	INC .first_byte_write_instruction+2	;$054E  \ \ Increment high byte of ARAM destination address directly...
	INC .second_byte_write_instruction+2	;$0551   |/ To effectively move to the next page
	BRA .next_word				;$0554  /

.execute_requested_apu_code
	MOV cpu_transaction, X			;$0556  \> Acknowledge CPU execution request
	MOV X, #$00				;$0558   |
	JMP (.first_byte_write_instruction+1+X)	;$055A  /> Jump to the destination code requested by the CPU


cpu_command_parameter:
	db $00					;	\ CPU command parameters
	dw $D604				;	/

base off
namespace off
arch 65816