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
