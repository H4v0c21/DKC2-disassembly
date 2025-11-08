# Donkey Kong Country 2 Disassembly

This is a repository dedicated to the reverse engineering of the SNES game Donkey Kong Country 2.  

Currently supported **Game Versions**:
- **North America**
    - Revision 0
    - Revision 1

## Accuracy
- The disassembly strives for 100% bit for bit accuracy globally with the original game for all supported versions.
- Make sure every byte is covered. Even if bytes are unused, they should be initialized to match the original game.
- Support for assembly in both asar 1.9 and 2.0 should always be verified.

## Formatting Conventions

#### General Formatting
- Use a tab size of **8**.
- Always use actual tabs instead of spaces (make sure that your Code/Text Editor isn't replacing your tabs with spaces).
- The address comment section should always maintain the same indentation level (ensure no code lines exceed the length restrictions).

#### General Labels
- Strive for descriptive names, ideally under **30** characters but absolutely never exceeding **36**. If the data is never referenced in a place where the label clashes then a longer name may be acceptable.
- Anything in the global namespace should be specific to reduce chances of name conflict.
- All labels should adhere to the ***snake_case*** format.
- Avoid speculative labeling/commenting wherever possible. If you're not sure about something don't write what you think it is followed by "?" or "probably" / "maybe". Instead make a note of it somewhere outside of the code for later.

#### Code Labels
- Routines that act like game loops should have names such as `run_<action>`  
- Routines that primarily delegate many related tasks should have names such as `<task>_handler`  
- Routines that are global trampolines for a local routine get a suffix of `<routine>_global`  
- Use sub-labels wherever possible, nesting deeper is okay but should be used sparingly.
- Relative labels should be used minimally when a name wouldn't help the context (Like a spinlock).
- The use of `#` should generally be temporary (code actively being documented) or rarely used when it helps routines with multiple entries or similar conditions.  

#### Data Labels
- Data which is local should get a sub-label.
- Palettes should get the `_palette` suffix.
- Layer graphics should get the `_tiledata` suffix.
- Layer tile maps should get the `_tilemap` suffix.
- Collections of sprite graphics should get the `_graphics` suffix.
- Single sprite graphics should get the suffix `_frameN` where `N` is optional (used for when multiple frames exist).
- Game data files that exist externally should have file names as close to their corresponding labels as possible.
- When practical, ROM data should get a struct defined in `structs.asm`  This allows for named member access.

#### Comment Structure
- Try to allow comments to flow around the code to cluster related opcodes.
- Comment on what and why something is happening more than how it's happening.
- The **hard limit** for line length is **120 characters**. Do not exceed this with comments.
- If you need a bulk description for some reason place it in a block before the routine.
- Never use the macros as a comment trick.

#### Formatting Examples
```
run_level_logic:
	JSL sprite_handler_global		;$808000  \
	BRA wait_for_interrupt			;$808004  /
	
sprite_handler_global:
	JSR sprite_handler			;$808006  \
	RTL					;$808007  /


;We can talk more about the below routine here
sprite_handler:
	LDX #$0004				;$809000  \ \ <- Note the space before this comment
	LDA .this_data_is_local,x		;$809003   |/ And how the data label doesn't touch the address comment
	STA some_place_in_RAM			;$809009   |\
	STA some_other_place_in_RAM		;$80900C   |/
	CLC					;$80900F   |\
	ADC #$0010				;$809010   | | Note how this comment encompasses multiple lines of code
	TAY					;$809013   |/
	LDX #$0006				;$809014   |> This comment only encompasses a single line of code
	LDA .this_data_is_local,x		;$809017   |
	ASL					;$80901A   |
	TAX					;$80901B   |\ The line below tilts inward, it's the end of the routine
	JMP .some_code_table,x			;$80901C  /_/ How to deal with comments whenever they're at the end


;We can talk about the data below here.
;Even if we need multiple lines.
;We should add an address comment...
;That way we know where this data is in ROM.
;Try to limit the data to 8 byte per line...
;Unless it makes contextual sense to not do so.

;$80901F
.this_data_is_local
	db $00, $01, $02, $03, $04, $05, $06, $07
	db $08, $09, $0A, $0B

.some_code_table
	dw CODE_808123				;00 We can comment what the index of this entry is
	dw CODE_808456				;01 We can also comment what it is or does
	dw CODE_808789				;02
```

## ROM Layout
DKC2 uses a 32-megabit (4 MB) fast ROM (3.58 MHz) with the HiROM mapping mode. Consequently, it occupies banks $80–$FF.

### Program Bank Contents

#### bank $80 ($808000-$80FFFF)
- Main engine code
- Level/Tileset logic

#### bank $B3 ($B38000-$B3FFFF)
- Sprite main code

#### bank $B4 ($B48000-$B4FFFF)
- World map code/data

#### bank $B5 ($B58000-$B5FFFF)
- Sound engine (CPU side)
- Tileset loading code/data
- Additional engine code

#### bank $B6 ($B68000-$B6FFFF)
- Boss main code (including boss related sprites)
- Boss sequence data

#### bank $B8 ($B88000-$B8FFFF)
- Kong-sprite interaction code
- Kong main code
- Player action handling
- Sprite terrain collision logic

#### bank $B9 ($B9D000-$B9FFFF)
- Sprite animation logic

#### bank $BA ($BA9000-$BAFFFF)
- Additional boss code/data (including boss related sprites)

#### bank $BB ($BB8000-$BBFFFF)
- Decompression code
- Sprite spawning code
- Additional engine code

#### bank $BC ($BC8000-$BCFFFF)
- Sprite graphics/hitbox table
- Sprite hitbox data
- Sprite clipping/collision logic

#### bank $BE ($BEB800-$BEFFFF)
- Additional sprite main code
- Sprite collision interaction logic
- Sprite movement logic

### Data Bank Contents

#### bank $C0 ($C00000-$C07FFF)
- Sprite graphics data

#### banks $C1-ED ($C10000-$EDFFFF)
- Sprite graphics data
- Background graphics data (Mostly compressed)

#### banks $EE-F2 ($EE0000-$F2FFFF)
- Sound engine (SPC side)
- BRR sample table
- BRR sample data
- Sample upload data
- Music sequence data
- Sound effect sequence data

#### bank $F3 ($F30000-$F37FFF)
- Background graphics data (Mostly uncompressed and used for animated backgrounds)

#### bank $F4 ($F40000-$F47FFF)
- Background graphics data (Mostly uncompressed and used for animated backgrounds)

#### bank $F5 ($F50000-$F57FFF)
- Background graphics data (Mostly uncompressed and used for animated backgrounds)

#### bank $F6 ($F60000-$F67FFF)
- Background graphics data (Mostly uncompressed and used for animated backgrounds)

#### bank $F7 ($F70000-$F7FFFF)
- Dialog text data

#### bank $F8 ($F80000-$F87FFF)
- Background graphics data

#### bank $F9 ($F90000-$F9CFFF)
- Sprite animation data
- Background graphics data (Only secret ending layer 2)

#### bank $FA ($FA0000-$FA8FFF)
- Background graphics data (Mostly uncompressed and used for animated backgrounds)

#### bank $FB ($FB0000-$FB7FFF)
- Background graphics data (Mostly uncompressed and used for animated backgrounds)

#### bank $FC ($FC0000-$FC7FFF)
- Tileset collision data
- Miscellaneous graphics data

#### bank $FD ($FD0000-$FDFFFF)
- Level config data
- Tileset config data
- PPU config data
- VRAM payload data
- Color palette data
- Level banana placement data
- Level camera placement data

#### bank $FE ($FE0000-$FEB7FF)
- Level sprite placement data
- Demo input playback data

#### bank $FF ($FF0000-$FFFFFF)
- Sprite constants data
- Sprite spawn initialization data

## Additional Resources
[DKC 2 RAM map](https://www.p4plus2.com/dkc2/ram.php)  
[DKC Atlas Forum](http://www.dkc-atlas.com/forum/)  
[Donkey Kong Hacking Portal](https://donkeyhacks.zouri.jp/html/En-Us/)  
[DKC SNES Trilogy Resources Repository](https://github.com/H4v0c21/DKC-SNES-Trilogy-Resources)  
[Yoshifanatic1's DKC 2 Disassembly](https://github.com/Yoshifanatic1/Donkey-Kong-Country-2-Disassembly), many improvements here are thanks to shared documentation.  
[DKComp (DKC (de)compressor)](https://github.com/Kingizor/dkcomp)  
[Asar (SNES Assembler)](https://github.com/RPGHacker/asar)  

## Looking for another Disassembly?

https://github.com/Yoshifanatic1/Donkey-Kong-Country-1-Disassembly  

https://github.com/BlueImp78/DKC3-Disassembly  
https://github.com/Yoshifanatic1/Donkey-Kong-Country-3-Disassembly  

## Thanks
[Mattrizzle](https://github.com/Mattrizzle) for indirectly contributing by parsing the music/sound effect sequences into asm.
