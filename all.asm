!exhi = 1
!bypass_anti_piracy = 1
!ex_patch = 1
!ex_patch_version = 3

if !exhi == 1
	exhirom
else
	hirom
endif

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

if !ex_patch == 1
	incsrc "ex_patch/ex_defines.asm"
endif


check bankcross half
org $C00000
	incsrc bank_C0.asm
org $808000
	incsrc bank_80.asm

check bankcross off
org $C10000
	incsrc bank_C1.asm
;org $C20000
	incsrc bank_C2.asm
;org $C30000
	incsrc bank_C3.asm
;org $C40000
	incsrc bank_C4.asm
;org $C50000
	incsrc bank_C5.asm
;org $C60000
	incsrc bank_C6.asm
;org $C70000
	incsrc bank_C7.asm
;org $C80000
	incsrc bank_C8.asm
;org $C90000
	incsrc bank_C9.asm
;org $CA0000
	incsrc bank_CA.asm
;org $CB0000
	incsrc bank_CB.asm
;org $CC0000
	incsrc bank_CC.asm
;org $CD0000
	incsrc bank_CD.asm
;org $CE0000
	incsrc bank_CE.asm
;org $CF0000
	incsrc bank_CF.asm
;org $D00000
	incsrc bank_D0.asm
;org $D10000
	incsrc bank_D1.asm
;org $D20000
	incsrc bank_D2.asm
;org $D30000
	incsrc bank_D3.asm
;org $D40000
	incsrc bank_D4.asm
;org $D50000
	incsrc bank_D5.asm
;org $D60000
	incsrc bank_D6.asm
;org $D70000
	incsrc bank_D7.asm
;org $D80000
	incsrc bank_D8.asm
;org $D90000
	incsrc bank_D9.asm
;org $DA0000
	incsrc bank_DA.asm
;org $DB0000
	incsrc bank_DB.asm
;org $DC0000
	incsrc bank_DC.asm
;org $DD0000
	incsrc bank_DD.asm
;org $DE0000
	incsrc bank_DE.asm

check bankcross full
;org $DEA932
	incsrc graphics_part_1.asm
org $EE0000
	incsrc sound.asm	;sound

check bankcross half
org $F30000
	incsrc bank_F3.asm	;graphics_part_2
org $B38000
	incsrc bank_B3.asm	;sprite main code
org $F40000
	incsrc bank_F4.asm	;graphics_part_3
org $B48000
	incsrc bank_B4.asm
org $F50000
	incsrc bank_F5.asm	;graphics_part_4
org $B58000
	incsrc bank_B5.asm
org $F60000
	incsrc bank_F6.asm	;graphics_part_5
org $B68000
	incsrc bank_B6.asm	;bosses

check bankcross full
org $F70000
	incsrc bank_F7.asm	;text

org $F80000
check bankcross half
	incsrc bank_F8.asm	;graphics_part_6
org $B88000
	incsrc bank_B8.asm

check bankcross full
org $F90000
	incsrc bank_F9.asm	;animation/secret ending layer 2
org $B9D000
	incsrc bank_B9.asm

check bankcross half
org $FA0000
	incsrc bank_FA.asm	;graphics_part_7
org $BA8000
	incsrc bank_BA.asm
org $FB0000
	incsrc bank_FB.asm	;graphics_part_8
org $BB8000
	incsrc bank_BB.asm
org $FC0000
	incsrc bank_FC.asm
org $BC8000
	incsrc bank_BC.asm

check bankcross full
org $FD0000
	incsrc bank_FD.asm
org $FE0000
	incsrc bank_FE.asm
org $BEB800
	incsrc bank_BE.asm
org $FF0000
	incsrc bank_FF.asm

;6,112 KB
if !exhi == 1
	if !ex_patch == 1
		org $400000
	check bankcross half
		org $008000
			incsrc "ex_patch/ex_metadata_handler.asm"
			
			NMI_start_force_bank_80:
				JML NMI_start
			
			IRQ_start_force_bank_80:
				JML IRQ_start
			
			RESET_start_force_bank_80:
				JML RESET_start
			
			incsrc "ex_patch/custom_level_code_handlers.asm"
			
			warnpc $00FFB0 : org $00FFB0 : incsrc "rom_header.asm"

		org $410000
			ex_sprite_animation_table: : fillbyte $00 : fill !ex_sprite_animation_table_size
			ex_sprite_graphics_table: : fillbyte $00 : fill !ex_sprite_graphics_table_size
			ex_sprite_hitbox_table: : fillbyte $00 : fill !ex_sprite_hitbox_table_size
			ex_sprite_palette_table: : fillbyte $00 : fill !ex_sprite_palette_table_size
			
		org $028000
			ex_sprite_main_hop:
				JMP.w (ex_sprite_main_table,x)
			
			%hook("ex_sprite_state_handler")
			ex_sprite_state_handler:
				PHK					;\
				PLB					; |
				LDY current_sprite			; |
				LDA $0054,y				; |
				STA $8E					; |
				LDA $002E,y				; |
				AND #$007F				; |
				ASL A					; |
				SEC					; |
				ADC $01,s				; |
				TAX					; |
				PLA					; |
				LDA $002F,y				; |
				AND #$00FF				; |
				ASL A					; |
				JMP ($0000,x)				;/


			%hook("ex_sprite_state_safe_handler")
			ex_sprite_state_safe_handler:
				PHK			;Set current data bank
				PLB			;
				LDY current_sprite	;Get current sprite being processed
				LDA $0054,y		;Use current sprites constants
				STA $8E			;
				LDA $002E,y		;get sprite state
				AND #$007F		
				STA $32			
				LDA #$0000		
				SEC			
				ADC $01,s		
				TAX			
				LDA $32			
				CMP $0000,x		
				BCS .invalid_state	
				ASL A			
				SEC			
				ADC $01,s		;add address from top of stack to get our index
				ADC #$0002		
				TAX			
				PLA			;pull address out of stack
				LDA $002F,y		
				AND #$00FF		
				ASL A			
				JMP ($0000,x)		;jump to sprite state code

			.invalid_state			
				LDA #$0000		
				STA $002E,y		
				PLA			
				JML [$05A9]		;return from sprite code
			
			ex_sprite_main_table: : fillbyte $00 : fill !ex_sprite_main_table_size
			ex_sprite_main_data:
		
		org $430000
			ex_sprite_spawn_script_table: : fillbyte $00 : fill !ex_sprite_spawn_script_table_size
		org $440000
			ex_sprite_spawn_script_data:
		org $450000
			default_defeated_constants:
				dw $0070
				dw $0C00
				dw $0008
				dw $0040
			ex_sprite_constants_data:

		org $068000
			ex_sprite_hitbox_data:
		org $470000
			db $00
			ex_sprite_palette_data:
		org $480000
			ex_sprite_animation_data:
		org $098000
			ex_sprite_animation_code_hop:
				JMP ($0026)
			
			ex_sprite_animation_code:
		org $4A0000
			ex_sprite_graphics_data:
		
		org $5FFFFF : db $00
		
;		org $018000
;			incsrc "ex_patch/custom_level_code_handlers.asm" : padbyte $00 : pad $020000
;		org $028000
;			incsrc "ex_patch/ex_sprite_handler.asm" : padbyte $00 : pad $030000
;		org $038000
;			incsrc "ex_patch/ex_spawn_handler.asm" : padbyte $00 : pad $040000
;		
;	check bankcross full
;		org $440000
;			ex_spawn_scripts: : padbyte $00 : pad $450000
;		org $450000
;			ex_sprite_constants: : padbyte $00 : pad $460000
;		org $460000
;			;incsrc "ex_patch/ex_animation_data.asm" : padbyte $00 : pad $070000
;	
;	;check bankcross half
;		org $078000
;			;incsrc "ex_patch/ex_animation_handler.asm"
;			ex_animation_code: : padbyte $00 : pad $0A0000
;		org $088000
;			;incsrc "ex_patch/ex_hitbox_handler.asm" : padbyte $00 : pad $090000
;	
;	;check bankcross full
;		org $490000
;			;incsrc "ex_patch/ex_palette_data.asm"
;			padbyte $00 : pad $4A0000
;		
;	;check bankcross half
;		org $0A8000
;			;incsrc "ex_patch/ex_palette_handler.asm"
;			;incsrc "ex_patch/ex_graphics_handler.asm"
;			
;		org $4B0000
;			ex_graphics:
;		org $5FFFFF
;			db $00
	endif

;7,968 KB
;check bankcross full
;	org $600000
;		incsrc "exhi/bank_60.asm"
;	org $610000
;		incsrc "exhi/bank_61.asm"
;	org $620000
;		incsrc "exhi/bank_62.asm"
;	org $630000
;		incsrc "exhi/bank_63.asm"
;	org $640000
;		incsrc "exhi/bank_64.asm"
;	org $650000
;		incsrc "exhi/bank_65.asm"
;	org $660000
;		incsrc "exhi/bank_66.asm"
;	org $670000
;		incsrc "exhi/bank_67.asm"
;	org $680000
;		incsrc "exhi/bank_68.asm"
;	org $690000
;		incsrc "exhi/bank_69.asm"
;	org $6A0000
;		incsrc "exhi/bank_6A.asm"
;	org $6B0000
;		incsrc "exhi/bank_6B.asm"
;	org $6C0000
;		incsrc "exhi/bank_6C.asm"
;	org $6D0000
;		incsrc "exhi/bank_6D.asm"
;	org $6E0000
;		incsrc "exhi/bank_6E.asm"
;	org $6F0000
;		incsrc "exhi/bank_6F.asm"
;	org $700000
;		incsrc "exhi/bank_70.asm"
;	org $710000
;		incsrc "exhi/bank_71.asm"
;	org $720000
;		incsrc "exhi/bank_72.asm"
;	org $730000
;		incsrc "exhi/bank_73.asm"
;	org $740000
;		incsrc "exhi/bank_74.asm"
;	org $750000
;		incsrc "exhi/bank_75.asm"
;	org $760000
;		incsrc "exhi/bank_76.asm"
;	org $770000
;		incsrc "exhi/bank_77.asm"
;	org $780000
;		incsrc "exhi/bank_78.asm"
;	org $790000
;		incsrc "exhi/bank_79.asm"
;	org $7A0000
;		incsrc "exhi/bank_7A.asm"
;	org $7B0000
;		incsrc "exhi/bank_7B.asm"
;	org $7C0000
;		incsrc "exhi/bank_7C.asm"
;	org $7D0000
;		incsrc "exhi/bank_7D.asm"
;
;8,032 KB
;check bankcross half
;	org $3E8000
;		incsrc "exhi/bank_3E.asm"
;	org $3F8000
;		incsrc "exhi/bank_3F.asm"
endif
