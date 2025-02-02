struct PPU $2100
	.screen: skip 1					;$2100

	.sprite_select: skip 1				;$2101
	.oam_address:
		.oam_address_low: skip 1		;$2102
		.oam_address_high: skip 1		;$2103
	.oam_write: skip 1				;$2104

	.layer_mode: skip 1				;$2105
	.mosaic: skip 1					;$2106

	.layer_1_2_tilemap_base:
		.layer_1_tilemap_base: skip 1		;$2107
		.layer_2_tilemap_base: skip 1		;$2108
	.layer_3_4_tilemap_base:
		.layer_3_tilemap_base: skip 1		;$2109
		.layer_4_tilemap_base: skip 1		;$210A

	.layer_all_tiledata_base:
		.layer_1_2_tiledata_base: skip 1	;$210B
		.layer_3_4_tiledata_base: skip 1	;$210C

	.layer_1_scroll_x: skip 1			;$210D write_twice
	.layer_1_scroll_y: skip 1			;$210E write_twice
	.layer_2_scroll_x: skip 1			;$210F write_twice
	.layer_2_scroll_y: skip 1			;$2110 write_twice
	.layer_3_scroll_x: skip 1			;$2111 write_twice
	.layer_3_scroll_y: skip 1			;$2112 write_twice
	.layer_4_scroll_x: skip 1			;$2113 write_twice
	.layer_4_scroll_y: skip 1			;$2114 write_twice

	.vram_control: skip 1				;$2115
	.vram_address:
		.vram_address_low: skip 1		;$2116
		.vram_address_high: skip 1		;$2117
	.vram_write:
		.vram_write_low: skip 1			;$2118
		.vram_write_high: skip 1		;$2119

	.set_mode_7: skip 1				;$211A
	.fixed_point_mul_A:				;$211B
	.mode_7_A: skip 1				;$211B write_twice
	.fixed_point_mul_B:				;$211C
	.mode_7_B: skip 1				;$211C write_twice
	.mode_7_C: skip 1				;$211D write_twice
	.mode_7_D: skip 1				;$211E write_twice
	.mode_7_center_x: skip 1			;$211F write_twice
	.mode_7_center_y: skip 1			;$2120 write_twice

	.cgram_address: skip 1				;$2121
	.cgram_write: skip 1				;$2122

	.set_window_layer_all:
		.set_window_layer_1_2: skip 1		;$2123
		.set_window_layer_3_4: skip 1		;$2124
	.set_window_sprite_color: skip 1		;$2125
	.window_1:
		.window_1_left: skip 1			;$2126
		.window_1_right: skip 1			;$2127
	.window_2:
		.window_2_left: skip 1			;$2128
		.window_2_right: skip 1			;$2129
	.window_logic:
		.window_layer_logic: skip 1		;$212A
		.window_sprite_color_logic: skip 1	;$212B

	.screens:
		.main_screen: skip 1			;$212C
		.sub_screen: skip 1			;$212D

	.window_masks:
		.window_mask_main_screen: skip 1	;$212E
		.window_mask_sub_screen: skip 1		;$212F

	.color_math:
		.color_addition_logic: skip 1		;$2130
		.set_color_math: skip 1			;$2131

	.display_control:
		.fixed_color: skip 1			;$2132
		.video_mode: skip 1			;$2133

	.multiplication:
		.multiply_result_word:
			.multiply_result_low: skip 1	;$2134
			.multiply_result_mid: skip 1	;$2135
		.multiply_result_high: skip 1		;$2136

	.latch: skip 1					;$2137

	.oam_read: skip 1				;$2138

	.vram_read:
		.vram_read_low: skip 1			;$2139
		.vram_read_high: skip 1			;$213A

	.cgram_read: skip 1				;$213B

	.horizontal_scanline: skip 1			;$213C read twice
	.vertical_scanline: skip 1			;$213D read twice

	.status:
		.status_ppu1: skip 1			;$213E
		.status_ppu2: skip 1			;$213F
endstruct

struct APU $2140
	.IO1: skip 1
	.IO2: skip 1
	.IO3: skip 1
	.IO4: skip 1
endstruct

struct WRAM $2180
	.data: skip 1
	.address:
		.word:
			.low: skip 1
			.mid: skip 1
		.bank: skip 1
endstruct

struct joypad $4016
	.ports:
		.port_0: skip 1
		.port_1: skip 1
endstruct

struct CPU $4200
	.enable_interrupts: skip 1
	.output_port: skip 1
	.multiply:
		.multiply_A: skip 1
		.multiply_B: skip 1
	.dividen:
		.dividen_low: skip 1
		.dividen_high: skip 1
	.divisor: skip 1

	.horizontal_timer:
		.horizontal_timer_low: skip 1
		.horizontal_timer_high: skip 1

	.vertical_timer:
		.vertical_timer_low: skip 1
		.vertical_timer_high: skip 1

	.enable_dma_hdma:
		.enable_dma: skip 1
		.enable_hdma: skip 1

	.rom_speed: skip 1

	.openbus: skip 2

	.nmi_flag: skip 1
	.irq_flag: skip 1
	.ppu_status: skip 1

	.input_port: skip 1

	.divide_result:
		.divide_result_low: skip 1
		.divide_result_high: skip 1

	.multiply_result:
	.divide_remainder:
		.multiply_result_low:
		.divide_remainder_low: skip 1
		.multiply_result_high:
		.divide_remainder_high: skip 1

	.controllers:
		.port_0_data_1:
			.port_0_data_1_low: skip 1
			.port_0_data_1_high: skip 1
		.port_1_data_1:
			.port_1_data_1_low: skip 1
			.port_1_data_1_high: skip 1
		.port_0_data_2:
			.port_0_data_2_low: skip 1
			.port_0_data_2_high: skip 1
		.port_1_data_2:
			.port_1_data_2_low: skip 1
			.port_1_data_2_high: skip 1

endstruct

struct DMA $4300
	.settings:
		.control: skip 1
		.destination: skip 1

	.source
		.source_word:
			.source_word_low: skip 1
			.source_word_high: skip 1
		.source_bank: skip 1
	.size:
		.size_low: skip 1
		.size_high: skip 1
	.unused_1: skip 1
	.unused_2: skip 1
endstruct align $10

struct HDMA $4300
	.settings:
		.control: skip 1
		.destination: skip 1

	.source
		.source_word:
			.source_word_low: skip 1
			.source_word_high: skip 1
		.source_bank: skip 1

	.indirect_source
		.indirect_source_word:
			.indirect_source_word_low: skip 1
			.indirect_source_word_high: skip 1
		.indirect_source_bank: skip 1

	.midframe_table:
		.midframe_table_low: skip 1
		.midframe_table_high: skip 1

	.counter: skip 1
	.unused: skip 1
endstruct align $10
