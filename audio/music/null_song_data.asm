;00 NULL
;$EE1939
null_song_data:
namespace APU

%sequence_data_header(song_data, .start, .end)

base song_data
arch spc700

.start
;sub-track 00 channel pointers
.chn_ptrs_1300:
	dw .seq_1314, .seq_1321, .seq_1321, .seq_1321, .seq_1321, .seq_1321, .seq_1321, .seq_1321
	db $80, $FF	;music tempo, sound effect tempo

;sub-track pointers
	dw .chn_ptrs_1300	;00: 

.seq_1314:
	db !set_echo, $37, $23, $23
	db !set_fir, $7F, $0A, $01, $01, $01, $01, $01, $01
.seq_1321:
	db !end_sequence

.end
namespace off
base off
arch 65816