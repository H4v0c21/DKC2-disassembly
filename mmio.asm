struct PPU $2100
	.screen: skip 1					;$2100  INIDISP

	.sprite_select: skip 1				;$2101  OBSEL
	.oam_address:
		.oam_address_low: skip 1		;$2102  OAMADDL
		.oam_address_high: skip 1		;$2103  OAMADDH
	.oam_write: skip 1				;$2104  OAMDATA

	.layer_mode: skip 1				;$2105  BGMODE
	.mosaic: skip 1					;$2106  MOSAIC

	.layer_1_2_tilemap_base:
		.layer_1_tilemap_base: skip 1		;$2107  BG1SC
		.layer_2_tilemap_base: skip 1		;$2108  BG2SC
	.layer_3_4_tilemap_base:
		.layer_3_tilemap_base: skip 1		;$2109  BG3SC
		.layer_4_tilemap_base: skip 1		;$210A  BG4SC

	.layer_all_tiledata_base:
		.layer_1_2_tiledata_base: skip 1	;$210B  BG12NBA
		.layer_3_4_tiledata_base: skip 1	;$210C  BG34NBA

	.layer_1_scroll_x: skip 1			;$210D  BG1HOFS  write_twice
	.layer_1_scroll_y: skip 1			;$210E  BG1VOFS  write_twice
	.layer_2_scroll_x: skip 1			;$210F  BG2HOFS  write_twice
	.layer_2_scroll_y: skip 1			;$2110  BG2VOFS  write_twice
	.layer_3_scroll_x: skip 1			;$2111  BG3HOFS  write_twice
	.layer_3_scroll_y: skip 1			;$2112  BG3VOFS  write_twice
	.layer_4_scroll_x: skip 1			;$2113  BG4HOFS  write_twice
	.layer_4_scroll_y: skip 1			;$2114  BG4VOFS  write_twice

	.vram_control: skip 1				;$2115  VMAIN
	.vram_address:
		.vram_address_low: skip 1		;$2116  VMADDL
		.vram_address_high: skip 1		;$2117  VMADDH
	.vram_write:
		.vram_write_low: skip 1			;$2118  VMDATAL
		.vram_write_high: skip 1		;$2119  VMDATAH

	.set_mode_7: skip 1				;$211A  M7SEL
	.fixed_point_mul_A:				;$211B  M7A
	.mode_7_A: skip 1				;$211B  M7A  write_twice
	.fixed_point_mul_B:				;$211C  M7B
	.mode_7_B: skip 1				;$211C  M7B  write_twice
	.mode_7_C: skip 1				;$211D  M7C  write_twice
	.mode_7_D: skip 1				;$211E  M7D  write_twice
	.mode_7_center_x: skip 1			;$211F  M7X  write_twice
	.mode_7_center_y: skip 1			;$2120  M7Y  write_twice

	.cgram_address: skip 1				;$2121  CGADD
	.cgram_write: skip 1				;$2122  CGDATA

	.set_window_layer_all:
		.set_window_layer_1_2: skip 1		;$2123  W12SEL
		.set_window_layer_3_4: skip 1		;$2124  W34SEL
	.set_window_sprite_color: skip 1		;$2125  WOBJSEL
	.window_1:
		.window_1_left: skip 1			;$2126  WH0
		.window_1_right: skip 1			;$2127  WH1
	.window_2:
		.window_2_left: skip 1			;$2128  WH2
		.window_2_right: skip 1			;$2129  WH3
	.window_logic:
		.window_layer_logic: skip 1		;$212A  WBGLOG
		.window_sprite_color_logic: skip 1	;$212B  WOBJLOG

	.screens:
		.main_screen: skip 1			;$212C  TM
		.sub_screen: skip 1			;$212D  TS

	.window_masks:
		.window_mask_main_screen: skip 1	;$212E  TMW
		.window_mask_sub_screen: skip 1		;$212F  TSW

	.color_math:
		.color_addition_logic: skip 1		;$2130  CGWSEL
		.set_color_math: skip 1			;$2131  CGADSUB

	.display_control:
		.fixed_color: skip 1			;$2132  COLDATA
		.video_mode: skip 1			;$2133  SETINI

	.multiplication:
		.multiply_result_word:
			.multiply_result_low: skip 1	;$2134  MPYL
			.multiply_result_mid: skip 1	;$2135  MPYM
		.multiply_result_high: skip 1		;$2136  MPYH

	.latch: skip 1					;$2137  SLHV

	.oam_read: skip 1				;$2138  OAMDATAREAD

	.vram_read:
		.vram_read_low: skip 1			;$2139  VMDATALREAD
		.vram_read_high: skip 1			;$213A  VMDATAHREAD

	.cgram_read: skip 1				;$213B  CGDATAREAD

	.horizontal_scanline: skip 1			;$213C  OPHCT  read twice
	.vertical_scanline: skip 1			;$213D  OPVCT  read twice

	.status:
		.status_ppu1: skip 1			;$213E  STAT77
		.status_ppu2: skip 1			;$213F  STAT78
endstruct


struct APU $2140
	.IO1: skip 1					;$2140  APUIO0
	.IO2: skip 1					;$2141  APUIO1
	.IO3: skip 1					;$2142  APUIO2
	.IO4: skip 1					;$2143  APUIO3
endstruct


struct WRAM $2180
	.data: skip 1					;$2180  WMDATA
	.address:
		.word:
			.low: skip 1			;$2181  WMADDL
			.mid: skip 1			;$2182  WMADDM
		.bank: skip 1				;$2183  WMADDH
endstruct


struct joypad $4016
	.ports:
		.port_0: skip 1				;$4016  JOYSER0
		.port_1: skip 1				;$4017  JOYSER1
endstruct


struct CPU $4200
	.enable_interrupts: skip 1			;$4200  NMITIMEN
	.output_port: skip 1				;$4201  WRIO
	.multiply:
		.multiply_A: skip 1			;$4202  WRMPYA
		.multiply_B: skip 1			;$4203  WRMPYB
	.dividen:
		.dividen_low: skip 1			;$4204  WRDIVL
		.dividen_high: skip 1			;$4204  WRDIVH
	.divisor: skip 1				;$4206  WRDIVB

	.horizontal_timer:
		.horizontal_timer_low: skip 1		;$4207  HTIMEL
		.horizontal_timer_high: skip 1		;$4208  HTIMEH

	.vertical_timer:
		.vertical_timer_low: skip 1		;$4209  VTIMEL
		.vertical_timer_high: skip 1		;$420A  VTIMEH

	.enable_dma_hdma:
		.enable_dma: skip 1			;$420B  MDMAEN
		.enable_hdma: skip 1			;$420C  HDMAEN

	.rom_speed: skip 1				;$420D  MEMSEL

	.openbus: skip 2				;$420E

	.nmi_flag: skip 1				;$4210  RDNMI
	.irq_flag: skip 1				;$4211  TIMEUP
	.ppu_status: skip 1				;$4212  HVBJOY

	.input_port: skip 1				;$4213  RDIO

	.divide_result:
		.divide_result_low: skip 1		;$4214  RDDIVL
		.divide_result_high: skip 1		;$4215  RDDIVH

	.multiply_result:
	.divide_remainder:
		.multiply_result_low:
		.divide_remainder_low: skip 1		;$4216  RDMPYL
		.multiply_result_high:
		.divide_remainder_high: skip 1		;$4217  RDMPYH

	.controllers:
		.port_0_data_1:
			.port_0_data_1_low: skip 1	;$4218  JOY1L
			.port_0_data_1_high: skip 1	;$4219  JOY1H
		.port_1_data_1:
			.port_1_data_1_low: skip 1	;$421A  JOY2L
			.port_1_data_1_high: skip 1	;$421B  JOY2H
		.port_0_data_2:
			.port_0_data_2_low: skip 1	;$421C  JOY3L
			.port_0_data_2_high: skip 1	;$421D  JOY3H
		.port_1_data_2:
			.port_1_data_2_low: skip 1	;$421E  JOY4L
			.port_1_data_2_high: skip 1	;$421F	JOY4H

endstruct


struct DMA $4300
	.settings:
		.control: skip 1			;$43x0  DMAPx
		.destination: skip 1			;$43x1  BBADx

	.source
		.source_word:
			.source_word_low: skip 1	;$43x2  A1TxL
			.source_word_high: skip 1	;$43x3  A1TxH
		.source_bank: skip 1			;$43x4  A1Bx
	.size:
		.size_low: skip 1			;$43x5  DASxL
		.size_high: skip 1			;$43x6  DASxH
	.unused_1: skip 1				;$43x7
	.unused_2: skip 1				;$43x8
endstruct align $10


struct HDMA $4300
	.settings:
		.control: skip 1				;$43x0  DMAPx
		.destination: skip 1				;$43x1  BBADx

	.source
		.source_word:
			.source_word_low: skip 1		;$43x2  A1TxL
			.source_word_high: skip 1		;$43x3  A1TxH
		.source_bank: skip 1				;$43x4  A1Bx

	.indirect_source
		.indirect_source_word:
			.indirect_source_word_low: skip 1	;$43x5  DASxL
			.indirect_source_word_high: skip 1	;$43x6  DASxH
		.indirect_source_bank: skip 1			;$43x7  DASBx

	.midframe_table:
		.midframe_table_low: skip 1			;$43x8  A2AxL
		.midframe_table_high: skip 1			;$43x9  A2AxH

	.counter: skip 1					;$43xA  NTLRx
	.unused: skip 1						;$43xB
endstruct align $10
