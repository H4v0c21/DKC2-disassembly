namespace APU

channel_variable_note_1 = $0C
channel_variable_note_2 = $14

sound_engine_toggle = $1C
mono_stereo_toggle = $1D
; = $1E	;music tempo related
song_tempo = $1F
; = $20	;music tempo related
; = $21	;sound tempo related
sfx_tempo = $22
; = $23	;sound tempo related
channel_wait_timer_hi = $24
channel_wait_timer_lo = $34
channel_seq_address_lo = $44
channel_seq_address_hi = $54
channel_pitch_fine = $64
channel_unknown_74 = $74	;pitch related
channel_unknown_84 = $84	;pitch related
channel_unknown_94 = $94	;pitch slide related
channel_vibrato_position = $A4
channel_vibrato_step = $B4
channel_vibrato_delay_timer = $C4
channel_unknown_D4 = $D4	;used as the "depth" of recursive sub calls? (used to index return address and loop count data)

song_data_address = $E5

cpu_transaction = $E9
cpu_upload_size = $EA

channel_enable = $0110
channel_default_duration_lo = $0120
channel_default_duration_hi = $0130
channel_pitch = $0140
channel_effects = $0150	;01 pitch slide, 02, vibrato
channel_pitch_slide_delay  = $0160
channel_pitch_slide_interval  = $0170
channel_pitch_slide_up_count  = $0180
channel_pitch_slide_down_count  = $0190
channel_p_slide_delay_timer = $01A0
channel_pitch_delta = $01B0

channel_long_duration = $01D0
channel_unknown_01E0 = $01E0

channel_vibrato_length = $0200
channel_vibrato_rate = $0210
channel_vibrato_delay = $0220

channel_vibrato_depth = $0234
channel_instrument = $0244
channel_vol_l = $0254
channel_vol_r = $0264
channel_adsr_1 = $0274
channel_adsr_2 = $0284
channel_echo_state = $0294

channel_seq_loop_address_lo = $0334

channel_seq_loop_address_hi = $03B4

channel_seq_loop_count = $0434

song_master_volume = $04B6

vol_preset_1_l = $04B8
vol_preset_1_r = $04B9
vol_preset_2_l = $04BA
vol_preset_2_r = $04BB

cpu_command_parameter = $055D


;$125E-$12FF appears to be unused (Note: file select theme is bugged, indexes the pitch table out of bounds resulting in reads in this range)
song_data = $1300
sub_track_table = $1312
global_sfx_data = $2410
global_sfx_table = $2412
track_sfx_data = $2E94
track_sfx_table = $2E96
sample_table = $3100
sample_data = $3400

namespace off