
ex_palette_handler:
	CMP #!ex_palette_id_start		;\
	BCS .is_ex_palette			; |
	ASL					; |\
	TAX					; | |
	LDA.l DATA_FD5FEE,x			; | | Get requested palette address from id
	STA requested_palette_address		; |/ Save requested palette address
	LDA #$00FD				; |\ Use vanilla palette bank
	STA requested_palette_bank		; |/ Save requested palette bank
	BRA handle_palette_loading		;/


.is_ex_palette
	SEC
	SBC #!ex_palette_id_start
	ASL					;\ \
	TAX					; | |
	LDA.l ex_palette_table,x		; | | Get requested palette address from id
	STA requested_palette_address		; |/ Save requested palette address
	LDA #<:ex_palette_table			; |\ Use ex palette bank
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
	RTS					;/ /


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
