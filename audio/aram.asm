pushpc
org $000000
namespace APU

ARAM_00: 			skip 1		;$0000
ARAM_01: 			skip 1		;$0001
ARAM_02: 			skip 1		;$0002
ARAM_03: 			skip 1		;$0003
ARAM_04: 			skip 2		;$0004
				skip 4		;$0006 Unknown, not referenced directly
ARAM_0A: 			skip 1		;$000A
				skip 1		;$000B Unknown, not referenced directly
channel_variable_note_1:	skip 8		;$000C
channel_variable_note_2:	skip 8		;$0014
sound_engine_toggle:		skip 1		;$001C
mono_stereo_toggle:		skip 1		;$001D
ARAM_1E:			skip 1		;$001E Related to music tempo
song_tempo:			skip 1		;$001F
ARAM_20:			skip 1		;$0020 Related to music tempo
ARAM_21:			skip 1		;$0021 Related to sound effect tempo
sfx_tempo:			skip 1		;$0022
ARAM_23:			skip 1		;$0023 Related to sound effect tempo
channel_wait_timer_hi:		skip 16		;$0024
channel_wait_timer_lo:		skip 16		;$0034
channel_seq_address_lo:		skip 16		;$0044
channel_seq_address_hi:		skip 16		;$0054
channel_pitch_fine:		skip 16		;$0064
channel_unknown_74:		skip 16		;$0074 Pitch related
channel_unknown_84:		skip 16		;$0084 Pitch related
channel_unknown_94:		skip 16		;$0094 Pitch slide related
channel_vibrato_position:	skip 16		;$00A4
channel_vibrato_step:		skip 16		;$00B4
channel_vibrato_delay_timer:	skip 16		;$00C4
channel_unknown_D4:		skip 16		;$00D4 Recursive sub call depth (indexes return address/loop count data)
ARAM_E4:			skip 1		;$00E4 Engine speed
song_data_address:		skip 2		;$00E5
ARAM_E7:			skip 1		;$00E7
ARAM_E8:			skip 1		;$00E8
cpu_transaction:		skip 1		;$00E9
cpu_upload_size:		skip 2		;$00EA
ARAM_EC:			skip 1		;$00EC Appears to be absolute looping sfx speed
ARAM_ED:			skip 1		;$00ED
ARAM_EE:			skip 1		;$00EE Appears to be relative looping sfx speed
ARAM_EF:			skip 1		;$00EF
				skip 16		;$00F0 DSP registers
channel_unknown_0100:		skip 16		;$0100
channel_enable:			skip 16		;$0110
channel_default_duration_lo:	skip 16		;$0120
channel_default_duration_hi:	skip 16		;$0130
channel_pitch:			skip 16		;$0140
channel_effects:		skip 16		;$0150 01 pitch slide, 02, vibrato
channel_pitch_slide_delay:	skip 16		;$0160
channel_pitch_slide_interval:	skip 16		;$0170
channel_pitch_slide_up_count:	skip 16		;$0180
channel_pitch_slide_down_count:	skip 16		;$0190
channel_p_slide_delay_timer:	skip 16		;$01A0
channel_pitch_delta:		skip 16		;$01B0
channel_unknown_01C0:		skip 16		;$01C0
channel_long_duration:		skip 16		;$01D0
channel_unknown_01E0:		skip 16		;$01E0
stack:				skip 16		;$01F0 16 byte stack for the APU
channel_vibrato_length:		skip 16		;$0200
channel_vibrato_rate:		skip 16		;$0210
channel_vibrato_delay:		skip 16		;$0220
ARAM_0230:			skip 1		;$0230
ARAM_0231:			skip 1		;$0231
ARAM_0232:			skip 1		;$0232
ARAM_0233:			skip 1		;$0233
channel_vibrato_depth:		skip 16		;$0234
channel_instrument:		skip 16		;$0244
channel_vol_l:			skip 16		;$0254
channel_vol_r:			skip 16		;$0264
channel_adsr_1:			skip 16		;$0274
channel_adsr_2:			skip 16		;$0284
channel_echo_state:		skip 16		;$0294
channel_unknown_02A4:		skip 16		;$02A4 Unused LFO effect variables
channel_unknown_02B4:		skip 16		;$02B4 Unused LFO effect variables
channel_unknown_02C4:		skip 16		;$02C4 Unused LFO effect variables
channel_unknown_02D4:		skip 16		;$02D4 Unused LFO effect variables
channel_unknown_02E4:		skip 16		;$02E4 Unused LFO effect variables
channel_unknown_02F4:		skip 16		;$02F4 Unused LFO effect variables
				skip 16		;$0304 Unused tremolo effect variables
channel_unknown_0314:		skip 16		;$0314 Unused tremolo effect variables
channel_unknown_0324:		skip 16		;$0324 Unused tremolo effect variables
channel_seq_loop_address_lo:	skip 128	;$0334 Can nest 8x, might contain return address
channel_seq_loop_address_hi:	skip 128	;$03B4 Can nest 8x, might contain return address
channel_seq_loop_count:		skip 128	;$0434 Can nest 8x, might do more
ARAM_04B4:			skip 1		;$04B4
ARAM_04B5:			skip 1		;$04B5
song_master_volume:		skip 1		;$04B6
ARAM_04B7:			skip 1		;$04B7
vol_preset_1_l:			skip 1		;$04B8
vol_preset_1_r:			skip 1		;$04B9
vol_preset_2_l:			skip 1		;$04BA
vol_preset_2_r:			skip 1		;$04BB
				skip 28		;$04BC Unused (file select is bugged, reads pitch out of bounds here)

audio_core:			skip $88	;$04D8 Audio core
audio_engine:			skip $0DA0	;$0560 Audio engine
song_data:					;$1300
%offset(sub_track_table, 18)			;$1312
				skip $1110	;
global_sfx_data:				;$2410
%offset(global_sfx_table, 2)			;$2412
				skip $0A84	;
track_sfx_data:					;$2E94
%offset(track_sfx_table, 2)			;$2E96
				skip $026C	;
skip align $0100
sample_table:			skip $0300	;$3100

sample_data:					;$3400

namespace off
base off
pullpc
