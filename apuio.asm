struct SPC $00F0
	.test: skip 1			;00F0
	.control: skip 1		;00F1
	.DSP_addr: skip 1		;00F2
	.DSP_data: skip 1		;00F3
	.CPUIO1: skip 1			;00F4
	.CPUIO2: skip 1			;00F5
	.CPUIO3: skip 1			;00F6
	.CPUIO4: skip 1			;00F7
	.AUXIO5: skip 1			;00F8
	.AUXIO6: skip 1			;00F9
	.timer_1_divider: skip 1	;00FA
	.timer_2_divider: skip 1	;00FB
	.timer_3_divider: skip 1	;00FC
	.timer_1_output: skip 1		;00FD
	.timer_2_output: skip 1		;00FE
	.timer_3_output: skip 1		;00FF
endstruct

;struct DSP $00
;	.vol_l: skip 1			;x0 - VxVOLL   - Left volume for Voice 0..7 (R/W)
;	.vol_r: skip 1			;x1 - VxVOLR   - Right volume for Voice 0..7 (R/W)
;	.pitch_low: skip 1		;x2 - VxPITCHL - Pitch scaler for Voice 0..7, lower 8bit (R/W)
;	.pitch_high: skip 1		;x3 - VxPITCHH - Pitch scaler for Voice 0..7, upper 6bit (R/W)
;	.source: skip 1			;x4 - VxSRCN   - Source number for Voice 0..7 (R/W)
;	.ADSR1: skip 1			;x5 - VxADSR1  - ADSR settings for Voice 0..7, lower 8bit (R/W)
;	.ADSR2: skip 1			;x6 - VxADSR2  - ADSR settings for Voice 0..7, upper 8bit (R/W)
;	.gain: skip 1			;x7 - VxGAIN   - Gain settings for Voice 0..7 (R/W)
;	.envelope: skip 1		;x8 - VxENVX   - Current envelope value for Voice 0..7 (R)
;	.sample: skip 1			;x9 - VxOUTX   - Current sample value for Voice 0..7 (R)
;	.general_purpose_A: skip 1	;xA - NA       - Unused (8 bytes of general-purpose RAM) (R/W)
;	.general_purpose_B: skip 1	;xB - NA       - Unused (8 bytes of general-purpose RAM) (R/W)
;	.master_vol_l: skip 1		;0C - MVOLL    - Left channel master volume (R/W)
;	.echo_feedback_vol: skip 1	;0D - EFB      - Echo feedback volume (R/W)
;	.general_purpose_E: skip 1	;xE - NA       - Unused (8 bytes of general-purpose RAM) (R/W)
;	.echo_fir_filter: skip 1	;xF - FIRx     - Echo FIR filter coefficient 0..7 (R/W)
;	skip $0C
;	
;	.master_vol_r: skip 1		;1C - MVOLR    - Right channel master volume (R/W)
;	.general_purpose_1D: skip 1	;1D - NA       - Unused (1 byte of general-purpose RAM) (R/W)
;	skip $0E
;	
;	.echo_vol_l: skip 1		;2C - EVOLL    - Left channel echo volume (R/W)
;	.pitch_mod: skip 1		;2D - PMON     - Pitch Modulation Enable Flags for Voice 1..7 (R/W)
;	skip $0E
;	
;	.echo_vol_r: skip 1		;3C - EVOLR    - Right channel echo volume (R/W)
;	.noise_enable: skip 1		;3D - NON      - Noise Enable Flags for Voice 0..7 (R/W)
;	skip $0E
;	
;	.key_on: skip 1			;4C - KON      - Key On Flags for Voice 0..7 (W)
;	.echo_enable: skip 1		;4D - EON      - Echo Enable Flags for Voice 0..7 (R/W)
;	skip $0E
;	
;	.key_off: skip 1		;5C - KOFF     - Key Off Flags for Voice 0..7 (R/W)
;	.sample_table_addr: skip 1	;5D - DIR      - Sample table address (R/W)
;	skip $0E
;	
;	.flags: skip 1			;6C - FLG      - Reset, Mute, Echo-Write flags and Noise Clock (R/W)
;	.echo_buf_addr: skip 1		;6D - ESA      - Echo ring buffer address (R/W)
;	skip $0E
;	
;	.end_flags: skip 1		;7C - ENDX     - Voice End Flags for Voice 0..7 (R) (W=Ack)
;	.echo_delay: skip 1		;7D - EDL      - Echo delay (ring buffer size) (R/W)
;	
;endstruct align $10


struct DSPc $00
	.vol_l: skip 1			;x0 - VxVOLL   - Left volume for Voice 0..7 (R/W)
	.vol_r: skip 1			;x1 - VxVOLR   - Right volume for Voice 0..7 (R/W)
	.pitch_low: skip 1		;x2 - VxPITCHL - Pitch scaler for Voice 0..7, lower 8bit (R/W)
	.pitch_high: skip 1		;x3 - VxPITCHH - Pitch scaler for Voice 0..7, upper 6bit (R/W)
	.source: skip 1			;x4 - VxSRCN   - Source number for Voice 0..7 (R/W)
	.ADSR1: skip 1			;x5 - VxADSR1  - ADSR settings for Voice 0..7, lower 8bit (R/W)
	.ADSR2: skip 1			;x6 - VxADSR2  - ADSR settings for Voice 0..7, upper 8bit (R/W)
	.gain: skip 1			;x7 - VxGAIN   - Gain settings for Voice 0..7 (R/W)
	.envelope: skip 1		;x8 - VxENVX   - Current envelope value for Voice 0..7 (R)
	.sample: skip 1			;x9 - VxOUTX   - Current sample value for Voice 0..7 (R)
	.general_purpose_A: skip 1	;xA - NA       - Unused (8 bytes of general-purpose RAM) (R/W)
	.general_purpose_B: skip 1	;xB - NA       - Unused (8 bytes of general-purpose RAM) (R/W)
	skip 2
	.general_purpose_E: skip 1	;xE - NA       - Unused (8 bytes of general-purpose RAM) (R/W)
	.echo_fir_filter: skip 1	;xF - FIRx     - Echo FIR filter coefficient 0..7 (R/W)
endstruct align $10

struct DSPs $00
	skip $0C
	
	.master_vol_l: skip 1		;0C - MVOLL    - Left channel master volume (R/W)
	.echo_fb_vol: skip 1		;0D - EFB      - Echo feedback volume (R/W)
	skip $0E
	
	.master_vol_r: skip 1		;1C - MVOLR    - Right channel master volume (R/W)
	.general_purpose_1D: skip 1	;1D - NA       - Unused (1 byte of general-purpose RAM) (R/W)
	skip $0E
	
	.echo_vol_l: skip 1		;2C - EVOLL    - Left channel echo volume (R/W)
	.pitch_mod: skip 1		;2D - PMON     - Pitch Modulation Enable Flags for Voice 1..7 (R/W)
	skip $0E
	
	.echo_vol_r: skip 1		;3C - EVOLR    - Right channel echo volume (R/W)
	.noise_enable: skip 1		;3D - NON      - Noise Enable Flags for Voice 0..7 (R/W)
	skip $0E
	
	.key_on: skip 1			;4C - KON      - Key On Flags for Voice 0..7 (W)
	.echo_enable: skip 1		;4D - EON      - Echo Enable Flags for Voice 0..7 (R/W)
	skip $0E
	
	.key_off: skip 1		;5C - KOFF     - Key Off Flags for Voice 0..7 (R/W)
	.sample_dir_addr: skip 1	;5D - DIR      - Sample table address (R/W)
	skip $0E
	
	.flags: skip 1			;6C - FLG      - Reset, Mute, Echo-Write flags and Noise Clock (R/W)
	.echo_buf_addr: skip 1		;6D - ESA      - Echo ring buffer address (R/W)
	skip $0E
	
	.end_flags: skip 1		;7C - ENDX     - Voice End Flags for Voice 0..7 (R) (W=Ack)
	.echo_delay: skip 1		;7D - EDL      - Echo delay (ring buffer size) (R/W)
endstruct