function bank_word(addr) = ((addr&$FFFF)<<8)|(addr>>16)
function fake(addr) = addr
function sound(channel, effect) = channel<<8|effect

macro offset(label, offset)
	?tmp:
	pushpc
	org ?tmp+<offset>
	<label>:
	pullpc
endmacro

macro mirror(label)
	?tmp:
	pushpc
	org ?tmp+$400000
	<label>:
	pullpc
endmacro

macro font_tile_offset(label)
	db <label>-$0660>>6
endmacro

macro return(label)
	PEA <label>-1
endmacro

macro pea_use_dbr(label)
	?dummy:
	PEA.w (<:?dummy<<8)|<:<label>
endmacro

macro pea_shift_dbr(label)
	PEA.w <label>>>8
endmacro

macro pea_mask_dbr(label)
	PEA.w <label>>>8&$FF00
endmacro

macro pea_engine_dbr()
	PEA.w $8080
endmacro

macro pea_mirror_dbr()
	?dummy:
	PEA.w (<:?dummy<<8|$4000)|$80
endmacro

macro lda_sound(channel, sound)
	lda.w #<channel><<8|!sound_<sound>
endmacro

macro sequence_data_header(base_address, start, end)
	dw <base_address>
	dw (((<end>-<start>)+((<end>-<start>)&$0001))>>1)
endmacro

macro get_swanky_table()
	!i #= 0
	' ' = $2000
	'!' = $2001
	'"' = $2002
	;'©' = $2003
	'$' = $2004
	'%' = $2005
	'&' = $2006
	;"'" = $2007
	'(' = $2008
	')' = $2009
	'*' = $200A
	'+' = $200B
	',' = $200C
	'-' = $200D
	'.' = $200E
	'/' = $200F
	'0' = $2010
	'1' = $2011
	'2' = $2012
	'3' = $2013
	'4' = $2014
	'5' = $2015
	'6' = $2016
	'7' = $2017
	'8' = $2018
	'9' = $2019
	':' = $201A
	';' = $201B
	'<' = $201C
	'=' = $201D
	'>' = $201E
	'?' = $201F
	'@' = $2020
	'A' = $2021
	'B' = $2022
	'C' = $2023
	'D' = $2024
	'E' = $2025
	'F' = $2026
	'G' = $2027
	'H' = $2028
	'I' = $2029
	'J' = $202A
	'K' = $202B
	'L' = $202C
	'M' = $202D
	'N' = $202E
	'O' = $202F
	'P' = $2030
	'Q' = $2031
	'R' = $2032
	'S' = $2033
	'T' = $2034
	'U' = $2035
	'V' = $2036
	'W' = $2037
	'X' = $2038
	'Y' = $2039
	'Z' = $203A
	;'™' = $203B
	;'ä' = $203C
	;'ë' = $203D
	;'ö' = $203E
	;'ß' = $203F
	;'ç' = $2040
	'a' = $2041
	'b' = $2042
	'c' = $2043
	'd' = $2044
	'e' = $2045
	'f' = $2046
	'g' = $2047
	'h' = $2048
	'i' = $2049
	'j' = $204A
	'k' = $204B
	'l' = $204C
	'm' = $204D
	'n' = $204E
	'o' = $204F
	'p' = $2050
	'q' = $2051
	'r' = $2052
	's' = $2053
	't' = $2054
	'u' = $2055
	'v' = $2056
	'w' = $2057
	'x' = $2058
	'y' = $2059
	'z' = $205A
	
	'^' = $205E
	
	;'â' = $205B
	;'à' = $205C
	;'è' = $205D
	;'é' = $205E
	;'ê' = $205F
	;'î' = $2060
	;'ô' = $2061
	;'ù' = $2062
	;'û' = $2063
	;'ï' = $2064
endmacro

macro sprite(param, x, y, sprite)
	if !version == 0
		if <sprite> >= $0DB6
			dw <param>, <x>, <y>, <sprite>-2
		else
			dw <param>, <x>, <y>, <sprite>
		endif
	else
		dw <param>, <x>, <y>, <sprite>
	endif
endmacro

macro banana(param_a, param_b, param_c, type)
	db <param_a>, <param_b>, <param_c>, <type>
endmacro

macro camera(param_a, param_b, param_c, param_d, param_e)
	db <param_a>, <param_b>, <param_c>, <param_d>, <param_e>
endmacro

macro local(name, scratch)
	pushpc
		org <scratch>
			<name>:
	pullpc
endmacro

macro vram_payload(data_address, vram_address, data_size, compressed)
	dl bank_word(<data_address>)
	dw <vram_address>|(<compressed><<15)
	dw <data_size>
endmacro

macro string(text)
	db ?end-?start, $3E
	?start:
	db "<text>"
	?end:
endmacro

macro bit_flags_byte(...)
	!i #= 0
	!flags #= 0
	while !i < sizeof(...)
		!flags #= !flags|<...[!i]>
		!i #= !i+1
	endwhile
	db !flags
endmacro

macro bit_flags_word(...)
	!i #= 0
	!flags #= 0
	while !i < sizeof(...)
		!flags #= !flags|<...[!i]>
		!i #= !i+1
	endwhile
	dw !flags
endmacro