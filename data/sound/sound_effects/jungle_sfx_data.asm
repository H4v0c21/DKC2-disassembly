;Sound Effects: Jungle
;$F2F6C6
jungle_sfx_data:
namespace APU

%sequence_data_header(track_sfx_data, .start, .end+4)

base track_sfx_data
arch spc700

.start
	dw (.pointers_end-.pointers_start)>>1	;quantity of sound effects (default $0004)
;sound effect pointers
.pointers_start:
	dw .seq_2ED9	;60: Tire bounce
	dw .seq_2EC3	;61: Tire bounce off wall
	dw .seq_2EAF	;62: Tire bounce off ground
	dw .seq_2E9E	;63: Tire idle loop
.pointers_end:

.seq_2E9E:
	db !set_instrument, $B8
	db !set_vol_single_val, $50
	db !vibrato, $08, $03, $42
	db !set_adsr, $88, $E0
	db !long_duration_on
	db $8E, $FF, $FF
	db !long_duration_off
	db !end_sequence

.seq_2EAF:
	db !set_instrument, $B8
	db !set_vol_single_val, $5A
	db !vibrato, $03, $03, $42
	db !pitch_slide_down, $00, $01, $28, $42, $08
	db !set_adsr, $9E, $CF
	db $9F, $24
	db !end_sequence

.seq_2EC3:
	db !set_instrument, $B8
	db !set_vol_single_val, $5A
	db !vibrato, $03, $03, $42
	db !pitch_slide_up, $00, $01, $21, $3A, $08
	db !set_adsr, $9E, $D1
	db $9A, $08
	db $9A, $20
	db !end_sequence

.seq_2ED9:
	db !set_instrument, $B8
	db !set_vol_single_val, $5A
	db !vibrato, $03, $03, $42
	db !pitch_slide_up, $00, $01, $21, $3A, $08
	db !set_adsr, $9E, $D1
	db $A0, $20
	db !end_sequence

.end
namespace off
base off
arch 65816