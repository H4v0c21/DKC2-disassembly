ex_null_sprite_main:
	JML [$05A9]

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
	PLA				;remove last call from stack (we're never going back to B3)
	PLB				;this might be dangerous (probably not though since this never runs for vanilla sprites)
	JMP (ex_sprite_main_table,x)


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
	PLA				;remove last call from stack (we're never going back to B3)
	PLB				;this might be dangerous (probably not though since this never runs for vanilla sprites)
	TXA
	SEC
	SBC #!ex_sprite_id_start
	TAX
	JMP (ex_sprite_main_table,x)


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


%hook("use_vanilla_constants")
use_vanilla_constants:
	LDA #$00FF
	STA $90
	RTL

%hook("use_ex_constants")
use_ex_constants:
	LDA #<:ex_sprite_constants
	STA $90
	RTL



ex_sprite_main_table:
	dw ex_null_sprite_main, $0000	;id: 0320 ex id: 0000
	dw ex_null_sprite_main, $0000	;id: 0324 ex id: 0004
	dw ex_null_sprite_main, $0000	;id: 0328 ex id: 0008
	dw ex_null_sprite_main, $0000	;id: 032C ex id: 000C
	dw ex_null_sprite_main, $0000	;id: 0330 ex id: 0010
	dw ex_null_sprite_main, $0000	;id: 0334 ex id: 0014
	dw ex_null_sprite_main, $0000	;id: 0338 ex id: 0018
	dw ex_null_sprite_main, $0000	;id: 033C ex id: 001C
	dw ex_null_sprite_main, $0000	;id: 0340 ex id: 0020
	dw ex_null_sprite_main, $0000	;id: 0344 ex id: 0024
	dw ex_null_sprite_main, $0000	;id: 0348 ex id: 0028
	dw ex_null_sprite_main, $0000	;id: 034C ex id: 002C
	dw ex_null_sprite_main, $0000	;id: 0350 ex id: 0030
	dw ex_null_sprite_main, $0000	;id: 0354 ex id: 0034
	dw ex_null_sprite_main, $0000	;id: 0358 ex id: 0038
	dw ex_null_sprite_main, $0000	;id: 035C ex id: 003C
	dw ex_null_sprite_main, $0000	;id: 0360 ex id: 0040
	dw ex_null_sprite_main, $0000	;id: 0364 ex id: 0044
	dw ex_null_sprite_main, $0000	;id: 0368 ex id: 0048
	dw ex_null_sprite_main, $0000	;id: 036C ex id: 004C
	dw ex_null_sprite_main, $0000	;id: 0370 ex id: 0050
	dw ex_null_sprite_main, $0000	;id: 0374 ex id: 0054
	dw ex_null_sprite_main, $0000	;id: 0378 ex id: 0058
	dw ex_null_sprite_main, $0000	;id: 037C ex id: 005C
	dw ex_null_sprite_main, $0000	;id: 0380 ex id: 0060
	dw ex_null_sprite_main, $0000	;id: 0384 ex id: 0064
	dw ex_null_sprite_main, $0000	;id: 0388 ex id: 0068
	dw ex_null_sprite_main, $0000	;id: 038C ex id: 006C
	dw ex_null_sprite_main, $0000	;id: 0390 ex id: 0070
	dw ex_null_sprite_main, $0000	;id: 0394 ex id: 0074
	dw ex_null_sprite_main, $0000	;id: 0398 ex id: 0078
	dw ex_null_sprite_main, $0000	;id: 039C ex id: 007C
	dw ex_null_sprite_main, $0000	;id: 03A0 ex id: 0080
	dw ex_null_sprite_main, $0000	;id: 03A4 ex id: 0084
	dw ex_null_sprite_main, $0000	;id: 03A8 ex id: 0088
	dw ex_null_sprite_main, $0000	;id: 03AC ex id: 008C
	dw ex_null_sprite_main, $0000	;id: 03B0 ex id: 0090
	dw ex_null_sprite_main, $0000	;id: 03B4 ex id: 0094
	dw ex_null_sprite_main, $0000	;id: 03B8 ex id: 0098
	dw ex_null_sprite_main, $0000	;id: 03BC ex id: 009C
	dw ex_null_sprite_main, $0000	;id: 03C0 ex id: 00A0
	dw ex_null_sprite_main, $0000	;id: 03C4 ex id: 00A4
	dw ex_null_sprite_main, $0000	;id: 03C8 ex id: 00A8
	dw ex_null_sprite_main, $0000	;id: 03CC ex id: 00AC
	dw ex_null_sprite_main, $0000	;id: 03D0 ex id: 00B0
	dw ex_null_sprite_main, $0000	;id: 03D4 ex id: 00B4
	dw ex_null_sprite_main, $0000	;id: 03D8 ex id: 00B8
	dw ex_null_sprite_main, $0000	;id: 03DC ex id: 00BC
	dw ex_null_sprite_main, $0000	;id: 03E0 ex id: 00C0
	dw ex_null_sprite_main, $0000	;id: 03E4 ex id: 00C4
	dw ex_null_sprite_main, $0000	;id: 03E8 ex id: 00C8
	dw ex_null_sprite_main, $0000	;id: 03EC ex id: 00CC
	dw ex_null_sprite_main, $0000	;id: 03F0 ex id: 00D0
	dw ex_null_sprite_main, $0000	;id: 03F4 ex id: 00D4
	dw ex_null_sprite_main, $0000	;id: 03F8 ex id: 00D8
	dw ex_null_sprite_main, $0000	;id: 03FC ex id: 00DC
	dw ex_null_sprite_main, $0000	;id: 0400 ex id: 00E0
	dw ex_null_sprite_main, $0000	;id: 0404 ex id: 00E4
	dw ex_null_sprite_main, $0000	;id: 0408 ex id: 00E8
	dw ex_null_sprite_main, $0000	;id: 040C ex id: 00EC
	dw ex_null_sprite_main, $0000	;id: 0410 ex id: 00F0
	dw ex_null_sprite_main, $0000	;id: 0414 ex id: 00F4
	dw ex_null_sprite_main, $0000	;id: 0418 ex id: 00F8
	dw ex_null_sprite_main, $0000	;id: 041C ex id: 00FC
	dw ex_null_sprite_main, $0000	;id: 0420 ex id: 0100
	dw ex_null_sprite_main, $0000	;id: 0424 ex id: 0104
	dw ex_null_sprite_main, $0000	;id: 0428 ex id: 0108
	dw ex_null_sprite_main, $0000	;id: 042C ex id: 010C
	dw ex_null_sprite_main, $0000	;id: 0430 ex id: 0110
	dw ex_null_sprite_main, $0000	;id: 0434 ex id: 0114
	dw ex_null_sprite_main, $0000	;id: 0438 ex id: 0118
	dw ex_null_sprite_main, $0000	;id: 043C ex id: 011C
	dw ex_null_sprite_main, $0000	;id: 0440 ex id: 0120
	dw ex_null_sprite_main, $0000	;id: 0444 ex id: 0124
	dw ex_null_sprite_main, $0000	;id: 0448 ex id: 0128
	dw ex_null_sprite_main, $0000	;id: 044C ex id: 012C
	dw ex_null_sprite_main, $0000	;id: 0450 ex id: 0130
	dw ex_null_sprite_main, $0000	;id: 0454 ex id: 0134
	dw ex_null_sprite_main, $0000	;id: 0458 ex id: 0138
	dw ex_null_sprite_main, $0000	;id: 045C ex id: 013C
	dw ex_null_sprite_main, $0000	;id: 0460 ex id: 0140
	dw ex_null_sprite_main, $0000	;id: 0464 ex id: 0144
	dw ex_null_sprite_main, $0000	;id: 0468 ex id: 0148
	dw ex_null_sprite_main, $0000	;id: 046C ex id: 014C
	dw ex_null_sprite_main, $0000	;id: 0470 ex id: 0150
	dw ex_null_sprite_main, $0000	;id: 0474 ex id: 0154
	dw ex_null_sprite_main, $0000	;id: 0478 ex id: 0158
	dw ex_null_sprite_main, $0000	;id: 047C ex id: 015C
	dw ex_null_sprite_main, $0000	;id: 0480 ex id: 0160
	dw ex_null_sprite_main, $0000	;id: 0484 ex id: 0164
	dw ex_null_sprite_main, $0000	;id: 0488 ex id: 0168
	dw ex_null_sprite_main, $0000	;id: 048C ex id: 016C
	dw ex_null_sprite_main, $0000	;id: 0490 ex id: 0170
	dw ex_null_sprite_main, $0000	;id: 0494 ex id: 0174
	dw ex_null_sprite_main, $0000	;id: 0498 ex id: 0178
	dw ex_null_sprite_main, $0000	;id: 049C ex id: 017C
	dw ex_null_sprite_main, $0000	;id: 04A0 ex id: 0180
	dw ex_null_sprite_main, $0000	;id: 04A4 ex id: 0184
	dw ex_null_sprite_main, $0000	;id: 04A8 ex id: 0188
	dw ex_null_sprite_main, $0000	;id: 04AC ex id: 018C
	dw ex_null_sprite_main, $0000	;id: 04B0 ex id: 0190
	dw ex_null_sprite_main, $0000	;id: 04B4 ex id: 0194
	dw ex_null_sprite_main, $0000	;id: 04B8 ex id: 0198
	dw ex_null_sprite_main, $0000	;id: 04BC ex id: 019C
	dw ex_null_sprite_main, $0000	;id: 04C0 ex id: 01A0
	dw ex_null_sprite_main, $0000	;id: 04C4 ex id: 01A4
	dw ex_null_sprite_main, $0000	;id: 04C8 ex id: 01A8
	dw ex_null_sprite_main, $0000	;id: 04CC ex id: 01AC
	dw ex_null_sprite_main, $0000	;id: 04D0 ex id: 01B0
	dw ex_null_sprite_main, $0000	;id: 04D4 ex id: 01B4
	dw ex_null_sprite_main, $0000	;id: 04D8 ex id: 01B8
	dw ex_null_sprite_main, $0000	;id: 04DC ex id: 01BC
	dw ex_null_sprite_main, $0000	;id: 04E0 ex id: 01C0
	dw ex_null_sprite_main, $0000	;id: 04E4 ex id: 01C4
	dw ex_null_sprite_main, $0000	;id: 04E8 ex id: 01C8
	dw ex_null_sprite_main, $0000	;id: 04EC ex id: 01CC
	dw ex_null_sprite_main, $0000	;id: 04F0 ex id: 01D0
	dw ex_null_sprite_main, $0000	;id: 04F4 ex id: 01D4
	dw ex_null_sprite_main, $0000	;id: 04F8 ex id: 01D8
	dw ex_null_sprite_main, $0000	;id: 04FC ex id: 01DC
	dw ex_null_sprite_main, $0000	;id: 0500 ex id: 01E0
	dw ex_null_sprite_main, $0000	;id: 0504 ex id: 01E4
	dw ex_null_sprite_main, $0000	;id: 0508 ex id: 01E8
	dw ex_null_sprite_main, $0000	;id: 050C ex id: 01EC
	dw ex_null_sprite_main, $0000	;id: 0510 ex id: 01F0
	dw ex_null_sprite_main, $0000	;id: 0514 ex id: 01F4
	dw ex_null_sprite_main, $0000	;id: 0518 ex id: 01F8
	dw ex_null_sprite_main, $0000	;id: 051C ex id: 01FC
	dw ex_null_sprite_main, $0000	;id: 0520 ex id: 0200
	dw ex_null_sprite_main, $0000	;id: 0524 ex id: 0204
	dw ex_null_sprite_main, $0000	;id: 0528 ex id: 0208
	dw ex_null_sprite_main, $0000	;id: 052C ex id: 020C
	dw ex_null_sprite_main, $0000	;id: 0530 ex id: 0210
	dw ex_null_sprite_main, $0000	;id: 0534 ex id: 0214
	dw ex_null_sprite_main, $0000	;id: 0538 ex id: 0218
	dw ex_null_sprite_main, $0000	;id: 053C ex id: 021C
	dw ex_null_sprite_main, $0000	;id: 0540 ex id: 0220
	dw ex_null_sprite_main, $0000	;id: 0544 ex id: 0224
	dw ex_null_sprite_main, $0000	;id: 0548 ex id: 0228
	dw ex_null_sprite_main, $0000	;id: 054C ex id: 022C
	dw ex_null_sprite_main, $0000	;id: 0550 ex id: 0230
	dw ex_null_sprite_main, $0000	;id: 0554 ex id: 0234
	dw ex_null_sprite_main, $0000	;id: 0558 ex id: 0238
	dw ex_null_sprite_main, $0000	;id: 055C ex id: 023C
	dw ex_null_sprite_main, $0000	;id: 0560 ex id: 0240
	dw ex_null_sprite_main, $0000	;id: 0564 ex id: 0244
	dw ex_null_sprite_main, $0000	;id: 0568 ex id: 0248
	dw ex_null_sprite_main, $0000	;id: 056C ex id: 024C
	dw ex_null_sprite_main, $0000	;id: 0570 ex id: 0250
	dw ex_null_sprite_main, $0000	;id: 0574 ex id: 0254
	dw ex_null_sprite_main, $0000	;id: 0578 ex id: 0258
	dw ex_null_sprite_main, $0000	;id: 057C ex id: 025C
	dw ex_null_sprite_main, $0000	;id: 0580 ex id: 0260
	dw ex_null_sprite_main, $0000	;id: 0584 ex id: 0264
	dw ex_null_sprite_main, $0000	;id: 0588 ex id: 0268
	dw ex_null_sprite_main, $0000	;id: 058C ex id: 026C
	dw ex_null_sprite_main, $0000	;id: 0590 ex id: 0270
	dw ex_null_sprite_main, $0000	;id: 0594 ex id: 0274
	dw ex_null_sprite_main, $0000	;id: 0598 ex id: 0278
	dw ex_null_sprite_main, $0000	;id: 059C ex id: 027C
	dw ex_null_sprite_main, $0000	;id: 05A0 ex id: 0280
	dw ex_null_sprite_main, $0000	;id: 05A4 ex id: 0284
	dw ex_null_sprite_main, $0000	;id: 05A8 ex id: 0288
	dw ex_null_sprite_main, $0000	;id: 05AC ex id: 028C
	dw ex_null_sprite_main, $0000	;id: 05B0 ex id: 0290
	dw ex_null_sprite_main, $0000	;id: 05B4 ex id: 0294
	dw ex_null_sprite_main, $0000	;id: 05B8 ex id: 0298
	dw ex_null_sprite_main, $0000	;id: 05BC ex id: 029C
	dw ex_null_sprite_main, $0000	;id: 05C0 ex id: 02A0
	dw ex_null_sprite_main, $0000	;id: 05C4 ex id: 02A4
	dw ex_null_sprite_main, $0000	;id: 05C8 ex id: 02A8
	dw ex_null_sprite_main, $0000	;id: 05CC ex id: 02AC
	dw ex_null_sprite_main, $0000	;id: 05D0 ex id: 02B0
	dw ex_null_sprite_main, $0000	;id: 05D4 ex id: 02B4
	dw ex_null_sprite_main, $0000	;id: 05D8 ex id: 02B8
	dw ex_null_sprite_main, $0000	;id: 05DC ex id: 02BC
	dw ex_null_sprite_main, $0000	;id: 05E0 ex id: 02C0
	dw ex_null_sprite_main, $0000	;id: 05E4 ex id: 02C4
	dw ex_null_sprite_main, $0000	;id: 05E8 ex id: 02C8
	dw ex_null_sprite_main, $0000	;id: 05EC ex id: 02CC
	dw ex_null_sprite_main, $0000	;id: 05F0 ex id: 02D0
	dw ex_null_sprite_main, $0000	;id: 05F4 ex id: 02D4
	dw ex_null_sprite_main, $0000	;id: 05F8 ex id: 02D8
	dw ex_null_sprite_main, $0000	;id: 05FC ex id: 02DC
	dw ex_null_sprite_main, $0000	;id: 0600 ex id: 02E0
	dw ex_null_sprite_main, $0000	;id: 0604 ex id: 02E4
	dw ex_null_sprite_main, $0000	;id: 0608 ex id: 02E8
	dw ex_null_sprite_main, $0000	;id: 060C ex id: 02EC
	dw ex_null_sprite_main, $0000	;id: 0610 ex id: 02F0
	dw ex_null_sprite_main, $0000	;id: 0614 ex id: 02F4
	dw ex_null_sprite_main, $0000	;id: 0618 ex id: 02F8
	dw ex_null_sprite_main, $0000	;id: 061C ex id: 02FC
	dw ex_null_sprite_main, $0000	;id: 0620 ex id: 0300
	dw ex_null_sprite_main, $0000	;id: 0624 ex id: 0304
	dw ex_null_sprite_main, $0000	;id: 0628 ex id: 0308
	dw ex_null_sprite_main, $0000	;id: 062C ex id: 030C
	dw ex_null_sprite_main, $0000	;id: 0630 ex id: 0310
	dw ex_null_sprite_main, $0000	;id: 0634 ex id: 0314
	dw ex_null_sprite_main, $0000	;id: 0638 ex id: 0318
	dw ex_null_sprite_main, $0000	;id: 063C ex id: 031C
	dw ex_null_sprite_main, $0000	;id: 0640 ex id: 0320
	dw ex_null_sprite_main, $0000	;id: 0644 ex id: 0324
	dw ex_null_sprite_main, $0000	;id: 0648 ex id: 0328
	dw ex_null_sprite_main, $0000	;id: 064C ex id: 032C
	dw ex_null_sprite_main, $0000	;id: 0650 ex id: 0330
	dw ex_null_sprite_main, $0000	;id: 0654 ex id: 0334
	dw ex_null_sprite_main, $0000	;id: 0658 ex id: 0338
	dw ex_null_sprite_main, $0000	;id: 065C ex id: 033C
	dw ex_null_sprite_main, $0000	;id: 0660 ex id: 0340
	dw ex_null_sprite_main, $0000	;id: 0664 ex id: 0344
	dw ex_null_sprite_main, $0000	;id: 0668 ex id: 0348
	dw ex_null_sprite_main, $0000	;id: 066C ex id: 034C
	dw ex_null_sprite_main, $0000	;id: 0670 ex id: 0350
	dw ex_null_sprite_main, $0000	;id: 0674 ex id: 0354
	dw ex_null_sprite_main, $0000	;id: 0678 ex id: 0358
	dw ex_null_sprite_main, $0000	;id: 067C ex id: 035C
	dw ex_null_sprite_main, $0000	;id: 0680 ex id: 0360
	dw ex_null_sprite_main, $0000	;id: 0684 ex id: 0364
	dw ex_null_sprite_main, $0000	;id: 0688 ex id: 0368
	dw ex_null_sprite_main, $0000	;id: 068C ex id: 036C
	dw ex_null_sprite_main, $0000	;id: 0690 ex id: 0370
	dw ex_null_sprite_main, $0000	;id: 0694 ex id: 0374
	dw ex_null_sprite_main, $0000	;id: 0698 ex id: 0378
	dw ex_null_sprite_main, $0000	;id: 069C ex id: 037C
	dw ex_null_sprite_main, $0000	;id: 06A0 ex id: 0380
	dw ex_null_sprite_main, $0000	;id: 06A4 ex id: 0384
	dw ex_null_sprite_main, $0000	;id: 06A8 ex id: 0388
	dw ex_null_sprite_main, $0000	;id: 06AC ex id: 038C
	dw ex_null_sprite_main, $0000	;id: 06B0 ex id: 0390
	dw ex_null_sprite_main, $0000	;id: 06B4 ex id: 0394
	dw ex_null_sprite_main, $0000	;id: 06B8 ex id: 0398
	dw ex_null_sprite_main, $0000	;id: 06BC ex id: 039C
	dw ex_null_sprite_main, $0000	;id: 06C0 ex id: 03A0
	dw ex_null_sprite_main, $0000	;id: 06C4 ex id: 03A4
	dw ex_null_sprite_main, $0000	;id: 06C8 ex id: 03A8
	dw ex_null_sprite_main, $0000	;id: 06CC ex id: 03AC
	dw ex_null_sprite_main, $0000	;id: 06D0 ex id: 03B0
	dw ex_null_sprite_main, $0000	;id: 06D4 ex id: 03B4
	dw ex_null_sprite_main, $0000	;id: 06D8 ex id: 03B8
	dw ex_null_sprite_main, $0000	;id: 06DC ex id: 03BC
	dw ex_null_sprite_main, $0000	;id: 06E0 ex id: 03C0
	dw ex_null_sprite_main, $0000	;id: 06E4 ex id: 03C4
	dw ex_null_sprite_main, $0000	;id: 06E8 ex id: 03C8
	dw ex_null_sprite_main, $0000	;id: 06EC ex id: 03CC
	dw ex_null_sprite_main, $0000	;id: 06F0 ex id: 03D0
	dw ex_null_sprite_main, $0000	;id: 06F4 ex id: 03D4
	dw ex_null_sprite_main, $0000	;id: 06F8 ex id: 03D8
	dw ex_null_sprite_main, $0000	;id: 06FC ex id: 03DC
	dw ex_null_sprite_main, $0000	;id: 0700 ex id: 03E0
	dw ex_null_sprite_main, $0000	;id: 0704 ex id: 03E4
	dw ex_null_sprite_main, $0000	;id: 0708 ex id: 03E8
	dw ex_null_sprite_main, $0000	;id: 070C ex id: 03EC
	dw ex_null_sprite_main, $0000	;id: 0710 ex id: 03F0
	dw ex_null_sprite_main, $0000	;id: 0714 ex id: 03F4
	dw ex_null_sprite_main, $0000	;id: 0718 ex id: 03F8
	dw ex_null_sprite_main, $0000	;id: 071C ex id: 03FC
	dw ex_null_sprite_main, $0000	;id: 0720 ex id: 0400
	dw ex_null_sprite_main, $0000	;id: 0724 ex id: 0404
	dw ex_null_sprite_main, $0000	;id: 0728 ex id: 0408
	dw ex_null_sprite_main, $0000	;id: 072C ex id: 040C
	dw ex_null_sprite_main, $0000	;id: 0730 ex id: 0410
	dw ex_null_sprite_main, $0000	;id: 0734 ex id: 0414
	dw ex_null_sprite_main, $0000	;id: 0738 ex id: 0418
	dw ex_null_sprite_main, $0000	;id: 073C ex id: 041C
	dw ex_null_sprite_main, $0000	;id: 0740 ex id: 0420
	dw ex_null_sprite_main, $0000	;id: 0744 ex id: 0424
	dw ex_null_sprite_main, $0000	;id: 0748 ex id: 0428
	dw ex_null_sprite_main, $0000	;id: 074C ex id: 042C
	dw ex_null_sprite_main, $0000	;id: 0750 ex id: 0430
	dw ex_null_sprite_main, $0000	;id: 0754 ex id: 0434
	dw ex_null_sprite_main, $0000	;id: 0758 ex id: 0438
	dw ex_null_sprite_main, $0000	;id: 075C ex id: 043C
	dw ex_null_sprite_main, $0000	;id: 0760 ex id: 0440
	dw ex_null_sprite_main, $0000	;id: 0764 ex id: 0444
	dw ex_null_sprite_main, $0000	;id: 0768 ex id: 0448
	dw ex_null_sprite_main, $0000	;id: 076C ex id: 044C
	dw ex_null_sprite_main, $0000	;id: 0770 ex id: 0450
	dw ex_null_sprite_main, $0000	;id: 0774 ex id: 0454
	dw ex_null_sprite_main, $0000	;id: 0778 ex id: 0458
	dw ex_null_sprite_main, $0000	;id: 077C ex id: 045C
	dw ex_null_sprite_main, $0000	;id: 0780 ex id: 0460
	dw ex_null_sprite_main, $0000	;id: 0784 ex id: 0464
	dw ex_null_sprite_main, $0000	;id: 0788 ex id: 0468
	dw ex_null_sprite_main, $0000	;id: 078C ex id: 046C
	dw ex_null_sprite_main, $0000	;id: 0790 ex id: 0470
	dw ex_null_sprite_main, $0000	;id: 0794 ex id: 0474
	dw ex_null_sprite_main, $0000	;id: 0798 ex id: 0478
	dw ex_null_sprite_main, $0000	;id: 079C ex id: 047C
	dw ex_null_sprite_main, $0000	;id: 07A0 ex id: 0480
	dw ex_null_sprite_main, $0000	;id: 07A4 ex id: 0484
	dw ex_null_sprite_main, $0000	;id: 07A8 ex id: 0488
	dw ex_null_sprite_main, $0000	;id: 07AC ex id: 048C
	dw ex_null_sprite_main, $0000	;id: 07B0 ex id: 0490
	dw ex_null_sprite_main, $0000	;id: 07B4 ex id: 0494
	dw ex_null_sprite_main, $0000	;id: 07B8 ex id: 0498
	dw ex_null_sprite_main, $0000	;id: 07BC ex id: 049C
	dw ex_null_sprite_main, $0000	;id: 07C0 ex id: 04A0
	dw ex_null_sprite_main, $0000	;id: 07C4 ex id: 04A4
	dw ex_null_sprite_main, $0000	;id: 07C8 ex id: 04A8
	dw ex_null_sprite_main, $0000	;id: 07CC ex id: 04AC
	dw ex_null_sprite_main, $0000	;id: 07D0 ex id: 04B0
	dw ex_null_sprite_main, $0000	;id: 07D4 ex id: 04B4
	dw ex_null_sprite_main, $0000	;id: 07D8 ex id: 04B8
	dw ex_null_sprite_main, $0000	;id: 07DC ex id: 04BC
	dw ex_null_sprite_main, $0000	;id: 07E0 ex id: 04C0
	dw ex_null_sprite_main, $0000	;id: 07E4 ex id: 04C4
	dw ex_null_sprite_main, $0000	;id: 07E8 ex id: 04C8
	dw ex_null_sprite_main, $0000	;id: 07EC ex id: 04CC
	dw ex_null_sprite_main, $0000	;id: 07F0 ex id: 04D0
	dw ex_null_sprite_main, $0000	;id: 07F4 ex id: 04D4
	dw ex_null_sprite_main, $0000	;id: 07F8 ex id: 04D8
	dw ex_null_sprite_main, $0000	;id: 07FC ex id: 04DC
	dw ex_null_sprite_main, $0000	;id: 0800 ex id: 04E0
	dw ex_null_sprite_main, $0000	;id: 0804 ex id: 04E4
	dw ex_null_sprite_main, $0000	;id: 0808 ex id: 04E8
	dw ex_null_sprite_main, $0000	;id: 080C ex id: 04EC
	dw ex_null_sprite_main, $0000	;id: 0810 ex id: 04F0
	dw ex_null_sprite_main, $0000	;id: 0814 ex id: 04F4
	dw ex_null_sprite_main, $0000	;id: 0818 ex id: 04F8
	dw ex_null_sprite_main, $0000	;id: 081C ex id: 04FC
	dw ex_null_sprite_main, $0000	;id: 0820 ex id: 0500
	dw ex_null_sprite_main, $0000	;id: 0824 ex id: 0504
	dw ex_null_sprite_main, $0000	;id: 0828 ex id: 0508
	dw ex_null_sprite_main, $0000	;id: 082C ex id: 050C
	dw ex_null_sprite_main, $0000	;id: 0830 ex id: 0510
	dw ex_null_sprite_main, $0000	;id: 0834 ex id: 0514
	dw ex_null_sprite_main, $0000	;id: 0838 ex id: 0518
	dw ex_null_sprite_main, $0000	;id: 083C ex id: 051C
	dw ex_null_sprite_main, $0000	;id: 0840 ex id: 0520
	dw ex_null_sprite_main, $0000	;id: 0844 ex id: 0524
	dw ex_null_sprite_main, $0000	;id: 0848 ex id: 0528
	dw ex_null_sprite_main, $0000	;id: 084C ex id: 052C
	dw ex_null_sprite_main, $0000	;id: 0850 ex id: 0530
	dw ex_null_sprite_main, $0000	;id: 0854 ex id: 0534
	dw ex_null_sprite_main, $0000	;id: 0858 ex id: 0538
	dw ex_null_sprite_main, $0000	;id: 085C ex id: 053C
	dw ex_null_sprite_main, $0000	;id: 0860 ex id: 0540
	dw ex_null_sprite_main, $0000	;id: 0864 ex id: 0544
	dw ex_null_sprite_main, $0000	;id: 0868 ex id: 0548
	dw ex_null_sprite_main, $0000	;id: 086C ex id: 054C
	dw ex_null_sprite_main, $0000	;id: 0870 ex id: 0550
	dw ex_null_sprite_main, $0000	;id: 0874 ex id: 0554
	dw ex_null_sprite_main, $0000	;id: 0878 ex id: 0558
	dw ex_null_sprite_main, $0000	;id: 087C ex id: 055C
	dw ex_null_sprite_main, $0000	;id: 0880 ex id: 0560
	dw ex_null_sprite_main, $0000	;id: 0884 ex id: 0564
	dw ex_null_sprite_main, $0000	;id: 0888 ex id: 0568
	dw ex_null_sprite_main, $0000	;id: 088C ex id: 056C
	dw ex_null_sprite_main, $0000	;id: 0890 ex id: 0570
	dw ex_null_sprite_main, $0000	;id: 0894 ex id: 0574
	dw ex_null_sprite_main, $0000	;id: 0898 ex id: 0578
	dw ex_null_sprite_main, $0000	;id: 089C ex id: 057C
	dw ex_null_sprite_main, $0000	;id: 08A0 ex id: 0580
	dw ex_null_sprite_main, $0000	;id: 08A4 ex id: 0584
	dw ex_null_sprite_main, $0000	;id: 08A8 ex id: 0588
	dw ex_null_sprite_main, $0000	;id: 08AC ex id: 058C
	dw ex_null_sprite_main, $0000	;id: 08B0 ex id: 0590
	dw ex_null_sprite_main, $0000	;id: 08B4 ex id: 0594
	dw ex_null_sprite_main, $0000	;id: 08B8 ex id: 0598
	dw ex_null_sprite_main, $0000	;id: 08BC ex id: 059C
	dw ex_null_sprite_main, $0000	;id: 08C0 ex id: 05A0
	dw ex_null_sprite_main, $0000	;id: 08C4 ex id: 05A4
	dw ex_null_sprite_main, $0000	;id: 08C8 ex id: 05A8
	dw ex_null_sprite_main, $0000	;id: 08CC ex id: 05AC
	dw ex_null_sprite_main, $0000	;id: 08D0 ex id: 05B0
	dw ex_null_sprite_main, $0000	;id: 08D4 ex id: 05B4
	dw ex_null_sprite_main, $0000	;id: 08D8 ex id: 05B8
	dw ex_null_sprite_main, $0000	;id: 08DC ex id: 05BC
	dw ex_null_sprite_main, $0000	;id: 08E0 ex id: 05C0
	dw ex_null_sprite_main, $0000	;id: 08E4 ex id: 05C4
	dw ex_null_sprite_main, $0000	;id: 08E8 ex id: 05C8
	dw ex_null_sprite_main, $0000	;id: 08EC ex id: 05CC
	dw ex_null_sprite_main, $0000	;id: 08F0 ex id: 05D0
	dw ex_null_sprite_main, $0000	;id: 08F4 ex id: 05D4
	dw ex_null_sprite_main, $0000	;id: 08F8 ex id: 05D8
	dw ex_null_sprite_main, $0000	;id: 08FC ex id: 05DC
	dw ex_null_sprite_main, $0000	;id: 0900 ex id: 05E0
	dw ex_null_sprite_main, $0000	;id: 0904 ex id: 05E4
	dw ex_null_sprite_main, $0000	;id: 0908 ex id: 05E8
	dw ex_null_sprite_main, $0000	;id: 090C ex id: 05EC
	dw ex_null_sprite_main, $0000	;id: 0910 ex id: 05F0
	dw ex_null_sprite_main, $0000	;id: 0914 ex id: 05F4
	dw ex_null_sprite_main, $0000	;id: 0918 ex id: 05F8
	dw ex_null_sprite_main, $0000	;id: 091C ex id: 05FC
	dw ex_null_sprite_main, $0000	;id: 0920 ex id: 0600
	dw ex_null_sprite_main, $0000	;id: 0924 ex id: 0604
	dw ex_null_sprite_main, $0000	;id: 0928 ex id: 0608
	dw ex_null_sprite_main, $0000	;id: 092C ex id: 060C
	dw ex_null_sprite_main, $0000	;id: 0930 ex id: 0610
	dw ex_null_sprite_main, $0000	;id: 0934 ex id: 0614
	dw ex_null_sprite_main, $0000	;id: 0938 ex id: 0618
	dw ex_null_sprite_main, $0000	;id: 093C ex id: 061C
	dw ex_null_sprite_main, $0000	;id: 0940 ex id: 0620
	dw ex_null_sprite_main, $0000	;id: 0944 ex id: 0624
	dw ex_null_sprite_main, $0000	;id: 0948 ex id: 0628
	dw ex_null_sprite_main, $0000	;id: 094C ex id: 062C
	dw ex_null_sprite_main, $0000	;id: 0950 ex id: 0630
	dw ex_null_sprite_main, $0000	;id: 0954 ex id: 0634
	dw ex_null_sprite_main, $0000	;id: 0958 ex id: 0638
	dw ex_null_sprite_main, $0000	;id: 095C ex id: 063C
	dw ex_null_sprite_main, $0000	;id: 0960 ex id: 0640
	dw ex_null_sprite_main, $0000	;id: 0964 ex id: 0644
	dw ex_null_sprite_main, $0000	;id: 0968 ex id: 0648
	dw ex_null_sprite_main, $0000	;id: 096C ex id: 064C
	dw ex_null_sprite_main, $0000	;id: 0970 ex id: 0650
	dw ex_null_sprite_main, $0000	;id: 0974 ex id: 0654
	dw ex_null_sprite_main, $0000	;id: 0978 ex id: 0658
	dw ex_null_sprite_main, $0000	;id: 097C ex id: 065C
	dw ex_null_sprite_main, $0000	;id: 0980 ex id: 0660
	dw ex_null_sprite_main, $0000	;id: 0984 ex id: 0664
	dw ex_null_sprite_main, $0000	;id: 0988 ex id: 0668
	dw ex_null_sprite_main, $0000	;id: 098C ex id: 066C
	dw ex_null_sprite_main, $0000	;id: 0990 ex id: 0670
	dw ex_null_sprite_main, $0000	;id: 0994 ex id: 0674
	dw ex_null_sprite_main, $0000	;id: 0998 ex id: 0678
	dw ex_null_sprite_main, $0000	;id: 099C ex id: 067C
	dw ex_null_sprite_main, $0000	;id: 09A0 ex id: 0680
	dw ex_null_sprite_main, $0000	;id: 09A4 ex id: 0684
	dw ex_null_sprite_main, $0000	;id: 09A8 ex id: 0688
	dw ex_null_sprite_main, $0000	;id: 09AC ex id: 068C
	dw ex_null_sprite_main, $0000	;id: 09B0 ex id: 0690
	dw ex_null_sprite_main, $0000	;id: 09B4 ex id: 0694
	dw ex_null_sprite_main, $0000	;id: 09B8 ex id: 0698
	dw ex_null_sprite_main, $0000	;id: 09BC ex id: 069C
	dw ex_null_sprite_main, $0000	;id: 09C0 ex id: 06A0
	dw ex_null_sprite_main, $0000	;id: 09C4 ex id: 06A4
	dw ex_null_sprite_main, $0000	;id: 09C8 ex id: 06A8
	dw ex_null_sprite_main, $0000	;id: 09CC ex id: 06AC
	dw ex_null_sprite_main, $0000	;id: 09D0 ex id: 06B0
	dw ex_null_sprite_main, $0000	;id: 09D4 ex id: 06B4
	dw ex_null_sprite_main, $0000	;id: 09D8 ex id: 06B8
	dw ex_null_sprite_main, $0000	;id: 09DC ex id: 06BC
	dw ex_null_sprite_main, $0000	;id: 09E0 ex id: 06C0
	dw ex_null_sprite_main, $0000	;id: 09E4 ex id: 06C4
	dw ex_null_sprite_main, $0000	;id: 09E8 ex id: 06C8
	dw ex_null_sprite_main, $0000	;id: 09EC ex id: 06CC
	dw ex_null_sprite_main, $0000	;id: 09F0 ex id: 06D0
	dw ex_null_sprite_main, $0000	;id: 09F4 ex id: 06D4
	dw ex_null_sprite_main, $0000	;id: 09F8 ex id: 06D8
	dw ex_null_sprite_main, $0000	;id: 09FC ex id: 06DC
	dw ex_null_sprite_main, $0000	;id: 0A00 ex id: 06E0
	dw ex_null_sprite_main, $0000	;id: 0A04 ex id: 06E4
	dw ex_null_sprite_main, $0000	;id: 0A08 ex id: 06E8
	dw ex_null_sprite_main, $0000	;id: 0A0C ex id: 06EC
	dw ex_null_sprite_main, $0000	;id: 0A10 ex id: 06F0
	dw ex_null_sprite_main, $0000	;id: 0A14 ex id: 06F4
	dw ex_null_sprite_main, $0000	;id: 0A18 ex id: 06F8
	dw ex_null_sprite_main, $0000	;id: 0A1C ex id: 06FC
	dw ex_null_sprite_main, $0000	;id: 0A20 ex id: 0700
	dw ex_null_sprite_main, $0000	;id: 0A24 ex id: 0704
	dw ex_null_sprite_main, $0000	;id: 0A28 ex id: 0708
	dw ex_null_sprite_main, $0000	;id: 0A2C ex id: 070C
	dw ex_null_sprite_main, $0000	;id: 0A30 ex id: 0710
	dw ex_null_sprite_main, $0000	;id: 0A34 ex id: 0714
	dw ex_null_sprite_main, $0000	;id: 0A38 ex id: 0718
	dw ex_null_sprite_main, $0000	;id: 0A3C ex id: 071C
	dw ex_null_sprite_main, $0000	;id: 0A40 ex id: 0720
	dw ex_null_sprite_main, $0000	;id: 0A44 ex id: 0724
	dw ex_null_sprite_main, $0000	;id: 0A48 ex id: 0728
	dw ex_null_sprite_main, $0000	;id: 0A4C ex id: 072C
	dw ex_null_sprite_main, $0000	;id: 0A50 ex id: 0730
	dw ex_null_sprite_main, $0000	;id: 0A54 ex id: 0734
	dw ex_null_sprite_main, $0000	;id: 0A58 ex id: 0738
	dw ex_null_sprite_main, $0000	;id: 0A5C ex id: 073C
	dw ex_null_sprite_main, $0000	;id: 0A60 ex id: 0740
	dw ex_null_sprite_main, $0000	;id: 0A64 ex id: 0744
	dw ex_null_sprite_main, $0000	;id: 0A68 ex id: 0748
	dw ex_null_sprite_main, $0000	;id: 0A6C ex id: 074C
	dw ex_null_sprite_main, $0000	;id: 0A70 ex id: 0750
	dw ex_null_sprite_main, $0000	;id: 0A74 ex id: 0754
	dw ex_null_sprite_main, $0000	;id: 0A78 ex id: 0758
	dw ex_null_sprite_main, $0000	;id: 0A7C ex id: 075C
	dw ex_null_sprite_main, $0000	;id: 0A80 ex id: 0760
	dw ex_null_sprite_main, $0000	;id: 0A84 ex id: 0764
	dw ex_null_sprite_main, $0000	;id: 0A88 ex id: 0768
	dw ex_null_sprite_main, $0000	;id: 0A8C ex id: 076C
	dw ex_null_sprite_main, $0000	;id: 0A90 ex id: 0770
	dw ex_null_sprite_main, $0000	;id: 0A94 ex id: 0774
	dw ex_null_sprite_main, $0000	;id: 0A98 ex id: 0778
	dw ex_null_sprite_main, $0000	;id: 0A9C ex id: 077C
	dw ex_null_sprite_main, $0000	;id: 0AA0 ex id: 0780
	dw ex_null_sprite_main, $0000	;id: 0AA4 ex id: 0784
	dw ex_null_sprite_main, $0000	;id: 0AA8 ex id: 0788
	dw ex_null_sprite_main, $0000	;id: 0AAC ex id: 078C
	dw ex_null_sprite_main, $0000	;id: 0AB0 ex id: 0790
	dw ex_null_sprite_main, $0000	;id: 0AB4 ex id: 0794
	dw ex_null_sprite_main, $0000	;id: 0AB8 ex id: 0798
	dw ex_null_sprite_main, $0000	;id: 0ABC ex id: 079C
	dw ex_null_sprite_main, $0000	;id: 0AC0 ex id: 07A0
	dw ex_null_sprite_main, $0000	;id: 0AC4 ex id: 07A4
	dw ex_null_sprite_main, $0000	;id: 0AC8 ex id: 07A8
	dw ex_null_sprite_main, $0000	;id: 0ACC ex id: 07AC
	dw ex_null_sprite_main, $0000	;id: 0AD0 ex id: 07B0
	dw ex_null_sprite_main, $0000	;id: 0AD4 ex id: 07B4
	dw ex_null_sprite_main, $0000	;id: 0AD8 ex id: 07B8
	dw ex_null_sprite_main, $0000	;id: 0ADC ex id: 07BC
	dw ex_null_sprite_main, $0000	;id: 0AE0 ex id: 07C0
	dw ex_null_sprite_main, $0000	;id: 0AE4 ex id: 07C4
	dw ex_null_sprite_main, $0000	;id: 0AE8 ex id: 07C8
	dw ex_null_sprite_main, $0000	;id: 0AEC ex id: 07CC
	dw ex_null_sprite_main, $0000	;id: 0AF0 ex id: 07D0
	dw ex_null_sprite_main, $0000	;id: 0AF4 ex id: 07D4
	dw ex_null_sprite_main, $0000	;id: 0AF8 ex id: 07D8
	dw ex_null_sprite_main, $0000	;id: 0AFC ex id: 07DC
	dw ex_null_sprite_main, $0000	;id: 0B00 ex id: 07E0
	dw ex_null_sprite_main, $0000	;id: 0B04 ex id: 07E4
	dw ex_null_sprite_main, $0000	;id: 0B08 ex id: 07E8
	dw ex_null_sprite_main, $0000	;id: 0B0C ex id: 07EC
	dw ex_null_sprite_main, $0000	;id: 0B10 ex id: 07F0
	dw ex_null_sprite_main, $0000	;id: 0B14 ex id: 07F4
	dw ex_null_sprite_main, $0000	;id: 0B18 ex id: 07F8
	dw ex_null_sprite_main, $0000	;id: 0B1C ex id: 07FC
	dw ex_null_sprite_main, $0000	;id: 0B20 ex id: 0800
	dw ex_null_sprite_main, $0000	;id: 0B24 ex id: 0804
	dw ex_null_sprite_main, $0000	;id: 0B28 ex id: 0808
	dw ex_null_sprite_main, $0000	;id: 0B2C ex id: 080C
	dw ex_null_sprite_main, $0000	;id: 0B30 ex id: 0810
	dw ex_null_sprite_main, $0000	;id: 0B34 ex id: 0814
	dw ex_null_sprite_main, $0000	;id: 0B38 ex id: 0818
	dw ex_null_sprite_main, $0000	;id: 0B3C ex id: 081C
	dw ex_null_sprite_main, $0000	;id: 0B40 ex id: 0820
	dw ex_null_sprite_main, $0000	;id: 0B44 ex id: 0824
	dw ex_null_sprite_main, $0000	;id: 0B48 ex id: 0828
	dw ex_null_sprite_main, $0000	;id: 0B4C ex id: 082C
	dw ex_null_sprite_main, $0000	;id: 0B50 ex id: 0830
	dw ex_null_sprite_main, $0000	;id: 0B54 ex id: 0834
	dw ex_null_sprite_main, $0000	;id: 0B58 ex id: 0838
	dw ex_null_sprite_main, $0000	;id: 0B5C ex id: 083C
	dw ex_null_sprite_main, $0000	;id: 0B60 ex id: 0840
	dw ex_null_sprite_main, $0000	;id: 0B64 ex id: 0844
	dw ex_null_sprite_main, $0000	;id: 0B68 ex id: 0848
	dw ex_null_sprite_main, $0000	;id: 0B6C ex id: 084C
	dw ex_null_sprite_main, $0000	;id: 0B70 ex id: 0850
	dw ex_null_sprite_main, $0000	;id: 0B74 ex id: 0854
	dw ex_null_sprite_main, $0000	;id: 0B78 ex id: 0858
	dw ex_null_sprite_main, $0000	;id: 0B7C ex id: 085C
	dw ex_null_sprite_main, $0000	;id: 0B80 ex id: 0860
	dw ex_null_sprite_main, $0000	;id: 0B84 ex id: 0864
	dw ex_null_sprite_main, $0000	;id: 0B88 ex id: 0868
	dw ex_null_sprite_main, $0000	;id: 0B8C ex id: 086C
	dw ex_null_sprite_main, $0000	;id: 0B90 ex id: 0870
	dw ex_null_sprite_main, $0000	;id: 0B94 ex id: 0874
	dw ex_null_sprite_main, $0000	;id: 0B98 ex id: 0878
	dw ex_null_sprite_main, $0000	;id: 0B9C ex id: 087C
	dw ex_null_sprite_main, $0000	;id: 0BA0 ex id: 0880
	dw ex_null_sprite_main, $0000	;id: 0BA4 ex id: 0884
	dw ex_null_sprite_main, $0000	;id: 0BA8 ex id: 0888
	dw ex_null_sprite_main, $0000	;id: 0BAC ex id: 088C
	dw ex_null_sprite_main, $0000	;id: 0BB0 ex id: 0890
	dw ex_null_sprite_main, $0000	;id: 0BB4 ex id: 0894
	dw ex_null_sprite_main, $0000	;id: 0BB8 ex id: 0898
	dw ex_null_sprite_main, $0000	;id: 0BBC ex id: 089C
	dw ex_null_sprite_main, $0000	;id: 0BC0 ex id: 08A0
	dw ex_null_sprite_main, $0000	;id: 0BC4 ex id: 08A4
	dw ex_null_sprite_main, $0000	;id: 0BC8 ex id: 08A8
	dw ex_null_sprite_main, $0000	;id: 0BCC ex id: 08AC
	dw ex_null_sprite_main, $0000	;id: 0BD0 ex id: 08B0
	dw ex_null_sprite_main, $0000	;id: 0BD4 ex id: 08B4
	dw ex_null_sprite_main, $0000	;id: 0BD8 ex id: 08B8
	dw ex_null_sprite_main, $0000	;id: 0BDC ex id: 08BC
	dw ex_null_sprite_main, $0000	;id: 0BE0 ex id: 08C0
	dw ex_null_sprite_main, $0000	;id: 0BE4 ex id: 08C4
	dw ex_null_sprite_main, $0000	;id: 0BE8 ex id: 08C8
	dw ex_null_sprite_main, $0000	;id: 0BEC ex id: 08CC
	dw ex_null_sprite_main, $0000	;id: 0BF0 ex id: 08D0
	dw ex_null_sprite_main, $0000	;id: 0BF4 ex id: 08D4
	dw ex_null_sprite_main, $0000	;id: 0BF8 ex id: 08D8
	dw ex_null_sprite_main, $0000	;id: 0BFC ex id: 08DC
	dw ex_null_sprite_main, $0000	;id: 0C00 ex id: 08E0
	dw ex_null_sprite_main, $0000	;id: 0C04 ex id: 08E4
	dw ex_null_sprite_main, $0000	;id: 0C08 ex id: 08E8
	dw ex_null_sprite_main, $0000	;id: 0C0C ex id: 08EC
	dw ex_null_sprite_main, $0000	;id: 0C10 ex id: 08F0
	dw ex_null_sprite_main, $0000	;id: 0C14 ex id: 08F4
	dw ex_null_sprite_main, $0000	;id: 0C18 ex id: 08F8
	dw ex_null_sprite_main, $0000	;id: 0C1C ex id: 08FC
	dw ex_null_sprite_main, $0000	;id: 0C20 ex id: 0900
	dw ex_null_sprite_main, $0000	;id: 0C24 ex id: 0904
	dw ex_null_sprite_main, $0000	;id: 0C28 ex id: 0908
	dw ex_null_sprite_main, $0000	;id: 0C2C ex id: 090C
	dw ex_null_sprite_main, $0000	;id: 0C30 ex id: 0910
	dw ex_null_sprite_main, $0000	;id: 0C34 ex id: 0914
	dw ex_null_sprite_main, $0000	;id: 0C38 ex id: 0918
	dw ex_null_sprite_main, $0000	;id: 0C3C ex id: 091C
	dw ex_null_sprite_main, $0000	;id: 0C40 ex id: 0920
	dw ex_null_sprite_main, $0000	;id: 0C44 ex id: 0924
	dw ex_null_sprite_main, $0000	;id: 0C48 ex id: 0928
	dw ex_null_sprite_main, $0000	;id: 0C4C ex id: 092C
	dw ex_null_sprite_main, $0000	;id: 0C50 ex id: 0930
	dw ex_null_sprite_main, $0000	;id: 0C54 ex id: 0934
	dw ex_null_sprite_main, $0000	;id: 0C58 ex id: 0938
	dw ex_null_sprite_main, $0000	;id: 0C5C ex id: 093C
	dw ex_null_sprite_main, $0000	;id: 0C60 ex id: 0940
	dw ex_null_sprite_main, $0000	;id: 0C64 ex id: 0944
	dw ex_null_sprite_main, $0000	;id: 0C68 ex id: 0948
	dw ex_null_sprite_main, $0000	;id: 0C6C ex id: 094C
	dw ex_null_sprite_main, $0000	;id: 0C70 ex id: 0950
	dw ex_null_sprite_main, $0000	;id: 0C74 ex id: 0954
	dw ex_null_sprite_main, $0000	;id: 0C78 ex id: 0958
	dw ex_null_sprite_main, $0000	;id: 0C7C ex id: 095C
	dw ex_null_sprite_main, $0000	;id: 0C80 ex id: 0960
	dw ex_null_sprite_main, $0000	;id: 0C84 ex id: 0964
	dw ex_null_sprite_main, $0000	;id: 0C88 ex id: 0968
	dw ex_null_sprite_main, $0000	;id: 0C8C ex id: 096C
	dw ex_null_sprite_main, $0000	;id: 0C90 ex id: 0970
	dw ex_null_sprite_main, $0000	;id: 0C94 ex id: 0974
	dw ex_null_sprite_main, $0000	;id: 0C98 ex id: 0978
	dw ex_null_sprite_main, $0000	;id: 0C9C ex id: 097C
	dw ex_null_sprite_main, $0000	;id: 0CA0 ex id: 0980
	dw ex_null_sprite_main, $0000	;id: 0CA4 ex id: 0984
	dw ex_null_sprite_main, $0000	;id: 0CA8 ex id: 0988
	dw ex_null_sprite_main, $0000	;id: 0CAC ex id: 098C
	dw ex_null_sprite_main, $0000	;id: 0CB0 ex id: 0990
	dw ex_null_sprite_main, $0000	;id: 0CB4 ex id: 0994
	dw ex_null_sprite_main, $0000	;id: 0CB8 ex id: 0998
	dw ex_null_sprite_main, $0000	;id: 0CBC ex id: 099C
	dw ex_null_sprite_main, $0000	;id: 0CC0 ex id: 09A0
	dw ex_null_sprite_main, $0000	;id: 0CC4 ex id: 09A4
	dw ex_null_sprite_main, $0000	;id: 0CC8 ex id: 09A8
	dw ex_null_sprite_main, $0000	;id: 0CCC ex id: 09AC
	dw ex_null_sprite_main, $0000	;id: 0CD0 ex id: 09B0
	dw ex_null_sprite_main, $0000	;id: 0CD4 ex id: 09B4
	dw ex_null_sprite_main, $0000	;id: 0CD8 ex id: 09B8
	dw ex_null_sprite_main, $0000	;id: 0CDC ex id: 09BC
	dw ex_null_sprite_main, $0000	;id: 0CE0 ex id: 09C0
	dw ex_null_sprite_main, $0000	;id: 0CE4 ex id: 09C4
	dw ex_null_sprite_main, $0000	;id: 0CE8 ex id: 09C8
	dw ex_null_sprite_main, $0000	;id: 0CEC ex id: 09CC
	dw ex_null_sprite_main, $0000	;id: 0CF0 ex id: 09D0
	dw ex_null_sprite_main, $0000	;id: 0CF4 ex id: 09D4
	dw ex_null_sprite_main, $0000	;id: 0CF8 ex id: 09D8
	dw ex_null_sprite_main, $0000	;id: 0CFC ex id: 09DC
	dw ex_null_sprite_main, $0000	;id: 0D00 ex id: 09E0
	dw ex_null_sprite_main, $0000	;id: 0D04 ex id: 09E4
	dw ex_null_sprite_main, $0000	;id: 0D08 ex id: 09E8
	dw ex_null_sprite_main, $0000	;id: 0D0C ex id: 09EC
	dw ex_null_sprite_main, $0000	;id: 0D10 ex id: 09F0
	dw ex_null_sprite_main, $0000	;id: 0D14 ex id: 09F4
	dw ex_null_sprite_main, $0000	;id: 0D18 ex id: 09F8
	dw ex_null_sprite_main, $0000	;id: 0D1C ex id: 09FC
	dw ex_null_sprite_main, $0000	;id: 0D20 ex id: 0A00
	dw ex_null_sprite_main, $0000	;id: 0D24 ex id: 0A04
	dw ex_null_sprite_main, $0000	;id: 0D28 ex id: 0A08
	dw ex_null_sprite_main, $0000	;id: 0D2C ex id: 0A0C
	dw ex_null_sprite_main, $0000	;id: 0D30 ex id: 0A10
	dw ex_null_sprite_main, $0000	;id: 0D34 ex id: 0A14
	dw ex_null_sprite_main, $0000	;id: 0D38 ex id: 0A18
	dw ex_null_sprite_main, $0000	;id: 0D3C ex id: 0A1C
	dw ex_null_sprite_main, $0000	;id: 0D40 ex id: 0A20
	dw ex_null_sprite_main, $0000	;id: 0D44 ex id: 0A24
	dw ex_null_sprite_main, $0000	;id: 0D48 ex id: 0A28
	dw ex_null_sprite_main, $0000	;id: 0D4C ex id: 0A2C
	dw ex_null_sprite_main, $0000	;id: 0D50 ex id: 0A30
	dw ex_null_sprite_main, $0000	;id: 0D54 ex id: 0A34
	dw ex_null_sprite_main, $0000	;id: 0D58 ex id: 0A38
	dw ex_null_sprite_main, $0000	;id: 0D5C ex id: 0A3C
	dw ex_null_sprite_main, $0000	;id: 0D60 ex id: 0A40
	dw ex_null_sprite_main, $0000	;id: 0D64 ex id: 0A44
	dw ex_null_sprite_main, $0000	;id: 0D68 ex id: 0A48
	dw ex_null_sprite_main, $0000	;id: 0D6C ex id: 0A4C
	dw ex_null_sprite_main, $0000	;id: 0D70 ex id: 0A50
	dw ex_null_sprite_main, $0000	;id: 0D74 ex id: 0A54
	dw ex_null_sprite_main, $0000	;id: 0D78 ex id: 0A58
	dw ex_null_sprite_main, $0000	;id: 0D7C ex id: 0A5C
	dw ex_null_sprite_main, $0000	;id: 0D80 ex id: 0A60
	dw ex_null_sprite_main, $0000	;id: 0D84 ex id: 0A64
	dw ex_null_sprite_main, $0000	;id: 0D88 ex id: 0A68
	dw ex_null_sprite_main, $0000	;id: 0D8C ex id: 0A6C
	dw ex_null_sprite_main, $0000	;id: 0D90 ex id: 0A70
	dw ex_null_sprite_main, $0000	;id: 0D94 ex id: 0A74
	dw ex_null_sprite_main, $0000	;id: 0D98 ex id: 0A78
	dw ex_null_sprite_main, $0000	;id: 0D9C ex id: 0A7C
	dw ex_null_sprite_main, $0000	;id: 0DA0 ex id: 0A80
	dw ex_null_sprite_main, $0000	;id: 0DA4 ex id: 0A84
	dw ex_null_sprite_main, $0000	;id: 0DA8 ex id: 0A88
	dw ex_null_sprite_main, $0000	;id: 0DAC ex id: 0A8C
	dw ex_null_sprite_main, $0000	;id: 0DB0 ex id: 0A90
	dw ex_null_sprite_main, $0000	;id: 0DB4 ex id: 0A94
	dw ex_null_sprite_main, $0000	;id: 0DB8 ex id: 0A98
	dw ex_null_sprite_main, $0000	;id: 0DBC ex id: 0A9C
	dw ex_null_sprite_main, $0000	;id: 0DC0 ex id: 0AA0
	dw ex_null_sprite_main, $0000	;id: 0DC4 ex id: 0AA4
	dw ex_null_sprite_main, $0000	;id: 0DC8 ex id: 0AA8
	dw ex_null_sprite_main, $0000	;id: 0DCC ex id: 0AAC
	dw ex_null_sprite_main, $0000	;id: 0DD0 ex id: 0AB0
	dw ex_null_sprite_main, $0000	;id: 0DD4 ex id: 0AB4
	dw ex_null_sprite_main, $0000	;id: 0DD8 ex id: 0AB8
	dw ex_null_sprite_main, $0000	;id: 0DDC ex id: 0ABC
	dw ex_null_sprite_main, $0000	;id: 0DE0 ex id: 0AC0
	dw ex_null_sprite_main, $0000	;id: 0DE4 ex id: 0AC4
	dw ex_null_sprite_main, $0000	;id: 0DE8 ex id: 0AC8
	dw ex_null_sprite_main, $0000	;id: 0DEC ex id: 0ACC
	dw ex_null_sprite_main, $0000	;id: 0DF0 ex id: 0AD0
	dw ex_null_sprite_main, $0000	;id: 0DF4 ex id: 0AD4
	dw ex_null_sprite_main, $0000	;id: 0DF8 ex id: 0AD8
	dw ex_null_sprite_main, $0000	;id: 0DFC ex id: 0ADC
	dw ex_null_sprite_main, $0000	;id: 0E00 ex id: 0AE0
	dw ex_null_sprite_main, $0000	;id: 0E04 ex id: 0AE4
	dw ex_null_sprite_main, $0000	;id: 0E08 ex id: 0AE8
	dw ex_null_sprite_main, $0000	;id: 0E0C ex id: 0AEC
	dw ex_null_sprite_main, $0000	;id: 0E10 ex id: 0AF0
	dw ex_null_sprite_main, $0000	;id: 0E14 ex id: 0AF4
	dw ex_null_sprite_main, $0000	;id: 0E18 ex id: 0AF8
	dw ex_null_sprite_main, $0000	;id: 0E1C ex id: 0AFC
	dw ex_null_sprite_main, $0000	;id: 0E20 ex id: 0B00
	dw ex_null_sprite_main, $0000	;id: 0E24 ex id: 0B04
	dw ex_null_sprite_main, $0000	;id: 0E28 ex id: 0B08
	dw ex_null_sprite_main, $0000	;id: 0E2C ex id: 0B0C
	dw ex_null_sprite_main, $0000	;id: 0E30 ex id: 0B10
	dw ex_null_sprite_main, $0000	;id: 0E34 ex id: 0B14
	dw ex_null_sprite_main, $0000	;id: 0E38 ex id: 0B18
	dw ex_null_sprite_main, $0000	;id: 0E3C ex id: 0B1C
	dw ex_null_sprite_main, $0000	;id: 0E40 ex id: 0B20
	dw ex_null_sprite_main, $0000	;id: 0E44 ex id: 0B24
	dw ex_null_sprite_main, $0000	;id: 0E48 ex id: 0B28
	dw ex_null_sprite_main, $0000	;id: 0E4C ex id: 0B2C
	dw ex_null_sprite_main, $0000	;id: 0E50 ex id: 0B30
	dw ex_null_sprite_main, $0000	;id: 0E54 ex id: 0B34
	dw ex_null_sprite_main, $0000	;id: 0E58 ex id: 0B38
	dw ex_null_sprite_main, $0000	;id: 0E5C ex id: 0B3C
	dw ex_null_sprite_main, $0000	;id: 0E60 ex id: 0B40
	dw ex_null_sprite_main, $0000	;id: 0E64 ex id: 0B44
	dw ex_null_sprite_main, $0000	;id: 0E68 ex id: 0B48
	dw ex_null_sprite_main, $0000	;id: 0E6C ex id: 0B4C
	dw ex_null_sprite_main, $0000	;id: 0E70 ex id: 0B50
	dw ex_null_sprite_main, $0000	;id: 0E74 ex id: 0B54
	dw ex_null_sprite_main, $0000	;id: 0E78 ex id: 0B58
	dw ex_null_sprite_main, $0000	;id: 0E7C ex id: 0B5C
	dw ex_null_sprite_main, $0000	;id: 0E80 ex id: 0B60
	dw ex_null_sprite_main, $0000	;id: 0E84 ex id: 0B64
	dw ex_null_sprite_main, $0000	;id: 0E88 ex id: 0B68
	dw ex_null_sprite_main, $0000	;id: 0E8C ex id: 0B6C
	dw ex_null_sprite_main, $0000	;id: 0E90 ex id: 0B70
	dw ex_null_sprite_main, $0000	;id: 0E94 ex id: 0B74
	dw ex_null_sprite_main, $0000	;id: 0E98 ex id: 0B78
	dw ex_null_sprite_main, $0000	;id: 0E9C ex id: 0B7C
	dw ex_null_sprite_main, $0000	;id: 0EA0 ex id: 0B80
	dw ex_null_sprite_main, $0000	;id: 0EA4 ex id: 0B84
	dw ex_null_sprite_main, $0000	;id: 0EA8 ex id: 0B88
	dw ex_null_sprite_main, $0000	;id: 0EAC ex id: 0B8C
	dw ex_null_sprite_main, $0000	;id: 0EB0 ex id: 0B90
	dw ex_null_sprite_main, $0000	;id: 0EB4 ex id: 0B94
	dw ex_null_sprite_main, $0000	;id: 0EB8 ex id: 0B98
	dw ex_null_sprite_main, $0000	;id: 0EBC ex id: 0B9C
	dw ex_null_sprite_main, $0000	;id: 0EC0 ex id: 0BA0
	dw ex_null_sprite_main, $0000	;id: 0EC4 ex id: 0BA4
	dw ex_null_sprite_main, $0000	;id: 0EC8 ex id: 0BA8
	dw ex_null_sprite_main, $0000	;id: 0ECC ex id: 0BAC
	dw ex_null_sprite_main, $0000	;id: 0ED0 ex id: 0BB0
	dw ex_null_sprite_main, $0000	;id: 0ED4 ex id: 0BB4
	dw ex_null_sprite_main, $0000	;id: 0ED8 ex id: 0BB8
	dw ex_null_sprite_main, $0000	;id: 0EDC ex id: 0BBC
	dw ex_null_sprite_main, $0000	;id: 0EE0 ex id: 0BC0
	dw ex_null_sprite_main, $0000	;id: 0EE4 ex id: 0BC4
	dw ex_null_sprite_main, $0000	;id: 0EE8 ex id: 0BC8
	dw ex_null_sprite_main, $0000	;id: 0EEC ex id: 0BCC
	dw ex_null_sprite_main, $0000	;id: 0EF0 ex id: 0BD0
	dw ex_null_sprite_main, $0000	;id: 0EF4 ex id: 0BD4
	dw ex_null_sprite_main, $0000	;id: 0EF8 ex id: 0BD8
	dw ex_null_sprite_main, $0000	;id: 0EFC ex id: 0BDC
	dw ex_null_sprite_main, $0000	;id: 0F00 ex id: 0BE0
	dw ex_null_sprite_main, $0000	;id: 0F04 ex id: 0BE4
	dw ex_null_sprite_main, $0000	;id: 0F08 ex id: 0BE8
	dw ex_null_sprite_main, $0000	;id: 0F0C ex id: 0BEC
	dw ex_null_sprite_main, $0000	;id: 0F10 ex id: 0BF0
	dw ex_null_sprite_main, $0000	;id: 0F14 ex id: 0BF4
	dw ex_null_sprite_main, $0000	;id: 0F18 ex id: 0BF8
	dw ex_null_sprite_main, $0000	;id: 0F1C ex id: 0BFC
	dw ex_null_sprite_main, $0000	;id: 0F20 ex id: 0C00
	dw ex_null_sprite_main, $0000	;id: 0F24 ex id: 0C04
	dw ex_null_sprite_main, $0000	;id: 0F28 ex id: 0C08
	dw ex_null_sprite_main, $0000	;id: 0F2C ex id: 0C0C
	dw ex_null_sprite_main, $0000	;id: 0F30 ex id: 0C10
	dw ex_null_sprite_main, $0000	;id: 0F34 ex id: 0C14
	dw ex_null_sprite_main, $0000	;id: 0F38 ex id: 0C18
	dw ex_null_sprite_main, $0000	;id: 0F3C ex id: 0C1C
	dw ex_null_sprite_main, $0000	;id: 0F40 ex id: 0C20
	dw ex_null_sprite_main, $0000	;id: 0F44 ex id: 0C24
	dw ex_null_sprite_main, $0000	;id: 0F48 ex id: 0C28
	dw ex_null_sprite_main, $0000	;id: 0F4C ex id: 0C2C
	dw ex_null_sprite_main, $0000	;id: 0F50 ex id: 0C30
	dw ex_null_sprite_main, $0000	;id: 0F54 ex id: 0C34
	dw ex_null_sprite_main, $0000	;id: 0F58 ex id: 0C38
	dw ex_null_sprite_main, $0000	;id: 0F5C ex id: 0C3C
	dw ex_null_sprite_main, $0000	;id: 0F60 ex id: 0C40
	dw ex_null_sprite_main, $0000	;id: 0F64 ex id: 0C44
	dw ex_null_sprite_main, $0000	;id: 0F68 ex id: 0C48
	dw ex_null_sprite_main, $0000	;id: 0F6C ex id: 0C4C
	dw ex_null_sprite_main, $0000	;id: 0F70 ex id: 0C50
	dw ex_null_sprite_main, $0000	;id: 0F74 ex id: 0C54
	dw ex_null_sprite_main, $0000	;id: 0F78 ex id: 0C58
	dw ex_null_sprite_main, $0000	;id: 0F7C ex id: 0C5C
	dw ex_null_sprite_main, $0000	;id: 0F80 ex id: 0C60
	dw ex_null_sprite_main, $0000	;id: 0F84 ex id: 0C64
	dw ex_null_sprite_main, $0000	;id: 0F88 ex id: 0C68
	dw ex_null_sprite_main, $0000	;id: 0F8C ex id: 0C6C
	dw ex_null_sprite_main, $0000	;id: 0F90 ex id: 0C70
	dw ex_null_sprite_main, $0000	;id: 0F94 ex id: 0C74
	dw ex_null_sprite_main, $0000	;id: 0F98 ex id: 0C78
	dw ex_null_sprite_main, $0000	;id: 0F9C ex id: 0C7C
	dw ex_null_sprite_main, $0000	;id: 0FA0 ex id: 0C80
	dw ex_null_sprite_main, $0000	;id: 0FA4 ex id: 0C84
	dw ex_null_sprite_main, $0000	;id: 0FA8 ex id: 0C88
	dw ex_null_sprite_main, $0000	;id: 0FAC ex id: 0C8C
	dw ex_null_sprite_main, $0000	;id: 0FB0 ex id: 0C90
	dw ex_null_sprite_main, $0000	;id: 0FB4 ex id: 0C94
	dw ex_null_sprite_main, $0000	;id: 0FB8 ex id: 0C98
	dw ex_null_sprite_main, $0000	;id: 0FBC ex id: 0C9C
	dw ex_null_sprite_main, $0000	;id: 0FC0 ex id: 0CA0
	dw ex_null_sprite_main, $0000	;id: 0FC4 ex id: 0CA4
	dw ex_null_sprite_main, $0000	;id: 0FC8 ex id: 0CA8
	dw ex_null_sprite_main, $0000	;id: 0FCC ex id: 0CAC
	dw ex_null_sprite_main, $0000	;id: 0FD0 ex id: 0CB0
	dw ex_null_sprite_main, $0000	;id: 0FD4 ex id: 0CB4
	dw ex_null_sprite_main, $0000	;id: 0FD8 ex id: 0CB8
	dw ex_null_sprite_main, $0000	;id: 0FDC ex id: 0CBC
	dw ex_null_sprite_main, $0000	;id: 0FE0 ex id: 0CC0
	dw ex_null_sprite_main, $0000	;id: 0FE4 ex id: 0CC4
	dw ex_null_sprite_main, $0000	;id: 0FE8 ex id: 0CC8
	dw ex_null_sprite_main, $0000	;id: 0FEC ex id: 0CCC
	dw ex_null_sprite_main, $0000	;id: 0FF0 ex id: 0CD0
	dw ex_null_sprite_main, $0000	;id: 0FF4 ex id: 0CD4
	dw ex_null_sprite_main, $0000	;id: 0FF8 ex id: 0CD8
	dw ex_null_sprite_main, $0000	;id: 0FFC ex id: 0CDC
	dw ex_null_sprite_main, $0000	;id: 1000 ex id: 0CE0
	dw ex_null_sprite_main, $0000	;id: 1004 ex id: 0CE4
	dw ex_null_sprite_main, $0000	;id: 1008 ex id: 0CE8
	dw ex_null_sprite_main, $0000	;id: 100C ex id: 0CEC
	dw ex_null_sprite_main, $0000	;id: 1010 ex id: 0CF0
	dw ex_null_sprite_main, $0000	;id: 1014 ex id: 0CF4
	dw ex_null_sprite_main, $0000	;id: 1018 ex id: 0CF8
	dw ex_null_sprite_main, $0000	;id: 101C ex id: 0CFC
	dw ex_null_sprite_main, $0000	;id: 1020 ex id: 0D00
	dw ex_null_sprite_main, $0000	;id: 1024 ex id: 0D04
	dw ex_null_sprite_main, $0000	;id: 1028 ex id: 0D08
	dw ex_null_sprite_main, $0000	;id: 102C ex id: 0D0C
	dw ex_null_sprite_main, $0000	;id: 1030 ex id: 0D10
	dw ex_null_sprite_main, $0000	;id: 1034 ex id: 0D14
	dw ex_null_sprite_main, $0000	;id: 1038 ex id: 0D18
	dw ex_null_sprite_main, $0000	;id: 103C ex id: 0D1C
	dw ex_null_sprite_main, $0000	;id: 1040 ex id: 0D20
	dw ex_null_sprite_main, $0000	;id: 1044 ex id: 0D24
	dw ex_null_sprite_main, $0000	;id: 1048 ex id: 0D28
	dw ex_null_sprite_main, $0000	;id: 104C ex id: 0D2C
	dw ex_null_sprite_main, $0000	;id: 1050 ex id: 0D30
	dw ex_null_sprite_main, $0000	;id: 1054 ex id: 0D34
	dw ex_null_sprite_main, $0000	;id: 1058 ex id: 0D38
	dw ex_null_sprite_main, $0000	;id: 105C ex id: 0D3C
	dw ex_null_sprite_main, $0000	;id: 1060 ex id: 0D40
	dw ex_null_sprite_main, $0000	;id: 1064 ex id: 0D44
	dw ex_null_sprite_main, $0000	;id: 1068 ex id: 0D48
	dw ex_null_sprite_main, $0000	;id: 106C ex id: 0D4C
	dw ex_null_sprite_main, $0000	;id: 1070 ex id: 0D50
	dw ex_null_sprite_main, $0000	;id: 1074 ex id: 0D54
	dw ex_null_sprite_main, $0000	;id: 1078 ex id: 0D58
	dw ex_null_sprite_main, $0000	;id: 107C ex id: 0D5C
	dw ex_null_sprite_main, $0000	;id: 1080 ex id: 0D60
	dw ex_null_sprite_main, $0000	;id: 1084 ex id: 0D64
	dw ex_null_sprite_main, $0000	;id: 1088 ex id: 0D68
	dw ex_null_sprite_main, $0000	;id: 108C ex id: 0D6C
	dw ex_null_sprite_main, $0000	;id: 1090 ex id: 0D70
	dw ex_null_sprite_main, $0000	;id: 1094 ex id: 0D74
	dw ex_null_sprite_main, $0000	;id: 1098 ex id: 0D78
	dw ex_null_sprite_main, $0000	;id: 109C ex id: 0D7C
	dw ex_null_sprite_main, $0000	;id: 10A0 ex id: 0D80
	dw ex_null_sprite_main, $0000	;id: 10A4 ex id: 0D84
	dw ex_null_sprite_main, $0000	;id: 10A8 ex id: 0D88
	dw ex_null_sprite_main, $0000	;id: 10AC ex id: 0D8C
	dw ex_null_sprite_main, $0000	;id: 10B0 ex id: 0D90
	dw ex_null_sprite_main, $0000	;id: 10B4 ex id: 0D94
	dw ex_null_sprite_main, $0000	;id: 10B8 ex id: 0D98
	dw ex_null_sprite_main, $0000	;id: 10BC ex id: 0D9C
	dw ex_null_sprite_main, $0000	;id: 10C0 ex id: 0DA0
	dw ex_null_sprite_main, $0000	;id: 10C4 ex id: 0DA4
	dw ex_null_sprite_main, $0000	;id: 10C8 ex id: 0DA8
	dw ex_null_sprite_main, $0000	;id: 10CC ex id: 0DAC
	dw ex_null_sprite_main, $0000	;id: 10D0 ex id: 0DB0
	dw ex_null_sprite_main, $0000	;id: 10D4 ex id: 0DB4
	dw ex_null_sprite_main, $0000	;id: 10D8 ex id: 0DB8
	dw ex_null_sprite_main, $0000	;id: 10DC ex id: 0DBC
	dw ex_null_sprite_main, $0000	;id: 10E0 ex id: 0DC0
	dw ex_null_sprite_main, $0000	;id: 10E4 ex id: 0DC4
	dw ex_null_sprite_main, $0000	;id: 10E8 ex id: 0DC8
	dw ex_null_sprite_main, $0000	;id: 10EC ex id: 0DCC
	dw ex_null_sprite_main, $0000	;id: 10F0 ex id: 0DD0
	dw ex_null_sprite_main, $0000	;id: 10F4 ex id: 0DD4
	dw ex_null_sprite_main, $0000	;id: 10F8 ex id: 0DD8
	dw ex_null_sprite_main, $0000	;id: 10FC ex id: 0DDC
	dw ex_null_sprite_main, $0000	;id: 1100 ex id: 0DE0
	dw ex_null_sprite_main, $0000	;id: 1104 ex id: 0DE4
	dw ex_null_sprite_main, $0000	;id: 1108 ex id: 0DE8
	dw ex_null_sprite_main, $0000	;id: 110C ex id: 0DEC
	dw ex_null_sprite_main, $0000	;id: 1110 ex id: 0DF0
	dw ex_null_sprite_main, $0000	;id: 1114 ex id: 0DF4
	dw ex_null_sprite_main, $0000	;id: 1118 ex id: 0DF8
	dw ex_null_sprite_main, $0000	;id: 111C ex id: 0DFC
	dw ex_null_sprite_main, $0000	;id: 1120 ex id: 0E00
	dw ex_null_sprite_main, $0000	;id: 1124 ex id: 0E04
	dw ex_null_sprite_main, $0000	;id: 1128 ex id: 0E08
	dw ex_null_sprite_main, $0000	;id: 112C ex id: 0E0C
	dw ex_null_sprite_main, $0000	;id: 1130 ex id: 0E10
	dw ex_null_sprite_main, $0000	;id: 1134 ex id: 0E14
	dw ex_null_sprite_main, $0000	;id: 1138 ex id: 0E18
	dw ex_null_sprite_main, $0000	;id: 113C ex id: 0E1C
	dw ex_null_sprite_main, $0000	;id: 1140 ex id: 0E20
	dw ex_null_sprite_main, $0000	;id: 1144 ex id: 0E24
	dw ex_null_sprite_main, $0000	;id: 1148 ex id: 0E28
	dw ex_null_sprite_main, $0000	;id: 114C ex id: 0E2C
	dw ex_null_sprite_main, $0000	;id: 1150 ex id: 0E30
	dw ex_null_sprite_main, $0000	;id: 1154 ex id: 0E34
	dw ex_null_sprite_main, $0000	;id: 1158 ex id: 0E38
	dw ex_null_sprite_main, $0000	;id: 115C ex id: 0E3C
	dw ex_null_sprite_main, $0000	;id: 1160 ex id: 0E40
	dw ex_null_sprite_main, $0000	;id: 1164 ex id: 0E44
	dw ex_null_sprite_main, $0000	;id: 1168 ex id: 0E48
	dw ex_null_sprite_main, $0000	;id: 116C ex id: 0E4C
	dw ex_null_sprite_main, $0000	;id: 1170 ex id: 0E50
	dw ex_null_sprite_main, $0000	;id: 1174 ex id: 0E54
	dw ex_null_sprite_main, $0000	;id: 1178 ex id: 0E58
	dw ex_null_sprite_main, $0000	;id: 117C ex id: 0E5C
	dw ex_null_sprite_main, $0000	;id: 1180 ex id: 0E60
	dw ex_null_sprite_main, $0000	;id: 1184 ex id: 0E64
	dw ex_null_sprite_main, $0000	;id: 1188 ex id: 0E68
	dw ex_null_sprite_main, $0000	;id: 118C ex id: 0E6C
	dw ex_null_sprite_main, $0000	;id: 1190 ex id: 0E70
	dw ex_null_sprite_main, $0000	;id: 1194 ex id: 0E74
	dw ex_null_sprite_main, $0000	;id: 1198 ex id: 0E78
	dw ex_null_sprite_main, $0000	;id: 119C ex id: 0E7C
	dw ex_null_sprite_main, $0000	;id: 11A0 ex id: 0E80
	dw ex_null_sprite_main, $0000	;id: 11A4 ex id: 0E84
	dw ex_null_sprite_main, $0000	;id: 11A8 ex id: 0E88
	dw ex_null_sprite_main, $0000	;id: 11AC ex id: 0E8C
	dw ex_null_sprite_main, $0000	;id: 11B0 ex id: 0E90
	dw ex_null_sprite_main, $0000	;id: 11B4 ex id: 0E94
	dw ex_null_sprite_main, $0000	;id: 11B8 ex id: 0E98
	dw ex_null_sprite_main, $0000	;id: 11BC ex id: 0E9C
	dw ex_null_sprite_main, $0000	;id: 11C0 ex id: 0EA0
	dw ex_null_sprite_main, $0000	;id: 11C4 ex id: 0EA4
	dw ex_null_sprite_main, $0000	;id: 11C8 ex id: 0EA8
	dw ex_null_sprite_main, $0000	;id: 11CC ex id: 0EAC
	dw ex_null_sprite_main, $0000	;id: 11D0 ex id: 0EB0
	dw ex_null_sprite_main, $0000	;id: 11D4 ex id: 0EB4
	dw ex_null_sprite_main, $0000	;id: 11D8 ex id: 0EB8
	dw ex_null_sprite_main, $0000	;id: 11DC ex id: 0EBC
	dw ex_null_sprite_main, $0000	;id: 11E0 ex id: 0EC0
	dw ex_null_sprite_main, $0000	;id: 11E4 ex id: 0EC4
	dw ex_null_sprite_main, $0000	;id: 11E8 ex id: 0EC8
	dw ex_null_sprite_main, $0000	;id: 11EC ex id: 0ECC
	dw ex_null_sprite_main, $0000	;id: 11F0 ex id: 0ED0
	dw ex_null_sprite_main, $0000	;id: 11F4 ex id: 0ED4
	dw ex_null_sprite_main, $0000	;id: 11F8 ex id: 0ED8
	dw ex_null_sprite_main, $0000	;id: 11FC ex id: 0EDC
	dw ex_null_sprite_main, $0000	;id: 1200 ex id: 0EE0
	dw ex_null_sprite_main, $0000	;id: 1204 ex id: 0EE4
	dw ex_null_sprite_main, $0000	;id: 1208 ex id: 0EE8
	dw ex_null_sprite_main, $0000	;id: 120C ex id: 0EEC
	dw ex_null_sprite_main, $0000	;id: 1210 ex id: 0EF0
	dw ex_null_sprite_main, $0000	;id: 1214 ex id: 0EF4
	dw ex_null_sprite_main, $0000	;id: 1218 ex id: 0EF8
	dw ex_null_sprite_main, $0000	;id: 121C ex id: 0EFC
	dw ex_null_sprite_main, $0000	;id: 1220 ex id: 0F00
	dw ex_null_sprite_main, $0000	;id: 1224 ex id: 0F04
	dw ex_null_sprite_main, $0000	;id: 1228 ex id: 0F08
	dw ex_null_sprite_main, $0000	;id: 122C ex id: 0F0C
	dw ex_null_sprite_main, $0000	;id: 1230 ex id: 0F10
	dw ex_null_sprite_main, $0000	;id: 1234 ex id: 0F14
	dw ex_null_sprite_main, $0000	;id: 1238 ex id: 0F18
	dw ex_null_sprite_main, $0000	;id: 123C ex id: 0F1C
	dw ex_null_sprite_main, $0000	;id: 1240 ex id: 0F20
	dw ex_null_sprite_main, $0000	;id: 1244 ex id: 0F24
	dw ex_null_sprite_main, $0000	;id: 1248 ex id: 0F28
	dw ex_null_sprite_main, $0000	;id: 124C ex id: 0F2C
	dw ex_null_sprite_main, $0000	;id: 1250 ex id: 0F30
	dw ex_null_sprite_main, $0000	;id: 1254 ex id: 0F34
	dw ex_null_sprite_main, $0000	;id: 1258 ex id: 0F38
	dw ex_null_sprite_main, $0000	;id: 125C ex id: 0F3C
	dw ex_null_sprite_main, $0000	;id: 1260 ex id: 0F40
	dw ex_null_sprite_main, $0000	;id: 1264 ex id: 0F44
	dw ex_null_sprite_main, $0000	;id: 1268 ex id: 0F48
	dw ex_null_sprite_main, $0000	;id: 126C ex id: 0F4C
	dw ex_null_sprite_main, $0000	;id: 1270 ex id: 0F50
	dw ex_null_sprite_main, $0000	;id: 1274 ex id: 0F54
	dw ex_null_sprite_main, $0000	;id: 1278 ex id: 0F58
	dw ex_null_sprite_main, $0000	;id: 127C ex id: 0F5C
	dw ex_null_sprite_main, $0000	;id: 1280 ex id: 0F60
	dw ex_null_sprite_main, $0000	;id: 1284 ex id: 0F64
	dw ex_null_sprite_main, $0000	;id: 1288 ex id: 0F68
	dw ex_null_sprite_main, $0000	;id: 128C ex id: 0F6C
	dw ex_null_sprite_main, $0000	;id: 1290 ex id: 0F70
	dw ex_null_sprite_main, $0000	;id: 1294 ex id: 0F74
	dw ex_null_sprite_main, $0000	;id: 1298 ex id: 0F78
	dw ex_null_sprite_main, $0000	;id: 129C ex id: 0F7C
	dw ex_null_sprite_main, $0000	;id: 12A0 ex id: 0F80
	dw ex_null_sprite_main, $0000	;id: 12A4 ex id: 0F84
	dw ex_null_sprite_main, $0000	;id: 12A8 ex id: 0F88
	dw ex_null_sprite_main, $0000	;id: 12AC ex id: 0F8C
	dw ex_null_sprite_main, $0000	;id: 12B0 ex id: 0F90
	dw ex_null_sprite_main, $0000	;id: 12B4 ex id: 0F94
	dw ex_null_sprite_main, $0000	;id: 12B8 ex id: 0F98
	dw ex_null_sprite_main, $0000	;id: 12BC ex id: 0F9C
	dw ex_null_sprite_main, $0000	;id: 12C0 ex id: 0FA0
	dw ex_null_sprite_main, $0000	;id: 12C4 ex id: 0FA4
	dw ex_null_sprite_main, $0000	;id: 12C8 ex id: 0FA8
	dw ex_null_sprite_main, $0000	;id: 12CC ex id: 0FAC
	dw ex_null_sprite_main, $0000	;id: 12D0 ex id: 0FB0
	dw ex_null_sprite_main, $0000	;id: 12D4 ex id: 0FB4
	dw ex_null_sprite_main, $0000	;id: 12D8 ex id: 0FB8
	dw ex_null_sprite_main, $0000	;id: 12DC ex id: 0FBC
	dw ex_null_sprite_main, $0000	;id: 12E0 ex id: 0FC0
	dw ex_null_sprite_main, $0000	;id: 12E4 ex id: 0FC4
	dw ex_null_sprite_main, $0000	;id: 12E8 ex id: 0FC8
	dw ex_null_sprite_main, $0000	;id: 12EC ex id: 0FCC
	dw ex_null_sprite_main, $0000	;id: 12F0 ex id: 0FD0
	dw ex_null_sprite_main, $0000	;id: 12F4 ex id: 0FD4
	dw ex_null_sprite_main, $0000	;id: 12F8 ex id: 0FD8
	dw ex_null_sprite_main, $0000	;id: 12FC ex id: 0FDC
	dw ex_null_sprite_main, $0000	;id: 1300 ex id: 0FE0
	dw ex_null_sprite_main, $0000	;id: 1304 ex id: 0FE4
	dw ex_null_sprite_main, $0000	;id: 1308 ex id: 0FE8
	dw ex_null_sprite_main, $0000	;id: 130C ex id: 0FEC
	dw ex_null_sprite_main, $0000	;id: 1310 ex id: 0FF0
	dw ex_null_sprite_main, $0000	;id: 1314 ex id: 0FF4
	dw ex_null_sprite_main, $0000	;id: 1318 ex id: 0FF8
	dw ex_null_sprite_main, $0000	;id: 131C ex id: 0FFC
ex_sprite_main_table_end:
