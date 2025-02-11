;ex sprite handlers

;SPRITE SPAWNING

;handle sprite spawning
ex_spawn_script_check:
	CMP #!ex_sprite_spawn_id_start
	BCS .ex_spawn_script
;normal_spawn_script
	TAX
	LDA.l DATA_FBE800,x
	TAY
	LDX alternate_sprite
	JSL CODE_BB8474
	RTL
	
.ex_spawn_script
	SEC
	SBC #!ex_sprite_spawn_id_start
	TAX
	LDA.l ex_sprite_spawn_script_table,x
	TAY
	LDX alternate_sprite
	JSL .set_ex_spawn_bank
	RTL
	
.set_ex_spawn_bank
	PHB
	%pea_shift_dbr(ex_sprite_spawn_script_data)
	PLB
	PLB
	JML parse_initscript_entry



;SPRITE CONSTANTS

;handle sprite constants
ex_sprite_constants_handler:
	PHA
	CMP #!ex_sprite_id_start	;\ If sprite id is in ex range use alternate bank for constants	
	BCS .use_ex_constants		;/
	LDA #$00B3			;\ Sprite main bank
	STA $05AB			;/
	LDA #$00FF			;\ Sprite constants bank
	STA $90				;/
	PLA
	RTL
	
.use_ex_constants
	LDA #$00B3			;\ Sprite main bank
	STA $05AB			;/
	LDA #<:ex_sprite_constants_data	;\ Sprite constants bank
	STA $90				;/
	PLA
	RTL

ex_sprite_constants_handler_2:
	TAX
	CMP #!ex_sprite_id_start	;\ If sprite id is in ex range use alternate bank for constants	
	BCS .use_ex_constants		;/
	LDA #$00B3			;\ Sprite main bank
	STA $05AB			;/
	LDA #$00FF			;\ Sprite constants bank
	STA $90				;/
	LDA $0A36
	RTL

.use_ex_constants
	LDA #$00B3			;\ Sprite main bank
	STA $05AB			;/
	LDA #<:ex_sprite_constants_data	;\ Sprite constants bank
	STA $90				;/
	LDA $0A36
	RTL

ex_sprite_constants_handler_3:
	LDA #$00FF
	STA $90
	JSL CODE_B8805E			;> Process interactions
	RTL

ex_sprite_constants_handler_4:
	LDX $0A01,y
	STX current_sprite
	LDA $00,x
	CMP #!ex_sprite_id_start	;\ If sprite id is in ex range use alternate bank for constants	
	BCS .use_ex_constants		;/	
	LDA #$00FF			;\ Sprite constants bank
	STA $90				;/
	RTL

.use_ex_constants
	LDA #<:ex_sprite_constants_data	;\ Sprite constants bank
	STA $90				;/
	RTL

%hook("use_vanilla_constants")
use_vanilla_constants:
	LDA #$00FF
	STA $90
	RTL

%hook("use_ex_constants")
use_ex_constants:
	LDA #<:ex_sprite_constants_data
	STA $90
	RTL



;SPRITE MAIN

;ex main handler
ex_sprite_main_handler:
	STX current_sprite		;If the sprite was found, preserve the index
	CMP #!ex_sprite_id_start
	BCS .ex_sprite_main
;normal_sprite_main
	TAX
	RTL

.ex_sprite_main
	SEC
	SBC #!ex_sprite_id_start
	TAX
	BRA ex_sprite_main_return_capture

ex_sprite_extra_word_handler:
	CPX #!ex_sprite_id_start
	BCS .is_ex_sprite
;normal sprite
	LDA.l DATA_B3834A,x
	RTL

.is_ex_sprite:
	LDA.l ex_sprite_main_table+2,x
	RTL


ex_sprite_handler_2:
	TXA
	JSL ex_sprite_constants_handler
	CMP #!ex_sprite_id_start
	BCS .ex_sprite_main
;normal_sprite_main
	RTL

.ex_sprite_main:
	TXA
	SEC
	SBC #!ex_sprite_id_start
	TAX
ex_sprite_main_return_capture:
	PLA					;remove last call from stack (we're never going back to B3)
	PLB					;this might be dangerous (probably not though since this never runs for vanilla sprites)
	%return_long(ex_sprite_main_hop)
	RTL					;> Return to sprite main hop



;SPRITE GRAPHICS

ex_graphics_handler:
	TXA
	CMP #!ex_sprite_graphics_id_start
	BCS .is_ex_graphic
	LDA.l DATA_BC8000,x
	STA $40
	LDA.l DATA_BC8002,x
	STA $42
	RTL

.is_ex_graphic
	PHA
	SEC
	SBC #!ex_sprite_graphics_id_start
	TAX
	LDA.l ex_sprite_graphics_table,x
	STA $40
	LDA.l ex_sprite_graphics_table+2,x
	STA $42
	PLX
	RTL


ex_graphics_handler_2:
	TXA
	CMP #!ex_sprite_graphics_id_start
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
	SBC #!ex_sprite_graphics_id_start
	TAX
	LDA.l ex_sprite_graphics_table,x
	STA $40
	INC A
	STA $44
	LDA.l ex_sprite_graphics_table+2,x
	STA $42
	STA $46
	PLX
	RTL

;SPRITE HITBOXES

ex_hitbox_handler:
	CMP #!ex_sprite_graphics_id_start
	BCS .is_ex_hitbox
;normal_hitbox
	LSR A
	PHX
	TAX
	LDA.l DATA_BCB600,x
	PLX
	PHA
	LDA #<:DATA_BCB600<<8
	PHA
	PLB
	PLB
	PLA
	RTL

.is_ex_hitbox
	SEC
	SBC #!ex_sprite_graphics_id_start
	LSR A
	PHX
	TAX
	LDA.l ex_sprite_hitbox_table,x
	PLX
	PHA
	LDA #<:ex_sprite_hitbox_data<<8		;new fix: changed from table bank to data bank
	PHA
	PLB
	PLB
	PLA
	RTL


ex_hitbox_handler_2:
	CMP #!ex_sprite_graphics_id_start
	BCS .is_ex_hitbox
;normal_hitbox
	LSR A
	PHX
	TAX
	LDA.l DATA_BCB600,x
	PLX
	TAY
	PHA
	LDA #<:DATA_BCB600<<8
	PHA
	PLB
	PLB
	PLA
	RTL	


.is_ex_hitbox
	SEC
	SBC #!ex_sprite_graphics_id_start
	LSR A
	PHX
	TAX
	LDA.l ex_sprite_hitbox_table,x
	PLX
	TAY
	PHA
	LDA #<:ex_sprite_hitbox_data<<8		;new fix: changed from table bank to data bank
	PHA
	PLB
	PLB
	PLA
	RTL	



;SPRITE ANIMATION

;ex animation handler
ex_animation_handler:
	PHA				;preserve animation id
	SEC
	SBC #!ex_sprite_animation_id_start
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
	LDA.l ex_sprite_animation_table+2,x
	STA $26
	LDA.l ex_sprite_animation_table,x
	TYX
	PHB
	%pea_shift_dbr(ex_sprite_animation_data)		;new fix: changed from table bank to data bank
	PLB
	PLB
	JML ex_animation_handler_return


ex_animation_handler_2:
	PHA				;preserve animation id
	SEC
	SBC #!ex_sprite_animation_id_start
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
	LDA.l ex_sprite_animation_table,x
	TYX
	RTL

ex_animation_bank_handler:
	LDA $36,x
	CMP #!ex_sprite_animation_id_start
	BCS .ex_animation
;normal_animation
	PHB
	%pea_shift_dbr(DATA_F90000)
	PLB
	PLB
	JML ex_animation_bank_handler_return

.ex_animation:
	PHB
	%pea_shift_dbr(ex_sprite_animation_data)
	PLB
	PLB
	JML ex_animation_bank_handler_return

ex_anim_code_handler:
	%return_long(ex_sprite_animation_return_handler)
	JML ex_sprite_animation_code_hop

ex_sprite_animation_return_handler:	
	PLX
	SEP #$20
	LDA #$B9
	PHA
	REP #$20
	PHX
	RTL


;SPRITE PALETTE

ex_palette_handler:
	CMP #!ex_sprite_palette_id_start	;\
	BCS .is_ex_palette			; |
	ASL					; |\
	TAX					; | |
	LDA.l DATA_FD5FEE,x			; | | Get requested palette address from id
	STA requested_palette_address		; |/ Save requested palette address
	LDA $052B				; |\
	AND #$0010 				; | | Check if level is using the darkness effect
	BEQ .no_darkness			; |/
	LDA #$007F  				; | If yes, use 7F as palette bank for inverted copies
	BRA +
.no_darkness				
	LDA #$00FD				; |\ Use vanilla palette bank
+:						; | |
	STA requested_palette_bank		; |/ Save requested palette bank
	BRA handle_palette_loading		;/


.is_ex_palette
	SEC
	SBC #!ex_sprite_palette_id_start
	ASL					;\ \
	TAX					; | |
	LDA.l ex_sprite_palette_table,x		; | | Get requested palette address from id
	STA requested_palette_address		; |/ Save requested palette address
	LDA #<:ex_sprite_palette_data		; |\ Use ex palette bank
	STA requested_palette_bank		; |/ Save requested palette bank
handle_palette_loading:
	LDX #$0000				; |> Initialize palette slot index
.next_slot					; |
	LDA loaded_palette_addresses,x		; |\
	BEQ .free_slot_found			; |/ If current slot is free
	LDA loaded_palette_banks,x		; |\
	CMP requested_palette_bank		; | | If banks dont match
	BNE .slot_not_free			; |/ Slots wont match, dont bother checking address
	LDA loaded_palette_addresses,x		; |
	CMP requested_palette_address		; |\ Else
	BEQ .existing_palette_found		; |/ If current slot is requested palette
.slot_not_free					; |
	INX					; |\ Slot isn't useable, move to next slot
	INX					; |/
	CPX #$0010				; |\
	BNE .next_slot				; |/ If not end of slots check next slot
	LDX #$0000				; |> Use the palette in slot 0 instead
	INC loaded_palette_ref_counts,x		; |> Update reference count
	TXA					; |
	SEC					; |\ Tell the caller the palette failed to load
	RTL					;/ /


.existing_palette_found
	LDA loaded_palette_ref_counts,x		;\ \
	BMI .slot_not_free			; |/ If slot isn't allowed to share
	BRA .palette_found_home			;/


.free_slot_found
	STX $5E					;\> Preserve potential free slot
	BRA .scan_ahead_for_existing_palette	;/


.next_slot_after_free
	LDA loaded_palette_banks,x		;\ \
	CMP requested_palette_bank		; |/ If banks dont match
	BNE .scan_ahead_for_existing_palette	; |
	LDA loaded_palette_addresses,x		; |
	CMP requested_palette_address		; |
	BEQ .existing_palette_found_after_free	; |
.scan_ahead_for_existing_palette		; |
	INX					; |
	INX					; |
	CPX #$0010				; |
	BNE .next_slot_after_free		; |
	PLA					; |\
	PLB					; |/ Pull return address from stack
	JML CODE_BB8AF6				;/> No matches found, create a new palette in free slot


.existing_palette_found_after_free
	LDA loaded_palette_ref_counts,x		;\
	BMI .scan_ahead_for_existing_palette	; |
.palette_found_home				; |
	INC loaded_palette_ref_counts,x		; |> Add reference to existing palette slot
	TXA					; |\
	XBA					; |/ Return palette slot
	CLC					; |\ Return palette load success
	RTL					;/ /
