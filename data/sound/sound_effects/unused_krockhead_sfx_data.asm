;Sound Effects: Krockheads only (UNUSED)
;$F2F697
unused_krockhead_sfx_data:
namespace APU

%sequence_data_header(track_sfx_data, .start, .end+4)

base track_sfx_data
arch spc700

.start
	dw (.pointers_end-.pointers_start)>>1	;quantity of sound effects (default $0003)
;sound effect pointers
.pointers_start:
	dw .seq_2EAE	;60: 
	dw .seq_2E9D	;61: 
	dw .seq_2E9C	;62: 
.pointers_end:

.seq_2E9C:
	db !end_sequence

.seq_2E9D:
	db !set_instrument, $4B
	db !set_vol_single_val, $64
	db !set_adsr, $8E, $EE
	db !pitch_slide_up, $00, $01, $2C, $6F, $08
	db !echo_on
	db $90, $21
	db !end_sequence

.seq_2EAE:
	db !set_instrument, $4B
	db !set_vol_single_val, $64
	db !set_adsr, $8E, $E0
	db !pitch_slide_up, $00, $01, $2C, $6F, $08
	db !echo_on
	db $90, $10
	db !end_sequence

.end
namespace off
base off
arch 65816