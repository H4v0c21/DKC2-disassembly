DATA_FF0000:
	%offset(DATA_FF0002, $2)
	%offset(DATA_FF0004, $4)
	%offset(DATA_FF0006, $6)
	%offset(DATA_FF0008, $8)
	%offset(DATA_FF000A, $A)
	%offset(DATA_FF000C, $C)
	%offset(DATA_FF000E, $E)
	%offset(DATA_FF0010, $10)
	%offset(DATA_FF0012, $12)
	%offset(DATA_FF0014, $14)
	%offset(DATA_FF0016, $16)
	%offset(DATA_FF0018, $18)
	%offset(DATA_FF001A, $1A)

if !version == 0
	db "DIDDY ASSEMBLY DATE & TIME 22/10/95 @  1:46"
else
	db "DIDDY ASSEMBLY DATE & TIME 08/11/95 @ 17:06"
endif
	db $0D, $0A

DATA_FF002E:
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00, $00, $00, $00, $00, $00
	db $00, $00, $00

;diddy constants
DATA_FF0040:
%offset(DATA_FF0042, 2)
	dw $0070			;00 idle gravity force
	dw $0800			;02 max fall y velocity
	dw $005A			;04 jump gravity force
	dw $0800			;06 max fall y velocity holding down?
	dw $F7C8			;08 jump y velocity
	dw $0120			;0A 
	dw $0240			;0C walk x velocity
	dw $0360			;0E run x velocity
	dw $000B			;10 jump x acceleration
	dw $000B			;12 walk x acceleration
	dw $000B			;14 run x acceleration
	dw $0002			;16 ice walk x acceleration
	dw $0005			;18 ice run x acceleration
	dw $0002			;1A ice idle x acceleration (used for idle on frozen water)
	dw $0002			;1C 
	dw $0120			;1E idle roll x velocity
	dw $0360			;20 walk roll x velocity
	dw $0480			;22 run roll x velocity
	dw $003C			;24 death bounce gravity force
	dw $FA80			;26 death first bounce y velocity
	dw $FD80			;28 death second bounce y velocity
	dw $FA80			;2A hurt bounce y velocity
	dw $0400			;2C hurt run x velocity
	dw $0100			;2E glide max fall y velocity (downward velocity)
	dw $FF00			;30 glide y velocity (upward velocity)
	dw $000D			;32 roll gravity delay timer (used when rolling off ledges)
	dw $0C00			;34 thrown object forward x velocity
	dw $FF00			;36 thrown object forward y velocity
	dw $0200			;38 thrown object upward x velocity
	dw $F800			;3A thrown object upward y velocity
	dw $0C80			;3C thrown kong forward x velocity (for other kong)
	dw $FE00			;3E thrown kong forward y velocity (for other kong)
	dw $0000			;40 thrown kong upward x velocity (for other kong)
	dw $F840			;42 thrown kong upward y velocity (for other kong)
	dw $0040			;44 team thrown upward gravity force
	dw $0200			;46 team thrown upward x velocity (when steering kong in air)
	dw $000A			;48 team thrown upward x acceleration (when steering kong in air)
	dw $0050			;4A barrel cannon shoot gravity force
	dw $0004			;4C barrel cannon shoot x acceleration
	dw $0180			;4E steerable barrel cannon move velocity
	dw $000A			;50 steerable barrel cannon move acceleration
	dw $0300			;52 rotatable barrel cannon rotation speed
	dw $01C0			;54 up single rope climb y velocity
	dw $02C0			;56 down single rope climb y velocity
	dw $02C0			;58 up single rope climb y velocity (holding y)
	dw $03C0			;5A down single rope climb y velocity (holding y)
	dw $01C0			;5C up double rope climb 
	dw $02C0			;5E down double rope climb 
	dw $02C0			;60 up double rope climb (holding y)
	dw $03C0			;62 down double rope climb (holding y)
	dw $0240			;64 horizontal rope climb x velocity
	dw $0380			;66 horizontal rope climb x velocity (holding y)
	dw $FF60			;68 updraft y velocity (holding up)
	dw $0060			;6A updraft y velocity (holding down)
	dw $0200			;6C updraft x velocity
	dw $0003			;6E updraft acceleration
	dw $FE00			;70 swim up y velocity
	dw $FD40			;72 swim up y velocity (holding up)
	dw $FF00			;74 swim up y velocity (holding down)
	dw $000C			;76 swim gravity force
	dw $0140			;78 swim down y velocity
	dw $0240			;7A swim down y velocity (holding down)
	dw $0180			;7C swim x velocity
	dw $0280			;7E swim x velocity (holding y)
	dw $00C0			;80 squawks max fall y velocity (transformed)
	dw $0480			;82 squawks max fall y velocity (transformed holding down)
	dw $FD80			;84 squawks flap y velocity (transformed)
	dw $0003			;86 squawks x acceleration (transformed)
	dw $0010			;88 squitter web shot delay
	dw $0003			;8A squitter max web shots
	dw $0400			;8C squitter web shot x velocity
	dw $FFEE			;8E squitter web shot up y velocity
	dw $0012			;90 squitter web shot down y velocity
	dw $0200			;92 squitter web platform x velocity
	dw $FFF2			;94 squitter web platform up y velocity
	dw $000E			;96 squitter web platform down y velocity
	dw $F600			;98 rattly super jump y velocity
	dw $0070			;9A squitter idle gravity force
	dw $005C			;9C rattly idle gravity force
	dw $0010			;9E squawks idle gravity force
	dw $0070			;A0 rambi idle gravity force
	dw $0070			;A2 enguarde idle gravity force
	dw $0800			;A4 squitter max fall y velocity
	dw $0800			;A6 rattly max fall y velocity
	dw $0280			;A8 squawks max fall y velocity
	dw $0800			;AA rambi max fall y velocity
	dw $0800			;AC enguarde max fall y velocity
	dw $0048			;AE squitter jump gravity force
	dw $0036			;B0 rattly jump gravity force
	dw $0028			;B2 squawks gravity force (holding down)
	dw $0048			;B4 rambi gravity jump force
	dw $0048			;B6 
	dw $0800			;B8 
	dw $0800			;BA 
	dw $0380			;BC squawks max fall y velocity (holding down)
	dw $0800			;BE 
	dw $0800			;C0 
	dw $F870			;C2 squitter jump y velocity
	dw $F870			;C4 rattly jump y velocity
	dw $FE80			;C6 squawks flap y velocity (riding/castle crush)
	dw $F900			;C8 rambi jump y velocity
	dw $F900			;CA 
	dw $0220			;CC squitter walk x velocity
	dw $0200			;CE rattly walk x velocity
	dw $0300			;D0 squawks walk x velocity
	dw $0200			;D2 rambi walk x velocity
	dw $0200			;D4 
	dw $0340			;D6 squitter run x velocity
	dw $0300			;D8 rattly run x velocity
	dw $0480			;DA squawks run x velocity
	dw $0300			;DC rambi run x velocity
	dw $0300			;DE 
	dw $0009			;E0 squitter x acceleration
	dw $000A			;E2 rattly x acceleration
	dw $0002			;E4 squawks x acceleration (riding)
	dw $0007			;E6 rambi x acceleration
	dw $0007			;E8 

;dixie constants
DATA_FF012A:
%offset(DATA_FF012C, 2)
	dw $0070			;00 idle gravity force
	dw $0800			;02 max fall y velocity
	dw $0048			;04 jump gravity force
	dw $0800			;06 max fall y velocity holding down?
	dw $F8C8			;08 jump y velocity
	dw $0100			;0A 
	dw $0200			;0C walk x velocity
	dw $0300			;0E run x velocity
	dw $000B			;10 jump x acceleration
	dw $000B			;12 walk x acceleration
	dw $000B			;14 run x acceleration
	dw $0002			;16 ice walk x acceleration
	dw $0005			;18 ice run x acceleration
	dw $0002			;1A ice idle x acceleration (used for idle on frozen water)
	dw $0002			;1C 
	dw $0120			;1E idle roll x velocity
	dw $0360			;20 walk roll x velocity
	dw $0480			;22 run roll x velocity
	dw $003C			;24 death bounce gravity force
	dw $FA80			;26 death first bounce y velocity
	dw $FD80			;28 death second bounce y velocity
	dw $FA80			;2A hurt bounce y velocity
	dw $0400			;2C hurt run x velocity
	dw $0100			;2E glide max fall y velocity (downward velocity)
	dw $FF00			;30 glide y velocity (upward velocity)
	dw $0004			;32 roll gravity delay timer (used when rolling off ledges)
	dw $0B00			;34 thrown object forward x velocity
	dw $FF80			;36 thrown object forward y velocity
	dw $0200			;38 thrown object upward x velocity
	dw $F800			;3A thrown object upward y velocity
	dw $0E80			;3C thrown kong forward x velocity (for other kong)
	dw $FE80			;3E thrown kong forward y velocity (for other kong)
	dw $0000			;40 thrown kong upward x velocity (for other kong)
	dw $F800			;42 thrown kong upward y velocity (for other kong)
	dw $0040			;44 team thrown upward gravity force
	dw $0200			;46 team thrown upward x velocity (when steering kong in air)
	dw $0008			;48 team thrown upward x acceleration (when steering kong in air)
	dw $0050			;4A barrel cannon shoot gravity force
	dw $0004			;4C barrel cannon shoot x acceleration
	dw $0180			;4E steerable barrel cannon move velocity
	dw $000A			;50 steerable barrel cannon move acceleration
	dw $0300			;52 rotatable barrel cannon rotation speed
	dw $0140			;54 up single rope climb y velocity
	dw $0240			;56 down single rope climb y velocity
	dw $0240			;58 up single rope climb y velocity (holding y)
	dw $0340			;5A down single rope climb y velocity (holding y)
	dw $0140			;5C up double rope climb 
	dw $0240			;5E down double rope climb 
	dw $0240			;60 up double rope climb (holding y)
	dw $0340			;62 down double rope climb (holding y)
	dw $0200			;64 horizontal rope climb x velocity
	dw $0300			;66 horizontal rope climb x velocity (holding y)
	dw $FF60			;68 updraft y velocity (holding up)
	dw $0060			;6A updraft y velocity (holding down)
	dw $0200			;6C updraft x velocity
	dw $0003			;6E updraft acceleration
	dw $FE00			;70 swim up y velocity
	dw $FD40			;72 swim up y velocity (holding up)
	dw $FF00			;74 swim up y velocity (holding down)
	dw $000C			;76 swim gravity force
	dw $0140			;78 swim down y velocity
	dw $0240			;7A swim down y velocity (holding down)
	dw $0180			;7C swim x velocity
	dw $0280			;7E swim x velocity (holding y)
	dw $00C0			;80 squawks max fall y velocity (transformed)
	dw $0480			;82 squawks max fall y velocity (transformed holding down)
	dw $FD80			;84 squawks flap y velocity (transformed)
	dw $0003			;86 squawks x acceleration (transformed)
	dw $0010			;88 squitter web shot delay
	dw $0003			;8A squitter max web shots
	dw $0400			;8C squitter web shot x velocity
	dw $FFEE			;8E squitter web shot up y velocity
	dw $0012			;90 squitter web shot down y velocity
	dw $0200			;92 squitter web platform x velocity
	dw $FFF2			;94 squitter web platform up y velocity
	dw $000E			;96 squitter web platform down y velocity
	dw $F600			;98 rattly super jump y velocity
	dw $0070			;9A squitter idle gravity force
	dw $005C			;9C rattly idle gravity force
	dw $0010			;9E squawks idle gravity force
	dw $0070			;A0 rambi idle gravity force
	dw $0070			;A2 enguarde idle gravity force
	dw $0800			;A4 squitter max fall y velocity
	dw $0800			;A6 rattly max fall y velocity
	dw $0280			;A8 squawks max fall y velocity
	dw $0800			;AA rambi max fall y velocity
	dw $0800			;AC enguarde max fall y velocity
	dw $0048			;AE squitter jump gravity force
	dw $0036			;B0 rattly jump gravity force
	dw $0028			;B2 squawks gravity force (holding down)
	dw $0048			;B4 rambi gravity jump force
	dw $0048			;B6 
	dw $0800			;B8 
	dw $0800			;BA 
	dw $0380			;BC squawks max fall y velocity (holding down)
	dw $0800			;BE 
	dw $0800			;C0 
	dw $F880			;C2 squitter jump y velocity
	dw $F870			;C4 rattly jump y velocity
	dw $FE80			;C6 squawks flap y velocity (riding/castle crush)
	dw $F900			;C8 rambi jump y velocity
	dw $F900			;CA 
	dw $0220			;CC squitter walk x velocity
	dw $0200			;CE rattly walk x velocity
	dw $0300			;D0 squawks walk x velocity
	dw $0200			;D2 rambi walk x velocity
	dw $0200			;D4 
	dw $0340			;D6 squitter run x velocity
	dw $0300			;D8 rattly run x velocity
	dw $0480			;DA squawks run x velocity
	dw $0300			;DC rambi run x velocity
	dw $0300			;DE 
	dw $0009			;E0 squitter x acceleration
	dw $000A			;E2 rattly x acceleration
	dw $0002			;E4 squawks x acceleration (riding)
	dw $0007			;E6 rambi x acceleration
	dw $0007			;E8 

;used for barrels and maybe other thrown objects
DATA_FF0214:
	dw $0050	;gravity
	dw $0800	;terminal velocity
	dw $0007	;acceleration index
	dw $0400	;thrown target x velocity

;general constants
DATA_FF021C:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040

DATA_FF0224:
	dw $0070	;gravity
	dw $0C00	;terminal velocity
	dw $0008	;acceleration index
	dw $0040

;squitter constants (non controllable version)
DATA_FF022C:
	dw $0040	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040

;rattly constants (non controllable version)
DATA_FF0234:
	dw $0040	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040

;squawks constants (non controllable version, appears to be unused)
DATA_FF023C:
	dw $0040	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040

;squawks egg constants 
DATA_FF0244:
	dw $0040	;gravity
	dw $0800	;terminal velocity
	dw $0002	;acceleration index

;rambi constants (non controllable version)
DATA_FF024A:
	dw $0040	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040

;cannonball/egg fragment constants
DATA_FF0252:
	dw $0040	;gravity
	dw $0800	;terminal velocity
	dw $0002	;acceleration index

;enguarde constants (non controllable version, appears to be unused)
DATA_FF0258:
	dw $0040	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040

;green/red klobber constants
DATA_FF0260:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0002
	dw $0400	;target x velocity
	dw $020F

;yellow/black klobber constants
DATA_FF026A:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0002
	dw $0500	;target x velocity
	dw $020F

;unknown klobber variant constants (might be unused)
DATA_FF0274:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0002
	dw $0360	;target x velocity
	dw $020F

;neek constants
DATA_FF027E:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040	
	dw $5528	;collision flags
	dw $0171	;defeated animation
	dw $0201	;defeated state
	dw $0000	;attack animation
	dw $0000	;attack state
	dw $0000
	dw $0000

;klomp constants
DATA_FF0294:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040	
	dw $5528	;collision flags
	dw $0162	;defeated animation
	dw $0101	;defeated state
	dw $0000	;attack animation
	dw $0000	;attack state
	dw $0000
	dw $0000

;klampon constants
DATA_FF02AA:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040	
	dw $5408	;collision flags
	dw $01A1	;defeated animation
	dw $0101	;defeated state
	dw $01A2	;attack animation
	dw $0000	;attack state
	dw $0000
	dw $0000

;spiny constants
DATA_FF02C0:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040	
	dw $5480	;collision flags
	dw $01A5	;defeated animation
	dw $0101	;defeated state
	dw $0000	;attack animation
	dw $0000	;attack state
	dw $0000
	dw $0000

;klinger constants
DATA_FF02D6:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040	
	dw $5428	;collision flags
	dw $01A7	;defeated animation
	dw $0101	;defeated state
	dw $0000	;attack animation
	dw $0000	;attack state
	dw $0000
	dw $0000

;zinger constants
DATA_FF02EC:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $000F	;acceleration index
	dw $0040	
	dw $5000	;collision flags
	dw $0199	;defeated animation
	dw $0101	;defeated state
	dw $0000	;attack animation
	dw $0000	;attack state
	dw $0000
	dw $0000

;zinger constants (rotation maybe)
DATA_FF0302:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $000F	;acceleration index
	dw $0040	
	dw $6000	;collision flags
	dw $0000	;defeated animation
	dw $0101	;defeated state
	dw $0000	;attack animation
	dw $0000	;attack state
	dw $0000
	dw $0000

;flitter constants
DATA_FF0318:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $000F	;acceleration index
	dw $0040	
	dw $5428	;collision flags
	dw $019D	;defeated animation
	dw $0101	;defeated state
	dw $0000	;attack animation
	dw $0000	;attack state
	dw $0000
	dw $0000

;blue kruncha constants
DATA_FF032E:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0000	;anger face attacker (FFFF=false, 0000=true)
	dw $001C	;anger run x velocity
	dw $012C	;anger timer
	dw $01C0	;anger animation speed
	dw kruncha_blue_sprite_palette
	dw kruncha_angry_sprite_palette

;red kruncha constants
DATA_FF0340:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $FFFF	;anger face attacker (FFFF=false, 0000=true)
	dw $0030	;anger run x velocity
	dw $012C	;anger timer
	dw $01C0	;anger animation speed
	dw kruncha_red_sprite_palette
	dw kruncha_angry_sprite_palette

;click-clack constants
DATA_FF0352:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $0078	;stun timer
	dw $01E0

;lockjaw constants
DATA_FF035E:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $4030
	dw $0004
	dw $003C
	dw $0000
	dw $000F

DATA_FF0370:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $5040
	dw $0004
	dw $0028
	dw $0000
	dw $000F

DATA_FF0382:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $4030
	dw $0004
	dw $0046
	dw $0020
	dw $000F

DATA_FF0394:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $6080
	dw $0004
	dw $0032
	dw $0000
	dw $000F

DATA_FF03A6:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $6060
	dw $0004
	dw $002D
	dw $0000
	dw $000F

DATA_FF03B8:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $4030
	dw $0004
	dw $003C
	dw $0030
	dw $000F

DATA_FF03CA:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $4030
	dw $0004
	dw $003C
	dw $003A
	dw $000F

;snapjaw constants
DATA_FF03DC:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $4040
	dw $0000
	dw $0000
	dw $0020
	dw $000F
	dw $3030
	dw $00C0
	dw $3030
	dw $0400
	dw $06E0
	dw $0900

DATA_FF03FA:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $4040
	dw $0000
	dw $0000
	dw $0020
	dw $000F
	dw $3030
	dw $00C0
	dw $3030
	dw $0400
	dw $0100
	dw $0600

DATA_FF0418:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $4040
	dw $0000
	dw $0000
	dw $0020
	dw $000F
	dw $3030
	dw $00C0
	dw $3030
	dw $0400
	dw $0100
	dw $1800

;kaboing constants
DATA_FF0436:
	dw $0070	;gravity
	dw $0C00	;terminal velocity
	dw $000F	;acceleration index

;kannon constants (shooting down)
DATA_FF043C:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $0076
	dw $0000

DATA_FF0448:
	dw $0070	;gravity
	dw $0400	;terminal velocity
	dw $0008	;acceleration index
	dw $0040

;kannon constants (shooting sideways)
DATA_FF0450:
	dw $0070	;gravity
	dw $0800	;terminal velocity
	dw $0008	;acceleration index
	dw $0040
	dw $00E2
	dw $0000

;rideable balloon constants
DATA_FF045C:
	dw $0001
	dw $0040
	dw $0002
	dw $FFC0
	dw $0001
	dw $0050
	dw $0004
	dw $FFC0
	dw $0100

;skull cart constants
DATA_FF046E:
	dw $F740
	dw $0070
	dw $00B8
	dw $0800

;klank constants
DATA_FF0476:
	dw $0090
	dw $0C00
	dw $0008
	dw $0040

DATA_FF047E:
	dw DATA_FF0C7E		;0000 invincibility_controller_main
	dw DATA_FF0C88		;0002 sun
	dw DATA_FF0CBA		;0004 diddy boom box
	dw DATA_FF0CD2		;0006 dixie guitar
	dw DATA_FF0E76		;0008 large smoke puff
	dw DATA_FF0E8E		;000A krook hook
	dw DATA_FF0EAE		;000C lava splash
	dw DATA_FF0EC2		;000E diddy
	dw DATA_FF0EE4		;0010 dixie
	dw DATA_FF0F06		;0012 unknown_sprite_00EC_main
	dw DATA_FF0F18		;0014 dixie hurt tears
	dw DATA_FF0F2C		;0016 diddy hurt stars
	dw DATA_FF0F48		;0018 water surface splash (with upward Y offset)
	dw DATA_FF0F5C		;001A water surface splash
	dw DATA_FF0F70		;001C unused rain cloud (loop animation)
	dw DATA_FF0F84		;001E unused rain cloud (spawn animation)
	dw DATA_FF0F98		;0020 unused dixie hurt tears (same sprite id as rain cloud)
	dw DATA_FF0FAC		;0022 spawn group manager
	dw DATA_FF0FD2		;0024 water bubbles
	dw DATA_FF0FDE		;0026 unused rock
	dw DATA_FF1004		;0028 squawks egg projectile
	dw DATA_FF1004		;002A squawks egg projectile
	dw DATA_FF1004		;002C squawks egg projectile
	dw DATA_FF1B72		;002E cannon ball piece
	dw DATA_FF1BA0		;0030 cannon ball pieces/egg piece
	dw DATA_FF1BCE		;0032 egg piece
	dw DATA_FF103A		;0034 collision burst effect (with set position)
	dw DATA_FF104E		;0036 collision burst effect (with position offset of 0)
	dw DATA_FF108A		;0038 klobber (green)
	dw DATA_FF1094		;003A klobber (red)
	dw DATA_FF109E		;003C klobber (yellow)
	dw DATA_FF10A8		;003E klobber (black)
	dw DATA_FF10B2		;0040 life balloon
	dw DATA_FF10F4		;0042 banana bunch
	dw DATA_FF1122		;0044 barrel icon (barrel palette)
	dw DATA_FF1142		;0046 barrel icon (global palette)
	dw DATA_FF1210		;0048 smoke
	dw DATA_FF122C		;004A smoke (faster animation speed)
	dw DATA_FF124C		;004C water splash
	dw DATA_FF1278		;004E dust left?
	dw DATA_FF1290		;0050 dust right?
	dw DATA_FF12A8		;0052 dust up?
	dw DATA_FF12C0		;0054 dust right?
	dw DATA_FF151E		;0056 fireball (kills enemies)?
	dw DATA_FF1528		;0058 fireball (kills enemies)?
	dw !null_pointer	;005A
	dw !null_pointer	;005C
	dw DATA_FF1554		;005E firework?
	dw DATA_FF15B6		;0060 barrel fragment
	dw DATA_FF15CA		;0062 barrel fragment
	dw DATA_FF15DE		;0064 barrel fragment
	dw DATA_FF15F2		;0066 barrel fragment
	dw DATA_FF1626		;0068 barrel fragment
	dw DATA_FF163A		;006A barrel fragment
	dw DATA_FF164E		;006C ???
	dw DATA_FF166A		;006E unknown_sprite_0014
	dw DATA_FF1684		;0070 unknown_sprite_0014
	dw DATA_FF169E		;0072 unknown_sprite_0014
	dw DATA_FF16BA		;0074 smoke puff
	dw DATA_FF16D2		;0076 smoke puff
	dw DATA_FF1714		;0078 ???
	dw DATA_FF0C10		;007A horizontal wind changer
	dw DATA_FF17AC		;007C unused honey splash
	dw DATA_FF17C0		;007E ???
	dw DATA_FF17E0		;0080 level target barrel?
	dw DATA_FF1804		;0082
	dw DATA_FF1824		;0084
	dw DATA_FF1846		;0086 puftup spike?
	dw DATA_FF245C		;0088 kleever bone
	dw DATA_FF23D0		;008A kleever fragment
	dw DATA_FF23EC		;008C kleever fragment
	dw DATA_FF2408		;008E kleever fragment
	dw DATA_FF2424		;0090 kleever fragment
	dw DATA_FF2440		;0092 kleever fragment
	dw DATA_FF1AEA		;0094 diddy hurt stars
	dw DATA_FF1B06		;0096 burst effect (kills enemies)
	dw DATA_FF1B2A		;0098 squitter web platform
	dw DATA_FF1B56		;009A skull cart sparks
	dw DATA_FF1BFC		;009C krows head
	dw DATA_FF1C18		;009E kreepy krow head
	dw DATA_FF1C34		;00A0 king zing stinger
	dw DATA_FF1C54		;00A2 krow egg?
	dw DATA_FF1C7A		;00A4 kreepy krow egg?
	dw DATA_FF1C9C		;00A6 kleever arm
	dw DATA_FF1CDC		;00A8 kleever attack effect?
	dw DATA_FF1D36		;00AA kleever fireball?
	dw DATA_FF1D54		;00AC kleever cannon ball?
	dw DATA_FF1D72		;00AE tnt (maybe kudgels)?
	dw DATA_FF1D8E		;00B0 kleever falling cannon ball?
	dw DATA_FF1DC8		;00B2 kleever hooks?
	dw DATA_FF1E0C		;00B4 mini necky (kreepy krow)?
	dw DATA_FF1E32		;00B6 mini necky (kreepy krow)?
	dw DATA_FF1E58		;00B8 kreepy krow barrel spawn smoke?
	dw DATA_FF1E74		;00BA kreepy krow barrel?
	dw DATA_FF1EAA		;00BC king zing spikes?
	dw DATA_FF1EC8		;00BE ???
	dw DATA_FF1EFE		;00C0 king zing ring zinger?
	dw DATA_FF1F2C		;00C2 k. rool gun
	dw DATA_FF1F8A		;00C4 k. rool cannon ball
	dw DATA_FF1FFE		;00C6 k. rool gun fire
	dw DATA_FF2020		;00C8 k. rool vacuum effect
	dw DATA_FF0C60		;00CA timer?
	dw DATA_FF0C60		;00CC timer?
	dw DATA_FF0C2C		;00CE smoke puff?
	dw DATA_FF0BF4		;00D0 horizontal wind changer
	dw DATA_FF14B4		;00D2 explosion (kills enemies)
	dw DATA_FF14EE		;00D4 explosion (kills enemies)
	dw DATA_FF2308		;00D6 explosion (kills enemies)
	dw DATA_FF2334		;00D8 explosion (kills enemies)
	dw DATA_FF0BA4		;00DA vertical wind changer
	dw DATA_FF0C02		;00DC horizontal wind changer
	dw DATA_FF12DA		;00DE dust
	dw DATA_FF0BC0		;00E0 ???
	dw DATA_FF16F2		;00E2 smoke puff
	dw DATA_FF14E0		;00E4 explosion (kills enemies)
	dw DATA_FF14A6		;00E6 explosion (kills enemies)
	dw DATA_FF13AC		;00E8 smoke puff
	dw DATA_FF13E6		;00EA blue klank
	dw DATA_FF13F0		;00EC orange klank
	dw DATA_FF13FA		;00EE yellow klank
	dw DATA_FF1404		;00F0 green klank
	dw DATA_FF143A		;00F2 klank race flag
	dw DATA_FF1462		;00F4 klank race traffic light
	dw DATA_FF140E		;00F6 pink klank
	dw DATA_FF1494		;00F8 klank race flag?
	dw DATA_FF1448		;00FA klank race flag?
	dw !null_pointer	;00FC
	dw !null_pointer	;00FE
	dw DATA_FF2478		;0100 npc kong?
	dw DATA_FF249A		;0102 npc kong?
	dw DATA_FF24BC		;0104 npc kong?
	dw DATA_FF24DE		;0106 npc kong?
	dw DATA_FF2526		;0108 npc kong?
	dw DATA_FF2548		;010A npc kong?
	dw DATA_FF22BE		;010C klubbas club?
	dw DATA_FF229C		;010E klubba
	dw DATA_FF2620		;0110 ???
	dw !null_pointer	;0112
	dw DATA_FF2500		;0114 npc kong?
	dw DATA_FF25BA		;0116 ???
	dw DATA_FF25D0		;0118 ???
	dw DATA_FF263A		;011A map plane
	dw DATA_FF2716		;011C ???
	dw DATA_FF26F8		;011E ???
	dw DATA_FF0BB2		;0120 vertical wind changer
	dw DATA_FF0B80		;0122 smoke puff
	dw DATA_FF0B8C		;0124 smoke puff
	dw DATA_FF0B98		;0126 smoke puff
	dw DATA_FF1162		;0128
	dw DATA_FF1182		;012A
	dw DATA_FF11C8		;012C
	dw DATA_FF11D2		;012E
	dw DATA_FF11DC		;0130
	dw DATA_FF11E6		;0132
	dw DATA_FF11F0		;0134
	dw DATA_FF0C1E		;0136
	dw DATA_FF296E		;0138
	dw DATA_FF299A		;013A
	dw DATA_FF29BC		;013C
	dw DATA_FF29E8		;013E
	dw DATA_FF2734		;0140
	dw DATA_FF2752		;0142
	dw DATA_FF264C		;0144
	dw DATA_FF265E		;0146
	dw DATA_FF2670		;0148
	dw DATA_FF2682		;014A
	dw DATA_FF2694		;014C
	dw DATA_FF26A6		;014E
	dw DATA_FF26B8		;0150
	dw DATA_FF2364		;0152
	dw DATA_FF2388		;0154
	dw DATA_FF23AC		;0156
	dw DATA_FF21EE		;0158
	dw DATA_FF1D1A		;015A
	dw DATA_FF1CFA		;015C
	dw DATA_FF22DC		;015E
	dw DATA_FF2774		;0160
	dw DATA_FF278E		;0162
	dw DATA_FF27B4		;0164
	dw DATA_FF27E8		;0166
	dw DATA_FF27CE		;0168
	dw DATA_FF281C		;016A
	dw DATA_FF2802		;016C
	dw DATA_FF213C		;016E
	dw DATA_FF2090		;0170
	dw DATA_FF20B4		;0172
	dw DATA_FF20D8		;0174
	dw DATA_FF20FC		;0176
	dw DATA_FF2120		;0178
	dw DATA_FF207A		;017A
	dw DATA_FF206C		;017C
	dw DATA_FF1FE8		;017E
	dw DATA_FF1FD2		;0180
	dw DATA_FF1FBC		;0182
	dw DATA_FF1FAE		;0184
	dw DATA_FF1F9C		;0186
	dw DATA_FF1CBA		;0188
	dw DATA_FF1D80		;018A
	dw DATA_FF25A0		;018C
	dw DATA_FF2842		;018E
	dw DATA_FF287C		;0190
	dw !null_pointer	;0192
	dw DATA_FF2856		;0194
	dw DATA_FF289C		;0196
	dw DATA_FF28BC		;0198
	dw DATA_FF28DC		;019A
	dw DATA_FF2912		;019C
	dw DATA_FF2926		;019E
	dw DATA_FF2946		;01A0

DATA_FF0620:
	dw DATA_FF06A2
	dw DATA_FF06B0
	dw DATA_FF06BE
	dw DATA_FF06D0
	dw DATA_FF06DE
	dw DATA_FF06F0
	dw DATA_FF0706
	dw DATA_FF0718
	dw DATA_FF0736
	dw DATA_FF0744
	dw DATA_FF0752
	dw DATA_FF0760
	dw DATA_FF076E
	dw DATA_FF077C
	dw DATA_FF078A
	dw DATA_FF07A4
	dw DATA_FF07CE
	dw DATA_FF07DC
	dw DATA_FF07F6
	dw DATA_FF0808
	dw DATA_FF0816
	dw DATA_FF0824
	dw DATA_FF0836
	dw DATA_FF084C
	dw DATA_FF085A
	dw DATA_FF086C
	dw DATA_FF087A
	dw DATA_FF0888
	dw DATA_FF0896
	dw DATA_FF08A8
	dw DATA_FF08BA
	dw DATA_FF08D0
	dw DATA_FF08DE
	dw DATA_FF08EC
	dw DATA_FF08FE
	dw DATA_FF0918
	dw DATA_FF0932
	dw DATA_FF0950
	dw DATA_FF096A
	dw DATA_FF0984
	dw DATA_FF099E
	dw DATA_FF09B8
	dw DATA_FF09D2
	dw DATA_FF09EC
	dw DATA_FF0A06
	dw DATA_FF0A20
	dw DATA_FF0A42
	dw DATA_FF0A64
	dw DATA_FF0A86
	dw DATA_FF0AA8
	dw DATA_FF0ACA
	dw DATA_FF0AE4
	dw DATA_FF0AFE
	dw DATA_FF0B18
	dw DATA_FF0B3A
	dw DATA_FF0B5C

DATA_FF0690:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw !initcommand_set_oam, $3000
	dw !initcommand_success

DATA_FF06A2:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $001D
	dw !initcommand_set_animation, $018D
	dw !initcommand_success

DATA_FF06B0:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $001C
	dw !initcommand_set_animation, $016F
	dw !initcommand_success

DATA_FF06BE:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.terrain_interaction, $0001
	dw !initcommand_set_alt_palette, $0010
	dw !initcommand_set_animation, $0163
	dw !initcommand_success

DATA_FF06D0:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $0050
	dw !initcommand_set_animation, $01A3
	dw !initcommand_success

DATA_FF06DE:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.y_position, $0180
	dw !initcommand_set_alt_palette, $003B
	dw !initcommand_set_animation, $019A
	dw !initcommand_success

DATA_FF06F0:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.max_y_speed, $8000
	dw sprite.y_position, $0180
	dw !initcommand_set_alt_palette, $001E
	dw !initcommand_set_animation, $0193
	dw !initcommand_success

DATA_FF0706:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.y_position, $0180
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_set_animation, $0196
	dw !initcommand_success

DATA_FF0718:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $0180
	dw sprite.unknown_28, $0100
	dw !initcommand_set_alt_palette, $0077
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $02DD
	dw !initcommand_success

DATA_FF0736:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $003C
	dw !initcommand_set_animation, $01A9
	dw !initcommand_success

DATA_FF0744:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $000B
	dw !initcommand_set_animation, $0180
	dw !initcommand_success

DATA_FF0752:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $0032
	dw !initcommand_set_animation, $0183
	dw !initcommand_success

DATA_FF0760:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $000E
	dw !initcommand_set_animation, $0177
	dw !initcommand_success

DATA_FF076E:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $00B2
	dw !initcommand_set_animation, $0307
	dw !initcommand_success

DATA_FF077C:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $0007
	dw !initcommand_set_animation, $0160
	dw !initcommand_success

DATA_FF078A:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $0170
	dw !initcommand_set_alt_palette, $003A
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01A8
	dw !initcommand_success

DATA_FF07A4:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw sprite.unknown_22, $0068
	dw sprite.ground_distance, $0000
	dw sprite.parameter, $0000
	dw sprite.max_y_speed, $FB80
	dw !initcommand_set_alt_palette, $002F
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0191
	dw !initcommand_success

DATA_FF07CE:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $0053
	dw !initcommand_set_animation, $019F
	dw !initcommand_success

DATA_FF07DC:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00DD
	dw sprite.y_position, $0170
	dw !initcommand_set_alt_palette, $0001
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $024F
	dw !initcommand_success

DATA_FF07F6:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $001F
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01F5
	dw !initcommand_success

DATA_FF0808:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $0055
	dw !initcommand_set_animation, $01EE
	dw !initcommand_success

DATA_FF0816:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $0012
	dw !initcommand_set_animation, $0169
	dw !initcommand_success

DATA_FF0824:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.y_position, $0180
	dw !initcommand_set_alt_palette, $005C
	dw !initcommand_set_animation, $02D0
	dw !initcommand_success

DATA_FF0836:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.parameter, $0080
	dw sprite.sub_state, $0001
	dw !initcommand_set_alt_palette, $0008
	dw !initcommand_set_animation, $017D
	dw !initcommand_success

DATA_FF084C:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $000C
	dw !initcommand_set_animation, $0172
	dw !initcommand_success

DATA_FF085A:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.general_purpose_48, $0009
	dw !initcommand_set_alt_palette, $0024
	dw !initcommand_set_animation, $01AF
	dw !initcommand_success

DATA_FF086C:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $005F
	dw !initcommand_set_animation, $028C
	dw !initcommand_success

DATA_FF087A:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.unknown_1A, $14C4
	dw !initcommand_set_alt_palette, $0027
	dw !initcommand_success

DATA_FF0888:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $005E
	dw !initcommand_set_animation, $028D
	dw !initcommand_success

DATA_FF0896:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.y_position, $0180
	dw !initcommand_set_alt_palette, $0022
	dw !initcommand_set_animation, $01FD
	dw !initcommand_success

DATA_FF08A8:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.y_position, $0180
	dw !initcommand_set_alt_palette, $0021
	dw !initcommand_set_animation, $0204
	dw !initcommand_success

DATA_FF08BA:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.y_position, $0180
	dw !initcommand_set_alt_palette, $0051
	dw !initcommand_set_oam, $7000
	dw !initcommand_set_animation, $021A
	dw !initcommand_success

DATA_FF08D0:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $0096
	dw !initcommand_set_animation, $028C
	dw !initcommand_success

DATA_FF08DE:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $0097
	dw !initcommand_set_animation, $028D
	dw !initcommand_success

DATA_FF08EC:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw sprite.y_position, $0180
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_set_animation, $0230
	dw !initcommand_success

DATA_FF08FE:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw !initcommand_set_alt_palette, $0069
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0260
	dw !initcommand_success

DATA_FF0918:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw !initcommand_set_alt_palette, $006A
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0261
	dw !initcommand_success

DATA_FF0932:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw sprite.render_order, $00F8
	dw !initcommand_set_alt_palette, $002B
	dw !initcommand_set_oam, $4000
	dw !initcommand_set_animation, $0269
	dw !initcommand_success

DATA_FF0950:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw !initcommand_set_alt_palette, $0043
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $009D
	dw !initcommand_success

DATA_FF096A:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw !initcommand_set_alt_palette, $0060
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $006C
	dw !initcommand_success

DATA_FF0984:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw !initcommand_set_alt_palette, $000D
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0309
	dw !initcommand_success

DATA_FF099E:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw !initcommand_set_alt_palette, $0005
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0308
	dw !initcommand_success

DATA_FF09B8:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw !initcommand_set_alt_palette, $006F
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01B7
	dw !initcommand_success

DATA_FF09D2:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $0180
	dw !initcommand_set_alt_palette, $000F
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0149
	dw !initcommand_success

DATA_FF09EC:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw !initcommand_set_alt_palette, $0049
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $02CE
	dw !initcommand_success

DATA_FF0A06:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw !initcommand_set_alt_palette, $0037
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01D2
	dw !initcommand_success

DATA_FF0A20:
	dw sprite.type, !sprite_hero_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $0180
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC26F
	dw !initcommand_set_alt_palette, $0023
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01CA
	dw !initcommand_success

DATA_FF0A42:
	dw sprite.type, !sprite_hero_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $0180
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC28D
	dw !initcommand_set_alt_palette, $0004
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01CB
	dw !initcommand_success

DATA_FF0A64:
	dw sprite.type, !sprite_hero_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC2C3
	dw !initcommand_set_alt_palette, $00A3
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01D9
	dw !initcommand_success

DATA_FF0A86:
	dw sprite.type, !sprite_hero_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC2E3
	dw !initcommand_set_alt_palette, $00A4
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01D9
	dw !initcommand_success

DATA_FF0AA8:
	dw sprite.type, !sprite_hero_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $01A0
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC259
	dw !initcommand_set_alt_palette, $0026
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01D9
	dw !initcommand_success

DATA_FF0ACA:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $0180
	dw !initcommand_set_alt_palette, $00A8
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $030B
	dw !initcommand_success

DATA_FF0AE4:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $0180
	dw !initcommand_set_alt_palette, $006A
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0244
	dw !initcommand_success

DATA_FF0AFE:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.y_position, $0138
	dw !initcommand_set_alt_palette, $006A
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $024F
	dw !initcommand_success

DATA_FF0B18:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.max_x_speed, $0180
	dw sprite.x_speed, $0180
	dw sprite.y_position, $01A0
	dw !initcommand_set_alt_palette, $0004
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $00A6
	dw !initcommand_success

DATA_FF0B3A:
	dw sprite.type, !sprite_npc_kong_credits
	dw sprite.x_position, $00E0
	dw sprite.max_x_speed, $0180
	dw sprite.x_speed, $0180
	dw sprite.y_position, $01A0
	dw !initcommand_set_alt_palette, $0001
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0003
	dw !initcommand_success

DATA_FF0B5C:
	dw !initcommand_load_subconfig, DATA_FF0690
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $030A
	dw !initcommand_success

DATA_FF0B6E:
	dw sprite.type, !sprite_unknown_0308
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_animation, $01BF
	dw !initcommand_success

DATA_FF0B80:
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_load_subconfig, DATA_FF0B6E
	dw !initcommand_success

DATA_FF0B8C:
	dw !initcommand_spawn_relative, $FFF0, $000E
	dw !initcommand_load_subconfig, DATA_FF0B6E
	dw !initcommand_success

DATA_FF0B98:
	dw !initcommand_spawn_relative, $0010, $0014
	dw !initcommand_load_subconfig, DATA_FF0B6E
	dw !initcommand_success

DATA_FF0BA4:
	dw sprite.type, !sprite_vertical_wind_changer
	dw sprite.constants_address, DATA_FFD5FC
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FF0BB2:
	dw sprite.type, !sprite_vertical_wind_changer
	dw sprite.constants_address, DATA_FFD728
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FF0BC0:
	dw sprite.type, !sprite_unknown_0300
	dw sprite.render_order, $00F8
	dw sprite.x_position, $1780
	dw sprite.y_position, $1200
	dw sprite.state, $0000
	dw sprite.interaction_flags, $0000
	dw sprite.unknown_1C, $8000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_success

DATA_FF0BE6:
	dw sprite.type, !sprite_vertical_wind_changer
	dw sprite.constants_address, DATA_FFD5FC
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FF0BF4:
	dw sprite.type, !sprite_horizontal_wind_changer
	dw sprite.constants_address, DATA_FFD460
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FF0C02:
	dw sprite.type, !sprite_horizontal_wind_changer
	dw sprite.constants_address, DATA_FFD4F4
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FF0C10:
	dw sprite.type, !sprite_horizontal_wind_changer
	dw sprite.constants_address, DATA_FFD500
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FF0C1E:
	dw sprite.type, !sprite_horizontal_wind_changer
	dw sprite.constants_address, DATA_FFD50C
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FF0C2C:
	dw !initcommand_spawn_relative, $0000, $FFF0
	dw sprite.type, !sprite_large_smoke_puff
	dw sprite.constants_address, DATA_FF021C
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_y_speed, $0000
	dw sprite.render_order, $00D6
	dw !initcommand_set_animation, $01BF
	dw !initcommand_set_palette, global_sprite_palette
	dw sprite.movement_state, $0000
	dw !initcommand_success

DATA_FF0C60:
	dw sprite.type, !sprite_timer
	dw sprite.render_order, $00F8
	dw sprite.state, $0002
	dw sprite.interaction_flags, $0000
	dw sprite.unknown_1C, $8000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_success

DATA_FF0C7E:
	dw sprite.type, !sprite_invincibility_controller
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FF0C88:
	dw sprite.type, !sprite_sun
	dw sprite.render_order, $00C0
	dw sprite.unknown_1C, $E000
	dw sprite.x_position, $0080
	dw sprite.y_position, $0050
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_oam, $1000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_animation, $015F
	dw !initcommand_success

DATA_FF0CBA:
	dw sprite.type, !sprite_kong_celebrate_prop
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.unknown_1A, $0000
	dw sprite.unknown_16, $0000
	dw !initcommand_set_alt_palette, $0033
	dw !initcommand_success

DATA_FF0CD2:
	dw sprite.type, !sprite_kong_celebrate_prop
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.unknown_1A, $0000
	dw sprite.unknown_16, $0000
	dw !initcommand_set_alt_palette, $006C
	dw !initcommand_success

DATA_FF0CEA:
	dw sprite.type, !sprite_animal_icon
	dw sprite.render_order, $00F8
	dw sprite.unknown_1C, $8000
	dw sprite.state, $0000
	dw !initcommand_set_oam, $3000
	dw !initcommand_success

DATA_FF0D00:
	dw DATA_FF0D0A
	dw DATA_FF0D1C
	dw DATA_FF0D2E
	dw DATA_FF0D40
	dw DATA_FF0D52

DATA_FF0D0A:
	dw !initcommand_load_subconfig, DATA_FF0CEA
	dw sprite.general_purpose_42, $0014
	dw sprite.general_purpose_44, $00CD
	dw !initcommand_set_alt_palette, $0005
	dw !initcommand_success

DATA_FF0D1C:
	dw !initcommand_load_subconfig, DATA_FF0CEA
	dw sprite.general_purpose_42, $0014
	dw sprite.general_purpose_44, $00CD
	dw !initcommand_set_alt_palette, $000D
	dw !initcommand_success

DATA_FF0D2E:
	dw !initcommand_load_subconfig, DATA_FF0CEA
	dw sprite.general_purpose_42, $0014
	dw sprite.general_purpose_44, $00CD
	dw !initcommand_set_alt_palette, $000F
	dw !initcommand_success

DATA_FF0D40:
	dw !initcommand_load_subconfig, DATA_FF0CEA
	dw sprite.general_purpose_42, $0014
	dw sprite.general_purpose_44, $00CD
	dw !initcommand_set_alt_palette, $0043
	dw !initcommand_success

DATA_FF0D52:
	dw !initcommand_load_subconfig, DATA_FF0CEA
	dw sprite.general_purpose_42, $0014
	dw sprite.general_purpose_44, $00CD
	dw !initcommand_set_alt_palette, $0060
	dw !initcommand_success


DATA_FF0D64:
	dw DATA_FF0D6E
	dw DATA_FF0DA2
	dw DATA_FF0DD6
	dw DATA_FF0E0E
	dw DATA_FF0E42

DATA_FF0D6E:
	dw sprite.type, !sprite_squitter
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00D0
	dw sprite.constants_address, DATA_FF022C
	dw sprite.general_purpose_42, $0000
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.despawn_time, $00FF
	dw sprite.interaction_flags, $0002
	dw !initcommand_set_alt_palette, $0005
	dw !initcommand_set_animation, $0147
	dw !initcommand_success

DATA_FF0DA2:
	dw sprite.type, !sprite_rattly
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00D0
	dw sprite.constants_address, DATA_FF0234
	dw sprite.general_purpose_42, $0000
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.despawn_time, $00FF
	dw sprite.interaction_flags, $0002
	dw !initcommand_set_alt_palette, $000D
	dw !initcommand_set_animation, $0148
	dw !initcommand_success

DATA_FF0DD6:
	dw sprite.type, !sprite_squawks
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00D0
	dw sprite.constants_address, DATA_FF023C
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_4A, $0000
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0000
	dw sprite.despawn_time, $00FF
	dw !initcommand_set_alt_palette, $000F
	dw !initcommand_set_animation, $0149
	dw !initcommand_success

DATA_FF0E0E:
	dw sprite.type, !sprite_rambi
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00D0
	dw sprite.constants_address, DATA_FF024A
	dw sprite.general_purpose_42, $0000
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.despawn_time, $00FF
	dw sprite.interaction_flags, $0002
	dw !initcommand_set_alt_palette, $0043
	dw !initcommand_set_animation, $014A
	dw !initcommand_success

DATA_FF0E42:
	dw sprite.type, !sprite_enguarde
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00D0
	dw sprite.constants_address, DATA_FF0258
	dw sprite.general_purpose_42, $0000
	dw sprite.state, $0004
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
if !version == 1
	dw sprite.despawn_time, $0088
endif
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_alt_palette, $0060
	dw !initcommand_set_animation, $014B
	dw !initcommand_success

DATA_FF0E76:
	dw !initcommand_spawn_relative, $FFDC, $FFE8
	dw !initcommand_load_subconfig, DATA_FF178A
	dw sprite.render_order, $00D6
	dw !initcommand_set_animation, $01BB
	dw sprite.movement_state, $0000
	dw !initcommand_success

DATA_FF0E8E:
	dw sprite.type, !sprite_krooks_hook
	dw sprite.constants_address, DATA_FF021C
	dw sprite.interaction_flags, $0020
	dw !initcommand_spawn_relative, $0019, $FFF6
	dw sprite.state, $0000
	dw !initcommand_set_alt_palette, $0055
	dw !initcommand_set_animation, $01F3
	dw !initcommand_success

DATA_FF0EAE:
	dw sprite.type, !sprite_ship_water_splash
	dw !initcommand_set_position
	dw !initcommand_set_alt_palette, $0052
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01F9
	dw !initcommand_success

DATA_FF0EC2:
	dw sprite.type, !sprite_diddy_kong
	dw sprite.render_order, $00D8
	dw sprite.constants_address, DATA_FF0040
	dw sprite.ground_y_position, $FFC0
	dw sprite.terrain_interaction, $0000
	dw sprite.state, $0000
	dw sprite.interaction_flags, $001C
	dw !initcommand_set_oam_special, $2000
	dw !initcommand_success

DATA_FF0EE4:
	dw sprite.type, !sprite_dixie_kong
	dw sprite.render_order, $00E4
	dw sprite.constants_address, DATA_FF012A
	dw sprite.ground_y_position, $FFC0
	dw sprite.terrain_interaction, $0000
	dw sprite.state, $0000
	dw sprite.interaction_flags, $001C
	dw !initcommand_set_oam_special, $2000
	dw !initcommand_success

DATA_FF0F06:
	dw sprite.type, !sprite_unknown_00EC
	dw sprite.x_position, $0080
	dw sprite.y_position, $0078
	dw sprite.unknown_1A, $000C
	dw !initcommand_success

DATA_FF0F18:
	dw sprite.type, !sprite_dixie_hurt_tears
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_set_palette, dixie_active_sprite_palette
	dw !initcommand_set_animation, $015C
	dw !initcommand_success

DATA_FF0F2C:
	dw sprite.type, !sprite_diddy_hurt_stars
	dw !initcommand_spawn_relative, $FFFB, $FFE2
	dw sprite.general_purpose_42, $0400
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_palette, diddy_active_sprite_palette
	dw !initcommand_set_animation, $015D
	dw !initcommand_success

DATA_FF0F48:
	dw sprite.type, !sprite_water_surface_splash
	dw !initcommand_spawn_relative, $0000, $FFF6
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_animation, $01B6
	dw !initcommand_success

DATA_FF0F5C:
	dw sprite.type, !sprite_water_surface_splash
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_animation, $01B6
	dw !initcommand_success

DATA_FF0F70:
	dw sprite.type, !sprite_rain_cloud
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_set_alt_palette, $006E
	dw !initcommand_set_animation, $0152
	dw !initcommand_success

DATA_FF0F84:
	dw sprite.type, !sprite_rain_cloud
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_set_palette, $006E
	dw !initcommand_set_animation, $0151
	dw !initcommand_success

DATA_FF0F98:
	dw sprite.type, !sprite_rain_cloud
	dw !initcommand_spawn_relative, $000A, $0008
	dw !initcommand_set_palette, dixie_active_sprite_palette
	dw !initcommand_set_animation, $0153
	dw !initcommand_success

DATA_FF0FAC:
	dw sprite.type, !sprite_spawn_group_manager
	dw sprite.x_position, $0000
	dw sprite.y_position, $0000
	dw sprite.unknown_1A, $0000
	dw sprite.unknown_16, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $0000
	dw sprite.placement_number, $FFFF
	dw sprite.despawn_time, $0000
	dw !initcommand_success

DATA_FF0FD2:
	dw !initcommand_setup_static, !sprite_air_bubble_generator, global_sprite_palette : dl DATA_C00B21 : db $06
	dw !initcommand_success

DATA_FF0FDE:
	dw !initcommand_setup_static2, !sprite_rock, $0002 : dl DATA_C01B21 : db $20
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00C8
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $FF00
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0154
	dw !initcommand_success

DATA_FF1004:
	dw !initcommand_setup_static2, !sprite_squawks_egg, $000F : dl DATA_C01F21 : db $20
	dw !initcommand_spawn_relative, $0008, $FFF0
	dw sprite.constants_address, DATA_FF0244
	dw sprite.state, $0000
	dw sprite.render_order, $00C8
	dw !initcommand_set_directional, sprite.x_speed, $0680
	dw !initcommand_set_directional, sprite.max_x_speed, $0100
	dw sprite.y_speed, $FE80
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_animation, $0156
	dw !initcommand_success

DATA_FF103A:
	dw sprite.type, !sprite_burst_effect
	dw !initcommand_set_position
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0168
	dw !initcommand_success

DATA_FF104E:
	dw sprite.type, !sprite_burst_effect
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0168
	dw !initcommand_success

DATA_FF1066:
	dw sprite.type, !sprite_klobber_body
	dw sprite.render_order, $00D5
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw sprite.interaction_flags, $0020
	dw !initcommand_success

DATA_FF108A:
	dw !initcommand_load_subconfig, DATA_FF1066
	dw !initcommand_set_alt_palette, $001F
	dw !initcommand_success

DATA_FF1094:
	dw !initcommand_load_subconfig, DATA_FF1066
	dw !initcommand_set_alt_palette, $002A
	dw !initcommand_success

DATA_FF109E:
	dw !initcommand_load_subconfig, DATA_FF1066
	dw !initcommand_set_alt_palette, $0065
	dw !initcommand_success

DATA_FF10A8:
	dw !initcommand_load_subconfig, DATA_FF1066
	dw !initcommand_set_alt_palette, $0066
	dw !initcommand_success

DATA_FF10B2:
	dw !initcommand_set_alt_palette, $0018
	dw sprite.general_purpose_42, $0001
	dw sprite.type, !sprite_extra_life_balloon
	dw sprite.constants_address, DATA_FF021C
	dw sprite.render_order, $00D4
	dw sprite.max_x_speed, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $02C0
	dw sprite.max_y_speed, $FF40
	dw sprite.x_sub_position, $001E
	dw sprite.state, $0003
	dw sprite.movement_state, $0110
	dw sprite.y_speed, $FA00
	dw !initcommand_success

DATA_FF10F4:
	dw sprite.type, !sprite_bananas
	dw sprite.constants_address, DATA_FF021C
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_animation, $02B2
	dw sprite.state, $0002
	dw sprite.general_purpose_4E, $0010
	dw sprite.movement_state, $0110
	dw sprite.y_speed, $FA00
	dw sprite.parameter, $00B4
	dw !initcommand_success

DATA_FF1122:
	dw sprite.type, !sprite_barrel_icons
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00ED
	dw sprite.state, $0000
	dw sprite.general_purpose_4E, $2020
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF1142:
	dw sprite.type, !sprite_barrel_icons
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00ED
	dw sprite.state, $0000
	dw sprite.general_purpose_4E, $2020
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF1162:
	dw sprite.type, !sprite_barrel_icons
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00ED
	dw sprite.state, $0000
	dw sprite.general_purpose_4E, $2020
	dw !initcommand_set_palette, diddy_active_sprite_palette
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF1182:
	dw sprite.type, !sprite_barrel_icons
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00ED
	dw sprite.state, $0000
	dw sprite.general_purpose_4E, $2020
	dw !initcommand_set_palette, dixie_active_sprite_palette
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF11A2:
	dw sprite.type, !sprite_barrel_icons
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00ED
	dw sprite.state, $0000
	dw sprite.general_purpose_4E, $2020
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF11BE:
	dw $012C, $012E, $0130, $0132, $0134

DATA_FF11C8:
	dw !initcommand_load_subconfig, DATA_FF11A2
	dw !initcommand_set_alt_palette, $0005
	dw !initcommand_success

DATA_FF11D2:
	dw !initcommand_load_subconfig, DATA_FF11A2
	dw !initcommand_set_alt_palette, $000D
	dw !initcommand_success

DATA_FF11DC:
	dw !initcommand_load_subconfig, DATA_FF11A2
	dw !initcommand_set_alt_palette, $000F
	dw !initcommand_success

DATA_FF11E6:
	dw !initcommand_load_subconfig, DATA_FF11A2
	dw !initcommand_set_alt_palette, $0043
	dw !initcommand_success

DATA_FF11F0:
	dw !initcommand_load_subconfig, DATA_FF11A2
	dw !initcommand_set_alt_palette, $0060
	dw !initcommand_success

DATA_FF11FA:
	dw sprite.type, !sprite_unknown_023C
	dw sprite.render_order, $00F0
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_animation, $01BB
	dw !initcommand_success

DATA_FF1210:
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_load_subconfig, DATA_FF11FA
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw !initcommand_set_oam, $2000
	dw sprite.render_order, $00F4
	dw !initcommand_success

DATA_FF122C:
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_load_subconfig, DATA_FF11FA
	dw sprite.animation_control, $0200
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0080
	dw !initcommand_set_oam, $2000
	dw sprite.render_order, $00F4
	dw !initcommand_success

DATA_FF124C:
	dw sprite.type, !sprite_ship_water_splash
	dw !initcommand_set_position
	dw !initcommand_set_alt_palette, $0011
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01B5
	dw !initcommand_success

DATA_FF1260:
	dw !initcommand_setup_static, !sprite_unknown_0014, global_sprite_palette : dl DATA_C02321 : db $20
	dw sprite.constants_address, DATA_FF021C
	dw !initcommand_set_animation, $01F8
	dw sprite.movement_state, $0001
	dw !initcommand_success

DATA_FF1278:
	dw !initcommand_load_subconfig, DATA_FF1260
	dw !initcommand_spawn_relative, $FFF8, $0008
	dw sprite.render_order, $00C4
	dw sprite.x_speed, $FF00
	dw sprite.y_speed, $FFE0
	dw !initcommand_success

DATA_FF1290:
	dw !initcommand_load_subconfig, DATA_FF1260
	dw !initcommand_spawn_relative, $FFF4, $0008
	dw sprite.render_order, $00C4
	dw sprite.x_speed, $0100
	dw sprite.y_speed, $FFE0
	dw !initcommand_success

DATA_FF12A8:
	dw !initcommand_load_subconfig, DATA_FF1260
	dw !initcommand_spawn_relative, $0006, $FFDE
	dw sprite.render_order, $00C4
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $FF80
	dw !initcommand_success

DATA_FF12C0:
	dw !initcommand_load_subconfig, DATA_FF1260
	dw !initcommand_spawn_relative, $0008, $0008
	dw sprite.render_order, $00E6
	dw !initcommand_set_directional, sprite.x_speed, $FF00
	dw sprite.y_speed, $FFE0
	dw !initcommand_success

DATA_FF12DA:
	dw !initcommand_load_subconfig, DATA_FF1260
	dw !initcommand_spawn_relative, $0012, $0002
	dw !initcommand_set_directional, sprite.x_speed, $0200
	dw sprite.y_speed, $0200
	dw sprite.animation_control, $0100
	dw !initcommand_success

DATA_FF12F4:
	dw sprite.type, !sprite_npc_hud_coin
	dw sprite.x_position, $0030
	dw sprite.y_position, $0060
	dw sprite.render_order, $00F0
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C1
	dw !initcommand_success

DATA_FF1312:
	dw sprite.type, !sprite_npc_hud_coin
	dw sprite.x_position, $00A0
	dw sprite.y_position, $00A0
	dw sprite.render_order, $00F0
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C2
	dw !initcommand_success

DATA_FF1330:
	dw sprite.type, !sprite_diddy_kong
	dw sprite.render_order, $00D8
	dw sprite.x_position, $00A0
	dw sprite.y_position, $00D0
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.constants_address, DATA_FF0040
	dw sprite.ground_y_position, $FFC0
	dw sprite.terrain_interaction, $0000
	dw sprite.state, $0000
	dw sprite.interaction_flags, $001E
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_palette, diddy_active_sprite_palette
	dw !initcommand_success

DATA_FF136E:
	dw sprite.type, !sprite_dixie_kong
	dw sprite.render_order, $00E4
	dw sprite.x_position, $00D0
	dw sprite.y_position, $00D0
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.constants_address, DATA_FF012A
	dw sprite.ground_y_position, $FFC0
	dw sprite.terrain_interaction, $0000
	dw sprite.state, $0000
	dw sprite.interaction_flags, $001E
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_palette, dixie_active_sprite_palette
	dw !initcommand_success

DATA_FF13AC:
	dw !initcommand_spawn_relative, $0014, $FFE8
	dw !initcommand_load_subconfig, DATA_FF178A
	dw sprite.render_order, $00D6
	dw !initcommand_set_animation, $01BB
	dw sprite.movement_state, $000F
	dw !initcommand_success

DATA_FF13C4:
	dw sprite.type, !sprite_klank
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF0476
	dw sprite.interaction_flags, $0120
	dw sprite.state, $0000
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $01AF
	dw !initcommand_success

DATA_FF13E6:
	dw !initcommand_load_subconfig, DATA_FF13C4
	dw !initcommand_set_alt_palette, $006D
	dw !initcommand_success

DATA_FF13F0:
	dw !initcommand_load_subconfig, DATA_FF13C4
	dw !initcommand_set_alt_palette, $0024
	dw !initcommand_success

DATA_FF13FA:
	dw !initcommand_load_subconfig, DATA_FF13C4
	dw !initcommand_set_alt_palette, $0012
	dw !initcommand_success

DATA_FF1404:
	dw !initcommand_load_subconfig, DATA_FF13C4
	dw !initcommand_set_alt_palette, $00B4
	dw !initcommand_success

DATA_FF140E:
	dw !initcommand_load_subconfig, DATA_FF13C4
	dw !initcommand_set_alt_palette, $0029
	dw !initcommand_success

DATA_FF1418:
	dw sprite.type, !sprite_racing_flag
	dw !initcommand_set_oam, $3000
	dw sprite.unknown_1A, $3300
	dw sprite.render_order, $00EC
	dw sprite.x_position, $0073
	dw sprite.y_position, $0041
	dw sprite.unknown_1C, $8000
	dw sprite.general_purpose_44, $0078
	dw !initcommand_success

DATA_FF143A:
	dw !initcommand_load_subconfig, DATA_FF1418
	dw !initcommand_set_alt_palette, $0035
	dw sprite.state, $0001
	dw !initcommand_success

DATA_FF1448:
	dw !initcommand_load_subconfig, DATA_FF1418
	dw sprite.general_purpose_46, $0035
	dw sprite.general_purpose_4E, $0C43
	dw sprite.state, $0301
	dw sprite.unknown_1C, $C000
	dw sprite.general_purpose_44, $00F0
	dw !initcommand_success

DATA_FF1462:
	dw sprite.type, !sprite_racing_flag
	dw !initcommand_set_oam, $3000
	dw sprite.unknown_1A, $3304
	dw !initcommand_set_alt_palette, $0036
	dw sprite.render_order, $00EC
	dw sprite.x_position, $00E4
	dw sprite.y_position, $FFF8
	dw sprite.unknown_1C, $8000
	dw sprite.state, $0000
	dw sprite.general_purpose_42, $1428
	dw sprite.general_purpose_44, $0036
	dw sprite.general_purpose_46, $0003
	dw !initcommand_success

DATA_FF1494:
	dw !initcommand_load_subconfig, DATA_FF1462
	dw sprite.x_position, $0014
	dw sprite.state, $0500
	dw sprite.general_purpose_4E, $0000
	dw !initcommand_success

DATA_FF14A6:
	dw sprite.type, !sprite_unknown_00B8
	dw sprite.state, DATA_FF151E
	dw !initcommand_load_subconfig, DATA_FF14BC
	dw !initcommand_success

DATA_FF14B4:
	dw sprite.type, !sprite_explosion
	dw sprite.state, DATA_FF1528
DATA_FF14BC:
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.x_speed, $00C0
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_4A, $000A
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $0004
	dw sprite.general_purpose_48, $0004
	dw !initcommand_success

DATA_FF14E0:
	dw sprite.type, !sprite_unknown_00B8
	dw sprite.state, DATA_FF151E
	dw !initcommand_load_subconfig, DATA_FF14F6
	dw !initcommand_success

DATA_FF14EE:
	dw sprite.type, !sprite_explosion
	dw sprite.state, DATA_FF1528
DATA_FF14F6:
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.type, !sprite_explosion
	dw sprite.x_speed, $FF40
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_42, $0006
	dw sprite.general_purpose_4A, $000A
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $0004
	dw sprite.general_purpose_48, $0004
	dw !initcommand_success

DATA_FF151E:
	dw sprite.type, !sprite_unknown_0248
	dw !initcommand_load_subconfig, DATA_FF152C
	dw !initcommand_success

DATA_FF1528:
	dw sprite.type, !sprite_explosion_cloud
DATA_FF152C:
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.unknown_1C, $0000
	dw sprite.render_order, $00F4
	dw sprite.interaction_flags, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $FF00
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_palette, DATA_FD7166
	dw !initcommand_set_animation, $01BC
	dw !initcommand_success

DATA_FF1554:
	dw sprite.type, !sprite_fireworks
	dw sprite.render_order, $00C0
	dw sprite.state, $0000
	dw sprite.interaction_flags, $0000
	dw sprite.x_speed, $0000
	dw sprite.unknown_1C, $E000
	dw !initcommand_set_oam, $0000
	dw !initcommand_set_palette, DATA_FD61C2
	dw !initcommand_success

DATA_FF1576:
	dw !initcommand_setup_static2, !sprite_barrel_pieces, $0002 : dl DATA_FB0800 : db $17
	dw sprite.render_order, $00F4
	dw sprite.state, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $02A4
	dw !initcommand_success

DATA_FF1596:
	dw !initcommand_setup_static2, !sprite_unknown_0064, $0002 : dl DATA_FA0660 : db $20
	dw sprite.render_order, $00F4
	dw sprite.state, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $02A5
	dw !initcommand_success

DATA_FF15B6:
	dw !initcommand_load_subconfig, DATA_FF1576
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.x_speed, $0200
	dw sprite.y_speed, $FB00
	dw !initcommand_success

DATA_FF15CA:
	dw !initcommand_load_subconfig, DATA_FF1576
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.x_speed, $FF00
	dw sprite.y_speed, $FA00
	dw !initcommand_success

DATA_FF15DE:
	dw !initcommand_load_subconfig, DATA_FF1596
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.x_speed, $FE00
	dw sprite.y_speed, $FB00
	dw !initcommand_success

DATA_FF15F2:
	dw !initcommand_load_subconfig, DATA_FF1596
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.x_speed, $0100
	dw sprite.y_speed, $F980
	dw !initcommand_success

DATA_FF1606:
	dw !initcommand_setup_static2, !sprite_unknown_0064, $0028 : dl DATA_FA0660 : db $20
	dw sprite.render_order, $00F4
	dw sprite.state, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $02A5
	dw !initcommand_success

DATA_FF1626:
	dw !initcommand_load_subconfig, DATA_FF1606
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.x_speed, $FE00
	dw sprite.y_speed, $FB00
	dw !initcommand_success

DATA_FF163A:
	dw !initcommand_load_subconfig, DATA_FF1606
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.x_speed, $0100
	dw sprite.y_speed, $F980
	dw !initcommand_success

DATA_FF164E:
	dw sprite.type, !sprite_dkbarrel_letters
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00CC
	dw sprite.state, $0000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_animation, $02BF
	dw !initcommand_success

DATA_FF166A:
	dw !initcommand_load_subconfig, DATA_FF1260
	dw !initcommand_spawn_relative, $0003, $0005
	dw sprite.render_order, $00C4
	dw !initcommand_set_directional, sprite.x_speed, $0030
	dw sprite.y_speed, $FFF0
	dw !initcommand_success

DATA_FF1684:
	dw !initcommand_load_subconfig, DATA_FF1260
	dw !initcommand_spawn_relative, $0003, $0005
	dw sprite.render_order, $00C4
	dw !initcommand_set_directional, sprite.x_speed, $FFD0
	dw sprite.y_speed, $FFF0
	dw !initcommand_success

DATA_FF169E:
	dw !initcommand_load_subconfig, DATA_FF1260
	dw !initcommand_spawn_relative, $0003, $0008
	dw sprite.render_order, $00C4
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0010
	dw sprite.animation_control, $0180
	dw !initcommand_success

DATA_FF16BA:
	dw !initcommand_spawn_relative, $0000, $FFF2
	dw !initcommand_load_subconfig, DATA_FF178A
	dw sprite.render_order, $00D6
	dw !initcommand_set_animation, $01BF
	dw sprite.movement_state, $0000
	dw !initcommand_success

DATA_FF16D2:
	dw !initcommand_spawn_relative, $FFE9, $FFE8
	dw !initcommand_load_subconfig, DATA_FF178A
	dw sprite.render_order, $00D6
	dw !initcommand_set_animation, $01BF
	dw sprite.y_speed, $01C0
	dw sprite.max_y_speed, $FFA0
	dw sprite.movement_state, $000F
	dw !initcommand_success

DATA_FF16F2:
	dw !initcommand_spawn_relative, $FFFE, $FFE2
	dw !initcommand_load_subconfig, DATA_FF178A
	dw sprite.render_order, $00D6
	dw !initcommand_set_animation, $01BF
	dw !initcommand_set_directional, sprite.x_speed, $0200
	dw sprite.y_speed, $FFC0
	dw sprite.movement_state, $000F
	dw !initcommand_success

DATA_FF1714:
	dw sprite.constants_address, DATA_FF021C
DATA_FF1718:
	dw sprite.type, !sprite_shot_canball_or_barrel
	dw sprite.interaction_flags, $0020
	dw !initcommand_set_alt_palette, $0009
	dw !initcommand_set_animation, $02E3
	dw sprite.state, $0000
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_spawn_relative, $FFE9, $FFF4
	dw !initcommand_success

DATA_FF1738:
	dw !initcommand_load_subconfig, DATA_FF1718
	dw sprite.constants_address, DATA_FF0448
	dw !initcommand_success

DATA_FF1742:
	dw sprite.type, !sprite_shot_canball_or_barrel
	dw sprite.constants_address, DATA_FF021C
	dw sprite.interaction_flags, $0020
	dw !initcommand_set_alt_palette, $0009
	dw !initcommand_set_animation, $02FD
	dw sprite.state, $0001
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_spawn_relative, $0004, $FFEC
	dw !initcommand_success

DATA_FF1766:
	dw sprite.type, !sprite_shot_canball_or_barrel
	dw sprite.constants_address, DATA_FF021C
	dw sprite.interaction_flags, $0020
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02FA
	dw sprite.state, $0002
	dw sprite.general_purpose_4A, $4008
	dw !initcommand_spawn_relative, $0004, $FFEC
	dw !initcommand_success

DATA_FF178A:
	dw !initcommand_set_palette, global_sprite_palette
	dw sprite.type, !sprite_large_smoke_puff
	dw sprite.constants_address, DATA_FF021C
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_y_speed, $0000
	dw !initcommand_success

DATA_FF17AC:
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.type, !sprite_honey_splash
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_animation, $019E
	dw !initcommand_success

DATA_FF17C0:
	dw !initcommand_spawn_relative, $0015, $FFBE
	dw sprite.type, !sprite_level_goal_pole
	dw sprite.render_order, $00C9
	dw sprite.state, $0000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $02C1
	dw !initcommand_success

DATA_FF17E0:
	dw !initcommand_spawn_relative, $0015, $0000
	dw sprite.type, !sprite_level_goal_barrel
	dw sprite.render_order, $00CA
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $02C2
	dw !initcommand_success

DATA_FF1804:
	dw !initcommand_spawn_relative, $0015, $FF92
	dw sprite.type, !sprite_level_goal_prize
	dw sprite.render_order, $00CA
	dw sprite.state, $0000
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $02B2
	dw !initcommand_success

DATA_FF1824:
	dw !initcommand_setup_static2, !sprite_lilypad, $0058 : dl DATA_C008E1 : db $12
	dw sprite.type, !sprite_lilypad
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.state, $0000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $02CC
	dw !initcommand_success

DATA_FF1846:
	dw !initcommand_setup_static2, !sprite_puftup_spikes, $0032 : dl DATA_C006E1 : db $10
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.constants_address, DATA_FF021C
	dw sprite.movement_state, $0001
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_y_speed, $0000
	dw !initcommand_success

DATA_FF1870:
	dw !initcommand_load_subconfig, DATA_FFB29E
	dw sprite.state, $0000
	dw sprite.x_sub_position, $000A
	dw !initcommand_success

DATA_FF187E:
	dw !initcommand_load_subconfig, DATA_FFB27A
	dw sprite.state, $0000
	dw sprite.x_sub_position, $000A
	dw !initcommand_success

DATA_FF188C:
	dw !initcommand_load_subconfig, DATA_FFB28C
	dw sprite.state, $0000
	dw sprite.x_sub_position, $000A
	dw !initcommand_success

DATA_FF189A:
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.type, !sprite_chest_or_swanky_prize
	dw sprite.render_order, $00C4
	dw sprite.constants_address, DATA_FF0214
	dw sprite.interaction_flags, $0000
	dw sprite.y_speed, $FA00
	dw sprite.unknown_1C, $0000
	dw sprite.terrain_interaction, $0000
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

;chest contents
DATA_FF18CE:
	dw DATA_FF1906			;00
	dw DATA_FF1914			;01
	dw DATA_FF1922			;02
	dw DATA_FF1930			;03
	dw DATA_FF193E			;04
	dw DATA_FF194C			;05
	dw DATA_FF195A			;06
	dw DATA_FF1968			;07
	dw DATA_FF1976			;08
	dw DATA_FF1984			;09
	dw DATA_FF1992			;0A
	dw DATA_FF19A0			;0B
	dw DATA_FF19AE			;0C
	dw DATA_FF19BC			;0D
	dw DATA_FF19CA			;0E
	dw DATA_FF19D8			;0F
	dw DATA_FF19E6			;10

DATA_FF18F0:
	dw DATA_FF19F4
	dw DATA_FF1A02
	dw DATA_FF1A10
	dw DATA_FF1A1E
	dw DATA_FF1A2C
	dw DATA_FF1A3A
	dw DATA_FF1A48
	dw DATA_FF1A56
	dw DATA_FF1A64
	dw DATA_FF1A72

DATA_FF1904:
	dw DATA_FF1A80

DATA_FF1906:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02B2
	dw !initcommand_success

DATA_FF1914:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02BB
	dw !initcommand_success

DATA_FF1922:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02BC
	dw !initcommand_success

DATA_FF1930:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02BD
	dw !initcommand_success

DATA_FF193E:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02BE
	dw !initcommand_success

DATA_FF194C:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02E1
	dw !initcommand_success

DATA_FF195A:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02E5
	dw !initcommand_success

DATA_FF1968:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02CD
	dw !initcommand_success

DATA_FF1976:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0018
	dw !initcommand_set_animation, $02C0
	dw !initcommand_success

DATA_FF1984:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0019
	dw !initcommand_set_animation, $02C0
	dw !initcommand_success

DATA_FF1992:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $001A
	dw !initcommand_set_animation, $02C0
	dw !initcommand_success

DATA_FF19A0:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02B2
	dw !initcommand_success

DATA_FF19AE:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C1
	dw !initcommand_success

DATA_FF19BC:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C1
	dw !initcommand_success

DATA_FF19CA:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C1
	dw !initcommand_success

DATA_FF19D8:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C1
	dw !initcommand_success

DATA_FF19E6:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C2
	dw !initcommand_success

DATA_FF19F4:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C3
	dw !initcommand_success

DATA_FF1A02:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0009
	dw !initcommand_set_animation, $02E3
	dw !initcommand_success

DATA_FF1A10:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02E7
	dw !initcommand_success

DATA_FF1A1E:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02B2
	dw !initcommand_success

DATA_FF1A2C:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02B2
	dw !initcommand_success

DATA_FF1A3A:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02B2
	dw !initcommand_success

DATA_FF1A48:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02B2
	dw !initcommand_success

DATA_FF1A56:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02B2
	dw !initcommand_success

DATA_FF1A64:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02DF
	dw !initcommand_success

DATA_FF1A72:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C5
	dw !initcommand_success

DATA_FF1A80:
	dw !initcommand_load_subconfig, DATA_FF189A
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C2
	dw !initcommand_success

;level end target/chest reward sprites
DATA_FF1A8E:
	dw DATA_FFC584			;00
	dw DATA_FF97EA			;01
	dw DATA_FF9816			;02
	dw DATA_FF983C			;03
	dw DATA_FF9862			;04
	dw DATA_FFAB30			;05
	dw DATA_FFAAE8			;06
	dw DATA_FF34CE			;07
	dw DATA_FF1870			;08
	dw DATA_FF187E			;09
	dw DATA_FF188C			;0A
	dw DATA_FFC584			;0B
	dw DATA_FF96C4			;0C
	dw DATA_FF96C4			;0D
	dw DATA_FF96C4			;0E
	dw DATA_FF96C4			;0F
	dw DATA_FF96D4			;10
	dw DATA_FF97A8			;11
	dw DATA_FF65EA			;12
	dw DATA_FFBA52			;13
	dw DATA_FFC584			;14
	dw DATA_FFC584			;15
	dw DATA_FFC584			;16
	dw DATA_FFC584			;17
	dw DATA_FFC584			;18
	dw DATA_FF1AC6			;19
	dw DATA_FF97B2			;1A
	dw DATA_FF96D4			;1B

DATA_FF1AC6:
	dw sprite.type, !sprite_bananas
	dw sprite.constants_address, DATA_FF021C
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02DF
	dw sprite.state, $0000
	dw sprite.general_purpose_4E, $0001
	dw !initcommand_success

DATA_FF1AE8:
	dw !initcommand_success

DATA_FF1AEA:
	dw sprite.type, !sprite_diddy_hurt_stars
	dw !initcommand_spawn_relative, $FFFF, $FFDD
	dw sprite.general_purpose_42, $002D
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_palette, diddy_active_sprite_palette
	dw !initcommand_set_animation, $015D
	dw !initcommand_success

DATA_FF1B06:
	dw sprite.type, !sprite_web_shot
	dw sprite.render_order, $00D0
	dw !initcommand_spawn_relative, $000C, $0004
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_48, $0000
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_animation, $02D5
	dw !initcommand_success

DATA_FF1B2A:
	dw sprite.type, !sprite_web_platform
	dw sprite.render_order, $00D4
	dw !initcommand_spawn_relative, $000C, $FFFA
	dw sprite.state, $0000
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_48, $0000
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_success

DATA_FF1B56:
	dw sprite.type, !sprite_skull_cart_sparks
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0027
	dw !initcommand_set_animation, $01B1
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FF1B72:
	dw !initcommand_setup_static2, !sprite_canball_pieces1, $0020 : dl DATA_C01021 : db $20
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.constants_address, DATA_FF0252
	dw sprite.render_order, $00C8
	dw sprite.max_x_speed, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $F800
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0157
	dw !initcommand_success

DATA_FF1BA0:
	dw !initcommand_setup_static2, !sprite_canball_pieces2, $0020 : dl DATA_C01421 : db $19
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.constants_address, DATA_FF0252
	dw sprite.render_order, $00C8
	dw sprite.max_x_speed, $0100
	dw sprite.x_speed, $0100
	dw sprite.y_speed, $F800
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0158
	dw !initcommand_success

DATA_FF1BCE:
	dw !initcommand_setup_static2, !sprite_egg_shell_pieces, $0020 : dl DATA_C01741 : db $1F
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.constants_address, DATA_FF0252
	dw sprite.render_order, $00C8
	dw sprite.max_x_speed, $FF00
	dw sprite.x_speed, $FF80
	dw sprite.y_speed, $F800
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0159
	dw !initcommand_success

DATA_FF1BFC:
	dw sprite.type, !sprite_krows_head
	dw sprite.interaction_flags, $0020
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_set_oam, $7000
	dw !initcommand_set_alt_palette, $0021
	dw !initcommand_set_animation, $0204
	dw !initcommand_success

DATA_FF1C18:
	dw sprite.type, !sprite_kreepy_krows_head
	dw sprite.interaction_flags, $0020
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_set_oam, $1000
	dw !initcommand_set_alt_palette, $00B8
	dw !initcommand_set_animation, $0204
	dw !initcommand_success

DATA_FF1C34:
	dw sprite.type, !sprite_king_zing_stinger
	dw sprite.unknown_32, $0000
	dw sprite.interaction_flags, $0200
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_set_animation, $0232
	dw !initcommand_success

DATA_FF1C54:
	dw sprite.type, !sprite_krows_egg
	dw sprite.render_order, $00C8
	dw sprite.state, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0000
	dw sprite.terrain_interaction, $1001
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0020
	dw !initcommand_set_animation, $02E4
	dw !initcommand_success

DATA_FF1C7A:
	dw sprite.type, !sprite_kreepy_krows_eggs
	dw sprite.render_order, $00C8
	dw sprite.state, $0000
	dw sprite.interaction_flags, $0020
	dw sprite.placement_parameter, $0020
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0020
	dw !initcommand_set_animation, $0303
	dw !initcommand_success

DATA_FF1C9C:
	dw sprite.type, !sprite_kleever_hand
	dw sprite.render_order, $00D4
	dw sprite.interaction_flags, $0020
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $002B
	dw !initcommand_set_animation, $0211
	dw !initcommand_success

DATA_FF1CBA:
	dw sprite.type, !sprite_kleever_hand_bubbles
	dw sprite.render_order, $00F8
	dw sprite.interaction_flags, $0000
	dw sprite.state, $0000
	dw sprite.unknown_1C, $C000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_palette, DATA_FD7166
	dw !initcommand_set_animation, $0218
	dw !initcommand_success

DATA_FF1CDC:
	dw sprite.type, !sprite_kleever_attack_effect
	dw sprite.render_order, $00D4
	dw sprite.interaction_flags, $0000
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $002B
	dw !initcommand_set_animation, $020F
	dw !initcommand_success

DATA_FF1CFA:
	dw sprite.type, !sprite_kleever_broken_hilt
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00FA
	dw sprite.general_purpose_48, $0001
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0051
	dw !initcommand_set_animation, $022E
	dw !initcommand_success

DATA_FF1D1A:
	dw sprite.type, !sprite_kleever_broken_fire
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00F8
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $002B
	dw !initcommand_set_animation, $022F
	dw !initcommand_success

DATA_FF1D36:
	dw sprite.type, !sprite_kleever_fireball
	dw sprite.render_order, $00EC
	dw sprite.interaction_flags, $0020
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $002B
	dw !initcommand_set_animation, $0214
	dw !initcommand_success

DATA_FF1D54:
	dw sprite.type, !sprite_kleever_canball
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0211
	dw !initcommand_success

DATA_FF1D72:
	dw sprite.type, !sprite_tntbarrel
	dw sprite.interaction_flags, $0001
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FF1D80:
	dw sprite.type, !sprite_tntbarrel
	dw sprite.interaction_flags, $0201
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FF1D8E:
	dw sprite.type, !sprite_kleever_falling_canball
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_4A, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0009
	dw !initcommand_set_animation, $02E3
	dw sprite.movement_state, $0020
	dw sprite.general_purpose_4E, DATA_FF1D54
	dw !initcommand_success

DATA_FF1DC8:
	dw !initcommand_setup_static2, !sprite_kleever_dropping_hooks, $0009 : dl DATA_C00DA1 : db $14
	dw sprite.render_order, $00D4
	dw sprite.y_position, $0100
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $FFFF
	dw sprite.general_purpose_4E, $E000
	dw sprite.state, $0003
	dw sprite.max_x_speed, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_y_speed, $0500
	dw sprite.y_speed, $0200
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $02AB
	dw !initcommand_success

DATA_FF1E0C:
	dw !initcommand_load_subconfig, DATA_FF74D0
	dw sprite.ground_y_position, $0800
	dw sprite.ground_distance, $FF80
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $FB00
	dw sprite.state, $0001
	dw sprite.parameter, $003C
	dw sprite.x_speed, $FF80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF1E32:
	dw !initcommand_load_subconfig, DATA_FF74D0
	dw sprite.ground_y_position, $0800
	dw sprite.ground_distance, $0080
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $0500
	dw sprite.state, $0001
	dw sprite.parameter, $003C
	dw sprite.x_speed, $0080
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF1E58:
	dw !initcommand_spawn_relative, $FFFD, $FFF8
	dw !initcommand_load_subconfig, DATA_FF11FA
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $FF80
	dw !initcommand_set_oam, $2000
	dw sprite.render_order, $00F4
	dw !initcommand_success

DATA_FF1E74:
	dw sprite.type, !sprite_barrel
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0021
	dw sprite.placement_parameter, $0022
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02E0
	dw !initcommand_success

DATA_FF1EAA:
	dw !initcommand_setup_static2, !sprite_king_zing_spikes, $0032 : dl DATA_C006E1 : db $10
	dw !initcommand_spawn_relative, $0000, $FFF6
	dw sprite.render_order, $00D3
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF1EC8:
	dw sprite.type, !sprite_king_zing_smoke_effect
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.max_y_speed, $0000
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $0000
	dw !initcommand_set_oam, $2000
	dw sprite.unknown_1C, $C000
	dw sprite.render_order, $00F5
	dw !initcommand_success

DATA_FF1EFE:
	dw sprite.type, !sprite_king_zing_ring_zinger
	dw sprite.constants_address, DATA_FF021C
	dw sprite.render_order, $00D4
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0020
	dw sprite.unknown_1C, $C000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_set_animation, $0240
	dw !initcommand_success

DATA_FF1F2C:
	dw sprite.type, !sprite_krool_gun
	dw sprite.unknown_32, $0000
	dw sprite.interaction_flags, $0020
	dw sprite.render_order, $00D4
	dw sprite.unknown_1C, $0000
	dw !initcommand_spawn_relative, $0000, $0000
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $006A
	dw !initcommand_set_animation, $025F
	dw !initcommand_success

DATA_FF1F54:
	dw sprite.constants_address, DATA_FF021C
	dw sprite.state, $0000
	dw sprite.render_order, $00D8
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_y_speed, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.interaction_flags, $0020
	dw sprite.placement_parameter, $0022
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF1F8A:
	dw !initcommand_load_subconfig, DATA_FF1F54
	dw sprite.type, !sprite_krool_canball
	dw !initcommand_set_alt_palette, $0009
	dw !initcommand_set_animation, $02FD
	dw !initcommand_success

DATA_FF1F9C:
	dw !initcommand_load_subconfig, DATA_FF1F54
	dw sprite.type, !sprite_spiked_canballs
	dw !initcommand_set_alt_palette, $0009
	dw !initcommand_set_animation, $02FD
	dw !initcommand_success

DATA_FF1FAE:
	dw !initcommand_load_subconfig, DATA_FF1F54
	dw sprite.type, !sprite_spiked_canballs
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_success

DATA_FF1FBC:
	dw !initcommand_load_subconfig, DATA_FF1F54
	dw sprite.type, !sprite_spiked_canballs
	dw !initcommand_set_alt_palette, $0071
	dw !initcommand_set_animation, $027E
	dw !initcommand_set_oam, $1000
	dw !initcommand_success

DATA_FF1FD2:
	dw !initcommand_load_subconfig, DATA_FF1F54
	dw sprite.type, !sprite_spiked_canballs
	dw !initcommand_set_alt_palette, $0072
	dw !initcommand_set_animation, $027E
	dw !initcommand_set_oam, $1000
	dw !initcommand_success

DATA_FF1FE8:
	dw !initcommand_load_subconfig, DATA_FF1F54
	dw sprite.type, !sprite_spiked_canballs
	dw !initcommand_set_alt_palette, $0073
	dw !initcommand_set_animation, $027E
	dw !initcommand_set_oam, $1000
	dw !initcommand_success

DATA_FF1FFE:
	dw sprite.type, !sprite_krool_gun_fire
	dw sprite.render_order, $00D6
	dw sprite.interaction_flags, $0000
	dw sprite.state, $0000
	dw sprite.unknown_1C, $C000
	dw !initcommand_set_oam, $1000
	dw !initcommand_set_alt_palette, $002B
	dw !initcommand_set_animation, $0269
	dw !initcommand_success

DATA_FF2020:
	dw sprite.type, !sprite_krool_gun_vacuum_effect
	dw sprite.render_order, $00D4
	dw sprite.interaction_flags, $0000
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_alt_palette, $0070
	dw !initcommand_set_animation, $026C
	dw !initcommand_success

DATA_FF2042:
	dw sprite.type, !sprite_lava_splash
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.max_y_speed, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF206C:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_set_alt_palette, $0000
	dw sprite.render_order, $00F8
	dw !initcommand_success

DATA_FF207A:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_set_alt_palette, $0042
	dw sprite.render_order, $00F8
	dw !initcommand_set_animation, $029E
	dw !initcommand_set_oam, $1000
	dw !initcommand_success

DATA_FF2090:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_set_alt_palette, $002B
	dw sprite.render_order, $00F8
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0002
	dw !initcommand_spawn_relative, $0000, $FFEC
	dw !initcommand_set_animation, $02A0
	dw !initcommand_set_oam, $1000
	dw !initcommand_success

DATA_FF20B4:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_set_alt_palette, $001B
	dw sprite.render_order, $00F8
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0002
	dw !initcommand_spawn_relative, $0000, $000A
	dw !initcommand_set_animation, $029F
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF20D8:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_set_alt_palette, $001B
	dw sprite.render_order, $00F8
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0002
	dw !initcommand_spawn_relative, $0000, $FFEC
	dw !initcommand_set_animation, $029F
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF20FC:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_set_alt_palette, $002B
	dw sprite.render_order, $00F8
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0002
	dw !initcommand_spawn_relative, $0000, $FFEC
	dw !initcommand_set_animation, $0275
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF2120:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_set_alt_palette, $002B
	dw sprite.render_order, $00F8
	dw !initcommand_spawn_relative, $0000, $FFEC
	dw !initcommand_set_animation, $0275
	dw !initcommand_set_oam, $A000
	dw !initcommand_success

DATA_FF213C:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_set_alt_palette, $002B
	dw sprite.render_order, $00F8
	dw !initcommand_success

DATA_FF214A:
	dw !initcommand_load_subconfig, DATA_FF1260
	dw !initcommand_spawn_relative, $FFF8, $0008
	dw sprite.render_order, $00C4
	dw sprite.y_speed, $FFE0
	dw sprite.unknown_1C, $0000
	dw !initcommand_success

DATA_FF2162:
	dw !initcommand_load_subconfig, DATA_FF1260
	dw !initcommand_spawn_relative, $FFF4, $0008
	dw sprite.render_order, $00C4
	dw sprite.y_speed, $FFE0
	dw sprite.unknown_1C, $0000
	dw !initcommand_success

DATA_FF217A:
	dw !initcommand_setup_static, !sprite_lava_splash, global_sprite_palette : dl DATA_C02321 : db $20
	dw !initcommand_spawn_relative, $0000, $0005
	dw sprite.render_order, $00F8
	dw sprite.x_speed, $FE50
	dw sprite.y_speed, $0000
	dw sprite.max_x_speed, $FFA0
	dw sprite.max_y_speed, $FF60
	dw sprite.general_purpose_42, $0006
	dw sprite.general_purpose_44, $0002
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $02A2
	dw !initcommand_success

DATA_FF21B4:
	dw !initcommand_setup_static, !sprite_lava_splash, global_sprite_palette : dl DATA_C02321 : db $20
	dw !initcommand_spawn_relative, $0000, $0005
	dw sprite.render_order, $00F8
	dw sprite.x_speed, $01B0
	dw sprite.y_speed, $0000
	dw sprite.max_x_speed, $0060
	dw sprite.max_y_speed, $FF60
	dw sprite.general_purpose_42, $0006
	dw sprite.general_purpose_44, $0002
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $02A2
	dw !initcommand_success

DATA_FF21EE:
	dw sprite.type, !sprite_krools_blinking_eyes
	dw sprite.unknown_32, $0000
	dw sprite.interaction_flags, $0000
	dw sprite.render_order, $00D6
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $006B
	dw !initcommand_set_animation, $0273
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.unknown_1C, $0000
	dw !initcommand_success

DATA_FF2216:
	dw sprite.type, !sprite_dkbarrel
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0004
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02E1
	dw !initcommand_success

DATA_FF2238:
	dw !initcommand_setup_static2, !sprite_canball_pieces1, $0074 : dl DATA_C01021 : db $20
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.constants_address, DATA_FF0252
	dw sprite.render_order, $00C8
	dw sprite.max_x_speed, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $F800
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0157
	dw !initcommand_success

DATA_FF226A:
	dw !initcommand_setup_static2, !sprite_canball_pieces2, $0074 : dl DATA_C01421 : db $19
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.constants_address, DATA_FF0252
	dw sprite.render_order, $00C8
	dw sprite.max_x_speed, $0100
	dw sprite.x_speed, $0100
	dw sprite.y_speed, $F800
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0158
	dw !initcommand_success

DATA_FF229C:
	dw sprite.type, !sprite_klubba
	dw sprite.x_position, $0090
	dw sprite.y_position, $009A
	dw sprite.general_purpose_42, $0000
	dw sprite.render_order, $00D4
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $005F
	dw !initcommand_set_animation, $028C
	dw !initcommand_success

DATA_FF22BE:
	dw sprite.type, !sprite_klubbas_club
	dw sprite.x_position, $0090
	dw sprite.y_position, $009A
	dw sprite.render_order, $00D4
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $005E
	dw !initcommand_set_animation, $028D
	dw !initcommand_success

DATA_FF22DC:
	dw sprite.type, !sprite_kudgels_club
	dw sprite.unknown_32, $0000
	dw sprite.interaction_flags, $0020
	dw sprite.render_order, $00D4
	dw sprite.unknown_1C, $0000
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.placement_parameter, $0022
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $0097
	dw !initcommand_set_animation, $028D
	dw !initcommand_success

DATA_FF2308:
	dw sprite.type, !sprite_explosion
	dw sprite.state, DATA_FF1528
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.x_speed, $00C0
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_4A, $000E
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $0002
	dw sprite.general_purpose_48, $0004
	dw !initcommand_success

DATA_FF2334:
	dw sprite.type, !sprite_explosion
	dw sprite.state, DATA_FF1528
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.type, !sprite_explosion
	dw sprite.x_speed, $FF40
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_42, $0006
	dw sprite.general_purpose_4A, $000E
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $0001
	dw sprite.general_purpose_48, $0004
	dw !initcommand_success

DATA_FF2364:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_set_alt_palette, $0041
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.y_position, $02C0
	dw sprite.render_order, $00F8
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_animation, $029E
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF2388:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_set_alt_palette, $0041
	dw !initcommand_spawn_relative, $FFFB, $0005
	dw sprite.y_position, $02CA
	dw sprite.render_order, $00F8
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_animation, $029E
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF23AC:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_set_alt_palette, $0041
	dw !initcommand_spawn_relative, $0006, $0008
	dw sprite.y_position, $02CF
	dw sprite.render_order, $00F8
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_animation, $029E
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF23D0:
	dw !initcommand_setup_static2, !sprite_kleever_pieces1, $0051 : dl DATA_FB64E0 : db $17
	dw sprite.render_order, $00F9
	dw sprite.general_purpose_46, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $021E
	dw !initcommand_success

DATA_FF23EC:
	dw !initcommand_setup_static2, !sprite_kleever_pieces2, $0051 : dl DATA_FB67C0 : db $20
	dw sprite.render_order, $00F9
	dw sprite.general_purpose_46, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $021F
	dw !initcommand_success

DATA_FF2408:
	dw !initcommand_setup_static2, !sprite_kleever_pieces3, $0051 : dl DATA_FB6BC0 : db $20
	dw sprite.render_order, $00F9
	dw sprite.general_purpose_46, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0220
	dw !initcommand_success

DATA_FF2424:
	dw !initcommand_setup_static2, !sprite_kleever_pieces4, $0051 : dl DATA_FA0360 : db $18
	dw sprite.render_order, $00F9
	dw sprite.general_purpose_46, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0221
	dw !initcommand_success

DATA_FF2440:
	dw !initcommand_setup_static2, !sprite_kleever_pieces5, $0051 : dl DATA_FC5680 : db $14
	dw sprite.render_order, $00F9
	dw sprite.general_purpose_46, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0223
	dw !initcommand_success

DATA_FF245C:
	dw !initcommand_setup_static2, !sprite_kleever_bone_pieces, $0051 : dl DATA_FA0000 : db $1B
	dw sprite.render_order, $00F9
	dw sprite.general_purpose_46, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $021B
	dw !initcommand_success

DATA_FF2478:
	dw sprite.type, !sprite_kong_npc
	dw sprite.x_position, $00AA
	dw sprite.y_position, $00A1
	dw sprite.render_order, $00F0
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC259
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $0026
	dw !initcommand_success

DATA_FF249A:
	dw sprite.type, !sprite_kong_npc
	dw sprite.x_position, $0080
	dw sprite.y_position, $0080
	dw sprite.render_order, $00F0
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC26F
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $0023
	dw !initcommand_success

DATA_FF24BC:
	dw sprite.type, !sprite_kong_npc
	dw sprite.x_position, $0080
	dw sprite.y_position, $0080
	dw sprite.render_order, $00F0
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC28D
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $0004
	dw !initcommand_success

DATA_FF24DE:
	dw sprite.type, !sprite_kong_npc
	dw sprite.x_position, $0080
	dw sprite.y_position, $00A0
	dw sprite.render_order, $00F0
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC2AB
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0037
	dw !initcommand_success

DATA_FF2500:
	dw sprite.type, !sprite_kong_npc
	dw sprite.x_position, $0080
	dw sprite.y_position, $00A0
	dw sprite.render_order, $00F8
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC2BD
	dw sprite.unknown_1C, $C000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0037
	dw !initcommand_success

DATA_FF2526:
	dw sprite.type, !sprite_kong_npc
	dw sprite.x_position, $0058
	dw sprite.y_position, $00B0
	dw sprite.render_order, $00F0
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC2C3
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $00A3
	dw !initcommand_success

DATA_FF2548:
	dw sprite.type, !sprite_kong_npc
	dw sprite.x_position, $0058
	dw sprite.y_position, $00B0
	dw sprite.render_order, $00F0
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_BAC2E3
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $00A4
	dw !initcommand_success

DATA_FF256A:
	dw sprite.x_position, $0028
	dw sprite.y_position, $0070
	dw sprite.max_x_speed, $0000
	dw sprite.max_y_speed, $0100
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0004
	dw sprite.general_purpose_46, $000F
	dw sprite.general_purpose_48, $000D
	dw sprite.general_purpose_4A, $001E
	dw sprite.general_purpose_4C, $001B
	dw !initcommand_set_animation, $01EA
	dw !initcommand_success

DATA_FF25A0:
	dw sprite.type, !sprite_scroll_and_float_barrel
	dw !initcommand_load_subconfig, DATA_FF256A
	dw sprite.render_order, $00D4
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $01E9
	dw !initcommand_set_alt_palette, $005D
	dw !initcommand_success

DATA_FF25BA:
	dw sprite.type, !sprite_scroll_and_float_barrel
	dw !initcommand_load_subconfig, DATA_FF256A
	dw sprite.render_order, $00D2
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_success

DATA_FF25D0:
	dw sprite.type, !sprite_scroll_and_float_barrel
	dw !initcommand_load_subconfig, DATA_FF256A
	dw sprite.render_order, $00D4
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $01EB
	dw !initcommand_set_alt_palette, $005D
	dw !initcommand_success

DATA_FF25EA:
	dw sprite.type, !sprite_scroll_and_float_barrel
	dw sprite.render_order, $00D4
	dw sprite.max_x_speed, $0100
	dw sprite.max_y_speed, $0100
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0004
	dw sprite.general_purpose_46, $000F
	dw sprite.general_purpose_48, $000D
	dw sprite.general_purpose_4A, $001E
	dw sprite.general_purpose_4C, $001B
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF2620:
	dw !initcommand_load_subconfig, DATA_FF25EA
	dw sprite.x_position, $00C8
	dw sprite.y_position, $0050
	dw sprite.render_order, $00D4
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01D8
	dw !initcommand_success

DATA_FF263A:
	dw sprite.type, !sprite_map_player
	dw sprite.render_order, $0108
	dw sprite.oam_property, $3E60
	dw !initcommand_set_animation, $01EC
	dw !initcommand_success

DATA_FF264C:
	dw sprite.type, !sprite_map_player
	dw sprite.render_order, $0108
	dw sprite.oam_property, $3E70
	dw !initcommand_set_animation, $01B9
	dw !initcommand_success

DATA_FF265E:
	dw sprite.type, !sprite_map_player
	dw sprite.render_order, $0108
	dw sprite.oam_property, $3E60
	dw !initcommand_set_animation, $01BA
	dw !initcommand_success

DATA_FF2670:
	dw sprite.type, !sprite_map_player
	dw sprite.render_order, $0108
	dw sprite.oam_property, $36A0
	dw !initcommand_set_animation, $0256
	dw !initcommand_success

DATA_FF2682:
	dw sprite.type, !sprite_map_player
	dw sprite.render_order, $0108
	dw sprite.oam_property, $36C0
	dw !initcommand_set_animation, $0256
	dw !initcommand_success

DATA_FF2694:
	dw sprite.type, !sprite_map_player
	dw sprite.render_order, $0108
	dw sprite.oam_property, $36E0
	dw !initcommand_set_animation, $0256
	dw !initcommand_success

DATA_FF26A6:
	dw sprite.type, !sprite_map_player
	dw sprite.render_order, $0108
	dw sprite.oam_property, $3700
	dw !initcommand_set_animation, $0256
	dw !initcommand_success

DATA_FF26B8:
	dw sprite.type, !sprite_map_player
	dw sprite.render_order, $0108
	dw sprite.oam_property, $3720
	dw !initcommand_set_animation, $0256
	dw !initcommand_success

DATA_FF26CA:
	dw sprite.state, $0002
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.max_y_speed, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0238
	dw sprite.general_purpose_46, $01C1
	dw sprite.x_position, $0238
	dw sprite.y_position, $0100
	dw sprite.interaction_flags, $0200
	dw !initcommand_success

DATA_FF26F8:
	dw sprite.type, !sprite_donkey_kongs_rope
	dw !initcommand_load_subconfig, DATA_FF26CA
	dw sprite.unknown_1C, $0000
	dw sprite.render_order, $00D2
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $024F
	dw !initcommand_set_alt_palette, $006A
	dw !initcommand_success

DATA_FF2716:
	dw sprite.type, !sprite_donkey_kongs_bindings
	dw !initcommand_load_subconfig, DATA_FF26CA
	dw sprite.unknown_1C, $0000
	dw sprite.render_order, $00D9
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0244
	dw !initcommand_set_alt_palette, $006A
	dw !initcommand_success

DATA_FF2734:
	dw sprite.type, !sprite_tied_up_donkey_kong
	dw !initcommand_load_subconfig, DATA_FF26CA
	dw sprite.unknown_1C, $0000
	dw sprite.render_order, $00D9
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0243
	dw !initcommand_set_alt_palette, $00A8
	dw !initcommand_success

DATA_FF2752:
	dw !initcommand_load_subconfig, DATA_FF1F54
	dw sprite.type, !sprite_shot_donkey_kong
	dw sprite.general_purpose_42, $0003
	dw sprite.general_purpose_44, $0007
	dw sprite.general_purpose_42, $0000
	dw sprite.render_order, $00DA
	dw !initcommand_set_alt_palette, $0009
	dw !initcommand_set_animation, $02FD
	dw !initcommand_success

DATA_FF2774:
	dw sprite.type, !sprite_krool_puddle
	dw sprite.render_order, $00D4
	dw !initcommand_set_animation, $0224
	dw !initcommand_set_oam, $6000
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_alt_palette, $00AF
	dw !initcommand_success

DATA_FF278E:
	dw !initcommand_setup_static2, !sprite_krool_water_drips, $00AF : dl DATA_FC54E0 : db $0D
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00F8
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.state, $0000
	dw !initcommand_set_oam, $7000
	dw !initcommand_success

DATA_FF27B4:
	dw sprite.type, !sprite_krool_fish
	dw sprite.render_order, $00F8
	dw sprite.state, $0000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $0259
	dw !initcommand_set_alt_palette, $00A9
	dw !initcommand_success

DATA_FF27CE:
	dw sprite.type, !sprite_krools_blinking_eyes
	dw sprite.render_order, $00D4
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $022A
	dw !initcommand_set_alt_palette, $0075
	dw !initcommand_success

DATA_FF27E8:
	dw sprite.type, !sprite_krools_blinking_eyes
	dw sprite.render_order, $00D4
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $022B
	dw !initcommand_set_alt_palette, $0076
	dw !initcommand_success

DATA_FF2802:
	dw sprite.type, !sprite_krools_blinking_eyes
	dw sprite.render_order, $00D4
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $022C
	dw !initcommand_set_alt_palette, $0081
	dw !initcommand_success

DATA_FF281C:
	dw sprite.type, !sprite_unknown_0098
	dw sprite.x_position, $0200
	dw sprite.y_position, $0170
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $0000
	dw sprite.general_purpose_4A, $0001
	dw sprite.general_purpose_4C, $0000
	dw sprite.general_purpose_4E, $0000
	dw !initcommand_success

DATA_FF2842:
	dw !initcommand_load_subconfig, DATA_FF104E
	dw !initcommand_spawn_relative, $0000, $FFE8
	dw !initcommand_set_oam, $3000
	dw sprite.render_order, $00F8
	dw !initcommand_success

DATA_FF2856:
	dw !initcommand_load_subconfig, DATA_FF104E
	dw !initcommand_spawn_relative, $0018, $FFDD
	dw !initcommand_set_oam, $3000
	dw sprite.render_order, $00F8
	dw !initcommand_success

DATA_FF286A:
	dw sprite.type, !sprite_sparkle_spawner
	dw sprite.x_position, $0180
	dw sprite.y_position, $0170
	dw sprite.general_purpose_42, $0001
	dw !initcommand_success

DATA_FF287C:
	dw !initcommand_setup_static, !sprite_sparkle, global_sprite_palette : dl intro_sparkle_graphics : db $0D
	dw sprite.render_order, $00FA
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_animation, $022D
	dw !initcommand_success

DATA_FF289C:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_spawn_relative, $FFF0, $FFF5
	dw !initcommand_set_alt_palette, $0000
	dw sprite.render_order, $00F8
	dw sprite.y_speed, $FFA0
	dw !initcommand_set_animation, $026F
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF28BC:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_spawn_relative, $0008, $000A
	dw !initcommand_set_alt_palette, $0000
	dw sprite.render_order, $00F8
	dw sprite.y_speed, $FF70
	dw !initcommand_set_animation, $027F
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF28DC:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw !initcommand_spawn_relative, $0010, $FFFC
	dw !initcommand_set_alt_palette, $0000
	dw sprite.render_order, $00F8
	dw sprite.y_speed, $FFA0
	dw !initcommand_set_animation, $029F
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF28FC:
	dw !initcommand_load_subconfig, DATA_FF2042
	dw sprite.render_order, $00F8
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_animation, $01FE
	dw !initcommand_success

DATA_FF2912:
	dw !initcommand_load_subconfig, DATA_FF28FC
	dw !initcommand_spawn_relative, $0000, $FFF2
	dw sprite.animation_control, $00C0
	dw sprite.y_speed, $FF00
	dw !initcommand_success

DATA_FF2926:
	dw !initcommand_load_subconfig, DATA_FF28FC
	dw !initcommand_spawn_relative, $FFF7, $FFEE
	dw sprite.animation_control, $0060
	dw sprite.x_speed, $FE80
	dw sprite.y_speed, $FF80
	dw sprite.max_y_speed, $0080
	dw sprite.general_purpose_44, $0003
	dw !initcommand_success

DATA_FF2946:
	dw !initcommand_load_subconfig, DATA_FF28FC
	dw !initcommand_spawn_relative, $0009, $FFEB
	dw sprite.animation_control, $0080
	dw sprite.x_speed, $0180
	dw sprite.max_x_speed, $0080
	dw sprite.general_purpose_42, $0003
	dw sprite.y_speed, $FEB0
	dw sprite.max_y_speed, $0080
	dw sprite.general_purpose_44, $0003
	dw !initcommand_success

DATA_FF296E:
	dw !initcommand_load_subconfig, DATA_FF28FC
	dw !initcommand_spawn_relative, $0006, $FFFA
	dw sprite.animation_control, $00B0
	dw sprite.x_speed, $0140
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_42, $0003
	dw sprite.y_speed, $FF80
	dw sprite.max_y_speed, $0080
	dw sprite.general_purpose_44, $0002
	dw sprite.unknown_1C, $0000
	dw !initcommand_success

DATA_FF299A:
	dw !initcommand_setup_static, !sprite_kreepy_krow_sparkle, global_sprite_palette : dl intro_sparkle_graphics : db $0D
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.render_order, $00FA
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $01FF
	dw !initcommand_success

DATA_FF29BC:
	dw !initcommand_load_subconfig, DATA_FF28FC
	dw !initcommand_spawn_relative, $FFEE, $FFEB
	dw sprite.animation_control, $0070
	dw sprite.x_speed, $FEC0
	dw sprite.max_x_speed, $FFC0
	dw sprite.general_purpose_42, $0003
	dw sprite.y_speed, $FE50
	dw sprite.max_y_speed, $00B0
	dw sprite.general_purpose_44, $0003
	dw sprite.unknown_1C, $0000
	dw !initcommand_success

DATA_FF29E8:
	dw !initcommand_setup_static, !sprite_unknown_0050, global_sprite_palette : dl intro_sparkle_graphics : db $0D
	dw sprite.render_order, $00FA
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $01FF
	dw sprite.animation_control, $0280
	dw !initcommand_success

DATA_FF2A08:
	dw sprite.type, !sprite_chest_spawner
	dw sprite.state, $0000
	dw sprite.constants_address, DATA_FF2A26
	dw sprite.general_purpose_42, DATA_FFB966
	dw sprite.general_purpose_44, $0004
	dw sprite.general_purpose_46, $0019
	dw sprite.general_purpose_48, $0010
	dw !initcommand_success

;chest spawn positions
DATA_FF2A26:
	dw $014C, $01C0
	dw $0174, $01C0
	dw $019C, $01C0
	dw $01C4, $01C0
	dw $0000

;k rool
DATA_FF2A38:
	dw sprite.type, !sprite_krool
	dw sprite.x_position, $0278
	dw sprite.y_position, $01C1
	dw sprite.render_order, $00D4
	dw sprite.interaction_flags, $0020
	dw sprite.state, $0000
	dw sprite.general_purpose_46, DATA_B69097
	dw sprite.general_purpose_42, $0000
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $0069
	dw !initcommand_set_animation, $025E
	dw !initcommand_success

;kudgel
DATA_FF2A66:
	dw sprite.type, !sprite_kudgel
	dw sprite.x_position, $0180
	dw sprite.y_position, $0150
	dw sprite.render_order, $00D4
	dw sprite.interaction_flags, $0020
	dw sprite.state, $0000
	dw sprite.general_purpose_46, DATA_B684D4
	dw sprite.general_purpose_42, $0000
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $0096
	dw !initcommand_set_animation, $01FB
	dw !initcommand_success

DATA_FF2A94:
	dw sprite.type, !sprite_unknown_0294
	dw sprite.state, $0003
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.max_y_speed, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $023D
	dw sprite.general_purpose_46, $01B1
	dw sprite.general_purpose_4E, $0000
	dw sprite.x_position, $023D
	dw sprite.y_position, $01B1
	dw sprite.unknown_1C, $0000
	dw sprite.render_order, $00D4
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $0243
	dw !initcommand_set_alt_palette, $00A8
	dw !initcommand_success

DATA_FF2ADA:
	dw sprite.type, !sprite_kleever
	dw sprite.y_position, $0330
	dw sprite.render_order, $00D4
	dw sprite.general_purpose_42, $0000
	dw sprite.interaction_flags, $0020
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0051
	dw !initcommand_set_animation, $0210
	dw !initcommand_success

;klomp
DATA_FF2B00:
	dw sprite.type, !sprite_klomp
	dw sprite.constants_address, DATA_FF0294
	dw sprite.render_order, $00D4
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0007
	dw !initcommand_set_animation, $0160
	dw sprite.movement_state, $0023
	dw !initcommand_success

DATA_FF2B2E:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $4848
	dw !initcommand_success

DATA_FF2B3C:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $00B0
	dw !initcommand_success

DATA_FF2B4A:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $B000
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2B5C:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $6060
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2B6E:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $3030
	dw !initcommand_success

DATA_FF2B7C:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $0060
	dw !initcommand_success

DATA_FF2B8A:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $6000
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2B9C:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $3030
	dw !initcommand_success

DATA_FF2BAE:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $4040
	dw !initcommand_success

DATA_FF2BBC:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FF2BCA:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $1818
	dw !initcommand_success

DATA_FF2BD8:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FF00
	dw sprite.movement_state, $0022
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2BEA:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $2888
	dw !initcommand_success

DATA_FF2BF8:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw sprite.general_purpose_46, $3030
	dw !initcommand_success

DATA_FF2C0A:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $6000
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2C1C:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FF2C2A:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $4848
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF2C3C:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $4040
	dw !initcommand_success

DATA_FF2C4A:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FEA0
	dw sprite.general_purpose_46, $7010
	dw !initcommand_success

DATA_FF2C58:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $3010
	dw !initcommand_success

DATA_FF2C66:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0160
	dw sprite.general_purpose_46, $0078
	dw !initcommand_success

DATA_FF2C74:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FEA0
	dw sprite.general_purpose_46, $7800
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2C86:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $2828
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF2C98:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $1010
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2CAA:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $A070
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2CBC:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $9050
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2CCE:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $6080
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2CE0:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $30B0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2CF2:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FE60
	dw sprite.general_purpose_46, $3030
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2D04:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $3010
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2D16:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $8000
	dw !initcommand_success

DATA_FF2D24:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $4848
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2D36:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0120
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FF2D44:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $00E0
	dw !initcommand_success

DATA_FF2D52:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $30B0
	dw !initcommand_success

DATA_FF2D60:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $6080
	dw !initcommand_success

DATA_FF2D6E:
	dw sprite.type, !sprite_click_clack
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF0352
	dw sprite.interaction_flags, $0120
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0163
	dw sprite.movement_state, $0022
	dw !initcommand_success

DATA_FF2D98:
	dw !initcommand_load_subconfig, DATA_FF2D6E
	dw !initcommand_set_alt_palette, $00B7
	dw !initcommand_success

DATA_FF2DA2:
	dw !initcommand_load_subconfig, DATA_FF2D6E
	dw !initcommand_set_alt_palette, $00B7
	dw !initcommand_success

DATA_FF2DAC:
	dw sprite.type, !sprite_click_clack
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF0352
	dw sprite.interaction_flags, $0120
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0163
	dw sprite.movement_state, $0023
	dw !initcommand_success

DATA_FF2DD6:
	dw !initcommand_load_subconfig, DATA_FF2DAC
	dw !initcommand_set_alt_palette, $00B7
	dw !initcommand_success

DATA_FF2DE0:
	dw !initcommand_load_subconfig, DATA_FF2DAC
	dw !initcommand_set_alt_palette, $00B7
	dw !initcommand_success

DATA_FF2DEA:
	dw !initcommand_load_subconfig, DATA_FF2D98
	dw sprite.max_x_speed, $FF00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2DF8:
	dw !initcommand_load_subconfig, DATA_FF2D98
	dw sprite.max_x_speed, $0100
	dw !initcommand_success

DATA_FF2E02:
	dw !initcommand_load_subconfig, DATA_FF2D98
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2E10:
	dw !initcommand_load_subconfig, DATA_FF2D98
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF2E1A:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $2828
	dw !initcommand_success

DATA_FF2E28:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $3838
	dw !initcommand_success

DATA_FF2E36:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $0098
	dw !initcommand_success

DATA_FF2E44:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $9800
	dw !initcommand_success

DATA_FF2E52:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $0808
	dw !initcommand_success

DATA_FF2E60:
	dw !initcommand_load_subconfig, DATA_FF2DE0
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $8000
	dw !initcommand_success

DATA_FF2E72:
	dw !initcommand_load_subconfig, DATA_FF2DE0
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $A800
	dw !initcommand_success

DATA_FF2E84:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $0058
	dw !initcommand_success

DATA_FF2E92:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $2C2C
	dw !initcommand_success

DATA_FF2EA0:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $5800
	dw !initcommand_success

DATA_FF2EAE:
	dw !initcommand_load_subconfig, DATA_FF2DE0
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $9018
	dw !initcommand_success

DATA_FF2EC0:
	dw !initcommand_load_subconfig, DATA_FF2DE0
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $9000
	dw !initcommand_success

DATA_FF2ED2:
	dw !initcommand_load_subconfig, DATA_FF2DE0
	dw sprite.max_x_speed, $0100
	dw sprite.general_purpose_46, $28C8
	dw !initcommand_success

DATA_FF2EE0:
	dw !initcommand_load_subconfig, DATA_FF2DE0
	dw sprite.max_x_speed, $0100
	dw sprite.general_purpose_46, $78C0
	dw !initcommand_success

DATA_FF2EEE:
	dw !initcommand_load_subconfig, DATA_FF2DE0
	dw sprite.max_x_speed, $0100
	dw sprite.general_purpose_46, $38FF
	dw !initcommand_success

DATA_FF2EFC:
	dw !initcommand_load_subconfig, DATA_FF2DE0
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $FF10
	dw !initcommand_success

DATA_FF2F0E:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $8848
	dw !initcommand_success

DATA_FF2F20:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $70C0
	dw !initcommand_success

DATA_FF2F32:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $A090
	dw !initcommand_success

DATA_FF2F44:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $3878
	dw !initcommand_success

DATA_FF2F52:
	dw !initcommand_load_subconfig, DATA_FF2D98
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2F60:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $B83C
	dw !initcommand_success

DATA_FF2F72:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $E818
	dw !initcommand_success

DATA_FF2F84:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $1010
	dw !initcommand_success

DATA_FF2F96:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0160
	dw sprite.general_purpose_46, $40C0
	dw !initcommand_success

DATA_FF2FA4:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FEA0
	dw sprite.general_purpose_46, $10F0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2FB6:
	dw !initcommand_load_subconfig, DATA_FF2DE0
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $1890
	dw !initcommand_success

DATA_FF2FC4:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $A078
	dw !initcommand_success

DATA_FF2FD2:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $70A8
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF2FE4:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $0090
	dw !initcommand_success

DATA_FF2FF2:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $A838
	dw !initcommand_success

DATA_FF3004:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $E000
	dw !initcommand_success

DATA_FF3016:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $9800
	dw !initcommand_success

DATA_FF3028:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $B040
	dw !initcommand_success

DATA_FF303A:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $D020
	dw !initcommand_success

DATA_FF304C:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $F000
	dw !initcommand_success

DATA_FF305E:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $9020
	dw !initcommand_success

DATA_FF3070:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $1818
	dw !initcommand_success

DATA_FF3082:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $E014
	dw !initcommand_success

DATA_FF3094:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FF30A2:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0120
	dw sprite.general_purpose_46, $7070
	dw !initcommand_success

DATA_FF30B0:
	dw !initcommand_load_subconfig, DATA_FF2DA2
	dw sprite.max_x_speed, $FF00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF30BE:
	dw !initcommand_load_subconfig, DATA_FF2DA2
	dw sprite.max_x_speed, $0100
	dw !initcommand_success

DATA_FF30C8:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $A030
	dw !initcommand_success

DATA_FF30DA:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $D000
	dw !initcommand_success

;neek
DATA_FF30EC:
	dw sprite.type, !sprite_neek
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF027E
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $FF00
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $001C
	dw !initcommand_set_animation, $016F
	dw sprite.movement_state, $0022
	dw !initcommand_success

DATA_FF311E:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.movement_state, $0023
	dw sprite.general_purpose_46, $8080
	dw !initcommand_success

DATA_FF312C:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF3136:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF3144:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FF314E:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF3158:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $0100
	dw sprite.movement_state, $0023
	dw sprite.general_purpose_46, $0808
	dw !initcommand_success

DATA_FF316A:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF3178:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $FE80
	dw sprite.movement_state, $0023
	dw sprite.general_purpose_46, $9060
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF318E:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $FE80
	dw sprite.movement_state, $0023
	dw sprite.general_purpose_46, $30C0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF31A4:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $FE80
	dw sprite.movement_state, $0023
	dw sprite.general_purpose_46, $9050
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF31BA:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $FE80
	dw sprite.movement_state, $0023
	dw sprite.general_purpose_46, $1818
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF31D0:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $0180
	dw sprite.movement_state, $0023
	dw sprite.general_purpose_46, $1818
	dw !initcommand_success

DATA_FF31E2:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $0120
	dw !initcommand_success

DATA_FF31EC:
	dw sprite.general_purpose_4E, $0003
	dw sprite.general_purpose_46, $003E
	dw !initcommand_load_subconfig, DATA_FF321E
	dw !initcommand_success

DATA_FF31FA:
	dw sprite.general_purpose_4E, $0002
	dw sprite.general_purpose_46, $003C
	dw !initcommand_load_subconfig, DATA_FF321E
	dw !initcommand_success

DATA_FF3208:
	dw sprite.general_purpose_4E, $0000
	dw sprite.general_purpose_46, $003A
	dw !initcommand_load_subconfig, DATA_FF321E
	dw !initcommand_success

DATA_FF3216:
	dw sprite.general_purpose_4E, $0001
	dw sprite.general_purpose_46, $0038
DATA_FF321E:
	dw sprite.movement_state, $0F0E
	dw sprite.x_sub_position, $A060
	dw !initcommand_load_subconfig, DATA_FF3266
	dw !initcommand_success

DATA_FF322C:
	dw sprite.general_purpose_4E, $0003
	dw sprite.general_purpose_46, $003E
	dw !initcommand_load_subconfig, DATA_FF325E
	dw !initcommand_success

DATA_FF323A:
	dw sprite.general_purpose_4E, $0002
	dw sprite.general_purpose_46, $003C
	dw !initcommand_load_subconfig, DATA_FF325E
	dw !initcommand_success

DATA_FF3248:
	dw sprite.general_purpose_4E, $0000
	dw sprite.general_purpose_46, $003A
	dw !initcommand_load_subconfig, DATA_FF325E
	dw !initcommand_success

DATA_FF3256:
	dw sprite.general_purpose_4E, $0001
	dw sprite.general_purpose_46, $0038
DATA_FF325E:
	dw sprite.movement_state, $000C
	dw sprite.x_sub_position, $0078
DATA_FF3266:
	dw sprite.constants_address, DATA_FF0260
	dw sprite.type, !sprite_klobber
	dw sprite.render_order, $00D4
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $0002
	dw sprite.state, $0100
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw !initcommand_set_animation, $02E2
	dw sprite.unknown_22, $0096
	dw !initcommand_success

DATA_FF3290:
	dw !initcommand_load_subconfig, DATA_FF3256
	dw sprite.x_sub_position, $001E
	dw !initcommand_success

DATA_FF329A:
	dw !initcommand_load_subconfig, DATA_FF3216
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF32A4:
	dw !initcommand_load_subconfig, DATA_FF3256
	dw sprite.x_sub_position, $000F
	dw !initcommand_success

DATA_FF32AE:
	dw !initcommand_load_subconfig, DATA_FF3256
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF32B8:
	dw !initcommand_load_subconfig, DATA_FF3216
	dw sprite.x_sub_position, $6060
	dw !initcommand_success

DATA_FF32C2:
	dw !initcommand_load_subconfig, DATA_FF3216
	dw !initcommand_success

DATA_FF32C8:
	dw !initcommand_load_subconfig, DATA_FF3216
	dw sprite.x_sub_position, $9060
	dw !initcommand_success

DATA_FF32D2:
	dw !initcommand_load_subconfig, DATA_FF3216
	dw !initcommand_set_oam, $2000
	dw sprite.x_sub_position, $A020
	dw !initcommand_success

DATA_FF32E0:
	dw !initcommand_load_subconfig, DATA_FF3216
	dw sprite.x_sub_position, $6020
	dw !initcommand_success

DATA_FF32EA:
	dw !initcommand_load_subconfig, DATA_FF3216
	dw sprite.x_sub_position, $A020
	dw !initcommand_success

DATA_FF32F4:
	dw !initcommand_load_subconfig, DATA_FF3208
	dw !initcommand_success

DATA_FF32FA:
	dw !initcommand_load_subconfig, DATA_FF3208
	dw sprite.x_sub_position, $C060
	dw !initcommand_success

DATA_FF3304:
	dw !initcommand_load_subconfig, DATA_FF3208
	dw sprite.constants_address, DATA_FF0274
	dw sprite.x_sub_position, $A060
	dw !initcommand_success

DATA_FF3312:
	dw !initcommand_load_subconfig, DATA_FF3208
	dw sprite.x_sub_position, $A0A0
	dw !initcommand_success

DATA_FF331C:
	dw !initcommand_load_subconfig, DATA_FF3208
	dw sprite.x_sub_position, $8860
	dw !initcommand_success

DATA_FF3326:
	dw !initcommand_load_subconfig, DATA_FF323A
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $000F
	dw !initcommand_success

DATA_FF3334:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $5050
	dw !initcommand_success

DATA_FF3342:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $5050
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF3354:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $8080
	dw !initcommand_success

DATA_FF3362:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $8010
	dw !initcommand_success

DATA_FF3370:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $8070
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF3382:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $8070
	dw !initcommand_success

DATA_FF3390:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw !initcommand_success

DATA_FF339A:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $A0A0
	dw !initcommand_success

DATA_FF33A8:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $A020
	dw !initcommand_success

DATA_FF33B6:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw !initcommand_set_oam, $2000
	dw sprite.x_sub_position, $A020
	dw !initcommand_success

DATA_FF33C8:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $6050
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF33DA:
	dw !initcommand_load_subconfig, DATA_FF31EC
	dw sprite.constants_address, DATA_FF026A
	dw !initcommand_success

DATA_FF33E4:
	dw !initcommand_load_subconfig, DATA_FF31EC
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $6050
	dw !initcommand_success

DATA_FF33F2:
	dw !initcommand_load_subconfig, DATA_FF31EC
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $8080
	dw !initcommand_success

DATA_FF3400:
	dw !initcommand_load_subconfig, DATA_FF31EC
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $A0A0
	dw !initcommand_success

DATA_FF340E:
	dw !initcommand_load_subconfig, DATA_FF31EC
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $8080
	dw sprite.unknown_22, $003C
	dw !initcommand_success

DATA_FF3420:
	dw !initcommand_load_subconfig, DATA_FF31EC
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $6080
	dw !initcommand_success

DATA_FF342E:
	dw !initcommand_load_subconfig, DATA_FF31EC
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $A020
	dw !initcommand_success

DATA_FF343C:
	dw !initcommand_load_subconfig, DATA_FF31EC
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $6050
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF344E:
	dw sprite.type, !sprite_barrel
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0001
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02E0
	dw !initcommand_success

DATA_FF347C:
	dw !initcommand_load_subconfig, DATA_FF344E
	dw !initcommand_success

DATA_FF3482:
	dw sprite.type, !sprite_cannon
	dw sprite.render_order, $00C8
	dw sprite.state, $0000
	dw sprite.max_y_speed, $0000
	dw sprite.unknown_5C, $0000
	dw sprite.parameter, $0000
	dw sprite.interaction_flags, $0400
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $000A
	dw !initcommand_set_animation, $015E
	dw !initcommand_success

DATA_FF34AC:
	dw sprite.type, !sprite_invincibility_barrel
	dw sprite.render_order, $00C8
	dw sprite.state, $0000
	dw sprite.interaction_flags, $0000
	dw sprite.general_purpose_42, $01E0
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02CD
	dw !initcommand_success

DATA_FF34CE:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw !initcommand_success

DATA_FF34D4:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $0384
	dw !initcommand_success

DATA_FF34DE:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $02D0
	dw !initcommand_success

DATA_FF34E8:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $04B0
	dw !initcommand_success

DATA_FF34F2:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $0258
	dw !initcommand_success

DATA_FF34FC:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $02D0
	dw !initcommand_success

DATA_FF3506:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $02D0
	dw !initcommand_success

DATA_FF3510:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $01A4
	dw !initcommand_success

DATA_FF351A:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $030C
	dw !initcommand_success

DATA_FF3524:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $02D0
	dw !initcommand_success

DATA_FF352E:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $01E0
	dw !initcommand_success

DATA_FF3538:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $01E0
	dw !initcommand_success

DATA_FF3542:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $04B0
	dw !initcommand_success

DATA_FF354C:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $02D0
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FF355A:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $0348
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FF3568:
	dw !initcommand_load_subconfig, DATA_FF3482
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0030, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF358A:
	dw !initcommand_load_subconfig, DATA_FF3482
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0030, $0203, $0400, $0000
	dw !initcommand_success

DATA_FF35AC:
	dw !initcommand_load_subconfig, DATA_FF3482
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0030, $0103, $0400, $0000
	dw !initcommand_success

DATA_FF35CE:
	dw !initcommand_load_subconfig, DATA_FF3482
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0030, $0304, $0400, $0000
	dw !initcommand_success

;click-clack
DATA_FF35F0:
	dw sprite.type, !sprite_barrel_cannon
	dw sprite.render_order, $00EC
	dw sprite.state, $0000
	dw sprite.unknown_5C, $0000
	dw sprite.parameter, $0000
	dw !initcommand_set_oam, $2000
	dw sprite.unknown_1A, $08CC
	dw !initcommand_success

DATA_FF360E:
	dw !initcommand_load_subconfig, DATA_FF35F0
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_success

DATA_FF3618:
	dw !initcommand_load_subconfig, DATA_FF35F0
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_success

;click_clack
DATA_FF3622:
	dw sprite.type, !sprite_barrel_cannon
	dw sprite.render_order, $00EC
	dw sprite.state, $000E
	dw sprite.unknown_3E, $0003
	dw sprite.unknown_5C, $0000
	dw sprite.parameter, $0000
	dw !initcommand_set_oam, $0000
	dw !initcommand_set_alt_palette, $0000
	dw sprite.unknown_1A, $08CC
	dw !initcommand_success

DATA_FF3648:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $8804, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0000, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF366A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $8804, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0000, $0001, $0400, $0000
	dw !initcommand_success

DATA_FF368C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $8804, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0000, $0002, $0400, $0000
	dw !initcommand_success

DATA_FF36AE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $8804, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0000, $0003, $0400, $0000
	dw !initcommand_success

DATA_FF36D0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $8804, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0000, $0004, $0400, $0000
	dw !initcommand_success

DATA_FF36F2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $8804, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0000, $0002, $0400, $0000
	dw sprite.unknown_5C, $0025
	dw !initcommand_success

DATA_FF3718:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $8804, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0000, $0000, $0400, $0000
	dw sprite.unknown_5C, $0007
	dw !initcommand_success

DATA_FF373E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0203, $0400, $0000
	dw !initcommand_success

DATA_FF3760:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0203, $0400, $0000
	dw !initcommand_success

DATA_FF3782:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF37A4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0304, $0400, $0000
	dw !initcommand_success

DATA_FF37C6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0800, $0000
	dw !initcommand_success

DATA_FF37E8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0203, $0400, $0000
	dw !initcommand_success

DATA_FF380A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0304, $0400, $0000
	dw !initcommand_success

DATA_FF382C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0405, $0400, $0000
	dw !initcommand_success

DATA_FF384E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF3870:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0203, $0800, $0000
	dw !initcommand_success

DATA_FF3892:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF38B4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0304, $0400, $0000
	dw !initcommand_success

DATA_FF38D6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF38F8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0203, $0400, $0000
	dw !initcommand_success

DATA_FF391A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0203, $0400, $0000
	dw !initcommand_success

DATA_FF393C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF395E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0203, $0400, $0000
	dw !initcommand_success

DATA_FF3980:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0304, $0400, $0000
	dw !initcommand_success

DATA_FF39A2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF39C4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0203, $0400, $0000
	dw !initcommand_success

DATA_FF39E6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0304, $0400, $0000
	dw !initcommand_success

DATA_FF3A08:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF3A2A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF3A4C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF3A6E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF3A90:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF3AB2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0080, $0203, $0400, $0000
	dw !initcommand_success

DATA_FF3AD4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF3AF6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF3B18:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0080, $0203, $0400, $0000
	dw !initcommand_success

DATA_FF3B3A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF3B5C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $200C, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF3B7E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0080, $0102, $0400, $0000
	dw !initcommand_success

DATA_FF3BA0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $200C, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0080, $0405, $0400, $0000
	dw !initcommand_success

DATA_FF3BC2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $200C, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0080, $0304, $0400, $0000
	dw !initcommand_success

DATA_FF3BE4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $200C, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0080, $0203, $0400, $0000
	dw !initcommand_success

DATA_FF3C06:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0002
	dw !initcommand_bulk_set
	dw $000C, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0000, $0080, $0000, $0800, $00DE
	dw !initcommand_success

DATA_FF3C2C:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0003
	dw !initcommand_bulk_set
	dw $000C, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0000, $0080, $0000, $0800, $00DE
	dw !initcommand_success

DATA_FF3C52:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0004
	dw !initcommand_bulk_set
	dw $000C, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0000, $0080, $0000, $0800, $00DE
	dw !initcommand_success

DATA_FF3C78:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0005
	dw !initcommand_bulk_set
	dw $000C, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0000, $0080, $0000, $0800, $00DE
	dw !initcommand_success

DATA_FF3C9E:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0004
	dw !initcommand_bulk_set
	dw $000C, $0080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0000, $0080, $0000, $02A0, $0000
	dw !initcommand_success

DATA_FF3CC4:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0003
	dw !initcommand_bulk_set
	dw $000C, $F000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0008, $0020, $0000, $0800, $00DE
	dw !initcommand_success

DATA_FF3CEA:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0003
	dw !initcommand_bulk_set
	dw $000C, $0088, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0008, $0080, $0000, $0900, $00DE
	dw !initcommand_success

DATA_FF3D10:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0003
	dw !initcommand_bulk_set
	dw $000C, $0080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0000, $0080, $0000, $0480, $00DE
	dw !initcommand_success

DATA_FF3D36:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0005
	dw !initcommand_bulk_set
	dw $000C, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0000, $0080, $0000, $0800, $00DE
	dw !initcommand_success

DATA_FF3D5C:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0002
	dw !initcommand_bulk_set
	dw $000C, $8000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0028, $0028, $0000, $0500, $0000
	dw !initcommand_success

DATA_FF3D82:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0000
	dw !initcommand_bulk_set
	dw $000C, $9090, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0013, $0040, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF3DA8:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0002
	dw !initcommand_bulk_set
	dw $000C, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0030, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF3DCE:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0002
	dw !initcommand_bulk_set
	dw $000C, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0000, $0080, $0000, $0800, $00DE
	dw sprite.unknown_5C, $000C
	dw !initcommand_success

DATA_FF3DF8:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0002
	dw !initcommand_bulk_set
	dw $000C, $0101, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0000, $0080, $0000, $0800, $0019
	dw !initcommand_success

DATA_FF3E1E:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0004
	dw !initcommand_bulk_set
	dw $000C, $0101, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0000, $0080, $0000, $0800, $0023
	dw !initcommand_success

DATA_FF3E44:
	dw !initcommand_load_subconfig, DATA_FF3622
	dw sprite.unknown_3E, $0004
	dw !initcommand_bulk_set
	dw $000C, $0101, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0000, $0010, $0000, $0800, $0019
	dw !initcommand_success

DATA_FF3E6A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0810, $2020, $0003, $0040, $000C, $0200
	dw $0080, $021C, $0010, $0010, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF3E8C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0810, $0000, $0003, $0040, $000C, $0200
	dw $0080, $0520, $0010, $0010, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF3EAE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $8080, $0003, $0040, $000C, $0200
	dw $0080, $031C, $0008, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF3ED0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $8080, $0003, $0040, $000C, $0200
	dw $0080, $041A, $000C, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF3EF2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $8080, $0003, $0040, $000C, $0200
	dw $0080, $041A, $0008, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF3F14:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $0000, $0003, $0040, $000C, $0200
	dw $0080, $051A, $0008, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF3F36:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $8080, $0003, $0040, $000C, $0200
	dw $0080, $021A, $0008, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF3F58:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $0000, $0003, $0040, $000C, $0200
	dw $0080, $021A, $0008, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF3F7A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $021A, $0008, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF3F9C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $8080, $0003, $0040, $000C, $0200
	dw $0080, $041A, $0006, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF3FBE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $8080, $0003, $0040, $000C, $0200
	dw $0080, $011A, $0008, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF3FE0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0810, $8080, $0003, $0040, $000C, $0200
	dw $0080, $011A, $0010, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF4002:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $8080, $0003, $0040, $000C, $0200
	dw $0080, $031A, $000C, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF4024:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $011A, $0008, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF4046:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $011A, $0005, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF4068:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $4040, $0003, $0040, $000C, $0200
	dw $0080, $051A, $0008, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF408A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $051A, $0010, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF40AC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $8080, $0003, $0040, $000C, $0200
	dw $0080, $051A, $0008, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF40CE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $8080, $0003, $0040, $000C, $0200
	dw $0080, $031C, $000A, $0008, $0000, $0800, $19E2
	dw !initcommand_success

DATA_FF40F0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000C, $0000, $0000, $0800, $0A00
	dw !initcommand_success

DATA_FF4112:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0008, $0008, $0000, $0800, $EC00
	dw !initcommand_success

DATA_FF4134:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0008, $0001, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF4154:
if !version == 0
	dw $0000
endif

DATA_FF4156:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000D, $0010, $0000, $0800, $1E00
	dw !initcommand_success

DATA_FF4178:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0014, $0014, $0000, $0800, $1E00
	dw !initcommand_success

DATA_FF419A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000B, $000C, $0000, $0800, $280A
	dw !initcommand_success

DATA_FF41BC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000D, $000D, $0000, $0800, $2714
	dw !initcommand_success

DATA_FF41DE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000E, $000E, $0000, $0800, $23F6
	dw !initcommand_success

DATA_FF4200:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000E, $000E, $0000, $0800, $1E00
	dw !initcommand_success

DATA_FF4222:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000E, $000E, $0000, $0800, $1E1E
	dw !initcommand_success

DATA_FF4244:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0012, $0012, $0000, $0800, $1E00
	dw !initcommand_success

DATA_FF4266:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $A070, $0003, $0040, $000C, $0200
	dw $0080, $001F, $00FF, $00FF, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4288:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $0020, $0003, $0040, $000C, $0200
	dw $0080, $001A, $00FF, $00FF, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF42AA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $4080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $00FF, $00FF, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF42CC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $60C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $00FF, $00FF, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF42EE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $0016, $001C, $001C, $0000, $0800, $4000
	dw !initcommand_success

DATA_FF4310:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0007, $0008, $0000, $0800, $1E14
	dw !initcommand_success

DATA_FF4332:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0008, $0008, $0000, $0800, $000A
	dw !initcommand_success

DATA_FF4354:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0006, $0008, $0000, $0800, $1E0A
	dw !initcommand_success

DATA_FF4376:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0008, $0008, $0000, $0800, $0A0A
	dw !initcommand_success

DATA_FF4398:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000A, $0008, $0000, $0800, $2300
	dw !initcommand_success

DATA_FF43BA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
if !version == 0
	dw $0080, $001C, $0024, $0024, $0000, $0800, $5000
else
	dw $0080, $001C, $001E, $001E, $0000, $0800, $5000
endif
	dw !initcommand_success

DATA_FF43DC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0018, $0018, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF43FE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $4040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $000C, $000C, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4420:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $000C, $000C, $0000, $0800, $1E00
	dw !initcommand_success

DATA_FF4442:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $6060, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000C, $0000, $0000, $0800, $00F6
	dw !initcommand_success

DATA_FF4464:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000C, $0100, $0000, $0800, $00EC
	dw !initcommand_success

DATA_FF4486:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
if !version == 0
	dw $4004, $8080, $0003, $0040, $000C, $0200
else
	dw $4004, $7F7F, $0003, $0040, $000C, $0200
endif
	dw $0080, $001A, $000A, $000A, $0000, $0800, $1E28
	dw !initcommand_success

DATA_FF44A8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000D, $000D, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF44CA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000D, $000D, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF44EC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0007, $000C, $0000, $0800, $23EC
	dw !initcommand_success

DATA_FF450E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0008, $000C, $0000, $0800, $23D3
	dw !initcommand_success

DATA_FF4530:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0028, $0028, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF4552:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000A, $000C, $0000, $0800, $2350
	dw !initcommand_success

DATA_FF4574:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000A, $000C, $0000, $0800, $2314
	dw !initcommand_success

DATA_FF4596:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF45B8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF45DA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $42E4, $8080, $0170, $01C0, $000C, $0100
	dw $0080, $001A, $000C, $0016, $0000, $0800, $00E7
	dw !initcommand_success

DATA_FF45FC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4005, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF461E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $0018, $0001, $0020, $0000, $0800, $28D8
	dw !initcommand_success

DATA_FF4640:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $7F7F, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0020, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4662:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $0520, $0008, $0008, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4684:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $0320, $000C, $000C, $0000, $0800, $0AEC
	dw !initcommand_success

DATA_FF46A6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $2020, $0003, $0400, $000C, $0100
	dw $0080, $0320, $003C, $003C, $0000, $0800, $00EC
	dw !initcommand_success

DATA_FF46C8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $8080, $0003, $0400, $000C, $0100
	dw $0080, $0318, $0020, $0020, $0000, $0800, $00EC
	dw !initcommand_success

DATA_FF46EA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0320, $0014, $0014, $0000, $0800, $00E7
	dw !initcommand_success

DATA_FF470C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $6060, $0003, $0400, $000C, $0100
	dw $0080, $0220, $000D, $0010, $0000, $0800, $00DE
	dw !initcommand_success

DATA_FF472E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0220, $000D, $0010, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF4750:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0220, $0008, $0008, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4772:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $0220, $0028, $0028, $0000, $0800, $E2E2
	dw !initcommand_success

DATA_FF4794:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0220, $0014, $0014, $0000, $0800, $ECD3
	dw !initcommand_success

DATA_FF47B6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $6060, $0003, $0400, $000C, $0100
	dw $0080, $0220, $0008, $0008, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF47D8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $2020, $0003, $0400, $000C, $0100
	dw $0080, $0220, $0028, $0028, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF47FA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $0120, $0008, $0008, $0000, $0800, $05EC
	dw !initcommand_success

DATA_FF481C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $0120, $0020, $0020, $0000, $0800, $00EC
	dw !initcommand_success

DATA_FF483E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0200
	dw $0080, $0520, $0008, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4860:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $041E, $0006, $0006, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4882:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $031C, $000C, $000C, $0000, $0100, $00E7
	dw !initcommand_success

DATA_FF48A4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0320, $0008, $0008, $0000, $0300, $00E7
	dw !initcommand_success

DATA_FF48C6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0320, $0030, $0030, $0000, $0300, $00E7
	dw !initcommand_success

DATA_FF48E8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $031A, $0002, $0002, $0000, $0300, $00E7
	dw !initcommand_success

DATA_FF490A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0320, $0010, $0010, $0000, $0300, $00E7
	dw !initcommand_success

DATA_FF492C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0319, $0001, $0001, $0000, $0300, $00E7
	dw !initcommand_success

DATA_FF494E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0320, $0018, $0018, $0000, $0300, $00D3
	dw !initcommand_success

DATA_FF4970:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0318, $0001, $0001, $0000, $0300, $00E7
	dw !initcommand_success

DATA_FF4992:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0318, $0001, $0001, $0000, $0300, $00E7
	dw !initcommand_success

DATA_FF49B4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $6060, $0003, $0400, $000C, $0100
	dw $0080, $0120, $0010, $0010, $0000, $0300, $00EC
	dw !initcommand_success

DATA_FF49D6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $021C, $0008, $0008, $0000, $0300, $0000
	dw !initcommand_success

DATA_FF49F8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $011C, $0008, $0008, $0000, $0300, $00E2
	dw !initcommand_success

DATA_FF4A1A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $011C, $0008, $0008, $0000, $0300, $00F6
	dw !initcommand_success

DATA_FF4A3C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $6060, $0003, $0400, $000C, $0100
	dw $0080, $021E, $0010, $0010, $0000, $0300, $00D8
	dw !initcommand_success

DATA_FF4A5E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $021E, $000C, $000C, $0000, $0300, $0014
	dw !initcommand_success

DATA_FF4A80:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $2020, $0003, $0400, $000C, $0100
	dw $0080, $0220, $0010, $0010, $0000, $0300, $00EC
	dw !initcommand_success

DATA_FF4AA2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0220, $0010, $0010, $0000, $0300, $0000
	dw !initcommand_success

DATA_FF4AC4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $6060, $0003, $0400, $000C, $0100
	dw $0080, $0220, $0010, $0010, $0000, $0300, $00EC
	dw !initcommand_success

DATA_FF4AE6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $2020, $0003, $0400, $000C, $0100
	dw $0080, $011E, $0008, $000C, $0000, $0300, $00EC
	dw !initcommand_success

DATA_FF4B08:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $6060, $0003, $0400, $000C, $0100
	dw $0080, $021E, $0008, $0008, $0000, $0300, $00EC
	dw !initcommand_success

DATA_FF4B2A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $2020, $0003, $0400, $000C, $0100
	dw $0080, $021E, $000C, $000C, $0000, $0300, $00E2
	dw !initcommand_success

DATA_FF4B4C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0320, $0010, $0010, $0000, $0300, $0000
	dw !initcommand_success

DATA_FF4B6E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0320, $0010, $0010, $0000, $0300, $0000
	dw !initcommand_success

DATA_FF4B90:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $021C, $0046, $0046, $0000, $0100, $0000
	dw !initcommand_success

DATA_FF4BB2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $2020, $0003, $0400, $000C, $0100
	dw $0080, $0218, $0010, $0018, $0000, $0100, $14E2
	dw !initcommand_success

DATA_FF4BD4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $6060, $0003, $0400, $000C, $0100
	dw $0080, $0218, $000C, $0018, $0000, $0100, $E2E2
	dw !initcommand_success

DATA_FF4BF6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $2020, $0003, $0400, $000C, $0100
	dw $0080, $0218, $0014, $0018, $0000, $0100, $1ED8
	dw !initcommand_success

DATA_FF4C18:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0218, $000C, $0018, $0000, $0100, $00D8
	dw !initcommand_success

DATA_FF4C3A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $041E, $0004, $0004, $0000, $0300, $0000
	dw !initcommand_success

DATA_FF4C5C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0320, $0014, $0014, $0000, $0800, $00E7
	dw !initcommand_success

DATA_FF4C7E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $12E0, $8080, $04D0, $0520, $000C, $0140
	dw $0080, $001A, $000A, $000A, $0000, $0300, $00D8
	dw !initcommand_success

DATA_FF4CA0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $12E0, $8080, $0AD0, $0B00, $000C, $0140
	dw $0080, $001A, $000C, $000C, $0000, $0300, $00D8
	dw !initcommand_success

DATA_FF4CC2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $42E4, $8080, $0100, $0180, $000C, $0140
	dw $0080, $001A, $0010, $0001, $0000, $0300, $1E00
	dw !initcommand_success

DATA_FF4CE4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1160, $6060, $0000, $0080, $000C, $0200
	dw $0080, $0320, $000B, $000B, $0000, $0300, $00E2
	dw !initcommand_success

DATA_FF4D06:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1560, $4040, $0000, $0080, $000C, $0200
	dw $0080, $0520, $0014, $0014, $0000, $0300, $00D4
	dw !initcommand_success

DATA_FF4D28:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1560, $4040, $0000, $0080, $000C, $0200
	dw $0080, $0320, $0010, $0010, $0000, $0300, $0000
	dw !initcommand_success

DATA_FF4D4A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1560, $4040, $0000, $00D0, $0008, $0200
	dw $0080, $031C, $0008, $0008, $0000, $0300, $00E7
	dw !initcommand_success

DATA_FF4D6C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0B90, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0001, $0001, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF4D8E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0BE4, $A000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0000, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF4DB0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0380, $A000, $0003, $0040, $000C, $0200
	dw $0080, $0010, $0010, $0010, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF4DD2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $13E0, $0000, $0003, $0040, $000C, $0200
	dw $0080, $0010, $0010, $0010, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF4DF4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0B84, $0000, $0003, $0040, $000C, $0200
	dw $0080, $0010, $0010, $0010, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF4E16:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0D64, $A000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0000, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF4E38:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $9000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0001, $0020, $0000, $0800, $1EE2
	dw !initcommand_success

DATA_FF4E5A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $C080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0080, $0080, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF4E7C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0020, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4E9E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $A000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0014, $0014, $0000, $0400, $2800
	dw !initcommand_success

DATA_FF4EC0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0008, $0008, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF4EE2:
	dw !initcommand_load_subconfig, DATA_FF3618
	dw !initcommand_bulk_set
	dw $000C, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0018, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF4F04:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0004, $0000, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4F26:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8000, $0003, $0040, $000C, $0200
	dw $0080, $0018, $0038, $0088, $0000, $0600, $2800
	dw !initcommand_success

DATA_FF4F48:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $6000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0022, $0030, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4F6A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $A080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $000A, $000A, $0000, $0800, $00DD
	dw !initcommand_success

DATA_FF4F8C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0010, $0010, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4FAE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $000A, $000A, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4FD0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF4FF2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5014:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $C040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0010, $0010, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5036:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $000C, $000C, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5058:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF507A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0010, $0010, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF509C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $40C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0010, $0010, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF50BE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0020, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF50E0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5102:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0020, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5124:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0010, $0010, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5146:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0D60, $C0C0, $0003, $0080, $000C, $0300
	dw $0080, $001F, $001C, $0010, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5168:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF518A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0030, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF51AC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF51CE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0030, $0030, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF51F0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4200, $8040, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0006, $0000, $0000, $0280, $0000
	dw !initcommand_success

DATA_FF5212:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $80C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0008, $0008, $0000, $0800, $00EC
	dw !initcommand_success

DATA_FF5234:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $7F7F, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0040, $0030, $0000, $0200, $1E00
	dw !initcommand_success

DATA_FF5256:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0AC0, $8080, $0003, $0030, $000C, $0200
	dw $0080, $001F, $0044, $0032, $0000, $0200, $1E00
	dw !initcommand_success

DATA_FF5278:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $7F7F, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0068, $0058, $0000, $0200, $1E00
	dw !initcommand_success

DATA_FF529A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF52BC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2804, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0018, $0018, $0300, $0800, $0000
	dw !initcommand_success

DATA_FF52DE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $0018, $0080, $0028, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5300:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $80C0, $0003, $0040, $000C, $0200
	dw $0080, $0016, $002C, $0020, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF5322:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0804, $7000, $0003, $0040, $000C, $0200
	dw $0080, $0014, $0002, $0010, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5344:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0804, $40C0, $0003, $0040, $000C, $0200
	dw $0080, $0014, $0020, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5366:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4005, $8080, $0003, $005C, $000C, $0200
	dw $0080, $001A, $0004, $0000, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF5388:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $A000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0020, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF53AA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $C020, $0003, $0040, $000C, $0200
	dw $0080, $001E, $002D, $0600, $0000, $0800, $D800
	dw !initcommand_success

DATA_FF53CC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $C000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0060, $0060, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF53EE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5410:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $E040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0020, $0020, $0000, $0600, $E2E2
	dw !initcommand_success

DATA_FF5432:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0014, $0000, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5454:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $7070, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0006, $0020, $0000, $0800, $1E1E
	dw !initcommand_success

DATA_FF5476:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8000, $0003, $0040, $000C, $0200
	dw $0080, $001A, $002C, $002C, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF5498:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0040, $0040, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF54BA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $C000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0080, $0080, $0000, $0800, $D800
	dw !initcommand_success

DATA_FF54DC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $0040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0080, $0080, $0000, $0800, $D800
	dw !initcommand_success

DATA_FF54FE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0006, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $00FF, $00FF, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF5520:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8000, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0008, $0008, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5542:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8000, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000E, $000E, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF5564:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $90F0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $00FF, $00FF, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF5586:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $7010, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0008, $0008, $0000, $0800, $2800
	dw !initcommand_success

DATA_FF55A8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $6000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $00FF, $00FF, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF55CA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $20E0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $00FF, $00FF, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF55EC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $C000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $00FF, $00FF, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF560E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $0040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $00FF, $00FF, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5630:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $4080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0016, $0016, $0000, $0800, $1400
	dw !initcommand_success

DATA_FF5652:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $0080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0020, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5674:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1010, $0000, $0003, $0040, $000C, $0200
	dw $0080, $051F, $0020, $0020, $0000, $0280, $0000
	dw !initcommand_success

DATA_FF5696:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $48E0, $7F7F, $0038, $0070, $000C, $0200
	dw $0080, $001C, $0014, $0014, $0000, $0280, $0000
	dw !initcommand_success

DATA_FF56B8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $08C0, $8080, $0003, $004C, $000C, $0200
	dw $0080, $001C, $0030, $0030, $0000, $0280, $0000
	dw !initcommand_success

DATA_FF56DA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $051C, $0038, $0030, $0000, $0280, $00E7
	dw sprite.unknown_5C, $0006
	dw !initcommand_success

DATA_FF5700:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0004, $0004, $0000, $0280, $00E2
	dw !initcommand_success

DATA_FF5722:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $B000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0020, $0050, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF5744:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $000C, $000C, $0000, $0400, $1900
	dw !initcommand_success

DATA_FF5766:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001E, $0004, $0008, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF5788:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001E, $002A, $0020, $0000, $0400, $1E00
	dw !initcommand_success

DATA_FF57AA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $C000, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0002, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF57CC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $C000, $0003, $0040, $000C, $0200
	dw $0080, $0018, $0000, $0040, $0000, $0A00, $0000
	dw !initcommand_success

DATA_FF57EE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4005, $C000, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0040, $0040, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF5810:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4006, $8000, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5832:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4005, $C000, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF5854:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4005, $8080, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0008, $0008, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5876:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0006, $8080, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0008, $0008, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5898:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0006, $8000, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF58BA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0005, $C040, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $E7E7
	dw !initcommand_success

DATA_FF58DC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0006, $C040, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $19E7
	dw !initcommand_success

DATA_FF58FE:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $4040, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0400, $E7E7
	dw !initcommand_success

DATA_FF5920:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $4040, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0300, $19E7
	dw !initcommand_success

DATA_FF5942:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0005, $8080, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $1E00
	dw !initcommand_success

DATA_FF5964:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0006, $C080, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $00EC
	dw !initcommand_success

DATA_FF5986:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $C000, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0040, $0040, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF59A8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0006, $8080, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $1E00
	dw !initcommand_success

DATA_FF59CA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0005, $C080, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $00EC
	dw !initcommand_success

DATA_FF59EC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $E000, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0040, $0040, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5A0E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0006, $C000, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5A30:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0005, $C080, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5A52:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $2020, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0008, $0008, $0000, $0400, $0000
	dw !initcommand_success

DATA_FF5A74:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0006, $A000, $0003, $005C, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $00EC
	dw !initcommand_success

DATA_FF5A96:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C000, $0003, $005C, $000C, $0200
	dw $0080, $001C, $000C, $000C, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5AB8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $F000, $0003, $005C, $000C, $0200
	dw $0080, $001A, $0002, $0002, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5ADA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $5000, $0003, $0040, $000C, $0200
if !version == 0
	dw $0080, $001F, $001C, $0030, $0000, $0800, $0000
else
	dw $0080, $001F, $001C, $0080, $0000, $0800, $0000
endif
	dw !initcommand_success

DATA_FF5AFC:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $001C, $0030, $0000, $0800, $00F2
	dw !initcommand_success

DATA_FF5B1E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0004, $0004, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5B40:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4800, $8080, $0003, $0040, $000C, $0200
	dw $0080, $0018, $000A, $000A, $0000, $0800, $1ED3
	dw !initcommand_success

DATA_FF5B62:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4800, $8080, $0003, $0040, $000C, $0200
	dw $0080, $0018, $0010, $0010, $0000, $0800, $1ED3
	dw !initcommand_success

DATA_FF5B84:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $0018, $0010, $0010, $0000, $0800, $1ED8
	dw !initcommand_success

DATA_FF5BA6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4800, $8080, $0003, $0040, $000C, $0200
	dw $0080, $0018, $0006, $0000, $0000, $0800, $1ED8
	dw !initcommand_success

DATA_FF5BC8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $F0F0, $0003, $0040, $000C, $0200
	dw $0080, $001C, $000C, $000C, $0000, $0380, $191E
	dw !initcommand_success

DATA_FF5BEA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $6060, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0008, $0008, $0000, $0380, $0ADD
	dw !initcommand_success

DATA_FF5C0C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $6060, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0008, $0008, $0000, $0380, $0AEC
	dw !initcommand_success

DATA_FF5C2E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $000C, $000C, $0000, $0380, $1EE2
	dw !initcommand_success

DATA_FF5C50:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $2020, $0003, $0040, $000C, $0200
	dw $0080, $001C, $000C, $000C, $0000, $0380, $23E2
	dw !initcommand_success

DATA_FF5C72:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0005, $8000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0020, $0020, $0000, $0800, $2831
	dw !initcommand_success

DATA_FF5C94:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $4000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0020, $0020, $0000, $0800, $D831
	dw !initcommand_success

DATA_FF5CB6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $00C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0020, $0020, $0000, $0800, $D800
	dw !initcommand_success

DATA_FF5CD8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $C080, $0003, $0040, $000C, $0200
if !version == 0
	dw $0080, $001C, $0004, $0004, $0000, $0800, $D800
else
	dw $0080, $001C, $0004, $0080, $0000, $0800, $D800
endif
	dw !initcommand_success

DATA_FF5CFA:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $2020, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0018, $0000, $0400, $2800
	dw !initcommand_success

DATA_FF5D1C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0018, $0000, $0380, $2800
	dw !initcommand_success

DATA_FF5D3E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0012, $0016, $0000, $0380, $2800
	dw !initcommand_success

DATA_FF5D60:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $E0E0, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0380, $1EE7
	dw !initcommand_success

DATA_FF5D82:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $2020, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0380, $1E19
	dw !initcommand_success

DATA_FF5DA4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $E0E0, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0380, $2300
	dw !initcommand_success

DATA_FF5DC6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0012, $0012, $0000, $0380, $2800
	dw !initcommand_success

DATA_FF5DE8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $4000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0020, $0020, $0000, $0800, $0A1E
	dw !initcommand_success

DATA_FF5E0A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0012, $0012, $0000, $0400, $2700
	dw !initcommand_success

DATA_FF5E2C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0400, $2700
	dw !initcommand_success

DATA_FF5E4E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $000E, $000E, $0000, $0400, $2700
	dw !initcommand_success

DATA_FF5E70:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0400, $2700
	dw !initcommand_success

DATA_FF5E92:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0001, $0001, $0000, $0400, $00D4
	dw !initcommand_success

DATA_FF5EB4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $001C, $0030, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF5ED6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $7F00, $0003, $0040, $000C, $0200
	dw $0080, $001C, $000C, $000C, $0000, $0800, $1E00
	dw !initcommand_success

DATA_FF5EF8:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8000, $0003, $0040, $000C, $0100
	dw $0060, $0018, $0018, $0018, $0000, $0800, $1400
	dw !initcommand_success

DATA_FF5F1A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0801, $0000, $0003, $0040, $000C, $0100
	dw $0060, $001C, $0020, $0020, $0000, $0800, $00E7
	dw !initcommand_success

DATA_FF5F3C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0006, $8080, $0003, $0040, $000C, $0100
	dw $0080, $0018, $0018, $0028, $0000, $0400, $2800
	dw !initcommand_success

DATA_FF5F5E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0005, $8080, $0003, $0040, $000C, $0100
	dw $0080, $0018, $0036, $0038, $0000, $0400, $2800
	dw !initcommand_success

DATA_FF5F80:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0006, $8080, $0003, $0040, $000C, $0100
	dw $0080, $0018, $0037, $0038, $0000, $0400, $2800
	dw !initcommand_success

DATA_FF5FA2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0005, $8080, $0003, $0040, $000C, $0100
	dw $0080, $0018, $0018, $0028, $0000, $0400, $2800
	dw !initcommand_success

DATA_FF5FC4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0006, $8080, $0003, $0040, $000C, $0100
	dw $0080, $0018, $000E, $0028, $0000, $0400, $2800
	dw !initcommand_success

DATA_FF5FE6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $0060, $0003, $0400, $000C, $0100
	dw $0080, $0118, $000C, $0018, $0000, $0600, $00D8
	dw !initcommand_success

DATA_FF6008:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0804, $9F21, $0003, $0040, $000C, $0100
	dw $0040, $0018, $0001, $0020, $0000, $0500, $0000
	dw !initcommand_success

DATA_FF602A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8080, $0003, $0040, $000C, $0100
	dw $0040, $0024, $0080, $0080, $0000, $0800, $00F2
	dw !initcommand_success

DATA_FF604C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $8000, $0003, $0040, $000C, $0100
	dw $0040, $001A, $0004, $0004, $0000, $0800, $1E00
	dw !initcommand_success

DATA_FF606E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4800, $6060, $0003, $005C, $000C, $0200
	dw $0080, $001A, $0004, $0000, $0000, $0800, $0028
	dw !initcommand_success

DATA_FF6090:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4800, $E0E0, $0003, $005C, $000C, $0200
	dw $0080, $001A, $0010, $0100, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF60B2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $A080, $0003, $0040, $000C, $0200
	dw $0080, $001F, $000C, $0100, $0000, $0800, $00DD
	dw !initcommand_success

DATA_FF60D4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4800, $8080, $0003, $0040, $000C, $0200
	dw $0080, $0019, $000E, $000C, $0000, $0800, $1ED8
	dw !initcommand_success

DATA_FF60F6:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $B040, $0003, $005C, $000C, $0200
	dw $0080, $001A, $0010, $0010, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF6118:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $6060, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0014, $0020, $0000, $0300, $2700
	dw !initcommand_success

DATA_FF613A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $9020, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0005, $0030, $0000, $0800, $00E7
	dw !initcommand_success

DATA_FF615C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $20E0, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0002, $0020, $0000, $0280, $00E7
	dw !initcommand_success

DATA_FF617E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $2020, $0000, $0040, $000C, $0200
	dw $0080, $001C, $0008, $0010, $0000, $0600, $0000
	dw !initcommand_success

DATA_FF61A0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0000, $0040, $000C, $0200
	dw $0080, $001C, $0018, $0010, $0000, $0600, $0000
	dw !initcommand_success

DATA_FF61C2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $0000, $0000, $0040, $000C, $0200
	dw $0080, $001C, $0040, $0040, $0000, $0600, $0000
	dw !initcommand_success

DATA_FF61E4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $0080, $0000, $0040, $000C, $0200
	dw $0080, $001C, $0040, $0040, $0000, $0400, $00E7
	dw !initcommand_success

DATA_FF6206:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $0040, $0000, $0040, $000C, $0200
	dw $0080, $001C, $0040, $0040, $0000, $0800, $00EC
	dw !initcommand_success

DATA_FF6228:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0020, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF624A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0020, $0020, $0000, $0800, $0000
	dw !initcommand_success

DATA_FF626C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $08C0, $0000, $0003, $0060, $000C, $0200
	dw $0080, $001A, $0020, $0020, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FF628E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $40C0, $0003, $0040, $000C, $0200
	dw $0080, $000C, $0001, $0008, $0000, $0800, $1400
	dw !initcommand_success

DATA_FF62B0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $40C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0080, $0080, $0000, $0A00, $1400
	dw !initcommand_success

DATA_FF62D2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $81C0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0070, $0070, $0000, $0A00, $1400
	dw !initcommand_success

DATA_FF62F4:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $C000, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0010, $0000, $0A00, $1400
	dw !initcommand_success

DATA_FF6316:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $6000, $0003, $0040, $000C, $0200
	dw $0080, $0014, $0008, $0040, $0000, $0800, $1400
	dw !initcommand_success

DATA_FF6338:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0028, $0001, $0000, $0300, $1E28
	dw !initcommand_success

DATA_FF635A:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $052E, $A0A0, $0003, $8000, $000C, $0020
	dw $0080, $001C, $0030, $0030, $0101, $0400, $0000
	dw !initcommand_success

DATA_FF637C:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $C080, $0003, $8000, $000C, $0020
	dw $0080, $001F, $0080, $0080, $0000, $0800, $00E7
	dw !initcommand_success

DATA_FF639E:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $0000, $0003, $8000, $000C, $0020
	dw $0080, $001F, $0080, $0080, $0000, $0800, $00DD
	dw !initcommand_success

DATA_FF63C0:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $8080, $0003, $8000, $000C, $0020
	dw $0080, $001F, $0004, $0000, $0000, $0800, $1900
	dw !initcommand_success

DATA_FF63E2:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $A080, $0003, $8000, $000C, $0020
	dw $0080, $0019, $0000, $0000, $0000, $0800, $FBD8
	dw !initcommand_success

DATA_FF6404:
	dw sprite.type, !sprite_hook
	dw sprite.render_order, $00D4
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_4E, $0000
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $02AA
	dw !initcommand_success

DATA_FF6422:
	dw !initcommand_load_subconfig, DATA_FF6404
	dw !initcommand_set_alt_palette, $0009
	dw !initcommand_success

DATA_FF642C:
	dw !initcommand_load_subconfig, DATA_FF6404
	dw !initcommand_set_alt_palette, $00B6
	dw !initcommand_success

DATA_FF6436:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1000
	dw !initcommand_success

DATA_FF6440:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $10F8
	dw !initcommand_success

DATA_FF644A:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1018
	dw !initcommand_success

DATA_FF6454:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1040
	dw !initcommand_success

DATA_FF645E:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1060
	dw !initcommand_success

DATA_FF6468:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1050
	dw !initcommand_success

DATA_FF6472:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1020
	dw !initcommand_success

DATA_FF647C:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1040
	dw !initcommand_success

DATA_FF6486:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1000
	dw !initcommand_success

DATA_FF6490:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $3040
	dw !initcommand_success

DATA_FF649A:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $2020
	dw !initcommand_success

DATA_FF64A4:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $0010
	dw !initcommand_success

DATA_FF64AE:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1030
	dw !initcommand_success

DATA_FF64B8:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1020
	dw !initcommand_success

DATA_FF64C2:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1030
	dw !initcommand_success

DATA_FF64CC:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1000
	dw !initcommand_success

DATA_FF64D6:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $1040
	dw !initcommand_success

DATA_FF64E0:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $E8E8
	dw !initcommand_success

DATA_FF64EA:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $00E8
	dw !initcommand_success

DATA_FF64F4:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $F4E8
	dw !initcommand_success

DATA_FF64FE:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $F4D0
	dw !initcommand_success

DATA_FF6508:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $F4E0
	dw !initcommand_success

DATA_FF6512:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $00D0
	dw !initcommand_success

DATA_FF651C:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $E8D0
	dw !initcommand_success

DATA_FF6526:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $E8D8
	dw !initcommand_success

DATA_FF6530:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $F020
	dw !initcommand_success

DATA_FF653A:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $0020
	dw !initcommand_success

DATA_FF6544:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $0000
	dw !initcommand_success

DATA_FF654E:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $0410
	dw !initcommand_success

DATA_FF6558:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $08C0
	dw !initcommand_success

DATA_FF6562:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $00D8
	dw !initcommand_success

DATA_FF656C:
	dw !initcommand_load_subconfig, DATA_FF642C
	dw sprite.general_purpose_4E, $1000
	dw !initcommand_success

DATA_FF6576:
	dw !initcommand_load_subconfig, DATA_FF642C
	dw sprite.general_purpose_4E, $1018
	dw !initcommand_success

DATA_FF6580:
	dw !initcommand_load_subconfig, DATA_FF642C
	dw sprite.general_purpose_4E, $1040
	dw !initcommand_success

DATA_FF658A:
	dw !initcommand_load_subconfig, DATA_FF642C
	dw sprite.general_purpose_4E, $1020
	dw !initcommand_success

DATA_FF6594:
	dw !initcommand_load_subconfig, DATA_FF642C
	dw sprite.general_purpose_4E, $F020
	dw !initcommand_success

DATA_FF659E:
	dw !initcommand_load_subconfig, DATA_FF642C
	dw sprite.general_purpose_4E, $10F0
	dw !initcommand_success

DATA_FF65A8:
	dw !initcommand_load_subconfig, DATA_FF642C
	dw sprite.general_purpose_4E, $1040
	dw !initcommand_success

DATA_FF65B2:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $00F0
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FF65C0:
	dw !initcommand_load_subconfig, DATA_FF6422
	dw sprite.general_purpose_4E, $0050
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FF65CE:
	dw !initcommand_load_subconfig, DATA_FF642C
	dw sprite.general_purpose_4E, $0050
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FF65DC:
	dw !initcommand_load_subconfig, DATA_FF642C
	dw sprite.general_purpose_4E, $0A00
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FF65EA:
	dw sprite.type, !sprite_canball
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0001
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0009
	dw !initcommand_set_animation, $02E3
	dw !initcommand_success

DATA_FF6618:
	dw sprite.type, !sprite_kannon
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw sprite.interaction_flags, $0120
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_y_speed, $0000
	dw sprite.general_purpose_4E, $0001
	dw sprite.parameter, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0008
	dw !initcommand_success

DATA_FF664E:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017E
	dw sprite.movement_state, $0010
	dw sprite.constants_address, DATA_FF043C
	dw sprite.unknown_22, DATA_FF6AEC
	dw !initcommand_success

DATA_FF6664:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BAA
	dw !initcommand_success

DATA_FF667E:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BB0
	dw !initcommand_success

DATA_FF6694:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C10
	dw !initcommand_success

DATA_FF66AE:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BB0
	dw !initcommand_success

DATA_FF66C8:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BBC
	dw !initcommand_success

DATA_FF66E2:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.parameter, $000F
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BB6
	dw !initcommand_success

DATA_FF66FC:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BC6
	dw !initcommand_success

DATA_FF6716:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BD0
	dw !initcommand_success

DATA_FF672C:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017E
	dw sprite.movement_state, $0010
	dw sprite.constants_address, DATA_FF043C
	dw sprite.unknown_22, DATA_FF6AF2
	dw !initcommand_success

DATA_FF6742:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.parameter, $001E
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C50
	dw !initcommand_success

DATA_FF6760:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017E
	dw sprite.movement_state, $0010
	dw sprite.constants_address, DATA_FF043C
	dw sprite.unknown_22, DATA_FF6AF8
	dw !initcommand_success

DATA_FF6776:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.parameter, $003C
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C44
	dw !initcommand_success

DATA_FF6794:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BF2
	dw sprite.general_purpose_4E, $00F0
	dw !initcommand_success

DATA_FF67B2:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.parameter, $005A
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C4A
	dw !initcommand_success

DATA_FF67D0:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C44
	dw !initcommand_success

DATA_FF67E6:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.parameter, $003C
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C38
	dw !initcommand_success

DATA_FF6804:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BFE
	dw !initcommand_success

DATA_FF681E:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C04
	dw !initcommand_success

DATA_FF6838:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.parameter, $005F
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C62
	dw !initcommand_success

DATA_FF6856:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C68
	dw !initcommand_success

DATA_FF6870:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017E
	dw sprite.movement_state, $0010
	dw sprite.constants_address, DATA_FF043C
	dw sprite.unknown_22, DATA_FF6ADE
	dw !initcommand_success

DATA_FF6886:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017E
	dw sprite.movement_state, $0010
	dw sprite.constants_address, DATA_FF043C
	dw sprite.unknown_22, DATA_FF6B06
	dw !initcommand_success

DATA_FF689C:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C1A
	dw !initcommand_success

DATA_FF68B6:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.parameter, $003C
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BE6
	dw !initcommand_success

DATA_FF68D4:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017E
	dw sprite.movement_state, $0010
	dw sprite.constants_address, DATA_FF043C
	dw sprite.unknown_22, DATA_FF6B14
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF68EE:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017E
	dw sprite.movement_state, $0010
	dw sprite.parameter, $004B
	dw sprite.constants_address, DATA_FF043C
	dw sprite.unknown_22, DATA_FF6B14
	dw !initcommand_success

DATA_FF6908:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C20
	dw !initcommand_success

DATA_FF691E:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C5C
	dw !initcommand_success

DATA_FF6934:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C26
	dw !initcommand_success

DATA_FF694E:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.parameter, $003C
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C2C
	dw !initcommand_success

DATA_FF696C:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.parameter, $003C
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C32
	dw !initcommand_success

DATA_FF6986:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.parameter, $0032
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BB0
	dw !initcommand_success

DATA_FF69A0:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C76
	dw !initcommand_success

DATA_FF69BA:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C56
	dw !initcommand_success

DATA_FF69D4:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017E
	dw sprite.movement_state, $0010
	dw sprite.constants_address, DATA_FF043C
	dw sprite.unknown_22, DATA_FF6B1A
	dw !initcommand_success

DATA_FF69EA:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C3E
	dw !initcommand_success

DATA_FF6A04:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C7C
	dw !initcommand_success

DATA_FF6A1A:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017E
	dw sprite.movement_state, $0010
	dw sprite.constants_address, DATA_FF043C
	dw sprite.unknown_22, DATA_FF6AF8
	dw !initcommand_success

DATA_FF6A30:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C82
	dw !initcommand_success

DATA_FF6A4A:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BF8
	dw !initcommand_success

DATA_FF6A60:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C20
	dw !initcommand_success

DATA_FF6A7A:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.parameter, $003C
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6C88
	dw !initcommand_success

;kannon vertical projectile speed presets
DATA_FF6A98:
%offset(DATA_FF6A9A, $2)
%offset(DATA_FF6A9C, $4)
%offset(DATA_FF6A9E, $6)
%offset(DATA_FF6AA0, $8)
	dw $FFC0, $0400, $0080, $0500, $0000
	dw $FF80, $0400, $0010, $0500, $FE00
	dw $0080, $0400, $0020, $FC80, $0420
	dw $0000, $0400, $0010, $0500, $0000
	dw $0000, $0400, $0020, $0500, $0000
	dw $0000, $0200, $0030, $0200, $0000
	dw $0000, $0400, $0040, $0280, $0000

;kannon vertical projectile patterns
;object to fire, speed preset, delay
DATA_FF6ADE:
	dw DATA_FF1714 : db $00, $3C
	dw DATA_FF1714 : db $01, $3C
	dw DATA_FF1714 : db $02, $3C
	dw $0000

DATA_FF6AEC:
	dw DATA_FF1714 : db $03, $3C
	dw $0000

DATA_FF6AF2:
	dw DATA_FF1714 : db $04, $3C
	dw $0000

DATA_FF6AF8:
	dw DATA_FF1714 : db $06, $0A
	dw DATA_FF1714 : db $06, $0A
	dw DATA_FF1714 : db $06, $1E
	dw $0000

DATA_FF6B06:
	dw DATA_FF1714 : db $00, $3C
	dw DATA_FF1714 : db $01, $3C
	dw DATA_FF1714 : db $02, $3C
	dw $0000

DATA_FF6B14:
	dw DATA_FF1738 : db $05, $78
	dw $0000

DATA_FF6B1A:
	dw DATA_FF1714 : db $03, $4B
	dw $0000

;kannon horizontal projectile speed presets
DATA_FF6B20:
	%offset(DATA_FF6B22, $2)
	%offset(DATA_FF6B24, $4)
	%offset(DATA_FF6B25, $5)
	%offset(DATA_FF6B27, $7)
	%offset(DATA_FF6B28, $8)
	%offset(DATA_FF6B29, $9)
	dw $0300, $0300 : db $06 : dw $0000 : db $00, $00 : dw $0000
	dw $0600, $0000 : db $03 : dw $FE00 : db $10, $70 : dw $FD00
	dw $0400, $0400 : db $06 : dw $0000 : db $00, $00 : dw $0000
	dw $0380, $0380 : db $06 : dw $0000 : db $00, $00 : dw $0000
	dw $00C0, $00C0 : db $06 : dw $0000 : db $00, $00 : dw $0000
	dw $0280, $0280 : db $06 : dw $0000 : db $00, $00 : dw $0000
	dw $0200, $0200 : db $06 : dw $0000 : db $00, $00 : dw $0000
	dw $0240, $0240 : db $06 : dw $0000 : db $00, $00 : dw $0000
	dw $02C0, $02C0 : db $06 : dw $0000 : db $00, $00 : dw $0000
	dw $0140, $0140 : db $06 : dw $0000 : db $00, $00 : dw $0000
	dw $01C0, $01C0 : db $06 : dw $0000 : db $00, $00 : dw $0000
	dw $0340, $0340 : db $06 : dw $0000 : db $00, $00 : dw $0000

;kannon horizontal projectile patterns
;object to fire, speed preset, delay
DATA_FF6BA4:
	dw DATA_FF1742 : db $00, $0F
	dw $0000

DATA_FF6BAA:
	dw DATA_FF1766 : db $00, $2D
	dw $0000

DATA_FF6BB0:
	dw DATA_FF1742 : db $03, $2D
	dw $0000

DATA_FF6BB6:
	dw DATA_FF1766 : db $00, $4B
	dw $0000

DATA_FF6BBC:
	dw DATA_FF1766 : db $00, $3C
	dw DATA_FF1742 : db $02, $3C
	dw $0000

DATA_FF6BC6:
	dw DATA_FF1742 : db $03, $1E
	dw DATA_FF1742 : db $04, $FF
	dw $0000

DATA_FF6BD0:
	dw DATA_FF1742 : db $03, $2D
	dw DATA_FF1742 : db $03, $2D
	dw DATA_FF1742 : db $03, $2D
	dw DATA_FF1742 : db $03, $2D
	dw DATA_FF1766 : db $03, $2D
	dw $0000

DATA_FF6BE6:
	dw DATA_FF1742 : db $08, $46
	dw $0000
	
	dw DATA_FF1766 : db $05, $5A
	dw $0000

DATA_FF6BF2:
	dw DATA_FF1742 : db $03, $69
	dw $0000

DATA_FF6BF8:
	dw DATA_FF1742 : db $0B, $3C
	dw $0000

DATA_FF6BFE:
	dw DATA_FF1766 : db $0B, $46
	dw $0000

DATA_FF6C04:
	dw DATA_FF1766 : db $06, $69
	dw $0000
	
	dw DATA_FF1766 : db $05, $5A
	dw $0000

DATA_FF6C10:
	dw DATA_FF1766 : db $00, $4B
	dw DATA_FF1742 : db $00, $4B
	dw $0000

DATA_FF6C1A:
	dw DATA_FF1766 : db $00, $78
	dw $0000

DATA_FF6C20:
	dw DATA_FF1766 : db $00, $3C
	dw $0000

DATA_FF6C26:
	dw DATA_FF1742 : db $03, $2D
	dw $0000

DATA_FF6C2C:
	dw DATA_FF1742 : db $03, $1E
	dw $0000

DATA_FF6C32:
	dw DATA_FF1766 : db $03, $96
	dw $0000

DATA_FF6C38:
	dw DATA_FF1766 : db $0A, $3C
	dw $0000

DATA_FF6C3E:
	dw DATA_FF1766 : db $05, $3C
	dw $0000

DATA_FF6C44:
	dw DATA_FF1766 : db $06, $96
	dw $0000

DATA_FF6C4A:
	dw DATA_FF1766 : db $07, $6E
	dw $0000

DATA_FF6C50:
	dw DATA_FF1742 : db $08, $4B
	dw $0000

DATA_FF6C56:
	dw DATA_FF1766 : db $05, $78
	dw $0000

DATA_FF6C5C:
	dw DATA_FF1742 : db $00, $50
	dw $0000

DATA_FF6C62:
	dw DATA_FF1742 : db $05, $1E
	dw $0000

DATA_FF6C68:
	dw DATA_FF1766 : db $05, $5A
	dw DATA_FF1766 : db $05, $5A
	dw DATA_FF1766 : db $09, $96
	dw $0000

DATA_FF6C76:
	dw DATA_FF1742 : db $07, $5A
	dw $0000

DATA_FF6C7C:
	dw DATA_FF1766 : db $03, $32
	dw $0000

DATA_FF6C82:
	dw DATA_FF1766 : db $06, $27
	dw $0000

DATA_FF6C88:
	dw DATA_FF1742 : db $05, $78
	dw $0000

DATA_FF6C8E:
	dw sprite.type, !sprite_enguarde
	dw sprite.render_order, $00D0
	dw sprite.constants_address, DATA_FF0258
	dw sprite.general_purpose_42, $0000
	dw sprite.state, $0008
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0060
	dw !initcommand_set_animation, $014B
	dw !initcommand_success

DATA_FF6CBC:
	dw sprite.type, !sprite_rambi
	dw sprite.render_order, $00D0
	dw sprite.constants_address, DATA_FF024A
	dw sprite.general_purpose_42, $0000
	dw sprite.state, $0008
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_alt_palette, $0043
	dw !initcommand_set_animation, $014A
	dw !initcommand_success

DATA_FF6CE6:
	dw !initcommand_load_subconfig, DATA_FF6CBC
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF6CF0:
	dw !initcommand_load_subconfig, DATA_FF6CBC
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF6CFA:
	dw sprite.type, !sprite_rattly
	dw sprite.render_order, $00D0
	dw sprite.constants_address, DATA_FF0234
	dw sprite.general_purpose_42, $0000
	dw sprite.state, $0008
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_alt_palette, $000D
	dw !initcommand_set_animation, $0148
	dw !initcommand_success

DATA_FF6D24:
	dw !initcommand_load_subconfig, DATA_FF6CFA
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF6D2E:
	dw !initcommand_load_subconfig, DATA_FF6CFA
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF6D38:
	dw sprite.type, !sprite_squitter
	dw sprite.render_order, $00D0
	dw sprite.constants_address, DATA_FF022C
	dw sprite.general_purpose_42, $0000
	dw sprite.state, $0008
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_alt_palette, $0005
	dw !initcommand_set_animation, $0147
	dw !initcommand_success

DATA_FF6D62:
	dw !initcommand_load_subconfig, DATA_FF6D38
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF6D6C:
	dw !initcommand_load_subconfig, DATA_FF6D38
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF6D76:
	dw sprite.type, !sprite_squawks
	dw sprite.render_order, $00D0
	dw sprite.constants_address, DATA_FF023C
	dw sprite.general_purpose_42, $0000
	dw sprite.state, $0008
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0149
	dw !initcommand_success

DATA_FF6DA0:
	dw !initcommand_load_subconfig, DATA_FF6D76
	dw !initcommand_set_alt_palette, $0054
	dw !initcommand_success

DATA_FF6DAA:
	dw !initcommand_load_subconfig, DATA_FF6D76
	dw !initcommand_set_alt_palette, $000F
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_success

DATA_FF6DB8:
	dw !initcommand_load_subconfig, DATA_FF6DAA
	dw !initcommand_success

DATA_FF6DBE:
	dw !initcommand_load_subconfig, DATA_FF6DAA
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF6DC8:
	dw !initcommand_load_subconfig, DATA_FF6DA0
	dw sprite.general_purpose_4A, $0001
	dw sprite.general_purpose_4C, $0440
	dw !initcommand_success

DATA_FF6DD6:
	dw !initcommand_load_subconfig, DATA_FF6DA0
	dw sprite.general_purpose_4A, $0001
	dw sprite.general_purpose_4C, $0760
	dw !initcommand_success

DATA_FF6DE4:
	dw !initcommand_load_subconfig, DATA_FF6DA0
	dw sprite.general_purpose_4A, $0001
	dw sprite.general_purpose_4C, $0B90
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF6DF6:
	dw !initcommand_load_subconfig, DATA_FF6DA0
	dw sprite.general_purpose_4A, $0001
	dw sprite.general_purpose_4C, $1140
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF6E08:
	dw !initcommand_load_subconfig, DATA_FF6DA0
	dw sprite.general_purpose_4A, $0001
	dw sprite.general_purpose_4C, $1700
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF6E1A:
	dw !initcommand_load_subconfig, DATA_FF6DA0
	dw sprite.general_purpose_4A, $0001
	dw sprite.general_purpose_4C, $1BD8
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF6E2C:
	dw !initcommand_load_subconfig, DATA_FF6DA0
	dw sprite.general_purpose_4A, $0001
	dw sprite.general_purpose_4C, $1DC8
	dw !initcommand_success

DATA_FF6E3A:
	dw !initcommand_load_subconfig, DATA_FF6DA0
	dw sprite.general_purpose_4A, $0001
	dw sprite.general_purpose_4C, $2610
	dw !initcommand_success

DATA_FF6E48:
	dw !initcommand_load_subconfig, DATA_FF6DA0
	dw sprite.general_purpose_4A, $0001
	dw sprite.general_purpose_4C, $2BB0
	dw !initcommand_success

DATA_FF6E56:
	dw !initcommand_load_subconfig, DATA_FF6DA0
	dw sprite.general_purpose_4A, $0001
	dw sprite.general_purpose_4C, $3270
	dw !initcommand_success

DATA_FF6E64:
	dw sprite.type, !sprite_lockjaw
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF035E
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $FF40
	dw sprite.max_y_speed, $0040
	dw sprite.general_purpose_4A, $0202
	dw sprite.movement_state, $0007
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0020
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $000E
	dw !initcommand_set_animation, $0177
	dw !initcommand_success

DATA_FF6E9E:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $3030
	dw !initcommand_success

DATA_FF6EA8:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $5050
	dw !initcommand_success

DATA_FF6EB2:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $1818
	dw !initcommand_success

DATA_FF6EBC:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $4040
	dw !initcommand_success

DATA_FF6EC6:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $00C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF6ED8:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $6060
	dw sprite.max_x_speed, $FEE0
	dw !initcommand_success

DATA_FF6EE6:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $00C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF6EF8:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $5858
	dw sprite.max_x_speed, $FEE0
	dw !initcommand_success

DATA_FF6F06:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $4040
	dw sprite.max_x_speed, $00C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF6F18:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $6060
	dw sprite.max_x_speed, $0100
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF6F2A:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $6060
	dw sprite.max_x_speed, $FF00
	dw !initcommand_success

DATA_FF6F38:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.constants_address, DATA_FF0382
	dw sprite.general_purpose_46, $5050
	dw !initcommand_success

DATA_FF6F46:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.constants_address, DATA_FF0370
	dw sprite.general_purpose_46, $1818
	dw !initcommand_success

DATA_FF6F54:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.constants_address, DATA_FF0394
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $FF20
	dw !initcommand_success

DATA_FF6F66:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.constants_address, DATA_FF0394
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $00E0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF6F7C:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $3030
	dw sprite.constants_address, DATA_FF03A6
	dw !initcommand_success

DATA_FF6F8A:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $2020
	dw sprite.constants_address, DATA_FF03A6
	dw !initcommand_success

DATA_FF6F98:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $3030
	dw sprite.constants_address, DATA_FF03B8
	dw !initcommand_success

DATA_FF6FA6:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $4040
	dw sprite.constants_address, DATA_FF03B8
	dw !initcommand_success

DATA_FF6FB4:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $3030
	dw sprite.constants_address, DATA_FF03CA
	dw !initcommand_success

DATA_FF6FC2:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $1818
	dw sprite.constants_address, DATA_FF03CA
	dw !initcommand_success

DATA_FF6FD0:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $4040
	dw sprite.constants_address, DATA_FF03CA
	dw !initcommand_success

DATA_FF6FDE:
	dw !initcommand_load_subconfig, DATA_FF6E64
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $00C0
	dw sprite.constants_address, DATA_FF03CA
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF6FF4:
	dw sprite.type, !sprite_snapjaw
	dw sprite.render_order, $00EC
	dw sprite.state, $0004
	dw sprite.movement_state, $0007
	dw sprite.interaction_flags, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_y_speed, $0040
	dw sprite.general_purpose_4A, $0202
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $00B2
	dw !initcommand_set_animation, $0177
	dw !initcommand_success

DATA_FF7022:
	dw !initcommand_load_subconfig, DATA_FF6FF4
	dw sprite.constants_address, DATA_FF03DC
	dw sprite.unknown_5C, $0000
	dw !initcommand_success

DATA_FF7030:
	dw !initcommand_load_subconfig, DATA_FF6FF4
	dw sprite.constants_address, DATA_FF03FA
	dw sprite.unknown_5C, $FFFF
	dw !initcommand_success

DATA_FF703E:
	dw !initcommand_load_subconfig, DATA_FF6FF4
	dw sprite.constants_address, DATA_FF03DC
	dw sprite.unknown_5C, $0202
	dw !initcommand_success

DATA_FF704C:
	dw !initcommand_load_subconfig, DATA_FF6FF4
	dw sprite.constants_address, DATA_FF0418
	dw sprite.unknown_5C, $0000
	dw !initcommand_success

DATA_FF705A:
	dw !initcommand_load_subconfig, DATA_FF6FF4
	dw sprite.constants_address, DATA_FF0418
	dw sprite.unknown_5C, $0102
	dw !initcommand_success

DATA_FF7068:
	dw !initcommand_load_subconfig, DATA_FF6FF4
	dw sprite.constants_address, DATA_FF0418
	dw sprite.unknown_5C, $0303
	dw !initcommand_success

DATA_FF7076:
	dw sprite.type, !sprite_kaboing
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF0436
	dw sprite.interaction_flags, $0120
	dw sprite.max_x_speed, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.movement_state, $0025
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $002F
	dw !initcommand_set_animation, $0191
	dw !initcommand_success

DATA_FF70A4:
	dw sprite.type, !sprite_kaboing
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF0436
	dw sprite.interaction_flags, $0120
	dw sprite.max_x_speed, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $004D
	dw !initcommand_set_animation, $0190
	dw sprite.movement_state, $0025
	dw !initcommand_success

DATA_FF70D2:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $0000
	dw sprite.max_y_speed, $F940
	dw sprite.unknown_22, $0044
	dw !initcommand_success

DATA_FF70E8:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $0000
	dw sprite.max_y_speed, $FAC0
	dw sprite.unknown_22, $003C
	dw !initcommand_success

DATA_FF70FE:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $0000
	dw sprite.max_y_speed, $FAC0
	dw sprite.unknown_22, $003C
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7118:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $0000
	dw sprite.max_y_speed, $F940
	dw sprite.unknown_22, $0044
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7132:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $0000
	dw sprite.max_y_speed, $F800
	dw sprite.unknown_22, $0048
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF714C:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $0000
	dw sprite.max_y_speed, $F800
	dw sprite.unknown_22, $0048
	dw !initcommand_success

DATA_FF7162:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $0000
	dw sprite.max_y_speed, $F700
	dw sprite.unknown_22, $0048
	dw !initcommand_success

DATA_FF7178:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $FF00
	dw sprite.max_y_speed, $F940
	dw sprite.unknown_22, $0044
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7192:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $FF00
	dw sprite.max_y_speed, $F820
	dw sprite.unknown_22, $0048
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF71AC:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $FF00
	dw sprite.max_y_speed, $F700
	dw sprite.unknown_22, $004C
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF71C6:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $FEB0
	dw sprite.max_y_speed, $FB80
	dw sprite.unknown_22, $0048
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF71E0:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $FEB0
	dw sprite.max_y_speed, $FAC0
	dw sprite.unknown_22, $0048
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF71FA:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $0120
	dw sprite.max_y_speed, $FB80
	dw sprite.unknown_22, $0048
	dw !initcommand_success

DATA_FF7210:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0000
	dw sprite.parameter, $0100
	dw sprite.max_y_speed, $F700
	dw sprite.unknown_22, $004C
	dw !initcommand_success

DATA_FF7226:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $FD00
	dw sprite.general_purpose_46, $0038
	dw sprite.general_purpose_48, $0000
	dw sprite.general_purpose_4A, $F700
	dw sprite.general_purpose_4C, $0050
	dw sprite.unknown_1C, $0201
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7250:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $F700
	dw sprite.general_purpose_46, $0050
	dw sprite.general_purpose_48, $0000
	dw sprite.general_purpose_4A, $FD00
	dw sprite.general_purpose_4C, $0038
	dw sprite.unknown_1C, $0201
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF727A:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $FD00
	dw sprite.general_purpose_46, $0038
	dw sprite.general_purpose_48, $0000
	dw sprite.general_purpose_4A, $F940
	dw sprite.general_purpose_4C, $0044
	dw sprite.unknown_1C, $0101
	dw !initcommand_success

DATA_FF72A0:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $FD00
	dw sprite.general_purpose_46, $0038
	dw sprite.general_purpose_48, $0000
	dw sprite.general_purpose_4A, $FAC0
	dw sprite.general_purpose_4C, $003C
	dw sprite.unknown_1C, $0101
	dw !initcommand_success

DATA_FF72C6:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $FD00
	dw sprite.general_purpose_46, $0038
	dw sprite.general_purpose_48, $0000
	dw sprite.general_purpose_4A, $F800
	dw sprite.general_purpose_4C, $0048
	dw sprite.unknown_1C, $0101
	dw !initcommand_success

DATA_FF72EC:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $FD40
	dw sprite.general_purpose_44, $F780
	dw sprite.general_purpose_46, $003E
	dw sprite.general_purpose_48, $02C0
	dw sprite.general_purpose_4A, $F780
	dw sprite.general_purpose_4C, $003E
	dw sprite.unknown_1C, $0101
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7316:
	dw !initcommand_load_subconfig, DATA_FF7076
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $FEC0
	dw sprite.general_purpose_44, $FB00
	dw sprite.general_purpose_46, $0048
	dw sprite.general_purpose_48, $0140
	dw sprite.general_purpose_4A, $FB00
	dw sprite.general_purpose_4C, $0048
	dw sprite.unknown_1C, $0101
	dw !initcommand_success

DATA_FF733C:
	dw !initcommand_load_subconfig, DATA_FF70A4
	dw sprite.state, $0000
	dw sprite.parameter, $FF00
	dw sprite.max_y_speed, $F800
	dw sprite.unknown_22, $0048
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7356:
	dw !initcommand_load_subconfig, DATA_FF70A4
	dw sprite.state, $0000
	dw sprite.parameter, $0100
	dw sprite.max_y_speed, $F800
	dw sprite.unknown_22, $0048
	dw sprite.movement_state, $2518
	dw sprite.x_sub_position, $0008
	dw !initcommand_success

DATA_FF7374:
	dw !initcommand_load_subconfig, DATA_FF70A4
	dw sprite.state, $0000
	dw sprite.parameter, $FF00
	dw sprite.max_y_speed, $F800
	dw sprite.unknown_22, $0048
	dw sprite.movement_state, $2518
	dw sprite.x_sub_position, $00A0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7396:
	dw !initcommand_load_subconfig, DATA_FF70A4
	dw sprite.state, $0000
	dw sprite.parameter, $0200
	dw sprite.max_y_speed, $FA00
	dw sprite.unknown_22, $0048
	dw !initcommand_success

DATA_FF73AC:
	dw !initcommand_load_subconfig, DATA_FF70A4
	dw sprite.state, $0000
	dw sprite.parameter, $0000
	dw sprite.max_y_speed, $FAC0
	dw sprite.unknown_22, $003C
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF73C6:
	dw !initcommand_load_subconfig, DATA_FF7528
	dw sprite.state, $0006
	dw sprite.terrain_attributes, $F000
	dw sprite.terrain_interaction, $7070
	dw sprite.ground_y_position, $0680
	dw sprite.unknown_28, $0280
	dw !initcommand_success

DATA_FF73E0:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.state, $0006
	dw sprite.terrain_attributes, $F000
	dw sprite.terrain_interaction, $7070
	dw sprite.ground_y_position, $0680
	dw sprite.unknown_28, $FD80
	dw !initcommand_success

DATA_FF73FA:
	dw !initcommand_load_subconfig, DATA_FF7528
	dw sprite.state, $0006
	dw sprite.terrain_attributes, $F000
	dw sprite.terrain_interaction, $7070
	dw sprite.ground_y_position, $0680
	dw sprite.unknown_28, $0380
	dw !initcommand_success

DATA_FF7414:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.state, $0006
	dw sprite.terrain_attributes, $F000
	dw sprite.terrain_interaction, $7070
	dw sprite.ground_y_position, $0680
	dw sprite.unknown_28, $FC80
	dw !initcommand_success

DATA_FF742E:
	dw !initcommand_load_subconfig, DATA_FF7528
	dw sprite.state, $0006
	dw sprite.terrain_attributes, $F000
	dw sprite.terrain_interaction, $0080
	dw !initcommand_success

DATA_FF7440:
	dw !initcommand_load_subconfig, DATA_FF7528
	dw sprite.state, $0006
	dw sprite.terrain_attributes, $F000
	dw sprite.terrain_interaction, $0060
	dw !initcommand_success

DATA_FF7452:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.state, $0006
	dw sprite.terrain_attributes, $F000
	dw sprite.terrain_interaction, $0080
	dw !initcommand_success

DATA_FF7464:
	dw !initcommand_load_subconfig, DATA_FF7528
	dw sprite.state, $0006
	dw sprite.terrain_attributes, $F000
	dw sprite.terrain_interaction, $0080
	dw sprite.x_speed, $0000
	dw sprite.ground_y_position, $0700
	dw !initcommand_success

DATA_FF747E:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.state, $0006
	dw sprite.terrain_attributes, $F000
	dw sprite.terrain_interaction, $0080
	dw sprite.x_speed, $0000
	dw sprite.ground_y_position, $0700
	dw !initcommand_success

DATA_FF7498:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.state, $0006
	dw sprite.terrain_attributes, $6000
	dw sprite.terrain_interaction, $0080
	dw sprite.x_speed, $0000
	dw sprite.ground_y_position, $0B00
	dw sprite.ground_distance, $FFA0
	dw !initcommand_success

DATA_FF74B6:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.state, $0006
	dw sprite.terrain_attributes, $9000
	dw sprite.terrain_interaction, $FFFF
	dw sprite.ground_y_position, $0700
	dw sprite.unknown_28, $FC00
	dw !initcommand_success

DATA_FF74D0:
	dw sprite.type, !sprite_mini_necky
	dw sprite.constants_address, DATA_FF021C
	dw !initcommand_set_animation, $0193
	dw !initcommand_set_alt_palette, $001E
	dw sprite.interaction_flags, $0120
	dw sprite.render_order, $00D4
	dw sprite.y_speed, $0000
	dw sprite.movement_state, $0007
	dw sprite.general_purpose_4A, $0500
	dw sprite.max_y_speed, $FEA0
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0020
	dw sprite.state, $0000
	dw sprite.general_purpose_4E, $0001
	dw !initcommand_success

DATA_FF750A:
	dw !initcommand_load_subconfig, DATA_FF74D0
	dw sprite.ground_y_position, $0800
	dw sprite.ground_distance, $FF80
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $FB00
	dw sprite.x_speed, $FD00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7528:
	dw !initcommand_load_subconfig, DATA_FF74D0
	dw sprite.ground_y_position, $0800
	dw sprite.ground_distance, $FFC0
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $0500
	dw sprite.x_speed, $0300
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7546:
	dw !initcommand_load_subconfig, DATA_FF7528
	dw sprite.general_purpose_4E, $003C
	dw !initcommand_success

DATA_FF7550:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $001E
	dw !initcommand_success

DATA_FF755A:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $0078
	dw !initcommand_success

DATA_FF7564:
	dw !initcommand_load_subconfig, DATA_FF7528
	dw sprite.general_purpose_4E, $0078
	dw !initcommand_success

DATA_FF756E:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.ground_y_position, $0A00
	dw sprite.ground_distance, $FFA0
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $FD40
	dw sprite.general_purpose_4E, $0078
	dw !initcommand_success

DATA_FF7588:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $003C
	dw !initcommand_success

DATA_FF7592:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $0028
	dw !initcommand_success

DATA_FF759C:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $0004
	dw !initcommand_success

DATA_FF75A6:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.ground_y_position, $0780
	dw sprite.ground_distance, $FF80
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $FD00
	dw sprite.general_purpose_4E, $003C
	dw !initcommand_success

DATA_FF75C0:
	dw !initcommand_load_subconfig, DATA_FF7528
	dw sprite.general_purpose_4E, $001E
	dw !initcommand_success

DATA_FF75CA:
	dw !initcommand_load_subconfig, DATA_FF7528
	dw sprite.ground_y_position, $0500
	dw sprite.ground_distance, $FFA0
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $0300
	dw sprite.general_purpose_4E, $002D
	dw !initcommand_success

DATA_FF75E4:
	dw !initcommand_load_subconfig, DATA_FF7528
	dw sprite.general_purpose_4E, $003C
	dw sprite.ground_y_position, $0500
	dw sprite.ground_distance, $FF80
	dw !initcommand_success

DATA_FF75F6:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $002D
	dw !initcommand_success

DATA_FF7600:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $001E
	dw sprite.unknown_28, $FC00
	dw !initcommand_success

DATA_FF760E:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.ground_y_position, $0500
	dw sprite.ground_distance, $FF80
	dw sprite.general_purpose_4E, $00B4
	dw !initcommand_success

DATA_FF7620:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $004B
	dw sprite.unknown_28, $FC80
	dw !initcommand_success

DATA_FF762E:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $002D
	dw sprite.unknown_28, $FC80
	dw !initcommand_success

DATA_FF763C:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $004B
	dw sprite.unknown_28, $FC80
	dw !initcommand_success

DATA_FF764A:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.ground_y_position, $0800
	dw sprite.ground_distance, $FF80
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $FC40
	dw sprite.general_purpose_4E, $003C
	dw !initcommand_success

DATA_FF7664:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.ground_y_position, $0800
	dw sprite.ground_distance, $FF80
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $FC40
	dw sprite.general_purpose_4E, $001E
	dw !initcommand_success

DATA_FF767E:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.ground_y_position, $0800
	dw sprite.ground_distance, $FF80
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $FBE0
	dw sprite.general_purpose_4E, $0004
	dw !initcommand_success

DATA_FF7698:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.ground_y_position, $0800
	dw sprite.ground_distance, $FF80
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $FBE0
	dw sprite.general_purpose_4E, $001E
	dw !initcommand_success

DATA_FF76B2:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.ground_y_position, $0800
	dw sprite.ground_distance, $FF80
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $FBE0
	dw sprite.general_purpose_4E, $0028
	dw !initcommand_success

DATA_FF76CC:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $005A
	dw !initcommand_success

DATA_FF76D6:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $000F
	dw !initcommand_success

DATA_FF76E0:
	dw sprite.type, !sprite_zinger
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF02EC
	dw sprite.interaction_flags, $0120
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.movement_state, $0007
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7706:
	dw sprite.type, !sprite_zinger
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF02EC
	dw sprite.interaction_flags, $0120
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7728:
	dw sprite.type, !sprite_double_zingers
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_set_animation, $0197
	dw !initcommand_set_oam, $2000
	dw sprite.unknown_22, $2000
	dw sprite.interaction_flags, $0000
	dw sprite.state, $0000
	dw sprite.movement_state, $0007
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_success

DATA_FF776A:
	dw !initcommand_load_subconfig, DATA_FF7728
	dw sprite.unknown_5C, $6840
	dw sprite.parameter, $8060
	dw sprite.general_purpose_4E, DATA_FF77B2
	dw !initcommand_success

DATA_FF777C:
	dw !initcommand_load_subconfig, DATA_FF7728
	dw sprite.unknown_5C, $4840
	dw sprite.parameter, $8060
	dw sprite.general_purpose_4E, DATA_FF77BC
	dw !initcommand_success

DATA_FF778E:
	dw !initcommand_load_subconfig, DATA_FF7728
	dw sprite.unknown_5C, $7040
	dw sprite.parameter, $60F0
	dw sprite.general_purpose_4E, DATA_FF77C6
	dw !initcommand_success

DATA_FF77A0:
	dw !initcommand_load_subconfig, DATA_FF7728
	dw sprite.unknown_5C, $5040
	dw sprite.parameter, $60F0
	dw sprite.general_purpose_4E, DATA_FF77D0
	dw !initcommand_success

DATA_FF77B2:
	dw sprite.movement_state, $0009
	dw sprite.general_purpose_42, DATA_FF77DA
	dw !initcommand_success

DATA_FF77BC:
	dw sprite.movement_state, $0009
	dw sprite.general_purpose_42, DATA_FF7828
	dw !initcommand_success

DATA_FF77C6:
	dw sprite.movement_state, $0009
	dw sprite.general_purpose_42, DATA_FF7876
	dw !initcommand_success

DATA_FF77D0:
	dw sprite.movement_state, $0009
	dw sprite.general_purpose_42, DATA_FF78CC
	dw !initcommand_success

;moving zinger scripts (chain link chamber) uses same language as king zing and screech chases
DATA_FF77DA:
	dw $FFFE, $01E0
	dw $FFFB, $000C, $000C
DATA_FF77E4:
	dw $01FC, $07E0
	dw $FFFB, $0000, $0000
	dw $01FC, $07C0
	dw $01FC, $07E0
	dw $FFFB, $000C, $000C
	dw $01FC, $0870
	dw $01FC, $0970
	dw $01FC, $0A70
	dw $FFFB, $0000, $0000
	dw $01FC, $0A90
	dw $01FC, $0A70
	dw $FFFB, $000C, $000C
	dw $01FC, $0970
	dw $01FC, $0870
	dw $FFFD, DATA_FF77E4

DATA_FF7828:
	dw $FFFE, $01E0
	dw $FFFB, $000C, $FFF4
DATA_FF7832:
	dw $021C, $07E0
	dw $FFFB, $0000, $0000
	dw $021C, $07C0
	dw $021C, $07E0
	dw $FFFB, $000C, $FFF4
	dw $021C, $0870
	dw $021C, $0970
	dw $021C, $0A70
	dw $FFFB, $0000, $0000
	dw $021C, $0A90
	dw $021C, $0A70
	dw $FFFB, $000C, $FFF4
	dw $021C, $0970
	dw $021C, $0870
	dw $FFFD, DATA_FF7832

DATA_FF7876:
	dw $FFFE, $0200
	dw $FFFB, $000C, $000C
DATA_FF7880:
	dw $0130, $0A70
	dw $FFFB, $0000, $0000
	dw $0130, $0A90
	dw $0130, $0A70
	dw $FFFB, $000C, $000C
	dw $0130, $0970
	dw $0130, $0870
	dw $0130, $0770
	dw $0130, $06E0
	dw $FFFB, $0000, $0000
	dw $0130, $06C0
	dw $0130, $06E0
	dw $FFFB, $000C, $000C
	dw $0130, $0770
	dw $0130, $0870
	dw $0130, $0970
	dw $FFFD, DATA_FF7880

DATA_FF78CC:
	dw $FFFE, $0200
	dw $FFFB, $000C, $FFF4
DATA_FF78D6:
	dw $0150, $0A70
	dw $FFFB, $0000, $0000
	dw $0150, $0A90
	dw $0150, $0A70
	dw $FFFB, $000C, $FFF4
	dw $0150, $0970
	dw $0150, $0870
	dw $0150, $0770
	dw $0150, $06E0
	dw $FFFB, $0000, $0000
	dw $0150, $06C0
	dw $0150, $06E0
	dw $FFFB, $000C, $FFF4
	dw $0150, $0770
	dw $0150, $0870
	dw $0150, $0970
	dw $FFFD, DATA_FF78D6

DATA_FF7922:
	dw sprite.type, !sprite_screech
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw !initcommand_set_alt_palette, $0077
	dw !initcommand_set_oam, $6000
	dw sprite.unknown_22, $6000
	dw sprite.interaction_flags, $0000
	dw sprite.state, $0000
	dw sprite.movement_state, $0007
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_set_animation, $02DD
	dw sprite.unknown_5C, $2020
	dw sprite.parameter, $00C0
	dw sprite.general_purpose_4E, DATA_FF7970
	dw !initcommand_success

DATA_FF7970:
	dw sprite.movement_state, $0009
	dw sprite.general_purpose_42, DATA_FF7990
	dw !initcommand_success

DATA_FF797A:
	dw sprite.movement_state, $0007
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_success

;screech race script
DATA_FF7990:
	dw $FFFE, $0300
	dw $FFFC, $0606
	dw $FFFB, $0010, $0008
	dw $FFFA, $0028, $0100
	dw $06A0, $07E0
	dw $FFFA, $0028, $00C0
	dw $0630, $0818
	dw $FFFA, $0028, $0100
	dw $0430, $0800
	dw $FFFA, $0028, $0180
	dw $0430, $06C8
	dw $FFFA, $0028, $0100
	dw $0380, $06C8
	dw $FFFA, $0028, $00C0
	dw $0380, $07D0
	dw $FFFA, $0028, $0100
	dw $02D8, $07D0
	dw $FFFA, $0022, $0000
	dw $FFFA, $0028, $0180
	dw $02D8, $06E0
	dw $FFFA, $0028, $0180
	dw $0290, $0650
	dw $FFFA, $0028, $0180
	dw $0290, $03C0
	dw $FFFA, $0028, $0180
	dw $02F0, $0300
	dw $FFFA, $0028, $0180
	dw $02E4, $01A8
	dw $FFFA, $0028, $0100
	dw $0380, $01A8
	dw $FFFA, $0028, $00C0
	dw $03C0, $01B4
	dw $FFFA, $0028, $0100
	dw $0688, $01B4
	dw $FFFA, $0022, $4000
	dw $FFFA, $0028, $00C0
	dw $0688, $0510
	dw $FFFA, $0028, $0100
	dw $0648, $0510
	dw $FFFA, $0028, $0180
	dw $0638, $03B0
	dw $FFFA, $0028, $0100
	dw $05E8, $03B0
	dw $FFFA, $0028, $00C0
	dw $04E8, $04C0
	dw $FFFA, $0022, $0000
	dw $FFFA, $0028, $00C0
	dw $04D8, $05B0
	dw $FFFA, $0028, $0100
	dw $0558, $05B0
	dw $FFFA, $0028, $00C0
	dw $0558, $0670
	dw $FFFA, $0028, $0100
	dw $0710, $0670
	dw $FFFA, $0028, $0180
	dw $0750, $0668
	dw $FFFA, $0028, $0100
	dw $0910, $0668
	dw $FFFA, $0028, $0180
	dw $0940, $0630
	dw $FFFA, $0028, $0100
	dw $09F0, $0630
	dw $FFFA, $0028, $0180
	dw $0A48, $05B0
	dw $FFFA, $0028, $00C0
	dw $0AD0, $0618
	dw $FFFA, $0028, $0180
	dw $0BD0, $0548
	dw $FFFA, $0022, $4000
	dw $FFFA, $0028, $0180
	dw $0BD0, $0490
	dw $FFFA, $0028, $0180
	dw $0B98, $0440
	dw $FFFA, $0028, $0100
	dw $0AC0, $0440
	dw $FFFA, $0028, $00C0
	dw $0A70, $0460
	dw $FFFA, $0028, $0100
	dw $0A30, $0460
	dw $FFFA, $0028, $00C0
	dw $0A00, $0480
	dw $FFFA, $0028, $0100
	dw $0868, $0480
	dw $FFFE, $0300
	dw $FFFA, $0022, $0000
	dw $FFFA, $0028, $0180
	dw $0868, $0350
	dw $FFFA, $0028, $0180
	dw $0868, $0300
	dw $FFFA, $0028, $0180
	dw $0868, $01F8
	dw $FFFA, $0028, $0100
	dw $0930, $0208
	dw $FFFA, $0028, $0180
	dw $0980, $017C
	dw $FFFA, $0028, $0100
	dw $0AF8, $0180
	dw $FFFF

DATA_FF7B7A:
	dw sprite.type, !sprite_chasing_king_zing
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_set_animation, $02DB
	dw !initcommand_set_oam, $2000
	dw sprite.unknown_22, $2000
	dw sprite.interaction_flags, $0000
	dw sprite.state, $0000
	dw sprite.movement_state, $0007
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw sprite.unknown_5C, $FF00
	dw sprite.parameter, $4000
	dw sprite.general_purpose_4E, DATA_FF7BC8
	dw !initcommand_success

DATA_FF7BC8:
	dw sprite.movement_state, $0009
	dw sprite.general_purpose_42, DATA_FF7BE8
	dw !initcommand_success

DATA_FF7BD2:
	dw sprite.movement_state, $0007
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_success

;king zing chase script
DATA_FF7BE8:
	dw $FFFE, $0140
	dw $FFFC, $1919
	dw $FFFA, $0022, $0000
	dw $0600, $0610
	dw $FFFE, $0180
	dw $0680, $0610
	dw $FFFE, $0240
	dw $0700, $0610
	dw $FFFE, $02C0
	dw $0740, $0610
	dw $FFFC, $1919
	dw $07B0, $0650
	dw $07B5, $0650
	dw $08D0, $0650
	dw $FFFC, $1919
	dw $09D0, $05D0
	dw $09D5, $05D0
	dw $FFFC, $0609
	dw $0A9C, $05D0
	dw $FFFA, $0022, $4000
	dw $FFFE, $0480
	dw $0A9C, $0726
	dw $FFFE, $0320
	dw $0A00, $0726
	dw $FFFC, $1919
	dw $0990, $0790
	dw $098B, $0790
	dw $0950, $0790
	dw $07E0, $0770
	dw $07D8, $0770
	dw $FFFC, $0609
	dw $0750, $0770
	dw $FFFA, $0022, $0000
	dw $FFFE, $0480
	dw $0750, $0920
	dw $FFFE, $0320
	dw $0838, $0926
	dw $FFFE, $0180
	dw $0870, $0950
	dw $FFFF

DATA_FF7C8C:
	dw !initcommand_load_subconfig, DATA_FF76E0
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_success

DATA_FF7CAA:
	dw !initcommand_load_subconfig, DATA_FF7C8C
	dw !initcommand_success

DATA_FF7CB0:
	dw !initcommand_load_subconfig, DATA_FF7C8C
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7CBA:
	dw !initcommand_load_subconfig, DATA_FF7C8C
	dw sprite.general_purpose_46, $0302
	dw sprite.max_x_speed, $003C
	dw sprite.general_purpose_4A, $0304
	dw sprite.max_y_speed, $0058
	dw !initcommand_success

DATA_FF7CD0:
	dw !initcommand_load_subconfig, DATA_FF7C8C
	dw sprite.general_purpose_46, $0204
	dw sprite.max_x_speed, $0044
	dw sprite.general_purpose_4A, $0102
	dw sprite.max_y_speed, $0068
	dw !initcommand_success

DATA_FF7CE6:
	dw !initcommand_load_subconfig, DATA_FF7C8C
	dw sprite.general_purpose_46, $0302
	dw sprite.max_x_speed, $003C
	dw sprite.general_purpose_4A, $0304
	dw sprite.max_y_speed, $0058
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7D00:
	dw !initcommand_load_subconfig, DATA_FF7C8C
	dw sprite.general_purpose_46, $0204
	dw sprite.max_x_speed, $0044
	dw sprite.general_purpose_4A, $0102
	dw sprite.max_y_speed, $0068
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7D1A:
	dw !initcommand_load_subconfig, DATA_FF76E0
	dw !initcommand_set_animation, $0197
	dw sprite.movement_state, $0008
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_success

DATA_FF7D38:
	dw !initcommand_load_subconfig, DATA_FF7D1A
	dw sprite.max_x_speed, $0060
	dw !initcommand_success

DATA_FF7D42:
	dw !initcommand_load_subconfig, DATA_FF7D1A
	dw sprite.max_x_speed, $0090
	dw !initcommand_success

DATA_FF7D4C:
	dw !initcommand_load_subconfig, DATA_FF7D1A
	dw sprite.max_x_speed, $FF20
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7D5A:
	dw !initcommand_load_subconfig, DATA_FF7D1A
	dw sprite.max_x_speed, $FEE0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF7D68:
	dw !initcommand_load_subconfig, DATA_FF76E0
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_success

DATA_FF7D7E:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF7D8C:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $0200
	dw !initcommand_success

DATA_FF7D9A:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7DAC:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3838
	dw sprite.max_y_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7DBE:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3838
	dw sprite.max_y_speed, $FE80
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7DD0:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $0160
	dw !initcommand_success

DATA_FF7DDE:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $2040
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF7DEC:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $0060
	dw sprite.max_y_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7DFE:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $2040
	dw sprite.max_y_speed, $FE00
	dw !initcommand_success

DATA_FF7E0C:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7E1E:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $01A0
	dw !initcommand_success

DATA_FF7E2C:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $0060
	dw sprite.max_y_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7E3E:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $6000
	dw sprite.max_y_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7E50:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $2050
	dw sprite.max_y_speed, $FEC0
	dw !initcommand_success

DATA_FF7E5E:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $1818
	dw sprite.max_y_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7E70:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $01C0
	dw sprite.general_purpose_46, $0808
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FF7E86:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3828
	dw sprite.max_y_speed, $0140
	dw sprite.general_purpose_46, $0204
	dw !initcommand_success

DATA_FF7E98:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3828
	dw sprite.max_y_speed, $0140
	dw sprite.general_purpose_46, $0302
	dw sprite.max_x_speed, $0044
	dw !initcommand_success

DATA_FF7EAE:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3828
	dw sprite.max_y_speed, $0140
	dw sprite.general_purpose_46, $0503
	dw sprite.max_x_speed, $003C
	dw !initcommand_success

DATA_FF7EC4:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $4040
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF7ED2:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $4040
	dw sprite.max_y_speed, $FE80
	dw !initcommand_success

DATA_FF7EE0:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $0180
	dw sprite.general_purpose_46, $0503
	dw sprite.max_x_speed, $003C
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7EFA:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF7F08:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $0200
	dw sprite.general_purpose_46, $0103
	dw sprite.max_x_speed, $0030
	dw !initcommand_success

DATA_FF7F1E:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $0200
	dw sprite.general_purpose_46, $0303
	dw sprite.max_x_speed, $0050
	dw !initcommand_success

DATA_FF7F34:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3060
	dw sprite.max_y_speed, $0140
	dw !initcommand_success

DATA_FF7F42:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $00A0
	dw sprite.max_y_speed, $FEE0
	dw !initcommand_success

DATA_FF7F50:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $FEC0
	dw !initcommand_success

DATA_FF7F5E:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $4040
	dw sprite.max_y_speed, $0200
	dw !initcommand_success

DATA_FF7F6C:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $2828
	dw sprite.max_y_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7F7E:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $1818
	dw sprite.max_y_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7F90:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $6000
	dw sprite.max_y_speed, $0140
	dw !initcommand_success

DATA_FF7F9E:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $0060
	dw sprite.max_y_speed, $0140
	dw !initcommand_success

DATA_FF7FAC:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $FE40
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF7FBE:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $0140
	dw !initcommand_success

DATA_FF7FCC:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_46, $0503
	dw sprite.max_x_speed, $003C
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $0140
	dw !initcommand_success

DATA_FF7FE2:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $4040
	dw sprite.max_y_speed, $FE80
	dw !initcommand_success

DATA_FF7FF0:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $FE80
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8002:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8014:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $6800
	dw sprite.max_y_speed, $FE80
	dw !initcommand_success

DATA_FF8022:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $5010
	dw sprite.max_y_speed, $0160
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8034:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $2020
	dw sprite.max_y_speed, $0280
	dw !initcommand_success

DATA_FF8042:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $FE60
	dw !initcommand_success

DATA_FF8050:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $4040
	dw sprite.max_y_speed, $0180
	dw sprite.general_purpose_46, $0503
	dw sprite.max_x_speed, $003C
	dw !initcommand_success

DATA_FF8066:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $4040
	dw sprite.max_y_speed, $FE80
	dw sprite.general_purpose_46, $0104
	dw sprite.max_x_speed, $0044
	dw !initcommand_success

DATA_FF807C:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $6040
	dw sprite.max_y_speed, $01A0
	dw !initcommand_success

DATA_FF808A:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $6020
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF8098:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $6020
	dw sprite.max_y_speed, $0180
	dw sprite.general_purpose_46, $0503
	dw sprite.max_x_speed, $003C
	dw !initcommand_success

DATA_FF80AE:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $0100
	dw !initcommand_success

DATA_FF80BC:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $FF00
	dw !initcommand_success

DATA_FF80CA:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $2040
	dw sprite.max_y_speed, $0140
	dw !initcommand_success

DATA_FF80D8:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3050
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF80E6:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $FEE0
	dw !initcommand_success

DATA_FF80F4:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.movement_state, $001B
	dw sprite.general_purpose_4A, $5436
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF8106:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.movement_state, $001B
	dw sprite.general_purpose_4A, $6444
	dw sprite.max_y_speed, $01C0
	dw !initcommand_success

DATA_FF8118:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.movement_state, $001B
	dw sprite.general_purpose_4A, $486A
	dw sprite.max_y_speed, $FE00
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF812E:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.movement_state, $001B
	dw sprite.general_purpose_4A, $BC35
	dw sprite.max_y_speed, $01E0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8144:
	dw !initcommand_load_subconfig, DATA_FF76E0
	dw !initcommand_set_animation, $0196
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_success

DATA_FF815A:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FF8168:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $4020
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FF8176:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $2828
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8184:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $5030
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_4A, $0A0A
	dw sprite.max_y_speed, $0160
	dw !initcommand_success

DATA_FF819A:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

DATA_FF81A8:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $4040
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF81BA:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $5828
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF81CC:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $4848
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FF81DA:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $0060
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF81EC:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $4020
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_success

DATA_FF81FA:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $2050
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FF8208:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $4848
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_success

DATA_FF8216:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $4848
	dw sprite.max_x_speed, $0160
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8228:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $5828
	dw sprite.max_x_speed, $0280
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF823A:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8248:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3C64
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8256:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $643C
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8264:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8276:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $FEE0
	dw !initcommand_success

DATA_FF8284:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8296:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3C64
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF82A8:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $643C
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF82BA:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3C64
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

DATA_FF82C8:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $643C
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

DATA_FF82D6:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3838
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_4A, $0808
	dw sprite.max_y_speed, $0140
	dw !initcommand_success

DATA_FF82EC:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FF00
	dw sprite.general_purpose_4A, $0808
	dw sprite.max_y_speed, $0120
	dw !initcommand_success

DATA_FF8302:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $5010
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8310:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $2838
	dw sprite.max_x_speed, $00E0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8322:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $4070
	dw sprite.max_x_speed, $FD40
	dw !initcommand_success

DATA_FF8330:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3828
	dw sprite.max_x_speed, $FF20
	dw !initcommand_success

DATA_FF833E:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $5828
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FF834C:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $6000
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FF835A:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $2828
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8368:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FF8376:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $00A0
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8388:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $A000
	dw sprite.max_x_speed, $FDC0
	dw !initcommand_success

DATA_FF8396:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FEE0
	dw !initcommand_success

DATA_FF83A4:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $2828
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

DATA_FF83B2:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $0240
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF83C4:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $FDC0
	dw !initcommand_success

DATA_FF83D2:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF83E4:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FE60
	dw !initcommand_success

DATA_FF83F2:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FF8400:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8412:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $0160
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8424:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $4070
	dw sprite.max_x_speed, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8436:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8448:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $2060
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF845A:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $4040
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF846C:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $7010
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF847E:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3838
	dw sprite.max_x_speed, $FF40
	dw !initcommand_success

DATA_FF848C:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3838
	dw sprite.max_x_speed, $00C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF849E:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $6010
	dw sprite.max_x_speed, $FF40
	dw !initcommand_success

DATA_FF84AC:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $1060
	dw sprite.max_x_speed, $00C0
	dw !initcommand_success

DATA_FF84BA:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $5848
	dw sprite.max_x_speed, $FEE0
	dw !initcommand_success

DATA_FF84C8:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $4888
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF84D6:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $6828
	dw sprite.max_x_speed, $FF00
	dw !initcommand_success

DATA_FF84E4:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $7000
	dw sprite.max_x_speed, $FEE0
	dw !initcommand_success

DATA_FF84F2:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $2820
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8500:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3830
	dw sprite.max_x_speed, $0160
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8512:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $2828
	dw sprite.max_x_speed, $FF00
	dw !initcommand_success

DATA_FF8520:
	dw !initcommand_load_subconfig, DATA_FF7706
	dw !initcommand_set_animation, $0196
	dw sprite.movement_state, $000A
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_success

DATA_FF8536:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $5000
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_success

DATA_FF8548:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $5C00
	dw sprite.general_purpose_48, $5000
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_success

DATA_FF855A:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $3800
	dw sprite.general_purpose_48, $5000
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_success

DATA_FF856C:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $1400
	dw sprite.general_purpose_48, $5000
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_success

DATA_FF857E:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $F000
	dw sprite.general_purpose_48, $5000
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_success

DATA_FF8590:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0080
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $FD80
	dw !initcommand_success

DATA_FF85A2:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $7000
	dw sprite.max_x_speed, $FEE0
	dw !initcommand_success

DATA_FF85B4:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $5000
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF85C6:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $5000
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF85D8:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF85EE:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0280
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8604:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0280
	dw !initcommand_success

DATA_FF8616:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $5C00
	dw sprite.general_purpose_48, $6800
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8628:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $1400
	dw sprite.general_purpose_48, $6800
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF863A:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $5800
	dw sprite.max_x_speed, $0120
	dw !initcommand_success

DATA_FF864C:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $DC00
	dw sprite.general_purpose_48, $5800
	dw sprite.max_x_speed, $0120
	dw !initcommand_success

DATA_FF865E:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $2800
	dw sprite.max_x_speed, $0160
	dw !initcommand_success

DATA_FF8670:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0300
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8686:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $4800
	dw sprite.max_x_speed, $0200
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF869C:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $C000
	dw sprite.general_purpose_48, $4800
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF86B2:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $FE00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF86C8:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0280
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF86DE:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $4000
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF86F4:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $7000
	dw sprite.max_x_speed, $00F8
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF870A:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $4000
	dw sprite.general_purpose_48, $7000
	dw sprite.max_x_speed, $00F8
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8720:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $7000
	dw sprite.max_x_speed, $00F8
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8736:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $C000
	dw sprite.general_purpose_48, $7000
	dw sprite.max_x_speed, $00F8
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF874C:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FF875E:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $2000
	dw sprite.max_x_speed, $0380
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8774:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $2000
	dw sprite.max_x_speed, $0280
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF878A:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $E000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF87A0:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $1000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF87B6:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $4000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF87CC:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $7000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF87E2:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF87F8:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF880E:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $4000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0280
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8824:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $C000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0280
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF883A:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $FE00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8850:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $2000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0200
	dw !initcommand_success

DATA_FF8862:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $2000
	dw sprite.max_x_speed, $0280
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8878:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $2800
	dw sprite.max_x_speed, $0160
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF888E:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $3800
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF88A4:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $2000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0300
	dw !initcommand_success

DATA_FF88B6:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $2800
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_success

DATA_FF88C8:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $4800
	dw sprite.max_x_speed, $0100
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF88DE:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $2000
	dw sprite.general_purpose_48, $2400
	dw sprite.max_x_speed, $FE60
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF88F4:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0280
	dw !initcommand_success

DATA_FF8906:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $1000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0280
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF891C:
	dw !initcommand_load_subconfig, DATA_FF7706
	dw !initcommand_set_animation, $0196
	dw sprite.movement_state, $000B
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_success

DATA_FF892E:
	dw !initcommand_load_subconfig, DATA_FF891C
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $4000
	dw sprite.general_purpose_4A, $40C0
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FF8944:
	dw !initcommand_load_subconfig, DATA_FF891C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $A000
	dw sprite.general_purpose_48, $3000
	dw sprite.general_purpose_4A, $0080
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

DATA_FF895E:
	dw !initcommand_load_subconfig, DATA_FF891C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $4000
	dw sprite.general_purpose_48, $2000
	dw sprite.general_purpose_4A, $8000
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

DATA_FF8978:
	dw !initcommand_load_subconfig, DATA_FF891C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $A000
	dw sprite.general_purpose_48, $3000
	dw sprite.general_purpose_4A, $0080
	dw sprite.max_x_speed, $FDA0
	dw !initcommand_success

DATA_FF8992:
	dw !initcommand_load_subconfig, DATA_FF891C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $3000
	dw sprite.general_purpose_4A, $0080
	dw sprite.max_x_speed, $02C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF89B0:
	dw !initcommand_load_subconfig, DATA_FF891C
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $3800
	dw sprite.general_purpose_4A, $3CC0
	dw sprite.max_x_speed, $FE60
	dw !initcommand_success

DATA_FF89C6:
	dw !initcommand_load_subconfig, DATA_FF891C
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $4000
	dw sprite.general_purpose_4A, $3FC0
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FF89DC:
	dw !initcommand_load_subconfig, DATA_FF891C
	dw sprite.general_purpose_46, $4000
	dw sprite.general_purpose_48, $3000
	dw sprite.general_purpose_4A, $40C0
	dw sprite.max_x_speed, $01C0
	dw !initcommand_success

DATA_FF89F2:
	dw !initcommand_load_subconfig, DATA_FF891C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $C000
	dw sprite.general_purpose_48, $3000
	dw sprite.general_purpose_4A, $8000
	dw sprite.max_x_speed, $0200
	dw !initcommand_success

DATA_FF8A0C:
	dw !initcommand_load_subconfig, DATA_FF76E0
	dw sprite.constants_address, DATA_FF0302
	dw !initcommand_set_alt_palette, $0048
	dw !initcommand_success

DATA_FF8A1A:
	dw !initcommand_load_subconfig, DATA_FF7706
	dw sprite.constants_address, DATA_FF0302
	dw !initcommand_set_alt_palette, $0048
	dw !initcommand_success

DATA_FF8A28:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_success

DATA_FF8A42:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8A60:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0204
	dw sprite.max_x_speed, $0048
	dw sprite.general_purpose_4A, $0301
	dw sprite.max_y_speed, $0058
	dw !initcommand_success

DATA_FF8A7A:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0103
	dw sprite.max_x_speed, $0050
	dw sprite.general_purpose_4A, $0201
	dw sprite.max_y_speed, $0068
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8A98:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0201
	dw sprite.max_x_speed, $0038
	dw sprite.general_purpose_4A, $0204
	dw sprite.max_y_speed, $0058
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8AB6:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.movement_state, $0008
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8AD0:
	dw !initcommand_load_subconfig, DATA_FF8AB6
	dw sprite.max_x_speed, $0060
	dw !initcommand_success

DATA_FF8ADA:
	dw !initcommand_load_subconfig, DATA_FF8AB6
	dw sprite.max_x_speed, $FF70
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8AE8:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0196
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8AFE:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF8B0C:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FF8B1A:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_4A, $0301
	dw sprite.max_y_speed, $0048
	dw !initcommand_success

DATA_FF8B30:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $70A8
	dw sprite.max_x_speed, $0240
	dw !initcommand_success

DATA_FF8B3E:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $5858
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF8B4C:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $B068
	dw sprite.max_x_speed, $0240
	dw sprite.general_purpose_4A, $0403
	dw sprite.max_y_speed, $0050
	dw !initcommand_success

DATA_FF8B62:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8B7C:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $2828
	dw sprite.max_x_speed, $0100
	dw sprite.general_purpose_4A, $0403
	dw sprite.max_y_speed, $0050
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8B96:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8BA8:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $4040
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8BBA:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $4848
	dw sprite.max_x_speed, $FD80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8BCC:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FE40
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8BDE:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $7818
	dw sprite.max_x_speed, $FD80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8BF0:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FE60
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8C02:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FE40
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8C14:
	dw !initcommand_load_subconfig, DATA_FF8AE8
	dw sprite.general_purpose_46, $9898
	dw sprite.max_x_speed, $01C0
	dw !initcommand_success

DATA_FF8C22:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $4040
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF8C3C:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8C5A:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $FE80
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8C78:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $1818
	dw sprite.max_y_speed, $FEE0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8C96:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8CB4:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0103
	dw sprite.max_x_speed, $0050
	dw sprite.general_purpose_4A, $446C
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF8CCE:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $6C44
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF8CE8:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0301
	dw sprite.max_x_speed, $0050
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF8D02:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $2080
	dw sprite.max_y_speed, $FE60
	dw !initcommand_success

DATA_FF8D1C:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $FE60
	dw !initcommand_success

DATA_FF8D36:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $6060
	dw sprite.max_y_speed, $0140
	dw !initcommand_success

DATA_FF8D50:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF8D6A:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $FE00
	dw !initcommand_success

DATA_FF8D84:
	dw !initcommand_load_subconfig, DATA_FF8A1A
	dw !initcommand_set_animation, $0196
	dw sprite.movement_state, $000A
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF8D96:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF8DA8:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $6800
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8DBA:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $3800
	dw sprite.general_purpose_48, $6800
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8DCC:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $F000
	dw sprite.general_purpose_48, $6800
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8DDE:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $5C00
	dw sprite.general_purpose_48, $6800
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8DF0:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $1400
	dw sprite.general_purpose_48, $6800
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF8E02:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $7800
	dw sprite.max_x_speed, $FF40
	dw !initcommand_success

DATA_FF8E14:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $5C00
	dw sprite.general_purpose_48, $7800
	dw sprite.max_x_speed, $FF40
	dw !initcommand_success

DATA_FF8E26:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $3800
	dw sprite.general_purpose_48, $7800
	dw sprite.max_x_speed, $FF40
	dw !initcommand_success

DATA_FF8E38:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $1400
	dw sprite.general_purpose_48, $7800
	dw sprite.max_x_speed, $FF40
	dw !initcommand_success

DATA_FF8E4A:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $F000
	dw sprite.general_purpose_48, $7800
	dw sprite.max_x_speed, $FF40
	dw !initcommand_success

DATA_FF8E5C:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $7800
	dw sprite.max_x_speed, $00C0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8E72:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $5C00
	dw sprite.general_purpose_48, $7800
	dw sprite.max_x_speed, $00C0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8E88:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $3800
	dw sprite.general_purpose_48, $7800
	dw sprite.max_x_speed, $00C0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8E9E:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $1400
	dw sprite.general_purpose_48, $7800
	dw sprite.max_x_speed, $00C0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8EB4:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $9000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0280
	dw !initcommand_success

DATA_FF8EC6:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $5800
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FF8ED8:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $DC00
	dw sprite.general_purpose_48, $5800
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FF8EEA:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $B800
	dw sprite.general_purpose_48, $5800
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FF8EFC:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $9400
	dw sprite.general_purpose_48, $5800
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FF8F0E:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $2400
	dw sprite.general_purpose_48, $5800
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FF8F20:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $7000
	dw sprite.max_x_speed, $00F0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8F36:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $4000
	dw sprite.general_purpose_48, $7000
	dw sprite.max_x_speed, $00F0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8F4C:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $7000
	dw sprite.max_x_speed, $00F0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8F62:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $C000
	dw sprite.general_purpose_48, $7000
	dw sprite.max_x_speed, $00F0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8F78:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $2000
	dw sprite.general_purpose_48, $6000
	dw sprite.max_x_speed, $FF00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8F8E:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $A000
	dw sprite.general_purpose_48, $4000
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8FA4:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $A000
	dw sprite.general_purpose_48, $4000
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF8FBA:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $A000
	dw sprite.general_purpose_48, $4800
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FF8FCC:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $2000
	dw sprite.general_purpose_48, $4800
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FF8FDE:
	dw !initcommand_load_subconfig, DATA_FF8A1A
	dw !initcommand_set_animation, $0196
	dw sprite.movement_state, $000B
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $4000
	dw sprite.general_purpose_4A, $C040
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

;klampon
DATA_FF9000:
	dw sprite.type, !sprite_klampon
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF02AA
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0053
	dw !initcommand_set_animation, $019F
	dw !initcommand_success

DATA_FF902A:
	dw !initcommand_load_subconfig, DATA_FF9000
	dw sprite.movement_state, $0022
	dw !initcommand_success

DATA_FF9034:
	dw !initcommand_load_subconfig, DATA_FF9000
	dw sprite.movement_state, $0023
	dw !initcommand_success

DATA_FF903E:
	dw !initcommand_load_subconfig, DATA_FF902A
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF9048:
	dw !initcommand_load_subconfig, DATA_FF902A
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9056:
	dw !initcommand_load_subconfig, DATA_FF902A
	dw sprite.max_x_speed, $FD80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9064:
	dw !initcommand_load_subconfig, DATA_FF902A
	dw sprite.max_x_speed, $FE00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9072:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF9080:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $A800
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9092:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $1414
	dw sprite.max_x_speed, $FD80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF90A4:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $18A8
	dw sprite.max_x_speed, $01C0
	dw !initcommand_success

DATA_FF90B2:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FD80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF90C4:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $00A8
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FF90D2:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $0098
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FF90E0:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $9800
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF90F2:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $0098
	dw sprite.max_x_speed, $01C0
	dw !initcommand_success

DATA_FF9100:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $3040
	dw sprite.max_x_speed, $FE40
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9112:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $4040
	dw sprite.max_x_speed, $FE40
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9124:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $CF30
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9136:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $FF00
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9148:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $FE40
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF915A:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $0280
	dw !initcommand_success

DATA_FF9168:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $A800
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF917A:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $1434
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF9188:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF919A:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $2C2C
	dw sprite.max_x_speed, $FF20
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF91AC:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $2828
	dw sprite.max_x_speed, $FD80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF91BE:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $2828
	dw sprite.max_x_speed, $0280
	dw !initcommand_success

DATA_FF91CC:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $FD00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF91DE:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $1818
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF91EC:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $7800
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF91FE:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $CC20
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9210:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $FFD0
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9222:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $1818
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9234:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FE00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9246:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $0808
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9258:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $7830
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF9266:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $00D0
	dw sprite.max_x_speed, $01E0
	dw !initcommand_success

DATA_FF9274:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $C040
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF9282:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $2A2A
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9294:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $EC00
	dw sprite.max_x_speed, $FEA0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF92A6:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $1414
	dw sprite.max_x_speed, $FE40
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF92B8:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $0C0C
	dw sprite.max_x_speed, $0160
	dw !initcommand_success

DATA_FF92C6:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $0200
	dw !initcommand_success

DATA_FF92D4:
	dw sprite.type, !sprite_krows_egg
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0001
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0020
	dw !initcommand_set_animation, $02E4
	dw !initcommand_success

DATA_FF9302:
	dw sprite.type, !sprite_animal_box
	dw sprite.render_order, $00D4
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.unknown_5C, $0000
	dw sprite.interaction_flags, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_success

DATA_FF9328:
	dw !initcommand_load_subconfig, DATA_FF9302
	dw !initcommand_set_animation, $02AF
	dw !initcommand_success

DATA_FF9332:
	dw !initcommand_load_subconfig, DATA_FF9302
	dw !initcommand_set_animation, $02AE
	dw !initcommand_success

DATA_FF933C:
	dw !initcommand_load_subconfig, DATA_FF9302
	dw !initcommand_set_animation, $02AE
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF934A:
	dw !initcommand_load_subconfig, DATA_FF9302
	dw !initcommand_set_animation, $02AE
	dw sprite.unknown_5C, $000E
	dw !initcommand_success

DATA_FF9358:
	dw !initcommand_load_subconfig, DATA_FF9302
	dw !initcommand_set_animation, $02AE
	dw sprite.unknown_5C, $0026
	dw !initcommand_success

DATA_FF9366:
	dw !initcommand_load_subconfig, DATA_FF9302
	dw sprite.state, $0003
	dw !initcommand_set_animation, $02B0
	dw !initcommand_success

DATA_FF9374:
	dw !initcommand_load_subconfig, DATA_FF9302
	dw sprite.state, $0003
	dw !initcommand_set_animation, $02B0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9386:
	dw !initcommand_load_subconfig, DATA_FF9302
	dw !initcommand_set_animation, $02AD
	dw !initcommand_success

DATA_FF9390:
	dw !initcommand_load_subconfig, DATA_FF9302
	dw !initcommand_set_animation, $02AD
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF939E:
	dw !initcommand_load_subconfig, DATA_FF9302
	dw !initcommand_set_animation, $02AC
	dw !initcommand_success

DATA_FF93A8:
	dw !initcommand_load_subconfig, DATA_FF9302
	dw !initcommand_set_animation, $02AC
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF93B6:
	dw sprite.type, !sprite_checkpoint_barrel
	dw sprite.render_order, $00D4
	dw sprite.state, $0000
	dw sprite.unknown_5C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02B5
	dw !initcommand_success

DATA_FF93D4:
	dw !initcommand_load_subconfig, DATA_FF93B6
	dw sprite.general_purpose_42, $0001
	dw !initcommand_success

DATA_FF93DE:
	dw !initcommand_load_subconfig, DATA_FF93B6
	dw sprite.general_purpose_42, $0001
	dw sprite.unknown_5C, $0015
	dw !initcommand_success

DATA_FF93EC:
	dw sprite.type, !sprite_wooden_box
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0001
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02E6
	dw !initcommand_success

DATA_FF941A:
	dw sprite.type, !sprite_ghost_rope
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF9434
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $002E
	dw !initcommand_set_animation, $02A6
	dw !initcommand_success

DATA_FF9434:
	db $98, $FF, $20, $00, $C8, $FF, $0C, $00


DATA_FF943C:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0020
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0080
	dw !initcommand_success

DATA_FF9452:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0080
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0080
	dw !initcommand_success

DATA_FF9468:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0078
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0078
	dw !initcommand_success

DATA_FF947E:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0078
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0078
	dw !initcommand_success

DATA_FF9494:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0030
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0078
	dw !initcommand_success

DATA_FF94AA:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0040
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0010
	dw !initcommand_success

DATA_FF94C0:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0058
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0058
	dw !initcommand_success

DATA_FF94D6:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0060
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0050
	dw !initcommand_success

DATA_FF94EC:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0068
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0078
	dw !initcommand_success

DATA_FF9502:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0038
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0078
	dw !initcommand_success

DATA_FF9518:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0070
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0078
	dw !initcommand_success

DATA_FF952E:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0010
	dw sprite.general_purpose_46, $0030
	dw sprite.general_purpose_48, $0010
	dw !initcommand_success

DATA_FF9544:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $000C
	dw sprite.general_purpose_46, $0030
	dw sprite.general_purpose_48, $0010
	dw !initcommand_success

DATA_FF955A:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0068
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0068
	dw !initcommand_success

DATA_FF9570:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0040
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0068
	dw !initcommand_success

DATA_FF9586:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0070
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0068
	dw !initcommand_success

DATA_FF959C:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0040
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0068
	dw !initcommand_success

DATA_FF95B2:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0070
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0070
	dw !initcommand_success

DATA_FF95C8:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0038
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0070
	dw !initcommand_success

DATA_FF95DE:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0080
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0070
	dw !initcommand_success

DATA_FF95F4:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0050
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0050
	dw !initcommand_success

DATA_FF960A:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0020
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0050
	dw !initcommand_success

DATA_FF9620:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0060
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0050
	dw !initcommand_success

DATA_FF9636:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0098
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0050
	dw !initcommand_success

DATA_FF964C:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0120
	dw sprite.general_purpose_46, $0030
	dw sprite.general_purpose_48, $0120
	dw !initcommand_success

DATA_FF9662:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $00A8
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0078
	dw !initcommand_success

DATA_FF9678:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $6000
	dw sprite.general_purpose_46, $6000
	dw sprite.general_purpose_48, $6000
	dw !initcommand_success

DATA_FF968E:
	dw sprite.type, !sprite_coins
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C1
	dw sprite.state, $0000
	dw sprite.parameter, $F820
	dw sprite.general_purpose_48, $0C80
	dw sprite.general_purpose_4A, $2070
	dw sprite.general_purpose_4C, $08CA
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_4E, $072D
	dw sprite.unknown_5C, $0078
	dw !initcommand_success

DATA_FF96C4:
	dw !initcommand_load_subconfig, DATA_FF968E
	dw !initcommand_success

DATA_FF96CA:
	dw !initcommand_load_subconfig, DATA_FF968E
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FF96D4:
	dw sprite.type, !sprite_coins
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C2
	dw sprite.state, $0003
	dw sprite.parameter, $F828
	dw sprite.general_purpose_48, $1080
	dw sprite.general_purpose_4A, $2870
	dw sprite.general_purpose_4C, $08CC
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_4E, $0736
	dw sprite.unknown_5C, $0078
	dw !initcommand_success

DATA_FF970A:
	dw sprite.type, !sprite_coins
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C3
	dw sprite.state, $0003
	dw sprite.parameter, $F828
	dw sprite.general_purpose_48, $1080
	dw sprite.general_purpose_4A, $2870
	dw sprite.general_purpose_4C, $08CE
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_4E, $0736
	dw sprite.unknown_5C, $0078
	dw !initcommand_success

DATA_FF9740:
	dw sprite.type, !sprite_coins
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_set_animation, $01C2
	dw sprite.state, $000A
	dw sprite.parameter, $F828
	dw sprite.general_purpose_48, $1080
	dw sprite.general_purpose_4A, $2870
	dw sprite.general_purpose_4C, $08CC
	dw sprite.general_purpose_42, $004B
	dw sprite.general_purpose_4E, $0736
	dw sprite.unknown_5C, $0078
	dw !initcommand_success

DATA_FF9776:
	dw sprite.type, !sprite_coins
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $01C3
	dw sprite.state, $0008
	dw sprite.parameter, $F82C
	dw sprite.general_purpose_48, $1088
	dw sprite.general_purpose_4A, $2C74
	dw sprite.general_purpose_4C, $08CE
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_4E, $0756
	dw sprite.unknown_5C, $0078
	dw !initcommand_success

DATA_FF97A8:
	dw !initcommand_load_subconfig, DATA_FF9776
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_success

DATA_FF97B2:
	dw !initcommand_load_subconfig, DATA_FF9776
	dw !initcommand_set_alt_palette, $0014
	dw !initcommand_success

DATA_FF97BC:
	dw sprite.type, !sprite_kong_letter
	dw sprite.render_order, $00D4
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0000
	dw sprite.parameter, $F818
	dw sprite.general_purpose_42, $F85D
	dw sprite.general_purpose_44, $F86F
	dw sprite.general_purpose_46, $F881
	dw sprite.general_purpose_48, $F893
	dw sprite.unknown_5C, $0078
	dw !initcommand_success

DATA_FF97EA:
	dw !initcommand_load_subconfig, DATA_FF97BC
	dw !initcommand_set_animation, $02BB
	dw sprite.general_purpose_4A, $0042
	dw sprite.general_purpose_4C, $0001
	dw sprite.general_purpose_4E, $0727
	dw !initcommand_success

DATA_FF9800:
	dw !initcommand_load_subconfig, DATA_FF97BC
	dw !initcommand_set_animation, $02BC
	dw sprite.general_purpose_4A, $0044
	dw sprite.general_purpose_4C, $0002
	dw sprite.general_purpose_4E, $0628
	dw !initcommand_success

DATA_FF9816:
	dw !initcommand_load_subconfig, DATA_FF9800
	dw !initcommand_success

DATA_FF981C:
	dw !initcommand_load_subconfig, DATA_FF9800
	dw sprite.render_order, $00D3
	dw !initcommand_success

DATA_FF9826:
	dw !initcommand_load_subconfig, DATA_FF97BC
	dw !initcommand_set_animation, $02BD
	dw sprite.general_purpose_4A, $0046
	dw sprite.general_purpose_4C, $0004
	dw sprite.general_purpose_4E, $0529
	dw !initcommand_success

DATA_FF983C:
	dw !initcommand_load_subconfig, DATA_FF9826
	dw !initcommand_success

DATA_FF9842:
	dw !initcommand_load_subconfig, DATA_FF9826
	dw sprite.render_order, $00D3
	dw !initcommand_success

DATA_FF984C:
	dw !initcommand_load_subconfig, DATA_FF97BC
	dw !initcommand_set_animation, $02BE
	dw sprite.general_purpose_4A, $0048
	dw sprite.general_purpose_4C, $0008
	dw sprite.general_purpose_4E, $042A
	dw !initcommand_success

DATA_FF9862:
	dw !initcommand_load_subconfig, DATA_FF984C
	dw !initcommand_success

DATA_FF9868:
	dw !initcommand_load_subconfig, DATA_FF984C
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FF9872:
	dw !initcommand_load_subconfig, DATA_FF984C
	dw sprite.render_order, $00D3
	dw !initcommand_success

DATA_FF987C:
	dw sprite.type, !sprite_no_animal_buddy_sign
	dw sprite.render_order, $00C0
	dw sprite.general_purpose_42, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $001B
	dw !initcommand_success

DATA_FF9892:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $000C
	dw !initcommand_set_animation, $02B6
	dw !initcommand_success

DATA_FF98A0:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw !initcommand_set_animation, $02B6
	dw !initcommand_success

DATA_FF98AA:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0011
	dw !initcommand_set_animation, $02B6
	dw !initcommand_success

DATA_FF98B8:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0005
	dw !initcommand_set_animation, $02B6
	dw !initcommand_success

DATA_FF98C6:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0009
	dw !initcommand_set_animation, $02B6
	dw !initcommand_success

DATA_FF98D4:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw !initcommand_set_animation, $02B6
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF98E2:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw !initcommand_set_animation, $02B7
	dw !initcommand_success

DATA_FF98EC:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0004
	dw !initcommand_set_animation, $02B7
	dw !initcommand_success

DATA_FF98FA:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0006
	dw !initcommand_set_animation, $02B7
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF990C:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw !initcommand_set_animation, $02B7
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF991A:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0006
	dw !initcommand_set_animation, $02B7
	dw !initcommand_success

DATA_FF9928:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $000C
	dw !initcommand_set_animation, $02B7
	dw !initcommand_success

DATA_FF9936:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_set_animation, $02B7
	dw !initcommand_success

DATA_FF9944:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw !initcommand_set_animation, $02B9
	dw !initcommand_success

DATA_FF994E:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $000C
	dw !initcommand_set_animation, $02B9
	dw !initcommand_success

DATA_FF995C:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0008
	dw !initcommand_set_animation, $02B9
	dw !initcommand_success

DATA_FF996A:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0008
	dw !initcommand_set_animation, $02B9
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF997C:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $000C
	dw !initcommand_set_animation, $02BA
	dw !initcommand_success

DATA_FF998A:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $000A
	dw !initcommand_set_animation, $02BA
	dw !initcommand_success

DATA_FF9998:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw !initcommand_set_animation, $02BA
	dw !initcommand_success

DATA_FF99A2:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw !initcommand_set_animation, $02B8
	dw !initcommand_success

DATA_FF99AC:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $000C
	dw !initcommand_set_animation, $02B8
	dw !initcommand_success

DATA_FF99BA:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0008
	dw !initcommand_set_animation, $02B8
	dw !initcommand_success

DATA_FF99C8:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $000C
	dw !initcommand_set_animation, $02B8
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF99DA:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0008
	dw !initcommand_set_animation, $02B8
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF99EC:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0008
	dw !initcommand_set_animation, $02B8
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF99FE:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $0004
	dw !initcommand_set_animation, $02B8
	dw !initcommand_success

DATA_FF9A0C:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_set_animation, $02B8
	dw !initcommand_success

DATA_FF9A1A:
	dw !initcommand_load_subconfig, DATA_FF987C
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_set_animation, $02B8
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FF9A2C:
	dw sprite.type, !sprite_exit_door
	dw sprite.render_order, $00C8
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw sprite.general_purpose_48, $0000
	dw sprite.general_purpose_46, $0001
	dw !initcommand_success

DATA_FF9A46:
	dw sprite.type, !sprite_exit_door
	dw sprite.render_order, $00C8
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw sprite.general_purpose_48, $0000
	dw sprite.general_purpose_46, $0000
	dw !initcommand_success

DATA_FF9A60:
	dw !initcommand_load_subconfig, DATA_FF9A2C
	dw sprite.state, $0002
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_4A, $0030
	dw !initcommand_success

DATA_FF9A76:
	dw !initcommand_load_subconfig, DATA_FF9A2C
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0002
	dw sprite.general_purpose_4A, $0030
	dw !initcommand_success

DATA_FF9A88:
	dw !initcommand_load_subconfig, DATA_FF9A2C
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0003
	dw sprite.general_purpose_4A, $0030
	dw !initcommand_success

DATA_FF9A9A:
	dw !initcommand_load_subconfig, DATA_FF9A2C
	dw sprite.general_purpose_42, $0003
	dw sprite.general_purpose_44, $0004
	dw sprite.general_purpose_4A, $0030
	dw !initcommand_success

DATA_FF9AAC:
	dw !initcommand_load_subconfig, DATA_FF9A46
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_4A, $0030
	dw !initcommand_success

DATA_FF9ABE:
	dw !initcommand_load_subconfig, DATA_FF9A46
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0002
	dw sprite.general_purpose_4A, $0030
	dw !initcommand_success

DATA_FF9AD0:
	dw !initcommand_load_subconfig, DATA_FF9A46
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0003
	dw sprite.general_purpose_4A, $0030
	dw !initcommand_success

DATA_FF9AE2:
	dw !initcommand_load_subconfig, DATA_FF9A46
	dw sprite.general_purpose_42, $0003
	dw sprite.general_purpose_44, $0004
	dw sprite.general_purpose_4A, $0030
	dw !initcommand_success

DATA_FF9AF4:
	dw !initcommand_load_subconfig, DATA_FF9A2C
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_4A, $0030
	dw !initcommand_success

DATA_FF9B06:
	dw !initcommand_load_subconfig, DATA_FF9A2C
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_4A, $0001
	dw !initcommand_success

DATA_FF9B18:
	dw !initcommand_load_subconfig, DATA_FF9A46
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_4A, $0030
	dw !initcommand_success

DATA_FF9B2A:
	dw sprite.constants_address, DATA_FF0340
	dw !initcommand_set_alt_palette, $004A
	dw sprite.movement_state, $0022
	dw !initcommand_set_oam, $6000
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_load_subconfig, DATA_FF9B58
	dw !initcommand_success

DATA_FF9B44:
	dw sprite.constants_address, DATA_FF032E
	dw !initcommand_set_alt_palette, $000C
	dw sprite.movement_state, $0023
	dw !initcommand_set_oam, $2000
	dw sprite.max_x_speed, $0140
DATA_FF9B58:
	dw sprite.type, !sprite_kruncha
	dw sprite.render_order, $00D4
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0120
	dw !initcommand_set_animation, $0172
	dw !initcommand_success

DATA_FF9B76:
	dw !initcommand_load_subconfig, DATA_FF9B2A
	dw sprite.max_x_speed, $FEE0
	dw !initcommand_success

DATA_FF9B80:
	dw !initcommand_load_subconfig, DATA_FF9B2A
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF9B8E:
	dw !initcommand_load_subconfig, DATA_FF9B2A
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF9B98:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $5050
	dw !initcommand_success

DATA_FF9BA2:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $F000
	dw sprite.max_x_speed, $FEE0
	dw sprite.x_speed, $FFFF
	dw !initcommand_success

DATA_FF9BB8:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FF9BC2:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $0C0C
	dw !initcommand_success

DATA_FF9BCC:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $F858
	dw sprite.max_x_speed, $FEE0
	dw sprite.x_speed, $FFFF
	dw !initcommand_success

DATA_FF9BE2:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $FFAF
	dw sprite.max_x_speed, $FEE0
	dw sprite.x_speed, $FFFF
	dw !initcommand_success

DATA_FF9BF8:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $3838
	dw sprite.max_x_speed, $0200
	dw !initcommand_success

DATA_FF9C06:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $4040
	dw sprite.max_x_speed, $01A0
	dw !initcommand_success

DATA_FF9C14:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $0160
	dw !initcommand_success

DATA_FF9C22:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $0160
	dw !initcommand_success

DATA_FF9C30:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $4060
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FF9C3E:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.max_x_speed, $FEA0
	dw sprite.general_purpose_46, $2040
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9C50:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $2438
	dw sprite.max_x_speed, $01C0
	dw !initcommand_success

DATA_FF9C5E:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $3440
	dw sprite.max_x_speed, $01C0
	dw !initcommand_success

DATA_FF9C6C:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $FF00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9C7E:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $FF58
	dw sprite.max_x_speed, $FE80
	dw sprite.x_speed, $FFFF
	dw !initcommand_success

DATA_FF9C94:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $1414
	dw !initcommand_set_oam, $6000
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF9CA6:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $2828
	dw !initcommand_set_oam, $6000
	dw sprite.max_x_speed, $FEE0
	dw !initcommand_success

DATA_FF9CB8:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.max_x_speed, $0160
	dw sprite.general_purpose_46, $4830
	dw !initcommand_success

DATA_FF9CC6:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $4040
	dw sprite.max_x_speed, $0200
	dw !initcommand_success

DATA_FF9CD4:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.max_x_speed, $FE60
	dw sprite.general_purpose_46, $B000
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9CE6:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $0050
	dw !initcommand_success

DATA_FF9CF4:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $3838
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9D06:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $9880
	dw sprite.max_x_speed, $0200
	dw !initcommand_success

DATA_FF9D14:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $A000
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9D26:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $4000
	dw sprite.max_x_speed, $FEE0
	dw sprite.x_speed, $FFFF
	dw !initcommand_success

DATA_FF9D3C:
	dw sprite.type, !sprite_flitter
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF0318
	dw sprite.interaction_flags, $0120
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $003B
	dw !initcommand_success

DATA_FF9D62:
	dw sprite.type, !sprite_flitter
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF0318
	dw sprite.interaction_flags, $0120
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $003B
	dw !initcommand_success

DATA_FF9D88:
	dw !initcommand_load_subconfig, DATA_FF9D3C
	dw !initcommand_set_animation, $019B
	dw sprite.movement_state, $0007
	dw sprite.general_purpose_46, $0202
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0203
	dw !initcommand_success

DATA_FF9DA2:
	dw !initcommand_load_subconfig, DATA_FF9D88
	dw sprite.max_x_speed, $0040
	dw !initcommand_success

DATA_FF9DAC:
	dw !initcommand_load_subconfig, DATA_FF9D88
	dw sprite.max_x_speed, $FFC0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF9DBA:
	dw !initcommand_load_subconfig, DATA_FF9D62
	dw !initcommand_set_animation, $019B
	dw sprite.movement_state, $0008
	dw sprite.general_purpose_4A, $0404
	dw sprite.max_y_speed, $0040
	dw !initcommand_success

DATA_FF9DD0:
	dw !initcommand_load_subconfig, DATA_FF9DBA
	dw sprite.max_x_speed, $FF70
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9DDE:
	dw !initcommand_load_subconfig, DATA_FF9DBA
	dw sprite.max_x_speed, $0060
	dw !initcommand_success

DATA_FF9DE8:
	dw !initcommand_load_subconfig, DATA_FF9DBA
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9DF6:
	dw !initcommand_load_subconfig, DATA_FF9DBA
	dw sprite.max_x_speed, $FF00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9E04:
	dw !initcommand_load_subconfig, DATA_FF9DBA
	dw sprite.max_x_speed, $FE40
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9E12:
	dw !initcommand_load_subconfig, DATA_FF9DBA
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9E20:
	dw !initcommand_load_subconfig, DATA_FF9DBA
	dw sprite.max_x_speed, $FF40
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9E2E:
	dw !initcommand_load_subconfig, DATA_FF9D3C
	dw !initcommand_set_animation, $019B
	dw sprite.movement_state, $0007
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw !initcommand_success

DATA_FF9E44:
	dw !initcommand_load_subconfig, DATA_FF9E2E
	dw sprite.general_purpose_4A, $3838
	dw sprite.max_y_speed, $0140
	dw !initcommand_success

DATA_FF9E52:
	dw !initcommand_load_subconfig, DATA_FF9E2E
	dw sprite.general_purpose_4A, $0C0C
	dw sprite.max_y_speed, $0120
	dw !initcommand_success

DATA_FF9E60:
	dw !initcommand_load_subconfig, DATA_FF9E2E
	dw sprite.general_purpose_4A, $7000
	dw sprite.max_y_speed, $FEC0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF9E72:
	dw !initcommand_load_subconfig, DATA_FF9E2E
	dw sprite.general_purpose_46, $0404
	dw sprite.general_purpose_4A, $2020
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF9E84:
	dw !initcommand_load_subconfig, DATA_FF9E2E
	dw sprite.general_purpose_4A, $2848
	dw sprite.max_y_speed, $0140
	dw !initcommand_success

DATA_FF9E92:
	dw !initcommand_load_subconfig, DATA_FF9E2E
	dw sprite.general_purpose_4A, $3838
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FF9EA0:
	dw !initcommand_load_subconfig, DATA_FF9E2E
	dw sprite.general_purpose_4A, $5000
	dw sprite.max_y_speed, $FEC0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FF9EB2:
	dw !initcommand_load_subconfig, DATA_FF9D3C
	dw !initcommand_set_animation, $019A
	dw sprite.movement_state, $0007
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_success

DATA_FF9EC8:
	dw !initcommand_load_subconfig, DATA_FF9EB2
	dw sprite.general_purpose_46, $3838
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF9ED6:
	dw !initcommand_load_subconfig, DATA_FF9EB2
	dw sprite.general_purpose_46, $1414
	dw sprite.max_x_speed, $FF20
	dw !initcommand_success

DATA_FF9EE4:
	dw !initcommand_load_subconfig, DATA_FF9EB2
	dw sprite.general_purpose_46, $1858
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF9EF2:
	dw !initcommand_load_subconfig, DATA_FF9EB2
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF9F00:
	dw !initcommand_load_subconfig, DATA_FF9EB2
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FF9F0E:
	dw !initcommand_load_subconfig, DATA_FF9EB2
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FF9F1C:
	dw !initcommand_load_subconfig, DATA_FF9EB2
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $FF00
	dw !initcommand_success

DATA_FF9F2A:
	dw !initcommand_load_subconfig, DATA_FF9EB2
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $0120
	dw !initcommand_success

DATA_FF9F38:
	dw !initcommand_load_subconfig, DATA_FF9EB2
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $FF00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FF9F4A:
	dw !initcommand_load_subconfig, DATA_FF9D62
	dw !initcommand_set_animation, $019A
	dw sprite.movement_state, $000A
	dw !initcommand_success

DATA_FF9F58:
	dw !initcommand_load_subconfig, DATA_FF9F4A
	dw sprite.general_purpose_46, $4000
	dw sprite.general_purpose_48, $2800
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FF9F6A:
	dw !initcommand_load_subconfig, DATA_FF9F4A
	dw sprite.general_purpose_46, $4000
	dw sprite.general_purpose_48, $2800
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FF9F7C:
	dw !initcommand_load_subconfig, DATA_FF9F4A
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0280
	dw !initcommand_success

DATA_FF9F8E:
	dw !initcommand_load_subconfig, DATA_FF9D3C
	dw !initcommand_set_animation, $019A
	dw sprite.movement_state, $000B
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $2800
	dw sprite.general_purpose_4A, $C040
	dw sprite.max_x_speed, $0200
	dw !initcommand_success

DATA_FF9FAC:
	dw !initcommand_load_subconfig, DATA_FF9D62
	dw !initcommand_set_animation, $019B
	dw sprite.movement_state, $000F
	dw sprite.max_x_speed, $0080
	dw sprite.max_y_speed, $0000
	dw !initcommand_success

;spiny
DATA_FF9FC2:
	dw sprite.type, !sprite_spiny
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF02C0
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $FEC0
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0020
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $0050
	dw !initcommand_set_animation, $01A3
	dw !initcommand_success

DATA_FF9FF0:
	dw !initcommand_load_subconfig, DATA_FF9FC2
	dw sprite.movement_state, $0022
	dw !initcommand_success

DATA_FF9FFA:
	dw !initcommand_load_subconfig, DATA_FF9FC2
	dw sprite.movement_state, $0023
	dw !initcommand_success

DATA_FFA004:
	dw !initcommand_load_subconfig, DATA_FF9FF0
	dw !initcommand_success

DATA_FFA00A:
	dw !initcommand_load_subconfig, DATA_FF9FF0
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA018:
	dw !initcommand_load_subconfig, DATA_FF9FF0
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FFA022:
	dw !initcommand_load_subconfig, DATA_FF9FF0
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA030:
	dw !initcommand_load_subconfig, DATA_FF9FF0
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

DATA_FFA03A:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $2828
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

DATA_FFA048:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FFA056:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $FF10
	dw sprite.max_x_speed, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA068:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $6060
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA07A:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $3838
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA08C:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $0505
	dw sprite.max_x_speed, $FEE0
	dw !initcommand_success

DATA_FFA09A:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $0505
	dw sprite.max_x_speed, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA0AC:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $00D8
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA0BE:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $0098
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA0D0:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $0078
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA0E2:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $0058
	dw !initcommand_success

DATA_FFA0F0:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $2C2C
	dw !initcommand_success

DATA_FFA0FE:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $5800
	dw !initcommand_success

DATA_FFA10C:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.max_x_speed, $FE60
	dw sprite.general_purpose_46, $7010
	dw !initcommand_success

DATA_FFA11A:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.max_x_speed, $FE60
	dw sprite.general_purpose_46, $4040
	dw !initcommand_success

DATA_FFA128:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.max_x_speed, $FE60
	dw sprite.general_purpose_46, $3030
	dw !initcommand_success

DATA_FFA136:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $A820
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FFA144:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $C800
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FFA152:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $1818
	dw sprite.max_x_speed, $FDC0
	dw !initcommand_success

DATA_FFA160:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $4848
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FFA16E:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $1010
	dw sprite.max_x_speed, $FDC0
	dw !initcommand_success

DATA_FFA17C:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FFA18A:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA19C:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $1414
	dw sprite.max_x_speed, $FF00
	dw !initcommand_success

DATA_FFA1AA:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $3040
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FFA1B8:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $1818
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FFA1C6:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $8800
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FFA1D4:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $4848
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FFA1E2:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $A000
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FFA1F0:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $B0B0
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA202:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $3028
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA214:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $01C0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA226:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $2824
	dw sprite.max_x_speed, $FE40
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA238:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $1420
	dw sprite.max_x_speed, $FE40
	dw !initcommand_success

DATA_FFA246:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $00E0
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FFA254:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $2C38
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA266:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $D000
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FFA274:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $9820
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA286:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $1818
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA298:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $2820
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

;klinger
DATA_FFA2A6:
	dw sprite.type, !sprite_klinger
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF02D6
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0120
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $003A
	dw !initcommand_set_animation, $01A6
	dw sprite.movement_state, $0006
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFA2D8:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $2038
	dw sprite.max_y_speed, $00C0
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_success

DATA_FFA2EA:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $7010
	dw sprite.max_y_speed, $00C0
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_success

DATA_FFA2FC:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $1070
	dw sprite.max_y_speed, $FF40
	dw sprite.animation_control, $0100
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_success

DATA_FFA312:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $7010
	dw sprite.max_y_speed, $00C0
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA328:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $2060
	dw sprite.max_y_speed, $00C0
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA33E:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $2038
	dw sprite.max_y_speed, $00C0
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA354:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $6010
	dw sprite.max_y_speed, $00C0
	dw sprite.general_purpose_4E, $0110
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA36A:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $1060
	dw sprite.max_y_speed, $FF40
	dw sprite.animation_control, $0110
	dw sprite.general_purpose_4E, $0110
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA384:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $2050
	dw sprite.max_y_speed, $00C0
	dw sprite.general_purpose_4E, $0110
	dw !initcommand_success

DATA_FFA396:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $3820
	dw sprite.max_y_speed, $00C0
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_success

DATA_FFA3A8:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $3820
	dw sprite.max_y_speed, $FF40
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA3BE:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $5800
	dw sprite.max_y_speed, $FF60
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA3D4:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $4048
	dw sprite.max_y_speed, $FF10
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_success

DATA_FFA3E6:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $2038
	dw sprite.max_y_speed, $FF40
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_success

DATA_FFA3F8:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $A000
	dw sprite.max_y_speed, $FF00
	dw sprite.general_purpose_4E, $0110
	dw !initcommand_success

DATA_FFA40A:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $A000
	dw sprite.max_y_speed, $FF00
	dw sprite.general_purpose_4E, $0110
	dw sprite.general_purpose_48, $001E
	dw !initcommand_set_animation, $01A8
	dw !initcommand_success

DATA_FFA424:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $A000
	dw sprite.max_y_speed, $FF00
	dw sprite.general_purpose_4E, $0110
	dw sprite.general_purpose_48, $003C
	dw !initcommand_success

DATA_FFA43A:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $A000
	dw sprite.max_y_speed, $FF00
	dw sprite.general_purpose_4E, $0110
	dw sprite.general_purpose_48, $005A
	dw !initcommand_set_animation, $01A8
	dw !initcommand_success

DATA_FFA454:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $1028
	dw sprite.max_y_speed, $00C0
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_success

DATA_FFA466:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $2018
	dw sprite.max_y_speed, $FF40
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_success

DATA_FFA478:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $0070
	dw sprite.max_y_speed, $00C0
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_success

DATA_FFA48A:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $0058
	dw sprite.max_y_speed, $00C0
	dw sprite.general_purpose_4E, $0100
	dw !initcommand_success

DATA_FFA49C:
	dw sprite.type, !sprite_flotsam
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0020
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $01A9
	dw sprite.unknown_5C, $0001
	dw !initcommand_success

DATA_FFA4C6:
	dw !initcommand_load_subconfig, DATA_FFA49C
	dw sprite.movement_state, $0008
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0606
	dw !initcommand_set_alt_palette, $003C
	dw !initcommand_success

DATA_FFA4DC:
	dw !initcommand_load_subconfig, DATA_FFA4C6
	dw sprite.max_x_speed, $FF80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA4EA:
	dw !initcommand_load_subconfig, DATA_FFA4C6
	dw sprite.max_x_speed, $0080
	dw !initcommand_success

DATA_FFA4F4:
	dw !initcommand_load_subconfig, DATA_FFA4C6
	dw sprite.max_x_speed, $FF40
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA502:
	dw !initcommand_load_subconfig, DATA_FFA4C6
	dw sprite.max_x_speed, $00C0
	dw !initcommand_success

DATA_FFA50C:
	dw !initcommand_load_subconfig, DATA_FFA4C6
	dw sprite.max_x_speed, $FF00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA51A:
	dw !initcommand_load_subconfig, DATA_FFA4C6
	dw sprite.max_x_speed, $0100
	dw !initcommand_success

DATA_FFA524:
	dw !initcommand_load_subconfig, DATA_FFA4C6
	dw sprite.max_x_speed, $FF60
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA532:
	dw !initcommand_load_subconfig, DATA_FFA4C6
	dw sprite.max_x_speed, $00A0
	dw !initcommand_success

DATA_FFA53C:
	dw !initcommand_load_subconfig, DATA_FFA49C
	dw !initcommand_set_alt_palette, $004F
	dw sprite.movement_state, $0007
	dw !initcommand_success

DATA_FFA54A:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $00C0
	dw sprite.general_purpose_46, $6060
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_success

DATA_FFA560:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FEE0
	dw sprite.general_purpose_46, $8000
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA57A:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $0120
	dw sprite.general_purpose_46, $0080
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_success

DATA_FFA590:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $0120
	dw sprite.general_purpose_46, $6060
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_success

DATA_FFA5A6:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FF40
	dw sprite.general_purpose_46, $4040
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA5C0:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FF00
	dw sprite.general_purpose_46, $5050
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA5DA:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FF40
	dw sprite.general_purpose_46, $5050
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA5F4:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FF40
	dw sprite.general_purpose_46, $3030
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA60E:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FEE0
	dw sprite.general_purpose_46, $6060
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw sprite.unknown_5C, $0000
	dw !initcommand_success

DATA_FFA62C:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FEE0
	dw sprite.general_purpose_46, $4040
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA646:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $0100
	dw sprite.general_purpose_46, $4040
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_success

DATA_FFA65C:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FF60
	dw sprite.general_purpose_46, $D070
	dw sprite.max_y_speed, $0070
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA676:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FF20
	dw sprite.general_purpose_46, $FF00
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0204
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA690:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FF00
	dw sprite.general_purpose_46, $C048
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0203
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA6AA:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FF00
	dw sprite.general_purpose_46, $C010
	dw sprite.max_y_speed, $0068
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA6C4:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $10B0
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_success

DATA_FFA6DA:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $B018
	dw sprite.max_y_speed, $0068
	dw sprite.general_purpose_4A, $0302
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA6F4:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $B038
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0204
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA70E:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $4040
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA728:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $4040
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_success

DATA_FFA73E:
	dw sprite.type, !sprite_shuri
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw sprite.state, $0000
	dw sprite.movement_state, $0029
	dw sprite.unknown_5C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $000B
	dw !initcommand_set_animation, $0181
	dw !initcommand_success

DATA_FFA764:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $00C0
	dw sprite.max_y_speed, $0180
	dw !initcommand_success

DATA_FFA772:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $00C0
	dw sprite.max_y_speed, $FE80
	dw !initcommand_success

DATA_FFA780:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $FF40
	dw sprite.max_y_speed, $0180
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA792:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $FF40
	dw sprite.max_y_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA7A4:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $0180
	dw sprite.max_y_speed, $0200
	dw !initcommand_success

DATA_FFA7B2:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $FE80
	dw sprite.max_y_speed, $0200
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA7C4:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $0180
	dw sprite.max_y_speed, $FE00
	dw !initcommand_success

DATA_FFA7D2:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $FE80
	dw sprite.max_y_speed, $FE00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA7E4:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $0100
	dw sprite.max_y_speed, $0200
	dw !initcommand_success

DATA_FFA7F2:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $FF00
	dw sprite.max_y_speed, $FE00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA804:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $01E0
	dw sprite.max_y_speed, $0190
	dw !initcommand_success

DATA_FFA812:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $FE20
	dw sprite.max_y_speed, $FE70
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA824:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $FE00
	dw sprite.max_y_speed, $0080
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA836:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.max_x_speed, $0200
	dw sprite.max_y_speed, $0080
	dw !initcommand_success

DATA_FFA844:
	dw !initcommand_load_subconfig, DATA_FFA73E
	dw sprite.movement_state, $0009
	dw sprite.unknown_5C, $0001
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA856:
	dw !initcommand_load_subconfig, DATA_FFA844
	dw sprite.general_purpose_42, DATA_FFA8B6
	dw sprite.general_purpose_4E, $00FF
	dw !initcommand_success

DATA_FFA864:
	dw !initcommand_load_subconfig, DATA_FFA844
	dw sprite.general_purpose_42, DATA_FFA8CE
	dw sprite.general_purpose_4E, $00FF
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA876:
	dw !initcommand_load_subconfig, DATA_FFA844
	dw sprite.general_purpose_42, DATA_FFA8E6
	dw sprite.general_purpose_4E, $00FF
	dw !initcommand_success

DATA_FFA884:
	dw !initcommand_load_subconfig, DATA_FFA844
	dw sprite.general_purpose_42, DATA_FFA8FE
	dw sprite.general_purpose_4E, $00FF
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA896:
	dw !initcommand_load_subconfig, DATA_FFA844
	dw sprite.general_purpose_42, DATA_FFA916
	dw sprite.general_purpose_4E, $00FF
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFA8A8:
	dw !initcommand_load_subconfig, DATA_FFA844
	dw sprite.general_purpose_42, DATA_FFA92E
	dw sprite.general_purpose_4E, $00FF
	dw !initcommand_success

;shuri scripts (uses same language as screech/king zing chases)
DATA_FFA8B6:
	dw $FFFE, $0180
DATA_FFA8BA:
	dw $06A0, $0468
	dw $06F0, $04B0
	dw $0740, $0468
	dw $06F0, $0420
	dw $FFFD, DATA_FFA8BA

DATA_FFA8CE:
	dw $FFFE, $0180
DATA_FFA8D2:
	dw $0740, $0468
	dw $06F0, $0420
	dw $06A0, $0468
	dw $06F0, $04B0
	dw $FFFD, DATA_FFA8D2

DATA_FFA8E6:
	dw $FFFE, $0180
DATA_FFA8EA:
	dw $0660, $01C8
	dw $06D0, $0250
	dw $0740, $01C8
	dw $06D0, $0140
	dw $FFFD, DATA_FFA8EA

DATA_FFA8FE:
	dw $FFFE, $0180
DATA_FFA902:
	dw $06D0, $0250
	dw $0740, $01C8
	dw $06D0, $0140
	dw $0660, $01C8
	dw $FFFD, DATA_FFA902

DATA_FFA916:
	dw $FFFE, $0180
DATA_FFA91A:
	dw $0740, $01C8
	dw $06D0, $0140
	dw $0660, $01C8
	dw $06D0, $0250
	dw $FFFD, DATA_FFA91A

DATA_FFA92E:
	dw $FFFE, $0180
DATA_FFA932:
	dw $06D0, $0140
	dw $0660, $01C8
	dw $06D0, $0250
	dw $0740, $01C8
	dw $FFFD, DATA_FFA932

DATA_FFA946:
	dw sprite.type, !sprite_shuri
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw !initcommand_set_alt_palette, $00B0
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0180
	dw sprite.state, $0001
	dw sprite.movement_state, $0007
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw sprite.ground_y_position, $8080
	dw sprite.ground_distance, $8080
	dw sprite.terrain_interaction, $003C
	dw sprite.unknown_22, $0180
	dw sprite.unknown_28, $0020
	dw !initcommand_success

DATA_FFA98C:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw sprite.unknown_28, $001C
	dw !initcommand_success

DATA_FFA996:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA9A0:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw sprite.unknown_28, $0014
	dw !initcommand_success

DATA_FFA9AA:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw sprite.ground_distance, $00FF
	dw sprite.unknown_28, $001C
	dw !initcommand_success

DATA_FFA9B8:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw sprite.ground_distance, $FF00
	dw sprite.unknown_28, $001C
	dw !initcommand_success

DATA_FFA9C6:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw !initcommand_set_oam, $6000
	dw sprite.ground_y_position, $8000
	dw sprite.unknown_28, $001C
	dw !initcommand_success

DATA_FFA9D8:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw sprite.terrain_interaction, $002D
	dw sprite.ground_y_position, $8000
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFA9EA:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw !initcommand_set_oam, $6000
	dw sprite.ground_distance, $2080
	dw sprite.ground_y_position, $6080
	dw sprite.terrain_interaction, $001E
	dw !initcommand_success

DATA_FFAA00:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw !initcommand_set_oam, $6000
	dw sprite.ground_distance, $2070
	dw sprite.ground_y_position, $8040
	dw sprite.terrain_interaction, $001E
	dw !initcommand_success

DATA_FFAA16:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw !initcommand_set_oam, $6000
	dw sprite.ground_distance, $2080
	dw sprite.ground_y_position, $4080
	dw sprite.terrain_interaction, $001E
	dw !initcommand_success

DATA_FFAA2C:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw !initcommand_set_oam, $6000
	dw sprite.ground_distance, $2080
	dw sprite.ground_y_position, $8040
	dw sprite.terrain_interaction, $001E
	dw !initcommand_success

DATA_FFAA42:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw !initcommand_set_oam, $6000
	dw sprite.ground_distance, $4040
	dw sprite.ground_y_position, $6040
	dw sprite.terrain_interaction, $001E
	dw !initcommand_success

DATA_FFAA58:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw sprite.ground_distance, $6060
	dw sprite.ground_y_position, $6060
	dw sprite.terrain_interaction, $001E
	dw !initcommand_success

DATA_FFAA6A:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw sprite.ground_distance, $6060
	dw sprite.ground_y_position, $4040
	dw sprite.terrain_interaction, $003C
	dw !initcommand_success

DATA_FFAA7C:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw sprite.ground_distance, $6060
	dw sprite.ground_y_position, $7070
	dw sprite.terrain_interaction, $002D
	dw !initcommand_success

DATA_FFAA8E:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw sprite.ground_distance, $4040
	dw sprite.ground_y_position, $4060
	dw sprite.terrain_interaction, $002D
	dw !initcommand_success

DATA_FFAAA0:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw !initcommand_set_oam, $6000
	dw sprite.ground_distance, $4040
	dw sprite.ground_y_position, $8000
	dw sprite.terrain_interaction, $001E
	dw !initcommand_success

DATA_FFAAB6:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw !initcommand_set_oam, $6000
	dw sprite.unknown_28, $0018
	dw !initcommand_success

DATA_FFAAC4:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw !initcommand_set_oam, $6000
	dw sprite.unknown_28, $001C
	dw !initcommand_success

DATA_FFAAD2:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw !initcommand_set_oam, $6000
	dw sprite.ground_distance, $4040
	dw sprite.ground_y_position, $8080
	dw sprite.terrain_interaction, $001E
	dw !initcommand_success

DATA_FFAAE8:
	dw sprite.type, !sprite_tntbarrel
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0001
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02E5
	dw !initcommand_success

DATA_FFAB16:
	dw sprite.type, !sprite_scroll_and_float_barrel
	dw !initcommand_load_subconfig, DATA_FF25EA
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_alt_palette, $002C
	dw !initcommand_set_animation, $02C3
	dw !initcommand_success

DATA_FFAB30:
	dw sprite.type, !sprite_dkbarrel
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0001
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02E1
	dw !initcommand_success

DATA_FFAB5E:
	dw sprite.type, !sprite_dkbarrel
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0004
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02E1
	dw !initcommand_success

DATA_FFAB80:
	dw !initcommand_load_subconfig, DATA_FFAB5E
	dw !initcommand_success

DATA_FFAB86:
	dw !initcommand_load_subconfig, DATA_FFAB5E
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FFAB90:
	dw !initcommand_load_subconfig, DATA_FFAB5E
	dw sprite.state, $0006
	dw !initcommand_success

;unused?
DATA_FFAB9A:
	dw sprite.type, !sprite_unknown_00A4
	dw sprite.state, $0000
	dw sprite.general_purpose_42, $0606
	dw !initcommand_success

DATA_FFABA8:
	dw sprite.type, !sprite_unknown_00A4
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $003C
	dw sprite.general_purpose_42, $0606
	dw !initcommand_success

DATA_FFABBA:
	dw sprite.type, !sprite_unknown_00A4
	dw sprite.state, $0002
	dw sprite.general_purpose_42, $0606
	dw !initcommand_success

DATA_FFABC8:
	dw sprite.type, !sprite_water_level_changer
	dw sprite.state, $0000
	dw sprite.y_speed, $FF00
	dw sprite.general_purpose_42, $8080
	dw sprite.movement_state, $0000
	dw sprite.general_purpose_4C, $0000
	dw !initcommand_success

DATA_FFABE2:
	dw sprite.type, !sprite_water_level_changer
	dw sprite.state, $0001
	dw sprite.y_speed, $FF00
	dw sprite.general_purpose_42, $8080
	dw sprite.movement_state, $0000
	dw sprite.general_purpose_4C, $0000
	dw !initcommand_success

DATA_FFABFC:
	dw sprite.type, !sprite_water_level_changer
	dw sprite.state, $0000
	dw sprite.y_speed, $FF00
	dw sprite.general_purpose_42, $8080
	dw sprite.movement_state, $0001
	dw sprite.general_purpose_4C, $0000
	dw !initcommand_success

DATA_FFAC16:
	dw sprite.type, !sprite_water_level_changer
	dw sprite.state, $0001
	dw sprite.y_speed, $FF00
	dw sprite.general_purpose_42, $8080
	dw sprite.movement_state, $0001
	dw sprite.general_purpose_4C, $0000
	dw !initcommand_success

DATA_FFAC30:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0710
	dw sprite.general_purpose_4E, $06F0
	dw sprite.y_speed, $FF80
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFAC46:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $06F0
	dw sprite.general_purpose_4E, $0560
	dw sprite.y_speed, $FD80
	dw sprite.general_purpose_42, $C0C0
	dw !initcommand_success

DATA_FFAC5C:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0560
	dw sprite.general_purpose_4E, $0430
	dw sprite.y_speed, $FD80
	dw !initcommand_success

DATA_FFAC6E:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0430
	dw sprite.general_purpose_4E, $0470
	dw sprite.y_speed, $0140
	dw !initcommand_success

DATA_FFAC80:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0470
	dw sprite.general_purpose_4E, $0388
	dw sprite.y_speed, $FE00
	dw !initcommand_success

DATA_FFAC92:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0388
	dw sprite.general_purpose_4E, $0310
	dw sprite.y_speed, $FE80
	dw sprite.general_purpose_42, $C080
	dw !initcommand_success

DATA_FFACA8:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0310
	dw sprite.general_purpose_4E, $0148
	dw sprite.y_speed, $FC00
	dw !initcommand_success

DATA_FFACBA:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0148
	dw sprite.general_purpose_4E, $02C0
	dw sprite.y_speed, $0200
	dw !initcommand_success

DATA_FFACCC:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $02C0
	dw sprite.general_purpose_4E, $0310
	dw sprite.y_speed, $0280
	dw !initcommand_success

DATA_FFACDE:
	dw !initcommand_load_subconfig, DATA_FFAC16
	dw sprite.general_purpose_4C, $07B8
	dw sprite.general_purpose_4E, $0750
	dw !initcommand_success

DATA_FFACEC:
	dw !initcommand_load_subconfig, DATA_FFAC16
	dw sprite.general_purpose_4C, $0750
	dw sprite.general_purpose_4E, $0560
	dw sprite.y_speed, $FD80
	dw !initcommand_success

DATA_FFACFE:
	dw !initcommand_load_subconfig, DATA_FFAC16
	dw sprite.general_purpose_4C, $0560
	dw sprite.general_purpose_4E, $0570
	dw sprite.y_speed, $0100
	dw !initcommand_success

DATA_FFAD10:
	dw !initcommand_load_subconfig, DATA_FFAC16
	dw sprite.general_purpose_4C, $0570
	dw sprite.general_purpose_4E, $0550
	dw !initcommand_success

DATA_FFAD1E:
	dw !initcommand_load_subconfig, DATA_FFABFC
	dw sprite.general_purpose_4C, $0550
	dw sprite.general_purpose_4E, $04E0
	dw sprite.y_speed, $FD80
	dw !initcommand_success

DATA_FFAD30:
	dw !initcommand_load_subconfig, DATA_FFAC16
	dw sprite.general_purpose_4C, $04E0
	dw sprite.general_purpose_4E, $01E0
	dw sprite.y_speed, $FD80
	dw !initcommand_success

DATA_FFAD42:
	dw !initcommand_load_subconfig, DATA_FFABFC
	dw sprite.general_purpose_4C, $01E0
	dw sprite.general_purpose_4E, $0150
	dw sprite.y_speed, $FD80
	dw !initcommand_success

DATA_FFAD54:
	dw !initcommand_load_subconfig, DATA_FFAC16
	dw sprite.general_purpose_4C, $0150
	dw sprite.general_purpose_4E, $0230
	dw sprite.y_speed, $0180
	dw !initcommand_success

DATA_FFAD66:
	dw !initcommand_load_subconfig, DATA_FFAC16
	dw sprite.general_purpose_4C, $0230
	dw sprite.general_purpose_4E, $0330
	dw sprite.y_speed, $0380
	dw !initcommand_success

DATA_FFAD78:
	dw !initcommand_load_subconfig, DATA_FFAC16
	dw sprite.general_purpose_4C, $0330
	dw sprite.general_purpose_4E, $0358
	dw sprite.general_purpose_42, $4040
	dw !initcommand_success

DATA_FFAD8A:
	dw !initcommand_load_subconfig, DATA_FFAC16
	dw sprite.general_purpose_4C, $0358
	dw sprite.general_purpose_4E, $01F8
	dw sprite.y_speed, $FD80
	dw !initcommand_success

DATA_FFAD9C:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $0878
	dw sprite.y_speed, $0140
	dw !initcommand_success

DATA_FFADAA:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $0100
	dw sprite.y_speed, $FE40
	dw !initcommand_success

DATA_FFADB8:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $0138
	dw sprite.y_speed, $FEC0
	dw !initcommand_success

DATA_FFADC6:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $0210
	dw sprite.y_speed, $0380
	dw !initcommand_success

DATA_FFADD4:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $0850
	dw sprite.y_speed, $FD80
	dw !initcommand_success

DATA_FFADE2:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $06F0
	dw sprite.y_speed, $FF00
	dw !initcommand_success

DATA_FFADF0:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $0380
	dw sprite.y_speed, $FD80
	dw !initcommand_success

DATA_FFADFE:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $01D0
	dw sprite.y_speed, $FF00
	dw !initcommand_success

DATA_FFAE0C:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $05B0
if !version == 0
	dw sprite.general_purpose_4E, $06F8
else
	dw sprite.general_purpose_4E, $05E0
endif
	dw sprite.y_speed, $0280
if !version == 0
	dw sprite.general_purpose_42, $A0A0
endif
	dw !initcommand_success

DATA_FFAE1E:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $05B0
	dw sprite.general_purpose_4E, $06F8
	dw sprite.y_speed, $0280
	dw !initcommand_success


DATA_FFAE30:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $06F8
	dw sprite.general_purpose_4E, $0630
	dw sprite.y_speed, $FE80
	dw !initcommand_success

DATA_FFAE42:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0630
	dw sprite.general_purpose_4E, $04E0
	dw sprite.y_speed, $FC00
	dw !initcommand_success

DATA_FFAE54:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $04E0
	dw sprite.general_purpose_4E, $0540
	dw sprite.y_speed, $0200
	dw !initcommand_success

DATA_FFAE66:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0540
	dw sprite.general_purpose_4E, $02B0
	dw sprite.y_speed, $FD00
	dw sprite.general_purpose_42, $4040
	dw !initcommand_success

DATA_FFAE7C:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $02B0
	dw sprite.general_purpose_4E, $0300
	dw sprite.y_speed, $0100
	dw !initcommand_success

DATA_FFAE8E:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0300
	dw sprite.general_purpose_4E, $0350
	dw sprite.y_speed, $0200
	dw !initcommand_success

DATA_FFAEA0:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0350
	dw sprite.general_purpose_4E, $0180
	dw sprite.y_speed, $FC80
	dw !initcommand_success

DATA_FFAEB2:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0180
	dw sprite.general_purpose_4E, $0208
	dw sprite.y_speed, $0280
	dw !initcommand_success

DATA_FFAEC4:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0208
	dw sprite.general_purpose_4E, $0130
	dw sprite.y_speed, $FB00
	dw sprite.general_purpose_42, $4040
	dw !initcommand_success

DATA_FFAEDA:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0130
	dw sprite.general_purpose_4E, $0170
	dw sprite.y_speed, $0200
	dw !initcommand_success

DATA_FFAEEC:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0170
	dw sprite.general_purpose_4E, $0224
	dw sprite.y_speed, $0140
	dw sprite.general_purpose_42, $8080
	dw !initcommand_success

DATA_FFAF02:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0224
	dw sprite.general_purpose_4E, $02D0
	dw sprite.y_speed, $0200
	dw !initcommand_success

DATA_FFAF14:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $02D0
	dw sprite.general_purpose_4E, $0370
	dw sprite.y_speed, $0380
	dw !initcommand_success

DATA_FFAF26:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0370
	dw sprite.general_purpose_4E, $0448
	dw sprite.y_speed, $00C0
	dw !initcommand_success

DATA_FFAF38:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $1700
	dw sprite.general_purpose_4E, $14A0
	dw sprite.y_speed, $FF00
	dw sprite.general_purpose_42, $0080
	dw !initcommand_success

DATA_FFAF4E:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $14A0
	dw sprite.general_purpose_4E, $14A0
	dw sprite.y_speed, $FD00
	dw !initcommand_success

DATA_FFAF60:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $14A0
	dw sprite.general_purpose_4E, $1280
	dw sprite.y_speed, $FF60
	dw sprite.general_purpose_42, $FF00
	dw !initcommand_success

DATA_FFAF76:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $14A0
	dw sprite.general_purpose_4E, $1280
	dw sprite.y_speed, $FF60
	dw sprite.general_purpose_42, $8000
	dw !initcommand_success

DATA_FFAF8C:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $1280
	dw sprite.general_purpose_4E, $1280
	dw sprite.y_speed, $FD00
	dw sprite.general_purpose_42, $8000
	dw !initcommand_success

DATA_FFAFA2:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $1280
	dw sprite.general_purpose_4E, $0EE0
	dw sprite.y_speed, $FF60
	dw sprite.general_purpose_42, $FF30
	dw !initcommand_success

DATA_FFAFB8:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $1280
	dw sprite.general_purpose_4E, $0EE0
	dw sprite.y_speed, $FF60
	dw sprite.general_purpose_42, $FF00
	dw !initcommand_success

DATA_FFAFCE:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0EE0
	dw sprite.general_purpose_4E, $0EE0
	dw sprite.y_speed, $FD00
	dw sprite.general_purpose_42, $FFC0
	dw !initcommand_success

DATA_FFAFE4:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $1700
	dw sprite.general_purpose_4E, $14A0
	dw sprite.y_speed, $FF00
	dw sprite.general_purpose_42, $C000
	dw !initcommand_success

DATA_FFAFFA:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0EE0
	dw sprite.general_purpose_4E, $0BA8
	dw sprite.y_speed, $FF40
	dw sprite.general_purpose_42, $FF00
	dw !initcommand_success

DATA_FFB010:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0EE0
	dw sprite.general_purpose_4E, $0BA8
	dw sprite.y_speed, $FF40
	dw sprite.general_purpose_42, $0080
	dw !initcommand_success

DATA_FFB026:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0BA8
	dw sprite.general_purpose_4E, $0BA8
	dw sprite.y_speed, $FD00
	dw sprite.general_purpose_42, $80FF
	dw !initcommand_success

DATA_FFB03C:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0BA8
	dw sprite.general_purpose_4E, $0728
	dw sprite.y_speed, $FF40
	dw sprite.general_purpose_42, $FF80
	dw !initcommand_success

DATA_FFB052:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0728
	dw sprite.general_purpose_4E, $0728
	dw sprite.y_speed, $FD00
	dw sprite.general_purpose_42, $FFC0
	dw !initcommand_success

DATA_FFB068:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0728
	dw sprite.general_purpose_4E, $0460
	dw sprite.y_speed, $FF40
	dw sprite.general_purpose_42, $FF40
	dw !initcommand_success

DATA_FFB07E:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0728
	dw sprite.general_purpose_4E, $0460
	dw sprite.y_speed, $FF40
	dw sprite.general_purpose_42, $FF00
	dw !initcommand_success

DATA_FFB094:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0460
	dw sprite.general_purpose_4E, $0460
	dw sprite.y_speed, $FD00
	dw sprite.general_purpose_42, $FF80
	dw !initcommand_success

DATA_FFB0AA:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4C, $0460
	dw sprite.general_purpose_4E, $0280
	dw sprite.y_speed, $FFB0
	dw sprite.general_purpose_42, $FF00
	dw !initcommand_success

DATA_FFB0C0:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0460
	dw sprite.general_purpose_4E, $0280
	dw sprite.y_speed, $FFB0
	dw sprite.general_purpose_42, $00C0
	dw !initcommand_success

DATA_FFB0D6:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0460
	dw sprite.general_purpose_4E, $0280
	dw sprite.y_speed, $FFB0
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFB0EC:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0280
	dw sprite.general_purpose_4E, $0280
	dw sprite.y_speed, $FD00
	dw sprite.general_purpose_42, $80FF
	dw !initcommand_success

DATA_FFB102:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4C, $0EE0
	dw sprite.general_purpose_4E, $0EE0
	dw sprite.y_speed, $FF20
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFB118:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $26A8
	dw sprite.y_speed, $FF80
	dw !initcommand_success

DATA_FFB126:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $14F0
	dw sprite.y_speed, $FF40
	dw !initcommand_success

DATA_FFB134:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $14F0
	dw sprite.y_speed, $FD00
	dw !initcommand_success

DATA_FFB142:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $0268
	dw sprite.y_speed, $FF40
	dw !initcommand_success

DATA_FFB150:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $0268
	dw sprite.y_speed, $FF00
	dw !initcommand_success

DATA_FFB15E:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $02C8
	dw sprite.y_speed, $0180
	dw sprite.general_purpose_42, $FF00
	dw !initcommand_success

DATA_FFB170:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $0268
	dw sprite.y_speed, $FD00
	dw sprite.general_purpose_42, $4040
	dw !initcommand_success

DATA_FFB182:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $26A8
	dw sprite.y_speed, $FEC0
	dw sprite.general_purpose_42, $A000
	dw !initcommand_success

DATA_FFB194:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $14F0
	dw sprite.y_speed, $FF00
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFB1A6:
	dw !initcommand_load_subconfig, DATA_FFAC16
	dw sprite.general_purpose_4E, $0230
	dw sprite.y_speed, $0380
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFB1B8:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $01D0
	dw sprite.y_speed, $FEA0
	dw !initcommand_success

DATA_FFB1C6:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $01D0
	dw sprite.y_speed, $FD00
	dw sprite.general_purpose_42, $FF00
	dw !initcommand_success

DATA_FFB1D8:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $06F0
	dw sprite.y_speed, $FD80
	dw !initcommand_success

DATA_FFB1E6:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $02A8
	dw sprite.y_speed, $00E0
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFB1F8:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $0300
	dw sprite.y_speed, $00E0
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFB20A:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $03A8
	dw sprite.y_speed, $0120
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFB21C:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $05F0
	dw sprite.y_speed, $0180
	dw !initcommand_success

DATA_FFB22A:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $0370
	dw sprite.y_speed, $0280
	dw !initcommand_success

DATA_FFB238:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $02F0
	dw sprite.y_speed, $0280
	dw !initcommand_success

DATA_FFB246:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $0380
	dw sprite.y_speed, $0300
	dw !initcommand_success

DATA_FFB254:
	dw !initcommand_load_subconfig, DATA_FFABE2
	dw sprite.general_purpose_4E, $02F0
	dw sprite.y_speed, $0380
	dw !initcommand_success

DATA_FFB262:
	dw !initcommand_load_subconfig, DATA_FFABFC
	dw sprite.general_purpose_4C, $04E0
	dw sprite.general_purpose_4E, $01E0
	dw sprite.y_speed, $FD80
	dw !initcommand_success

DATA_FFB274:
	dw sprite.type, !sprite_sprite_marker
	dw !initcommand_success

DATA_FFB27A:
	dw !initcommand_load_subconfig, DATA_FFB2A6
	dw !initcommand_set_alt_palette, $0019
	dw sprite.max_y_speed, $FF00
	dw sprite.general_purpose_42, $0002
	dw !initcommand_success

DATA_FFB28C:
	dw !initcommand_load_subconfig, DATA_FFB2A6
	dw !initcommand_set_alt_palette, $001A
	dw sprite.max_y_speed, $FEC0
	dw sprite.general_purpose_42, $0003
	dw !initcommand_success

DATA_FFB29E:
	dw !initcommand_set_alt_palette, $0018
	dw sprite.general_purpose_42, $0001
DATA_FFB2A6:
	dw sprite.type, !sprite_extra_life_balloon
	dw sprite.constants_address, DATA_FF021C
	dw sprite.render_order, $00D4
	dw sprite.state, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0000
	dw sprite.max_y_speed, $FF40
	dw sprite.x_sub_position, $0001
	dw sprite.movement_state, $0F0C
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $02C0
	dw !initcommand_success

DATA_FFB2DC:
	dw !initcommand_load_subconfig, DATA_FFB29E
	dw sprite.x_sub_position, $005A
	dw !initcommand_success

DATA_FFB2E6:
	dw !initcommand_load_subconfig, DATA_FFB29E
	dw sprite.max_y_speed, $0000
	dw sprite.x_sub_position, $8000
	dw !initcommand_success

DATA_FFB2F4:
	dw !initcommand_load_subconfig, DATA_FFB29E
	dw sprite.x_sub_position, $000A
	dw !initcommand_success

DATA_FFB2FE:
	dw !initcommand_load_subconfig, DATA_FFB29E
	dw sprite.x_sub_position, $003C
	dw !initcommand_success

DATA_FFB308:
	dw !initcommand_load_subconfig, DATA_FFB29E
	dw sprite.x_sub_position, $014A
	dw !initcommand_success

DATA_FFB312:
	dw !initcommand_load_subconfig, DATA_FFB29E
	dw sprite.max_y_speed, $0000
	dw sprite.x_sub_position, $8000
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FFB324:
	dw !initcommand_load_subconfig, DATA_FFB29E
	dw sprite.x_sub_position, $00A5
	dw !initcommand_success

DATA_FFB32E:
	dw !initcommand_load_subconfig, DATA_FFB29E
	dw sprite.x_sub_position, $00D2
	dw !initcommand_success

DATA_FFB338:
	dw !initcommand_load_subconfig, DATA_FFB29E
	dw sprite.x_sub_position, $0168
	dw !initcommand_success

DATA_FFB342:
	dw !initcommand_load_subconfig, DATA_FFB29E
	dw sprite.max_y_speed, $0000
	dw sprite.x_sub_position, $8000
	dw sprite.state, $0001
	dw !initcommand_success

DATA_FFB354:
	dw !initcommand_load_subconfig, DATA_FFB27A
	dw sprite.x_sub_position, $003C
	dw !initcommand_success

DATA_FFB35E:
	dw !initcommand_load_subconfig, DATA_FFB27A
	dw sprite.max_y_speed, $0000
	dw sprite.x_sub_position, $8000
	dw !initcommand_success

DATA_FFB36C:
	dw !initcommand_load_subconfig, DATA_FFB27A
	dw sprite.x_sub_position, $014A
	dw !initcommand_success

DATA_FFB376:
	dw !initcommand_load_subconfig, DATA_FFB27A
	dw sprite.max_y_speed, $0000
	dw sprite.unknown_1C, $C000
	dw sprite.x_sub_position, $8000
	dw !initcommand_success

DATA_FFB388:
	dw !initcommand_load_subconfig, DATA_FFB28C
	dw sprite.unknown_1C, $C000
	dw sprite.max_y_speed, $0000
	dw sprite.x_sub_position, $8000
	dw !initcommand_success

DATA_FFB39A:
	dw !initcommand_load_subconfig, DATA_FFB28C
	dw sprite.x_sub_position, $012C
	dw !initcommand_success

DATA_FFB3A4:
	dw sprite.type, !sprite_puftup
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw sprite.interaction_flags, $0020
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_y_speed, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0183
	dw sprite.movement_state, $0000
	dw !initcommand_success

DATA_FFB3D6:
	dw !initcommand_load_subconfig, DATA_FFB3A4
	dw !initcommand_set_alt_palette, $0032
	dw !initcommand_success

DATA_FFB3E0:
	dw !initcommand_load_subconfig, DATA_FFB3A4
	dw !initcommand_set_alt_palette, $00B1
	dw !initcommand_success

DATA_FFB3EA:
	dw !initcommand_load_subconfig, DATA_FFB3A4
	dw !initcommand_set_alt_palette, $00BA
	dw !initcommand_success

DATA_FFB3F4:
	dw !initcommand_load_subconfig, DATA_FFB3E0
	dw sprite.parameter, DATA_FFB619
	dw sprite.ground_distance, $0000
	dw sprite.ground_y_position, $0100
	dw !initcommand_success

DATA_FFB406:
	dw !initcommand_load_subconfig, DATA_FFB3E0
	dw sprite.parameter, DATA_FFB619
	dw sprite.ground_distance, $0000
	dw sprite.ground_y_position, $0140
	dw !initcommand_success

DATA_FFB418:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB62C
	dw !initcommand_success

DATA_FFB422:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB62C
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFB430:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB665
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFB43E:
	dw !initcommand_load_subconfig, DATA_FFB3E0
	dw !initcommand_set_oam, $6000
	dw sprite.parameter, DATA_FFB66F
	dw sprite.ground_distance, $0000
	dw sprite.ground_y_position, $0180
	dw !initcommand_success

DATA_FFB454:
	dw !initcommand_load_subconfig, DATA_FFB3EA
	dw !initcommand_set_oam, $6000
	dw sprite.parameter, DATA_FFB66F
	dw sprite.ground_distance, $0001
	dw sprite.ground_y_position, $0180
	dw !initcommand_success

DATA_FFB46A:
	dw !initcommand_load_subconfig, DATA_FFB3EA
	dw sprite.parameter, DATA_FFB66F
	dw sprite.ground_distance, $0001
	dw sprite.ground_y_position, $0180
	dw !initcommand_success

DATA_FFB47C:
	dw !initcommand_load_subconfig, DATA_FFB3E0
	dw sprite.parameter, DATA_FFB66F
	dw sprite.ground_distance, $0000
	dw sprite.ground_y_position, $0180
	dw !initcommand_success

DATA_FFB48E:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB636
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFB49C:
	dw !initcommand_load_subconfig, DATA_FFB3E0
	dw !initcommand_set_oam, $6000
	dw sprite.parameter, DATA_FFB682
	dw sprite.ground_distance, $0000
	dw sprite.ground_y_position, $0280
	dw !initcommand_success

DATA_FFB4B2:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB695
	dw !initcommand_success

DATA_FFB4BC:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB604
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFB4CA:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB69C
	dw !initcommand_success

DATA_FFB4D4:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB6AF
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFB4E2:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB6BF
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFB4F0:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB6CF
	dw !initcommand_success

DATA_FFB4FA:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB75D
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFB508:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB772
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFB516:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB78A
	dw !initcommand_success

DATA_FFB520:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB772
	dw !initcommand_success

DATA_FFB52A:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB79F
	dw !initcommand_success

DATA_FFB534:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB7B4
	dw !initcommand_success

DATA_FFB53E:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB7D8
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFB54C:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB7FC
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFB55A:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB823
	dw !initcommand_success

DATA_FFB564:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB84A
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFB572:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB871
	dw !initcommand_success

DATA_FFB57C:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB895
	dw !initcommand_success

DATA_FFB586:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFB8B9
	dw !initcommand_success

DATA_FFB590:
	dw !initcommand_load_subconfig, DATA_FFB3E0
	dw !initcommand_set_oam, $6000
	dw sprite.parameter, DATA_FFB6EB
	dw sprite.ground_distance, $0000
	dw sprite.ground_y_position, $0200
	dw !initcommand_success

DATA_FFB5A6:
	dw !initcommand_load_subconfig, DATA_FFB3E0
	dw sprite.parameter, DATA_FFB6FE
	dw sprite.ground_distance, $0000
	dw sprite.ground_y_position, $0200
	dw !initcommand_success

DATA_FFB5B8:
	dw !initcommand_load_subconfig, DATA_FFB3E0
	dw !initcommand_set_oam, $6000
	dw sprite.parameter, DATA_FFB711
	dw sprite.ground_distance, $0000
	dw sprite.ground_y_position, $0200
	dw !initcommand_success

DATA_FFB5CE:
	dw !initcommand_load_subconfig, DATA_FFB3E0
	dw sprite.parameter, DATA_FFB724
	dw sprite.ground_distance, $0000
	dw sprite.ground_y_position, $0200
	dw !initcommand_success

DATA_FFB5E0:
	dw !initcommand_load_subconfig, DATA_FFB3E0
	dw sprite.parameter, DATA_FFB737
	dw sprite.ground_distance, $0000
	dw sprite.ground_y_position, $02C0
	dw !initcommand_success

DATA_FFB5F2:
	dw !initcommand_load_subconfig, DATA_FFB3E0
	dw sprite.parameter, DATA_FFB74A
	dw sprite.ground_distance, $0000
	dw sprite.ground_y_position, $0200
	dw !initcommand_success

;puftup scripts
DATA_FFB604:
	db $FA : dw DATA_FFB8E7
	db $FC : dw $001E
DATA_FFB60A:
	db $FD : dw $0186
	db $FC : dw $0258
	db $FD : dw $0187
	db $FC : dw $003C
	db $FE : dw DATA_FFB60A

DATA_FFB619:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FC : dw $0028
	db $FA : dw DATA_FFB942
	db $10 : dw $0402
	db $FD : dw $0188
	db $FF

DATA_FFB62C:
	db $FA : dw DATA_FFB8F7
	db $FC : dw $003C
	db $FD : dw $0186
	db $FF

DATA_FFB636:
	db $FA : dw DATA_FFB8E7
	db $FC : dw $0168
	db $FA : dw DATA_FFB8F7
	db $FC : dw $010E
	db $FA : dw DATA_FFB8DD
	db $FD : dw $0186
	db $FF

	db $FA : dw DATA_FFB8E7
	db $FC : dw $003C
	db $FA : dw DATA_FFB8F7
	db $FC : dw $00F0
	db $FD : dw $0186
	db $FC : dw $0028
	db $FA : dw DATA_FFB8E7
	db $10 : dw $0602
	db $FD : dw $0188
	db $FF

DATA_FFB665:
	db $FA : dw DATA_FFB8F7
	db $FC : dw $001E
	db $FD : dw $0186
	db $FF

DATA_FFB66F:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FC : dw $000A
	db $FA : dw DATA_FFB942
	db $10 : dw $0402
	db $FD : dw $0188
	db $FF

DATA_FFB682:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FC : dw $0001
	db $FA : dw DATA_FFB948
	db $10 : dw $0200
	db $FD : dw $0188
	db $FF

DATA_FFB695:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FF

DATA_FFB69C:
	db $FA : dw DATA_FFB8F7
	db $FC : dw $003C
	db $FD : dw $0186
	db $FC : dw $00B4
	db $FA : dw DATA_FFB8DD
	db $FA : dw DATA_FFB8E7
	db $FF

DATA_FFB6AF:
	db $FA : dw DATA_FFB8F7
	db $FC : dw $003C
	db $FD : dw $0186
	db $FC : dw $005A
	db $FD : dw $0187
	db $FF

DATA_FFB6BF:
	db $FA : dw DATA_FFB8F7
	db $FC : dw $001E
	db $FD : dw $0186
	db $FC : dw $005A
	db $FD : dw $0187
	db $FF

DATA_FFB6CF:
	db $FA : dw DATA_FFB8F7
	db $FC : dw $003C
	db $FD : dw $0186
	db $FC : dw $0064
	db $FA : dw DATA_FFB8DD
	db $FA : dw DATA_FFB8E7
	db $FC : dw $003C
	db $FD : dw $0187
	db $FA : dw DATA_FFB904
	db $FF

DATA_FFB6EB:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FC : dw $000F
	db $FA : dw DATA_FFB94E
	db $10 : dw $0200
	db $FD : dw $0188
	db $FF

DATA_FFB6FE:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FC : dw $001E
	db $FA : dw DATA_FFB94E
	db $10 : dw $0200
	db $FD : dw $0188
	db $FF

DATA_FFB711:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FC : dw $002D
	db $FA : dw DATA_FFB954
	db $10 : dw $0200
	db $FD : dw $0188
	db $FF

DATA_FFB724:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FC : dw $001E
	db $FA : dw DATA_FFB954
	db $10 : dw $0200
	db $FD : dw $0188
	db $FF

DATA_FFB737:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FC : dw $001E
	db $FA : dw DATA_FFB95A
	db $10 : dw $0200
	db $FD : dw $0188
	db $FF

DATA_FFB74A:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FC : dw $001E
	db $FA : dw DATA_FFB960
	db $10 : dw $0201
	db $FD : dw $0188
	db $FF

DATA_FFB75D:
	db $FD : dw $0186
	db $FA : dw DATA_FFB8F7
	db $FC : dw $006E
	db $FD : dw $0187
	db $FA : dw DATA_FFB904
	db $FC : dw $006D
	db $FE : dw DATA_FFB75D

DATA_FFB772:
	db $FA : dw DATA_FFB8F7
DATA_FFB775:
	db $2A : dw $FF70
	db $FD : dw $0186
	db $FC : dw $0050
	db $2A : dw $0090
	db $FD : dw $0187
	db $FC : dw $004F
	db $FE : dw DATA_FFB775

DATA_FFB78A:
	db $FD : dw $0186
	db $FA : dw DATA_FFB8F7
DATA_FFB790:
	db $2A : dw $FF70
	db $FC : dw $0050
	db $2A : dw $0090
	db $FC : dw $004F
	db $FE : dw DATA_FFB790

DATA_FFB79F:
	db $FD : dw $0186
	db $FA : dw DATA_FFB935
	db $FC : dw $0078
	db $FD : dw $0187
	db $FA : dw DATA_FFB91B
	db $FC : dw $0077
	db $FE : dw DATA_FFB79F

DATA_FFB7B4:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FA : dw DATA_FFB911
DATA_FFB7BD:
	db $26 : dw $0080
	db $FC : dw $0062
	db $FD : dw $0185
	db $FC : dw $0016
	db $26 : dw $FF80
	db $FC : dw $006C
	db $FD : dw $0184
	db $FC : dw $000B
	db $FE : dw DATA_FFB7BD

DATA_FFB7D8:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FA : dw DATA_FFB911
DATA_FFB7E1:
	db $26 : dw $FF80
	db $FC : dw $0062
	db $FD : dw $0185
	db $FC : dw $0016
	db $26 : dw $0080
	db $FC : dw $006C
	db $FD : dw $0184
	db $FC : dw $000B
	db $FE : dw DATA_FFB7E1

DATA_FFB7FC:
	db $FA : dw DATA_FFB8E7
	db $FA : dw DATA_FFB911
DATA_FFB802:
	db $FD : dw $0186
	db $26 : dw $FFA0
	db $FC : dw $004A
	db $FD : dw $0185
	db $FC : dw $002E
	db $FD : dw $0186
	db $26 : dw $0060
	db $FC : dw $004A
	db $FD : dw $0185
	db $FC : dw $002D
	db $FE : dw DATA_FFB802

DATA_FFB823:
	db $FA : dw DATA_FFB8E7
	db $FA : dw DATA_FFB911
DATA_FFB829:
	db $FD : dw $0186
	db $26 : dw $0080
	db $FC : dw $004A
	db $FD : dw $0185
	db $FC : dw $002E
	db $FD : dw $0186
	db $26 : dw $FF80
	db $FC : dw $004A
	db $FD : dw $0185
	db $FC : dw $002D
	db $FE : dw DATA_FFB829

DATA_FFB84A:
	db $FA : dw DATA_FFB8E7
	db $FA : dw DATA_FFB911
DATA_FFB850:
	db $FD : dw $0186
	db $26 : dw $FF80
	db $FC : dw $004A
	db $FD : dw $0185
	db $FC : dw $002E
	db $FD : dw $0186
	db $26 : dw $0080
	db $FC : dw $004A
	db $FD : dw $0185
	db $FC : dw $002D
	db $FE : dw DATA_FFB850

DATA_FFB871:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FA : dw DATA_FFB911
DATA_FFB87A:
	db $26 : dw $0090
	db $FC : dw $003A
	db $FD : dw $0185
	db $FC : dw $0016
	db $26 : dw $FF70
	db $FC : dw $0044
	db $FD : dw $0184
	db $FC : dw $000B
	db $FE : dw DATA_FFB87A

DATA_FFB895:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FA : dw DATA_FFB911
DATA_FFB89E:
	db $26 : dw $0080
	db $FC : dw $009E
	db $FD : dw $0185
	db $FC : dw $0016
	db $26 : dw $FF80
	db $FC : dw $00A8
	db $FD : dw $0184
	db $FC : dw $000B
	db $FE : dw DATA_FFB89E

DATA_FFB8B9:
	db $FA : dw DATA_FFB8E7
	db $FD : dw $0186
	db $FA : dw DATA_FFB911
DATA_FFB8C2:
	db $26 : dw $0060
	db $FC : dw $0058
	db $FD : dw $0185
	db $FC : dw $0016
	db $26 : dw $FFA0
	db $FC : dw $0062
	db $FD : dw $0184
	db $FC : dw $000B
	db $FE : dw DATA_FFB8C2

DATA_FFB8DD:
	db $52 : dw $0000
	db $46 : dw $0101
	db $26 : dw $FFF8
	db $F9

DATA_FFB8E7:
	db $52 : dw $0007
	db $46 : dw $0101
	db $26 : dw $FFF8
	db $4A : dw $0102
	db $2A : dw $0008
	db $F9

DATA_FFB8F7:
	db $52 : dw $0012
	db $46 : dw $0203
	db $26 : dw $FFC0
	db $2A : dw $FFA0
	db $F9

DATA_FFB904:
	db $52 : dw $0012
	db $46 : dw $0202
	db $26 : dw $FFC0
	db $2A : dw $0060
	db $F9

DATA_FFB911:
	db $52 : dw $0008
	db $4A : dw $0102
	db $2A : dw $0008
	db $F9

DATA_FFB91B:
	db $52 : dw $0008
	db $26 : dw $FFA0
	db $4A : dw $0102
	db $2A : dw $0008
	db $F9
	
	db $52 : dw $0008
	db $26 : dw $0020
	db $4A : dw $0102
	db $2A : dw $0008
	db $F9

DATA_FFB935:
	db $52 : dw $0008
	db $26 : dw $0060
	db $4A : dw $0102
	db $2A : dw $0008
	db $F9

DATA_FFB942:
	db $FB : dw $8080, $6060
	db $F9

DATA_FFB948:
	db $FB : dw $C000, $8080
	db $F9

DATA_FFB94E:
	db $FB : dw $8080, $8080
	db $F9

DATA_FFB954:
	db $FB : dw $8080, $4040
	db $F9

DATA_FFB95A:
	db $FB : dw $4040, $20E0
	db $F9

DATA_FFB960:
	db $FB : dw $5000, $2020
	db $F9

DATA_FFB966:
	dw sprite.type, !sprite_chest
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.interaction_flags, $0001
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02E7
	dw !initcommand_success

DATA_FFB994:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0000
	dw !initcommand_success

DATA_FFB99E:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0001
	dw !initcommand_success

DATA_FFB9A8:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0002
	dw !initcommand_success

DATA_FFB9B2:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0003
	dw !initcommand_success

DATA_FFB9BC:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0004
	dw !initcommand_success

DATA_FFB9C6:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0005
	dw !initcommand_success

DATA_FFB9D0:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0006
	dw !initcommand_success

DATA_FFB9DA:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0007
	dw !initcommand_success

DATA_FFB9E4:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0008
	dw !initcommand_success

DATA_FFB9EE:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0009
	dw !initcommand_success

DATA_FFB9F8:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $000A
	dw !initcommand_success

DATA_FFBA02:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $000B
	dw !initcommand_success

DATA_FFBA0C:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $000C
	dw !initcommand_success

DATA_FFBA16:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $000D
	dw !initcommand_success

DATA_FFBA20:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $000E
	dw !initcommand_success

DATA_FFBA2A:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $000F
	dw !initcommand_success

DATA_FFBA34:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0010
	dw !initcommand_success

DATA_FFBA3E:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0011
	dw !initcommand_success

DATA_FFBA48:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0012
	dw !initcommand_success

DATA_FFBA52:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0013
	dw !initcommand_success

DATA_FFBA5C:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0014
	dw !initcommand_success

DATA_FFBA66:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0015
	dw !initcommand_success

DATA_FFBA70:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0016
	dw !initcommand_success

DATA_FFBA7A:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0017
	dw !initcommand_success

DATA_FFBA84:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0018
	dw !initcommand_success

DATA_FFBA8E:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0019
	dw !initcommand_success

DATA_FFBA98:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0009
	dw !initcommand_set_alt_palette, $005B
	dw !initcommand_success

DATA_FFBAA6:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.unknown_1C, $C000
	dw sprite.general_purpose_42, $0000
	dw !initcommand_success

DATA_FFBAB4:
	dw sprite.type, !sprite_horsetail
	dw sprite.render_order, $00C0
	dw sprite.constants_address, DATA_FFBADE
	dw sprite.general_purpose_44, $0000
	dw sprite.interaction_flags, $0000
	dw sprite.state, $0004
	dw sprite.unknown_1C, $F000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0058
	dw !initcommand_set_animation, $02C4
	dw !initcommand_success

DATA_FFBADE:
	db $A0, $FF, $5C, $00, $D4, $FF, $48, $00

DATA_FFBAE6:
	dw !initcommand_load_subconfig, DATA_FFBAB4
	dw sprite.general_purpose_4A, $02B8
	dw !initcommand_success

DATA_FFBAF0:
	dw !initcommand_load_subconfig, DATA_FFBAB4
	dw sprite.general_purpose_4A, $0298
	dw !initcommand_success

DATA_FFBAFA:
	dw !initcommand_load_subconfig, DATA_FFBAB4
	dw sprite.general_purpose_4A, $0278
	dw !initcommand_success

DATA_FFBB04:
	dw !initcommand_load_subconfig, DATA_FFBAB4
	dw sprite.general_purpose_4A, $0258
	dw !initcommand_success

DATA_FFBB0E:
	dw !initcommand_load_subconfig, DATA_FFBAB4
	dw sprite.general_purpose_4A, $02BB
	dw !initcommand_success

DATA_FFBB18:
	dw !initcommand_set_animation, $01ED
	dw sprite.movement_state, $0000
	dw !initcommand_load_subconfig, DATA_FFBB3C
	dw !initcommand_success

DATA_FFBB26:
	dw !initcommand_set_animation, $01EE
	dw sprite.movement_state, $0022
	dw !initcommand_load_subconfig, DATA_FFBB3C
	dw !initcommand_success

DATA_FFBB34:
	dw !initcommand_set_animation, $01EE
	dw sprite.movement_state, $0023
DATA_FFBB3C:
	dw sprite.type, !sprite_krook
	dw sprite.interaction_flags, $0120
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw !initcommand_set_alt_palette, $0055
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.parameter, $0000
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFBB62:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $A0A0
	dw sprite.general_purpose_4E, $2808
	dw sprite.unknown_22, $0400
	dw sprite.unknown_28, $0040
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_success

DATA_FFBB80:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $A0A0
	dw sprite.general_purpose_4E, $3838
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0040
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $002D
	dw !initcommand_success

DATA_FFBB9E:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $A0A0
	dw sprite.general_purpose_4E, $2808
	dw sprite.unknown_22, $0800
	dw sprite.unknown_28, $0040
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $001E
	dw !initcommand_success

DATA_FFBBBC:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $E0E0
	dw sprite.general_purpose_4E, $2808
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0048
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_success

DATA_FFBBDA:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $A000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0800
	dw sprite.unknown_28, $0010
	dw sprite.unknown_1C, $0058
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_success

DATA_FFBBF8:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $0038
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $000F
	dw !initcommand_success

DATA_FFBC16:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $0020
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $002D
	dw !initcommand_success

DATA_FFBC34:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $6060
	dw sprite.general_purpose_4E, $4040
	dw sprite.unknown_22, $0800
	dw sprite.unknown_28, $0030
	dw sprite.unknown_1C, $0050
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_success

DATA_FFBC52:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $6060
	dw sprite.general_purpose_4E, $2808
	dw sprite.unknown_22, $0800
	dw sprite.unknown_28, $0040
	dw sprite.unknown_1C, $0040
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_success

DATA_FFBC70:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $B0E0
	dw sprite.general_purpose_4E, $3838
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0046
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_success

DATA_FFBC8E:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C0C0
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0010
	dw sprite.unknown_1C, $0048
	dw sprite.general_purpose_4A, $001E
	dw !initcommand_success

DATA_FFBCAC:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C0A0
	dw sprite.general_purpose_4E, $3850
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0048
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $002D
	dw !initcommand_success

DATA_FFBCCA:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C0C0
	dw sprite.general_purpose_4E, $3838
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $0050
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $002D
	dw !initcommand_success

DATA_FFBCE8:
	dw !initcommand_load_subconfig, DATA_FFF3E3
	dw sprite.general_purpose_4C, $A0A0
	dw sprite.general_purpose_4E, $3838
	dw sprite.general_purpose_4E, $0028
	dw sprite.general_purpose_4C, $0ED0
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0040
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $002D
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFBD12:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $D000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0800
	dw sprite.unknown_28, $0020
	dw sprite.unknown_1C, $0048
	dw sprite.general_purpose_4A, $001E
	dw !initcommand_success

DATA_FFBD30:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0800
	dw sprite.unknown_28, $0010
	dw sprite.unknown_1C, $0060
	dw sprite.general_purpose_4A, $000A
	dw !initcommand_success

DATA_FFBD4E:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $E060
	dw sprite.general_purpose_4E, $2820
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0048
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_success

DATA_FFBD6C:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $F000
	dw sprite.general_purpose_4E, $8010
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0060
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $000F
	dw !initcommand_success

DATA_FFBD8A:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $F000
	dw sprite.general_purpose_4E, $8010
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0088
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $0019
	dw !initcommand_success

DATA_FFBDA8:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $E000
	dw sprite.general_purpose_4E, $2860
	dw sprite.unknown_22, $0300
	dw sprite.unknown_28, $009C
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_success

DATA_FFBDC6:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C000
	dw sprite.general_purpose_4E, $2808
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $0058
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $001E
	dw !initcommand_success

DATA_FFBDE4:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $0020
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $004B
	dw !initcommand_success

DATA_FFBE02:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $A0A0
	dw sprite.general_purpose_4E, $2808
	dw sprite.unknown_22, $0400
	dw sprite.unknown_28, $0040
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $005A
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBE24:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $A0A0
	dw sprite.general_purpose_4E, $2808
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0038
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBE46:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $A0A0
	dw sprite.general_purpose_4E, $2808
	dw sprite.unknown_22, $0800
	dw sprite.unknown_28, $0030
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $001E
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBE68:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $A000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0800
	dw sprite.unknown_28, $0010
	dw sprite.unknown_1C, $0058
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBE8A:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $A000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0700
	dw sprite.unknown_28, $0010
	dw sprite.unknown_1C, $0040
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBEAC:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $0038
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $001E
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBECE:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $0038
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBEF0:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $0020
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $004B
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBF12:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $F000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $005C
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBF34:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0020
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBF56:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C000
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0800
	dw sprite.unknown_28, $0010
	dw sprite.unknown_1C, $0060
	dw sprite.general_purpose_4A, $000A
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBF78:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $E000
	dw sprite.general_purpose_4E, $2860
	dw sprite.unknown_22, $0300
	dw sprite.unknown_28, $009C
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $000F
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBF9A:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $C000
	dw sprite.general_purpose_4E, $40C0
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0040
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $0032
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFBFBC:
	dw !initcommand_load_subconfig, DATA_FFBB26
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $1808
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0040
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $001E
	dw !initcommand_success

DATA_FFBFDE:
	dw !initcommand_load_subconfig, DATA_FFBB34
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $4040
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $3838
	dw sprite.unknown_22, $0300
	dw sprite.unknown_28, $0080
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $0078
	dw !initcommand_success

DATA_FFC004:
	dw !initcommand_load_subconfig, DATA_FFBB34
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $4040
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $3838
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $0050
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFC02E:
	dw !initcommand_load_subconfig, DATA_FFBB34
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $5050
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $3838
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $0060
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_success

DATA_FFC054:
	dw !initcommand_load_subconfig, DATA_FFBB34
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $8430
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $1820
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0040
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_success

DATA_FFC07A:
	dw !initcommand_load_subconfig, DATA_FFBB34
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $C0FF
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $1820
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0040
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $001E
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFC0A4:
	dw !initcommand_load_subconfig, DATA_FFBB34
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $7030
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $3838
	dw sprite.unknown_22, $0400
	dw sprite.unknown_28, $0070
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_success

DATA_FFC0CA:
	dw !initcommand_load_subconfig, DATA_FFBB34
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $2828
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $3838
	dw sprite.unknown_22, $0500
	dw sprite.unknown_28, $0060
	dw sprite.unknown_1C, $0028
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_success

DATA_FFC0F0:
	dw !initcommand_load_subconfig, DATA_FFBB34
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_46, $1818
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $0000
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0040
	dw sprite.unknown_1C, $0030
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_success

DATA_FFC116:
	dw sprite.type, !sprite_kutlass
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw sprite.interaction_flags, $0120
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $0169
	dw sprite.state, $0000
	dw sprite.general_purpose_4C, $6060
	dw sprite.general_purpose_4E, $2808
	dw sprite.unknown_1C, $0002
	dw sprite.general_purpose_4A, $0000
if !version == 1
	dw sprite.general_purpose_48, $0000
endif
	dw !initcommand_success

DATA_FFC154:
	dw !initcommand_load_subconfig, DATA_FFC116
	dw sprite.movement_state, $0022
	dw !initcommand_set_alt_palette, $0012
	dw !initcommand_success

DATA_FFC162:
	dw !initcommand_load_subconfig, DATA_FFC116
	dw sprite.movement_state, $0023
	dw !initcommand_set_alt_palette, $0012
	dw !initcommand_success

DATA_FFC170:
	dw !initcommand_load_subconfig, DATA_FFC116
	dw sprite.movement_state, $0023
	dw !initcommand_set_alt_palette, $00B4
	dw !initcommand_success

DATA_FFC17E:
	dw !initcommand_load_subconfig, DATA_FFC154
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FFC188:
	dw !initcommand_load_subconfig, DATA_FFC154
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFC196:
	dw !initcommand_load_subconfig, DATA_FFC162
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFC1A4:
	dw !initcommand_load_subconfig, DATA_FFC162
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $1818
	dw sprite.general_purpose_4E, $2860
	dw !initcommand_success

DATA_FFC1B6:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw !initcommand_set_oam, $6000
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $6060
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4A, $0002
	dw !initcommand_success

DATA_FFC1D0:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $3838
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $0808
	dw sprite.general_purpose_4A, $0002
	dw !initcommand_success

DATA_FFC1EA:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $2830
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4A, $0002
	dw !initcommand_success

DATA_FFC200:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw !initcommand_set_oam, $6000
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $9800
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4A, $0002
	dw !initcommand_success

DATA_FFC21A:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $3030
	dw sprite.general_purpose_4A, $0002
	dw !initcommand_success

DATA_FFC22C:
	dw !initcommand_load_subconfig, DATA_FFC162
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $3838
	dw !initcommand_success

DATA_FFC23A:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $A0A0
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4A, $0001
	dw !initcommand_success

DATA_FFC250:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $1818
	dw sprite.general_purpose_4C, $6060
	dw sprite.general_purpose_4E, $2880
	dw sprite.general_purpose_4A, $0001
	dw !initcommand_success

DATA_FFC26A:
	dw !initcommand_load_subconfig, DATA_FFC162
	dw !initcommand_set_oam, $6000
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $C040
	dw sprite.general_purpose_4C, $8080
	dw sprite.unknown_1C, $0001
	dw !initcommand_success

DATA_FFC284:
	dw !initcommand_load_subconfig, DATA_FFC162
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $4040
	dw !initcommand_success

DATA_FFC292:
	dw !initcommand_load_subconfig, DATA_FFC162
	dw !initcommand_set_oam, $6000
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $1010
	dw sprite.general_purpose_4C, $4040
	dw !initcommand_success

DATA_FFC2A8:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $1010
	dw sprite.general_purpose_4C, $4040
	dw sprite.general_purpose_4A, $0001
	dw !initcommand_success

DATA_FFC2BE:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0200
	dw sprite.general_purpose_46, $B8B8
	dw sprite.general_purpose_4C, $C0C0
	dw sprite.general_purpose_4E, $1010
	dw sprite.general_purpose_4A, $0002
	dw !initcommand_success

DATA_FFC2D8:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $3040
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $1860
	dw sprite.general_purpose_4A, $0001
	dw !initcommand_success

DATA_FFC2F2:
	dw !initcommand_load_subconfig, DATA_FFC162
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $1818
	dw sprite.general_purpose_4E, $2830
	dw sprite.unknown_1C, $0001
	dw !initcommand_success

DATA_FFC308:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $0048
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $2020
	dw sprite.general_purpose_4A, $0008
	dw !initcommand_success

DATA_FFC322:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $A000
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $2001
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_4A, $0001
	dw !initcommand_success

DATA_FFC340:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $00C0
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $2001
	dw sprite.general_purpose_4A, $0001
	dw !initcommand_success

DATA_FFC35A:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $00E0
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4E, $2001
	dw sprite.general_purpose_4A, $0001
	dw !initcommand_success

DATA_FFC374:
	dw !initcommand_load_subconfig, DATA_FFC162
	dw sprite.max_x_speed, $0140
	dw sprite.general_purpose_46, $4040
	dw sprite.unknown_5C, $7FFF
	dw !initcommand_success

DATA_FFC386:
	dw !initcommand_load_subconfig, DATA_FFC170
	dw sprite.max_x_speed, $0180
	dw sprite.general_purpose_46, $7820
	dw sprite.general_purpose_4C, $8080
	dw sprite.general_purpose_4A, $0002
	dw !initcommand_success

DATA_FFC39C:
	dw sprite.type, !sprite_level_goal
	dw sprite.render_order, $00C8
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0017
	dw !initcommand_set_animation, $02B3
	dw !initcommand_success

DATA_FFC3B6:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC49C
	dw !initcommand_success

DATA_FFC3C0:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC49C
	dw !initcommand_success

DATA_FFC3CA:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC4A5
	dw !initcommand_success

DATA_FFC3D4:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC4AE
	dw !initcommand_success

DATA_FFC3DE:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC4B7
	dw !initcommand_success

DATA_FFC3E8:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC4C0
	dw !initcommand_success

DATA_FFC3F2:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC4C9
	dw !initcommand_success

DATA_FFC3FC:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC4D2
	dw !initcommand_success

DATA_FFC406:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC4DB
	dw !initcommand_success

DATA_FFC410:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC4E4
	dw !initcommand_success

DATA_FFC41A:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC4ED
	dw !initcommand_success

DATA_FFC424:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC4F6
	dw !initcommand_success

DATA_FFC42E:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC4FF
	dw !initcommand_success

DATA_FFC438:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC508
	dw !initcommand_success

DATA_FFC442:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC511
	dw !initcommand_success

DATA_FFC44C:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC51A
	dw !initcommand_success

DATA_FFC456:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC523
	dw !initcommand_success

DATA_FFC460:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC52C
	dw !initcommand_success

DATA_FFC46A:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC535
	dw !initcommand_success

DATA_FFC474:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC53E
	dw !initcommand_success

DATA_FFC47E:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC547
	dw !initcommand_success

DATA_FFC488:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC550
	dw !initcommand_success

DATA_FFC492:
	dw !initcommand_load_subconfig, DATA_FFC39C
	dw sprite.constants_address, DATA_FFC559
	dw !initcommand_success

; Level target reward sequences
; First byte is how long to show reward
; Second byte is what reward to show
; Terminated with a display duration of 0
DATA_FFC49C:
	db $28, $0C
	db $28, $19
	db $28, $0C
	db $28, $00
	db $00

DATA_FFC4A5:
	db $28, $0C
	db $28, $00
	db $28, $08
	db $28, $00
	db $00

DATA_FFC4AE:
	db $28, $08
	db $28, $00
	db $28, $0C
	db $28, $00
	db $00

DATA_FFC4B7:
	db $28, $0C
	db $28, $00
	db $28, $0C
	db $28, $04
	db $00

DATA_FFC4C0:
	db $28, $00
	db $28, $19
	db $28, $0C
	db $28, $04
	db $00

DATA_FFC4C9:
	db $28, $19
	db $28, $00
	db $28, $0C
	db $28, $00
	db $00

DATA_FFC4D2:
	db $28, $00
	db $28, $19
	db $28, $00
	db $28, $0C
	db $00

DATA_FFC4DB:
	db $28, $0C
	db $28, $00
	db $28, $0C
	db $28, $19
	db $00

DATA_FFC4E4:
	db $28, $00
	db $28, $19
	db $28, $00
	db $28, $04
	db $00

DATA_FFC4ED:
	db $28, $00
	db $28, $08
	db $28, $19
	db $28, $0C
	db $00

DATA_FFC4F6:
	db $28, $11
	db $28, $00
	db $28, $08
	db $28, $0C
	db $00

DATA_FFC4FF:
	db $28, $0C
	db $28, $00
	db $28, $08
	db $28, $00
	db $00

DATA_FFC508:
	db $28, $0C
	db $28, $19
	db $28, $0C
	db $28, $00
	db $00

DATA_FFC511:
	db $2C, $00
	db $2C, $09
	db $2C, $00
	db $2C, $08
	db $00

DATA_FFC51A:
	db $28, $0C
	db $28, $08
	db $28, $0C
	db $28, $00
	db $00

DATA_FFC523:
	db $38, $00
	db $38, $08
	db $38, $00
	db $38, $0C
	db $00

DATA_FFC52C:
	db $28, $09
	db $28, $0C
	db $28, $00
	db $28, $0C
	db $00

DATA_FFC535:
	db $28, $00
	db $28, $19
	db $28, $00
	db $28, $04
	db $00

DATA_FFC53E:
	db $28, $19
	db $28, $0C
	db $28, $00
	db $28, $08
	db $00

DATA_FFC547:
	db $28, $19
	db $0C, $11
	db $28, $00
	db $28, $0C
	db $00

DATA_FFC550:
	db $28, $0C
	db $28, $00
	db $28, $08
	db $28, $19
	db $00

DATA_FFC559:
	db $28, $00
	db $28, $08
	db $28, $00
	db $28, $0C
	db $00

DATA_FFC562:
	dw sprite.type, !sprite_bananas
	dw sprite.constants_address, DATA_FF021C
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0000
	dw !initcommand_set_animation, $02B2
	dw sprite.state, $0000
	dw sprite.general_purpose_4E, $000A
	dw !initcommand_success

DATA_FFC584:
	dw !initcommand_load_subconfig, DATA_FFC562
	dw !initcommand_success

DATA_FFC58A:
	dw !initcommand_load_subconfig, DATA_FFC562
	dw sprite.unknown_1C, $C000
	dw !initcommand_success

DATA_FFC594:
	dw sprite.type, !sprite_kloak
	dw sprite.interaction_flags, $0120
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw !initcommand_set_alt_palette, $005C
	dw sprite.terrain_attributes, $0000
	dw sprite.state, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_y_speed, $0000
	dw sprite.movement_state, $0000
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $02D0
	dw !initcommand_success

DATA_FFC5CE:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC694
	dw !initcommand_success

DATA_FFC5D8:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC6B3
	dw !initcommand_success

DATA_FFC5E2:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC6C4
	dw !initcommand_success

DATA_FFC5EC:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC6D6
	dw !initcommand_success

DATA_FFC5F6:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC6E4
	dw !initcommand_success

DATA_FFC600:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC722
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFC60E:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC778
	dw !initcommand_success

DATA_FFC618:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC78C
	dw !initcommand_success

DATA_FFC622:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC79E
	dw !initcommand_success

DATA_FFC62C:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC7B0
	dw !initcommand_success

DATA_FFC636:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC7D0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFC644:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC7E2
	dw !initcommand_success

DATA_FFC64E:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC7F3
	dw !initcommand_success

DATA_FFC658:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC80C
	dw !initcommand_success

DATA_FFC662:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC841
	dw !initcommand_success

DATA_FFC66C:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC852
	dw !initcommand_success

DATA_FFC676:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC87D
	dw !initcommand_success

DATA_FFC680:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC89A
	dw !initcommand_success

DATA_FFC68A:
	dw !initcommand_load_subconfig, DATA_FFC594
	dw sprite.parameter, DATA_FFC8BE
	dw !initcommand_success

;kloak scripts
DATA_FFC694:
	db $FA : dw DATA_FFC8CC
	db $FC : dw $003C
	db $10 : dw DATA_FFCAF7
	db $F8
	db $10 : dw DATA_FFCB03
	db $F8
	db $10 : dw DATA_FFCB0F
	db $F8
	db $FA : dw DATA_FFC8E6
	db $FC : dw $005A
	db $FA : dw DATA_FFC8DC
	db $FC : dw $0078
	db $FF

DATA_FFC6B3:
	db $FA : dw DATA_FFC8CC
DATA_FFC6B6:
	db $FC : dw $002D
	db $10 : dw DATA_FFC94F
	db $F8
	db $FC : dw $002D
	db $FE : dw DATA_FFC6B6
	db $FF

DATA_FFC6C4:
	db $FA : dw DATA_FFC8CC
	db $FC : dw $001E
	db $F7
	db $10 : dw DATA_FFC931
	db $F8
	db $FA : dw DATA_FFC8E6
	db $FC : dw $003C
	db $FF

DATA_FFC6D6:
	db $FA : dw DATA_FFC8CC
DATA_FFC6D9:
	db $FC : dw $0028
	db $10 : dw DATA_FFC94F
	db $F8
	db $FE : dw DATA_FFC6D9
	db $FF

DATA_FFC6E4:
	db $FA : dw DATA_FFC8CC
	db $FC : dw $002D
	db $10 : dw DATA_FFC94F
	db $F8
	db $FC : dw $000F
	db $FA : dw DATA_FFC8ED
	db $FC : dw $003C
	db $FA : dw DATA_FFC8E6
	db $FC : dw $0001
	db $FA : dw DATA_FFC8CC
	db $F7
	db $10 : dw DATA_FFC94F
	db $F8
	db $FC : dw $000F
	db $FA : dw DATA_FFC8E6
	db $FC : dw $0043
	db $FA : dw DATA_FFC8ED
	db $FC : dw $0001
	db $FA : dw DATA_FFC8CC
	db $10 : dw DATA_FFCAF7
	db $F8
	db $FA : dw DATA_FFC8F4
	db $FC : dw $003C
	db $FF

DATA_FFC722:
	db $FA : dw DATA_FFC8CC
	db $FC : dw $012C
	db $FA : dw DATA_FFC8FB
	db $FC : dw $0028
	db $FA : dw DATA_FFC8CC
	db $F7
	db $10 : dw DATA_FFCAF7
	db $F8
	db $FA : dw DATA_FFC8F4
	db $FC : dw $002C
	db $FA : dw DATA_FFC8CC
	db $FC : dw $012C
	db $FA : dw DATA_FFC8FB
	db $FC : dw $002C
	db $FA : dw DATA_FFC8CC
	db $10 : dw DATA_FFC959
	db $F8
	db $FA : dw DATA_FFC8F4
	db $FC : dw $002C
	db $FA : dw DATA_FFC8CC
	db $FA : dw DATA_FFC8E6
	db $FC : dw $0012
	db $FA : dw DATA_FFC8CC
	db $FC : dw $00F0
	db $FA : dw DATA_FFC8FB
	db $FC : dw $002C
	db $FA : dw DATA_FFC8CC
	db $10 : dw DATA_FFC959
	db $F8
	db $FA : dw DATA_FFC8ED
	db $FC : dw $003C
	db $FF

DATA_FFC778:
	db $FA : dw DATA_FFC8CC
	db $FC : dw $001E
	db $10 : dw DATA_FFC91D
	db $F8
	db $FC : dw $001E
	db $FA : dw DATA_FFC8F4
	db $FC : dw $003C
	db $FF

DATA_FFC78C:
	db $FA : dw DATA_FFC8CC
	db $F7
	db $10 : dw DATA_FFC93B
	db $F8
	db $FC : dw $001E
	db $FA : dw DATA_FFC8F4
	db $FC : dw $003C
	db $FF

DATA_FFC79E:
	db $FA : dw DATA_FFC8CC
	db $F7
	db $10 : dw DATA_FFC96D
	db $F8
	db $FC : dw $001E
	db $FA : dw DATA_FFC8F4
	db $FC : dw $003C
	db $FF

DATA_FFC7B0:
	db $FA : dw DATA_FFC8CC
	db $FC : dw $003C
	db $F7
	db $10 : dw DATA_FFC94F
	db $F8
	db $FC : dw $0078
	db $10 : dw DATA_FFC94F
	db $F8
	db $FC : dw $003C
	db $10 : dw DATA_FFCB1B
	db $F8
	db $FA : dw DATA_FFC8E6
	db $FC : dw $003C
	db $FF

DATA_FFC7D0:
	db $FA : dw DATA_FFC8CC
	db $FC : dw $003C
	db $F7
	db $10 : dw DATA_FFCB27
	db $F8
	db $FA : dw DATA_FFC8F4
	db $FC : dw $003C
	db $FF

DATA_FFC7E2:
	db $FA : dw DATA_FFC8CC
	db $FC : dw $000F
	db $10 : dw DATA_FFC94F
	db $F8
	db $FA : dw DATA_FFC8F4
	db $FC : dw $003C
	db $FF

DATA_FFC7F3:
	db $FA : dw DATA_FFC8CC
	db $FC : dw $003C
	db $F7
	db $10 : dw DATA_FFCB3F
	db $F8
	db $FC : dw $000A
	db $10 : dw DATA_FFCB33
	db $F8
	db $FA : dw DATA_FFC8E6
	db $FC : dw $003C
	db $FF

DATA_FFC80C:
	db $FA : dw DATA_FFC8CC
	db $10 : dw DATA_FFC93B
	db $F8
	db $FC : dw $003C
	db $10 : dw DATA_FFC93B
	db $F8
	db $FC : dw $003C
	db $10 : dw DATA_FFC93B
	db $F8
	db $FC : dw $003C
	db $FA : dw DATA_FFC8ED
	db $FC : dw $017C
	db $FA : dw DATA_FFC8E6
	db $FC : dw $0001
	db $FA : dw DATA_FFC8CC
	db $10 : dw DATA_FFC977
	db $F8
	db $FC : dw $0078
	db $FA : dw DATA_FFC902
	db $FC : dw $003C
	db $FF

DATA_FFC841:
	db $FA : dw DATA_FFC8CC
	db $10 : dw DATA_FFC909
	db $F8
	db $FC : dw $001E
	db $FA : dw DATA_FFC8ED
	db $FC : dw $003C
	db $FF

DATA_FFC852:
	db $FA : dw DATA_FFC8CC
	db $10 : dw DATA_FFC909
	db $F8
	db $FC : dw $003C
	db $10 : dw DATA_FFC909
	db $F8
	db $FC : dw $003C
	db $FA : dw DATA_FFC8ED
	db $FC : dw $005A
	db $FA : dw DATA_FFC8E6
	db $FC : dw $0001
	db $FA : dw DATA_FFC8CC
	db $10 : dw DATA_FFC98B
	db $F8
	db $FA : dw DATA_FFC8ED
	db $FC : dw $003C
	db $FF

DATA_FFC87D:
	db $FA : dw DATA_FFC8CC
	db $F7
	db $10 : dw DATA_FFC93B
	db $F8
	db $FC : dw $003C
	db $10 : dw DATA_FFC93B
	db $F8
	db $FC : dw $003C
	db $10 : dw DATA_FFCB27
	db $F8
	db $FA : dw DATA_FFC8ED
	db $FC : dw $003C
	db $FF

DATA_FFC89A:
	db $FA : dw DATA_FFC8CC
	db $F7
	db $10 : dw DATA_FFC93B
	db $F8
	db $FC : dw $003C
	db $10 : dw DATA_FFC93B
	db $F8
	db $FC : dw $003C
	db $10 : dw DATA_FFC93B
	db $F8
	db $FC : dw $003C
	db $10 : dw DATA_FFCB33
	db $F8
	db $FA : dw DATA_FFC8ED
	db $FC : dw $003C
	db $FF

DATA_FFC8BE:
	db $FA : dw DATA_FFC8CC
DATA_FFC8C1:
	db $10 : dw DATA_FFC94F
	db $F8
	db $FC : dw $0019
	db $FE : dw DATA_FFC8C1
	db $FF

DATA_FFC8CC:
	db $52 : dw $0000
	db $26 : dw $0000
	db $20 : dw $0000
	db $2A : dw $0000
	db $24 : dw $0000
	db $F9

DATA_FFC8DC:
	db $52 : dw $0005
	db $46 : dw $3038
	db $26 : dw $FF00
	db $F9

DATA_FFC8E6:
	db $52 : dw $000F
	db $26 : dw $0300
	db $F9

DATA_FFC8ED:
	db $52 : dw $000F
	db $26 : dw $FD00
	db $F9

DATA_FFC8F4:
	db $52 : dw $000F
	db $2A : dw $FD00
	db $F9

DATA_FFC8FB:
	db $52 : dw $000F
	db $2A : dw $0300
	db $F9

DATA_FFC902:
	db $52 : dw $000F
	db $2A : dw $0180
	db $F9

;kloak projectiles
DATA_FFC909:
	dw DATA_FFC9B5, $0280, $FC80, $8080, $0226

;unused?
DATA_FFC913:
	dw DATA_FFC995, $0300, $FA00, $8084, $0227

DATA_FFC91D:
	dw DATA_FFC9A7, $0180, $FC00, $8088, $0227

;unused?
DATA_FFC927:
	dw DATA_FF3208, $0300, $FA00, $808C, $0027

DATA_FFC931:
	dw DATA_FF3208, $0200, $FC00, $808C, $0027

DATA_FFC93B:
	dw DATA_FFC9D9, $0000, $0000, $8080, $0200

;unused?
DATA_FFC945:
	dw DATA_FFCA15, $0000, $0000, $8080, $0200

DATA_FFC94F:
	dw DATA_FFCA33, $0000, $0000, $8080, $0200

DATA_FFC959:
	dw DATA_FFCA51, $0000, $0000, $8080, $0200

;unused?
DATA_FFC963:
	dw DATA_FFCAD9, $0000, $0000, $8080, $0200

DATA_FFC96D:
	dw DATA_FFC9F7, $0000, $0000, $8080, $0200

DATA_FFC977:
	dw DATA_FFCA73, $0000, $0000, $8080, $0200

;unused?
DATA_FFC981:
	dw DATA_FFCA95, $0000, $0000, $8080, $0200

DATA_FFC98B:
	dw DATA_FFCAB7, $0000, $0000, $8080, $0200

DATA_FFC995:
	dw !initcommand_load_subconfig, DATA_FF9FC2
	dw !initcommand_set_oam, $2000
	dw sprite.max_x_speed, $0100
	dw sprite.movement_state, $0022
	dw !initcommand_success

DATA_FFC9A7:
	dw !initcommand_load_subconfig, DATA_FF9FC2
	dw sprite.max_x_speed, $FE80
	dw sprite.movement_state, $0022
	dw !initcommand_success

DATA_FFC9B5:
	dw !initcommand_load_subconfig, DATA_FF2D98
	dw sprite.max_x_speed, $FF00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFC9C3:
	dw sprite.type, !sprite_unknown_02E8
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw !initcommand_set_oam, $6000
	dw sprite.interaction_flags, $0020
	dw !initcommand_success

DATA_FFC9D9:
	dw !initcommand_load_subconfig, DATA_FFC9C3
	dw !initcommand_set_animation, $02FA
	dw !initcommand_set_alt_palette, $0002
	dw sprite.state, $0000
	dw sprite.y_speed, $FC40
	dw sprite.x_speed, $FE00
	dw sprite.max_x_speed, $FDC0
	dw !initcommand_success

DATA_FFC9F7:
	dw !initcommand_load_subconfig, DATA_FFC9C3
	dw !initcommand_set_animation, $02FA
	dw !initcommand_set_alt_palette, $0002
	dw sprite.state, $0000
	dw sprite.y_speed, $FC40
	dw sprite.x_speed, $FE00
	dw sprite.max_x_speed, $FD00
	dw !initcommand_success

DATA_FFCA15:
	dw !initcommand_load_subconfig, DATA_FFC9C3
	dw !initcommand_set_animation, $02FF
	dw !initcommand_set_alt_palette, $0002
	dw sprite.state, $0001
	dw sprite.y_speed, $FD00
	dw sprite.x_speed, $FC00
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

DATA_FFCA33:
	dw !initcommand_load_subconfig, DATA_FFC9C3
	dw !initcommand_set_animation, $02E6
	dw !initcommand_set_alt_palette, $0002
	dw sprite.state, $0002
	dw sprite.y_speed, $FD00
	dw sprite.x_speed, $FC00
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

DATA_FFCA51:
	dw !initcommand_load_subconfig, DATA_FFC9C3
	dw !initcommand_set_animation, $02E7
	dw !initcommand_set_alt_palette, $0002
	dw sprite.state, $0003
	dw sprite.y_speed, $FD00
	dw sprite.x_speed, $FC00
	dw sprite.max_x_speed, $FE00
	dw sprite.general_purpose_42, $0008
	dw !initcommand_success

DATA_FFCA73:
	dw !initcommand_load_subconfig, DATA_FFC9C3
	dw !initcommand_set_animation, $02E7
	dw !initcommand_set_alt_palette, $0002
	dw sprite.state, $0003
	dw sprite.y_speed, $FD00
	dw sprite.x_speed, $FC00
	dw sprite.max_x_speed, $FE00
	dw sprite.general_purpose_42, $0012
	dw !initcommand_success

DATA_FFCA95:
	dw !initcommand_load_subconfig, DATA_FFC9C3
	dw !initcommand_set_animation, $02E7
	dw !initcommand_set_alt_palette, $0002
	dw sprite.state, $0003
	dw sprite.y_speed, $FD00
	dw sprite.x_speed, $FC00
	dw sprite.max_x_speed, $FE00
	dw sprite.general_purpose_42, $0003
	dw !initcommand_success

DATA_FFCAB7:
	dw !initcommand_load_subconfig, DATA_FFC9C3
	dw !initcommand_set_animation, $02E7
	dw !initcommand_set_alt_palette, $0002
	dw sprite.state, $0003
	dw sprite.y_speed, $FD00
	dw sprite.x_speed, $FC00
	dw sprite.max_x_speed, $FE00
	dw sprite.general_purpose_42, $0009
	dw !initcommand_success

DATA_FFCAD9:
	dw !initcommand_load_subconfig, DATA_FFC9C3
	dw !initcommand_set_animation, $02FD
	dw !initcommand_set_alt_palette, $0009
	dw sprite.state, $0004
	dw sprite.y_speed, $FD00
	dw sprite.x_speed, $FC00
	dw sprite.max_x_speed, $FE00
	dw !initcommand_success

;kloak projectiles
DATA_FFCAF7:
	dw DATA_FFC584, $0300, $FB00, $7888, $8213, $001F

DATA_FFCB03:
	dw DATA_FFC584, $0400, $0000, $7888, $8214, $0028

DATA_FFCB0F:
	dw DATA_FF7C8C, $0400, $FB00, $8080, $8215, $0012

DATA_FFCB1B:
	dw DATA_FFC584, $0300, $FB00, $7888, $8213, $0014

DATA_FFCB27:
	dw DATA_FF7C8C, $02C0, $FB00, $8080, $8215, $0027

DATA_FFCB33:
	dw DATA_FF7C8C, $0330, $FB00, $8080, $8215, $001D

DATA_FFCB3F:
	dw DATA_FFC584, $0300, $FB00, $7888, $8213, $001C
	db $00

DATA_FFCB4C:
	dw sprite.type, !sprite_rideable_balloon
	dw sprite.render_order, $00C1
	dw sprite.constants_address, DATA_FF045C
	dw sprite.interaction_flags, $0000
	dw sprite.state, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $005A
	dw !initcommand_set_animation, $02D4
	dw sprite.general_purpose_46, $0203
	dw sprite.max_x_speed, $0020
	dw sprite.general_purpose_4A, $0201
	dw sprite.max_y_speed, $0018
	dw sprite.movement_state, $0017
	dw !initcommand_success

DATA_FFCB8A:
	dw sprite.type, !sprite_cat_o9tails
	dw sprite.interaction_flags, $0120
	dw sprite.render_order, $00D4
	dw sprite.constants_address, DATA_FF021C
	dw !initcommand_set_alt_palette, $001D
	dw sprite.state, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.x_speed, $0000
	dw sprite.general_purpose_4E, $0000
	dw sprite.y_speed, $0100
	dw sprite.movement_state, $0000
	dw !initcommand_set_oam, $6000
	dw !initcommand_set_animation, $018B
	dw !initcommand_success

DATA_FFCBC0:
	dw !initcommand_load_subconfig, DATA_FFCB8A
	dw sprite.general_purpose_42, $A0A0
	dw sprite.general_purpose_44, $6008
	dw sprite.unknown_28, $0038
	dw sprite.general_purpose_46, $FC80
	dw sprite.general_purpose_48, $00F0
	dw sprite.general_purpose_4A, $0078
	dw sprite.general_purpose_4C, DATA_FFCCD0
	dw !initcommand_success

DATA_FFCBE2:
	dw !initcommand_load_subconfig, DATA_FFCB8A
	dw sprite.general_purpose_42, $A0A0
	dw sprite.general_purpose_44, $6008
	dw sprite.unknown_28, $0038
	dw sprite.general_purpose_46, $FC00
	dw sprite.general_purpose_48, $00F0
	dw sprite.general_purpose_4A, $0078
	dw sprite.general_purpose_4C, DATA_FFCCD0
	dw !initcommand_success

DATA_FFCC04:
	dw !initcommand_load_subconfig, DATA_FFCB8A
	dw sprite.general_purpose_42, $A0A0
	dw sprite.general_purpose_44, $6008
	dw sprite.unknown_28, $0038
	dw sprite.general_purpose_46, $FC80
	dw sprite.general_purpose_48, $00F0
	dw sprite.general_purpose_4A, $00B4
	dw sprite.general_purpose_4C, DATA_FFCCD8
	dw !initcommand_success

DATA_FFCC26:
	dw !initcommand_load_subconfig, DATA_FFCB8A
	dw sprite.general_purpose_42, $6868
	dw sprite.general_purpose_44, $6060
	dw sprite.unknown_28, $0020
	dw sprite.general_purpose_46, $FC80
	dw sprite.general_purpose_48, $00F0
	dw sprite.general_purpose_4A, $0078
	dw sprite.general_purpose_4C, DATA_FFCCE0
	dw !initcommand_success

DATA_FFCC48:
	dw !initcommand_load_subconfig, DATA_FFCB8A
	dw sprite.general_purpose_42, $A0A0
	dw sprite.general_purpose_44, $6008
	dw sprite.unknown_28, $0020
	dw sprite.general_purpose_46, $FC00
	dw sprite.general_purpose_48, $00F0
	dw sprite.general_purpose_4A, $0078
	dw sprite.general_purpose_4C, DATA_FFCCE0
	dw !initcommand_success

DATA_FFCC6A:
	dw !initcommand_load_subconfig, DATA_FFCB8A
	dw sprite.general_purpose_42, $9090
	dw sprite.general_purpose_44, $6008
	dw sprite.unknown_28, $0038
	dw sprite.general_purpose_46, $FC80
	dw sprite.general_purpose_48, $00F0
	dw sprite.general_purpose_4A, $00B4
	dw sprite.general_purpose_4C, DATA_FFCCD8
	dw !initcommand_success

DATA_FFCC8C:
	dw !initcommand_load_subconfig, DATA_FFCB8A
	dw sprite.general_purpose_42, $6060
	dw sprite.general_purpose_44, $6008
	dw sprite.unknown_28, $0020
	dw sprite.general_purpose_46, $FCC0
	dw sprite.general_purpose_48, $00F0
	dw sprite.general_purpose_4A, $0078
	dw sprite.general_purpose_4C, DATA_FFCCE0
	dw !initcommand_success

DATA_FFCCAE:
	dw !initcommand_load_subconfig, DATA_FFCB8A
	dw sprite.general_purpose_42, $6060
	dw sprite.general_purpose_44, $6008
	dw sprite.unknown_28, $0020
	dw sprite.general_purpose_46, $FCC0
	dw sprite.general_purpose_48, $00F0
	dw sprite.general_purpose_4A, $0078
	dw sprite.general_purpose_4C, DATA_FFCCE8
	dw !initcommand_success

DATA_FFCCD0:
	db $10, $10, $00, $01, $00, $03, $00, $FB

DATA_FFCCD8:
	db $10, $10, $00, $02, $00, $04, $80, $F9

DATA_FFCCE0:
	db $10, $10, $80, $02, $00, $05, $80, $F8

DATA_FFCCE8:
	db $10, $10, $80, $07, $00, $00, $80, $F8

DATA_FFCCF0:
	dw !initcommand_setup_static2, !sprite_kleever_dropping_hooks, $0009 : dl DATA_C00DA1 : db $14
	dw sprite.render_order, $00D4
	dw sprite.y_position, $0100
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $FFFF
	dw sprite.general_purpose_4E, $E000
	dw sprite.state, $0003
	dw sprite.max_x_speed, $0000
	dw sprite.x_speed, $0000
	dw sprite.max_y_speed, $0500
	dw sprite.y_speed, $0200
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_animation, $02AB
	dw !initcommand_success

;krow
DATA_FFCD34:
	dw sprite.type, !sprite_krows_body
	dw sprite.x_position, $01B0
	dw sprite.y_position, $01B4
	dw sprite.render_order, $00D4
	dw sprite.interaction_flags, $0020
	dw sprite.state, $0000
	dw sprite.general_purpose_46, DATA_B6F932
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_4C, $0000
	dw !initcommand_set_oam, $7000
	dw !initcommand_set_alt_palette, $0022
	dw !initcommand_set_animation, $0200
	dw !initcommand_success

;kreepy krow
DATA_FFCD66:
	dw sprite.type, !sprite_kreepy_krows_body
	dw sprite.x_position, $0224
	dw sprite.y_position, $0B44
	dw sprite.render_order, $00D4
	dw sprite.interaction_flags, $0020
	dw sprite.general_purpose_46, DATA_B6AFE7
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_4C, $0000
	dw !initcommand_set_oam, $1000
	dw !initcommand_set_alt_palette, $00B9
	dw !initcommand_set_animation, $0200
	dw !initcommand_success

;king zing
DATA_FFCD94:
	dw sprite.type, !sprite_king_zing
	dw sprite.x_position, $01D4
	dw sprite.y_position, $021F
	dw sprite.render_order, $00D4
	dw sprite.interaction_flags, $0020
	dw sprite.state, $0000
	dw sprite.general_purpose_46, DATA_B6AE87
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_4C, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0038
	dw !initcommand_set_animation, $0230
	dw !initcommand_success

DATA_FFCDC6:
	dw sprite.type, !sprite_glimmer
	dw sprite.render_order, $00C8
	dw sprite.state, $0003
	dw sprite.x_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.max_y_speed, $0000
	dw sprite.interaction_flags, $0000
	dw !initcommand_set_alt_palette, $0049
	dw !initcommand_set_animation, $02CE
	dw !initcommand_success

DATA_FFCDF0:
	dw !initcommand_load_subconfig, DATA_FFCDC6
	dw !initcommand_set_oam, $3000
	dw !initcommand_success

DATA_FFCDFA:
	dw !initcommand_load_subconfig, DATA_FFCDC6
	dw !initcommand_set_oam, $7000
	dw !initcommand_success

DATA_FFCE04:
	dw sprite.type, !sprite_krockhead
	dw sprite.state, $0000
	dw sprite.render_order, $00C8
if !version == 1
	dw sprite.y_speed, $0000
endif
	dw !initcommand_set_oam, $6000
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FFCE1E:
	dw !initcommand_load_subconfig, DATA_FFCE04
	dw !initcommand_set_alt_palette, $0056
	dw !initcommand_success

DATA_FFCE28:
	dw !initcommand_load_subconfig, DATA_FFCE04
	dw !initcommand_set_alt_palette, $0064
	dw !initcommand_success

DATA_FFCE32:
	dw !initcommand_load_subconfig, DATA_FFCE1E
	dw !initcommand_set_animation, $02C7
	dw !initcommand_success

DATA_FFCE3C:
	dw !initcommand_load_subconfig, DATA_FFCE1E
	dw sprite.general_purpose_4A, DATA_FFCE82
	dw !initcommand_set_animation, $02CA
	dw !initcommand_success

DATA_FFCE4A:
	dw !initcommand_load_subconfig, DATA_FFCE1E
	dw sprite.general_purpose_4A, DATA_FFCE8A
	dw !initcommand_set_animation, $02CA
	dw !initcommand_success

DATA_FFCE58:
	dw !initcommand_load_subconfig, DATA_FFCE1E
	dw sprite.general_purpose_4A, DATA_FFCE92
	dw !initcommand_set_animation, $02CA
	dw !initcommand_success

DATA_FFCE66:
	dw !initcommand_load_subconfig, DATA_FFCE1E
	dw sprite.general_purpose_4A, DATA_FFCE9A
	dw !initcommand_set_animation, $02CA
	dw !initcommand_success

DATA_FFCE74:
	dw !initcommand_load_subconfig, DATA_FFCE1E
	dw sprite.general_purpose_4A, DATA_FFCEA2
	dw !initcommand_set_animation, $02CA
	dw !initcommand_success

DATA_FFCE82:
	db $1E, $00, $3C, $00, $FF, $FF : dw DATA_FFCE82

DATA_FFCE8A:
	db $F0, $00, $3C, $00, $FF, $FF : dw DATA_FFCE8A

DATA_FFCE92:
	db $2D, $00, $2D, $00, $FF, $FF : dw DATA_FFCE92

DATA_FFCE9A:
	db $3C, $00, $3C, $00, $FF, $FF : dw DATA_FFCE9A

DATA_FFCEA2:
	db $4B, $00, $3C, $00, $FF, $FF : dw DATA_FFCEA2

DATA_FFCEAA:
	dw !initcommand_set_animation, $02C6
	dw sprite.type, !sprite_krochead_switch_barrel
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0056
	dw sprite.state, $0001
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $0000
	dw sprite.general_purpose_4E, DATA_FFCED4
	dw !initcommand_success

DATA_FFCED4:
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.type, !sprite_krochead_switch_barrel
	dw sprite.state, $0003
	dw sprite.render_order, $00C7
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_success

DATA_FFCEF0:
	dw !initcommand_load_subconfig, DATA_FFCEAA
	dw sprite.general_purpose_42, $012C
	dw !initcommand_success

DATA_FFCEFA:
	dw !initcommand_load_subconfig, DATA_FFCEAA
	dw sprite.general_purpose_42, $0186
	dw !initcommand_success

DATA_FFCF04:
	dw !initcommand_load_subconfig, DATA_FFCEAA
	dw sprite.general_purpose_42, $032A
	dw !initcommand_success

DATA_FFCF0E:
	dw !initcommand_load_subconfig, DATA_FFCEAA
	dw sprite.general_purpose_42, $0226
	dw !initcommand_success

DATA_FFCF18:
	dw !initcommand_load_subconfig, DATA_FFCEAA
	dw sprite.general_purpose_42, $01C2
	dw !initcommand_success

DATA_FFCF22:
	dw !initcommand_load_subconfig, DATA_FFCE1E
	dw !initcommand_set_animation, $02C8
	dw sprite.state, $0100
	dw sprite.general_purpose_42, $0000
	dw !initcommand_success

DATA_FFCF34:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $0000
	dw !initcommand_success

DATA_FFCF3E:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $00D2
	dw !initcommand_success

DATA_FFCF48:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $00AA
	dw !initcommand_success

DATA_FFCF52:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $0082
	dw !initcommand_success

DATA_FFCF5C:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $0276
	dw !initcommand_success

DATA_FFCF66:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $01E0
	dw !initcommand_success

DATA_FFCF70:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $0168
	dw !initcommand_success

DATA_FFCF7A:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $00F0
	dw !initcommand_success

DATA_FFCF84:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $0096
	dw !initcommand_success

DATA_FFCF8E:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $0168
	dw !initcommand_success

DATA_FFCF98:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $00F0
	dw !initcommand_success

DATA_FFCFA2:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $0078
	dw !initcommand_success

DATA_FFCFAC:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $0172
	dw !initcommand_success

DATA_FFCFB6:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $0136
	dw !initcommand_success

DATA_FFCFC0:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $00FA
	dw !initcommand_success

DATA_FFCFCA:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $00BE
	dw !initcommand_success

DATA_FFCFD4:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $0078
	dw !initcommand_success

DATA_FFCFDE:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $0078
	dw !initcommand_success

DATA_FFCFE8:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_success

DATA_FFCFF2:
	dw !initcommand_load_subconfig, DATA_FFCF22
	dw sprite.general_purpose_4A, $005A
	dw !initcommand_success

DATA_FFCFFC:
	dw !initcommand_load_subconfig, DATA_FFCE28
	dw !initcommand_set_animation, $02CB
	dw sprite.general_purpose_46, $F300
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFD00E:
	dw !initcommand_load_subconfig, DATA_FFCE28
	dw !initcommand_set_animation, $02CB
	dw sprite.general_purpose_46, $F180
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFD020:
	dw !initcommand_load_subconfig, DATA_FFCE28
	dw !initcommand_set_animation, $02CB
	dw sprite.general_purpose_46, $F280
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFD032:
	dw !initcommand_load_subconfig, DATA_FFCE28
	dw !initcommand_set_animation, $02CB
	dw sprite.general_purpose_46, $F380
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFD044:
	dw !initcommand_load_subconfig, DATA_FFCE28
	dw !initcommand_set_animation, $02CB
	dw sprite.general_purpose_46, $F400
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFD056:
	dw !initcommand_load_subconfig, DATA_FFCE28
	dw !initcommand_set_animation, $02CB
	dw sprite.general_purpose_46, $F580
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFD068:
	dw !initcommand_load_subconfig, DATA_FFCE28
	dw !initcommand_set_animation, $02CB
	dw sprite.general_purpose_46, $F500
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFD07A:
	dw !initcommand_load_subconfig, DATA_FFCE28
	dw !initcommand_set_animation, $02CB
	dw sprite.general_purpose_46, $F600
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFD08C:
	dw !initcommand_load_subconfig, DATA_FFCE28
	dw !initcommand_set_animation, $02CB
	dw sprite.general_purpose_46, $F340
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFD09E:
	dw !initcommand_load_subconfig, DATA_FFCE28
	dw !initcommand_set_animation, $02CB
	dw sprite.general_purpose_46, $F480
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFD0B0:
	dw !initcommand_load_subconfig, DATA_FFCE28
	dw !initcommand_set_animation, $02CB
	dw sprite.general_purpose_46, $F470
	dw sprite.general_purpose_48, $0000
	dw !initcommand_success

DATA_FFD0C2:
	dw !initcommand_load_subconfig, DATA_FFAB30
	dw sprite.interaction_flags, $0003
	dw !initcommand_success

DATA_FFD0CC:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $0909
	dw sprite.interaction_flags, $0122
	dw !initcommand_success

DATA_FFD0DA:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.interaction_flags, $0122
	dw sprite.max_x_speed, $FEC0
	dw sprite.movement_state, $0023
	dw sprite.general_purpose_46, $0707
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFD0F4:
	dw !initcommand_load_subconfig, DATA_FFAAE8
	dw sprite.interaction_flags, $0003
	dw !initcommand_success

DATA_FFD0FE:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0013
	dw sprite.general_purpose_44, $0003
	dw sprite.general_purpose_46, $0011
	dw !initcommand_success

DATA_FFD110:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0013
	dw sprite.general_purpose_44, $0003
	dw sprite.general_purpose_46, $0011
	dw !initcommand_success

DATA_FFD122:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0013
	dw sprite.general_purpose_44, $0008
	dw sprite.general_purpose_46, $0010
	dw !initcommand_success

DATA_FFD134:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0013
	dw sprite.general_purpose_44, $0002
	dw sprite.general_purpose_46, $0000
	dw !initcommand_success

DATA_FFD146:
	dw sprite.type, !sprite_breakable_wall
	dw sprite.render_order, $00C0
	dw sprite.interaction_flags, $1400
	dw sprite.state, $0005
	dw !initcommand_set_oam, $2000
	dw sprite.general_purpose_48, $FFF9
	dw sprite.general_purpose_46, $0000
	dw sprite.unknown_16, $0000
	dw !initcommand_success

DATA_FFD168:
	dw sprite.type, !sprite_breakable_wall
	dw sprite.render_order, $00C0
	dw sprite.interaction_flags, $1400
	dw sprite.state, $0005
	dw !initcommand_set_oam, $2000
	dw sprite.general_purpose_48, $FFF9
	dw sprite.general_purpose_46, $0001
	dw sprite.unknown_16, $0000
	dw !initcommand_success

DATA_FFD18A:
	dw !initcommand_load_subconfig, DATA_FFD146
	dw sprite.general_purpose_42, $0003
	dw sprite.general_purpose_44, $0004
	dw sprite.general_purpose_4A, $0030
	dw sprite.unknown_1A, $2FD8
	dw !initcommand_set_alt_palette, $003E
	dw !initcommand_set_oam, $3000
	dw !initcommand_success

DATA_FFD1A8:
	dw !initcommand_load_subconfig, DATA_FFD168
	dw sprite.general_purpose_42, $0003
	dw sprite.general_purpose_44, $0004
	dw sprite.general_purpose_4A, $0030
	dw sprite.unknown_1A, $2FDC
	dw !initcommand_set_alt_palette, $003F
	dw sprite.general_purpose_48, $0009
	dw !initcommand_set_oam, $3000
	dw !initcommand_success

DATA_FFD1CA:
	dw !initcommand_load_subconfig, DATA_FFD146
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0003
	dw sprite.general_purpose_4A, $0018
	dw sprite.unknown_1A, $2FE0
	dw !initcommand_set_alt_palette, $0040
	dw sprite.general_purpose_48, $0001
	dw !initcommand_set_oam, $3000
	dw !initcommand_success

DATA_FFD1EC:
	dw !initcommand_load_subconfig, DATA_FFD146
	dw sprite.general_purpose_42, $0003
	dw sprite.general_purpose_44, $0004
	dw sprite.general_purpose_4A, $0018
	dw sprite.unknown_1A, $2FE0
	dw !initcommand_set_alt_palette, $0040
	dw sprite.general_purpose_48, $0001
	dw !initcommand_set_oam, $3000
	dw !initcommand_success

DATA_FFD20E:
	dw !initcommand_load_subconfig, DATA_FFD168
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0002
	dw sprite.general_purpose_4A, $0030
	dw sprite.unknown_1A, $2FE8
	dw !initcommand_set_alt_palette, $0039
	dw sprite.general_purpose_48, $0001
	dw !initcommand_set_oam, $3000
	dw !initcommand_success

DATA_FFD230:
	dw !initcommand_load_subconfig, DATA_FFD168
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0002
	dw sprite.general_purpose_4A, $0030
	dw sprite.unknown_1A, $2FFC
	dw !initcommand_set_alt_palette, $007B
	dw sprite.general_purpose_48, $FFE7
	dw !initcommand_success

DATA_FFD24E:
	dw !initcommand_load_subconfig, DATA_FFD168
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0002
	dw sprite.general_purpose_4A, $0020
	dw sprite.unknown_1A, $3000
	dw !initcommand_set_alt_palette, $00B3
	dw sprite.general_purpose_48, $0024
	dw !initcommand_success

DATA_FFD26C:
	dw !initcommand_load_subconfig, DATA_FFD146
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0002
	dw sprite.general_purpose_4A, $0020
	dw sprite.unknown_1A, $2FF8
	dw !initcommand_set_alt_palette, $007C
	dw sprite.general_purpose_48, $0012
	dw !initcommand_success

DATA_FFD28A:
	dw !initcommand_load_subconfig, DATA_FFD146
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0003
	dw sprite.general_purpose_4A, $0020
	dw sprite.unknown_1A, $2FF8
	dw !initcommand_set_alt_palette, $007C
	dw sprite.general_purpose_48, $0012
	dw !initcommand_success

DATA_FFD2A8:
	dw !initcommand_load_subconfig, DATA_FFD168
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0002
	dw sprite.general_purpose_4A, $0020
	dw sprite.unknown_1A, $2FF8
	dw !initcommand_set_oam, $7000
	dw !initcommand_set_alt_palette, $007C
	dw sprite.general_purpose_48, $0012
	dw !initcommand_success

DATA_FFD2CA:
	dw !initcommand_load_subconfig, DATA_FFD168
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0003
	dw sprite.general_purpose_4A, $0020
	dw sprite.unknown_1A, $2FF8
	dw !initcommand_set_oam, $7000
	dw !initcommand_set_alt_palette, $007C
	dw sprite.general_purpose_48, $0012
	dw !initcommand_success

DATA_FFD2EC:
	dw !initcommand_load_subconfig, DATA_FFD168
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0002
	dw sprite.general_purpose_4A, $001E
	dw sprite.unknown_1A, $2FF4
	dw sprite.unknown_1C, $8001
	dw sprite.parameter, $0008
	dw !initcommand_set_alt_palette, $007A
	dw sprite.general_purpose_48, $001D
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFD316:
	dw !initcommand_load_subconfig, DATA_FFD146
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0002
	dw sprite.general_purpose_4A, $0030
	dw sprite.unknown_1A, $2FEC
	dw !initcommand_set_alt_palette, $0078
	dw sprite.general_purpose_48, $0022
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFD338:
	dw !initcommand_load_subconfig, DATA_FFD146
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0003
	dw sprite.general_purpose_4A, $0030
	dw sprite.unknown_1A, $2FEC
	dw !initcommand_set_alt_palette, $0078
	dw sprite.general_purpose_48, $0022
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFD35A:
	dw sprite.type, !sprite_timer
	dw sprite.render_order, $00F8
	dw sprite.x_position, $1780
	dw sprite.y_position, $1200
	dw sprite.general_purpose_48, $503C
	dw sprite.general_purpose_4C, $0000
	dw sprite.state, $0006
	dw sprite.interaction_flags, $0000
	dw sprite.unknown_1C, $C000
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_palette, global_sprite_palette
	dw !initcommand_success

DATA_FFD388:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $000A
	dw !initcommand_success

DATA_FFD39A:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $000B
	dw !initcommand_success

DATA_FFD3AC:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $000D
	dw !initcommand_success

DATA_FFD3BE:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0008
	dw sprite.general_purpose_46, $000F
	dw !initcommand_success

DATA_FFD3D0:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0006
	dw sprite.general_purpose_46, $000F
	dw !initcommand_success

DATA_FFD3E2:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0008
	dw sprite.general_purpose_46, $0023
	dw !initcommand_success

DATA_FFD3F4:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0009
	dw sprite.general_purpose_46, $0014
	dw !initcommand_success

DATA_FFD406:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0007
	dw sprite.general_purpose_46, $0014
	dw !initcommand_success

DATA_FFD418:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0100
	dw sprite.general_purpose_46, $0014
	dw !initcommand_success

DATA_FFD42A:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0070
	dw sprite.general_purpose_46, $0019
	dw !initcommand_success

DATA_FFD43C:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0040
	dw sprite.general_purpose_46, $001E
	dw !initcommand_success

DATA_FFD44E:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0075
	dw sprite.general_purpose_46, $0023
	dw !initcommand_success

;wind pattern table
DATA_FFD460:
	dw $0000, DATA_FFD514
	dw $0220, DATA_FFD514
	dw $03B0, DATA_FFD556
	dw $0540, DATA_FFD52A
	dw $06A0, DATA_FFD514
	dw $06C0, DATA_FFD520
	dw $0800, DATA_FFD514
	dw $09D0, DATA_FFD556
	dw $0B80, DATA_FFD514
	dw $1250, DATA_FFD5F2
	dw $13B0, DATA_FFD52A
	dw $15D0, DATA_FFD542
	dw $166F, DATA_FFD514
	dw $17B0, DATA_FFD5B4
	dw $189F, DATA_FFD514
	dw $198F, DATA_FFD52A
	dw $1B3F, DATA_FFD542
	dw $1C10, DATA_FFD514
	dw $1DA0, DATA_FFD556
	dw $1F4F, DATA_FFD560
	dw $2088, DATA_FFD5BE
	dw $217F, DATA_FFD578
	dw $223F, DATA_FFD578
	dw $22FF, DATA_FFD586
	dw $23B0, DATA_FFD52A
	dw $25C0, DATA_FFD5BE
	dw $26E9, DATA_FFD586
	dw $27A1, DATA_FFD586
	dw $2859, DATA_FFD586
	dw $2920, DATA_FFD514
	dw $29B7, DATA_FFD51A
	dw $2D80, DATA_FFD5DA
	dw $2E9E, DATA_FFD5CC
	dw $2F36, DATA_FFD5CC
	dw $2FCE, DATA_FFD5CC
	dw $3064, DATA_FFD594
	dw $7FFF, DATA_FFD514

DATA_FFD4F4:
	dw $0000, DATA_FFD514
	dw $06B0, DATA_FFD5AA
	dw $7FFF, DATA_FFD514

DATA_FFD500:
	dw $0000, DATA_FFD514
	dw $0110, DATA_FFD51A
	dw $7FFF, DATA_FFD514

DATA_FFD50C:
	dw $0000, DATA_FFD514
	dw $7FFF, DATA_FFD514

;wind patterns
DATA_FFD514:
	dw $0000, $003C
	dw $0002

DATA_FFD51A:
	dw $0001, $003C
	dw $0002

DATA_FFD520:
	dw $0001, $00B4
	dw $0000, $00B4
	dw $0002

DATA_FFD52A:
	dw $4001, $003C
	dw $0002

	dw $0001, $005A
	dw $0000, $0168
	dw $4001, $005A
	dw $0000, $0168
	dw $0002

DATA_FFD542:
	dw $0001, $0078
	dw $0000, $0078
	dw $0002

	dw $0000, $0078
	dw $0001, $0078
	dw $0002

DATA_FFD556:
	dw $0001, $00F0
	dw $0000, $0078
	dw $0002

DATA_FFD560:
	dw $4001, $0078
	dw $0000, $005A
	dw $0002

	dw $4001, $0078
	dw $0001, $005A
	dw $4001, $003C
	dw $0002

DATA_FFD578:
	dw $4001, $003C
	dw $0001, $005A
	dw $4001, $0078
	dw $0002

DATA_FFD586:
	dw $4001, $003C
	dw $0001, $0069
	dw $4001, $0078
	dw $0002

DATA_FFD594:
	dw $0000, $000F
	dw $0001, $0078
	dw $0000, $0078
	dw $0001, $0078
	dw $0000, $0069
	dw $0002

DATA_FFD5AA:
	dw $0001, $00B4
	dw $4001, $00B4
	dw $0002

DATA_FFD5B4:
	dw $4001, $0078
	dw $0000, $0078
	dw $0002

DATA_FFD5BE:
	dw $4001, $001E
	dw $0001, $0078
	dw $4001, $0096
	dw $0002

DATA_FFD5CC:
	dw $0000, $000F
	dw $0001, $0069
	dw $0000, $005A
	dw $0002

DATA_FFD5DA:
	dw $0001, $003C
	dw $0000, $0078
	dw $0001, $003C
	dw $0002

;unused?
	dw $0000, $0078
	dw $0001, $00F0
	dw $0002

DATA_FFD5F2:
	dw $0000, $003C
	dw $0001, $00F0
	dw $0002

;upward wind patterns
DATA_FFD5FC:
	dw $0000, $0000, $0000
	dw $0120, $0000, $0000
	dw $0150, $C350, $FF00
	dw $01F4, $0000, $0000
	dw $0240, $8200, $FF00
	dw $01B4, $0000, $0000
	dw $0570, $C200, $FF00
	dw $05B4, $0000, $0000
	dw $0798, $C200, $FF00
	dw $07A0, $0000, $0000
	dw $07D0, $8200, $FF00
	dw $07F4, $0000, $0000
	dw $0940, $8300, $FF00
	dw $0974, $0000, $0000
	dw $0C40, $8300, $FF00
	dw $0C74, $0000, $0000
	dw $0D10, $8200, $FF80
	dw $0D34, $0000, $0000
	dw $0EC0, $C200, $FF00
	dw $0EE0, $0000, $0000
	dw $0F10, $8200, $FF00
	dw $0F34, $0000, $0000
	dw $0FF0, $82C0, $FF00
	dw $1008, $0000, $0000
	dw $1038, $C2C0, $FF00
	dw $11F4, $0000, $0000
	dw $1420, $C200, $FF40
	dw $1474, $0000, $0000
	dw $1510, $8200, $FF00
	dw $16B4, $0000, $0000
	dw $1730, $8300, $FF00
	dw $17B4, $0000, $0000
	dw $17F4, $C300, $FF00
	dw $1774, $0000, $0000
	dw $1968, $8300, $FF00
	dw $19B4, $0000, $0000
	dw $1AF0, $8300, $FF00
	dw $1B44, $0000, $0000
	dw $1B70, $0000, $FF00
	dw $1BB4, $0000, $0000
	dw $1C70, $C200, $FF00
	dw $1CB4, $0000, $0000
	dw $1DA8, $C200, $FF00
	dw $1E31, $0000, $0000
	dw $1E34, $C2D0, $FF00
	dw $1E32, $0000, $0000
	dw $1EF8, $0000, $FF00
	dw $1F32, $0000, $0000
	dw $1FF0, $8300, $FF00
	dw $7FFF, $0000, $0000


DATA_FFD728:
	dw $0000, $0000, $0000
	dw $01D4, $0000, $0000
	dw $0270, $C370, $FE80
	dw $7FFF, $0000, $0000

DATA_FFD740:
	dw !initcommand_load_subconfig, DATA_FF9A2C
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_4A, $0030
	dw !initcommand_success

clapper_water_into_ice_base_init:
	dw sprite.type, !sprite_clapper
	dw sprite.render_order, $00D4
	dw sprite.interaction_flags, $0020
	dw sprite.state, $0001
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $006F
	dw !initcommand_set_animation, $01B7
	dw !initcommand_success

clapper_lava_into_water_base_init:
	dw sprite.type, !sprite_clapper
	dw sprite.render_order, $00D4
	dw sprite.interaction_flags, $0020
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $006F
	dw !initcommand_set_animation, $01B7
	dw !initcommand_success

DATA_FFD78E:
	dw !initcommand_load_subconfig, clapper_water_into_ice_base_init
	dw sprite.general_purpose_42, $4000
	dw sprite.general_purpose_44, $0294
	dw !initcommand_success

DATA_FFD79C:
	dw !initcommand_load_subconfig, clapper_water_into_ice_base_init
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $01E0
	dw !initcommand_success

DATA_FFD7AA:
	dw !initcommand_load_subconfig, clapper_water_into_ice_base_init
	dw sprite.general_purpose_42, $4000
	dw sprite.general_purpose_44, $01A4
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFD7BC:
	dw !initcommand_load_subconfig, clapper_water_into_ice_base_init
	dw sprite.general_purpose_42, $4000
	dw sprite.general_purpose_44, $0258
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFD7CE:
	dw !initcommand_load_subconfig, clapper_water_into_ice_base_init
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0258
	dw !initcommand_success

DATA_FFD7DC:
	dw !initcommand_load_subconfig, clapper_water_into_ice_base_init
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $021C
	dw !initcommand_success

DATA_FFD7EA:
	dw !initcommand_load_subconfig, clapper_lava_into_water_base_init
	dw sprite.general_purpose_42, $4000
	dw sprite.general_purpose_44, $030C
	dw !initcommand_success

DATA_FFD7F8:
	dw !initcommand_load_subconfig, clapper_lava_into_water_base_init
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0348
	dw !initcommand_success

DATA_FFD806:
	dw !initcommand_load_subconfig, clapper_lava_into_water_base_init
	dw sprite.general_purpose_42, $4000
	dw sprite.general_purpose_44, $0384
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFD818:
	dw !initcommand_load_subconfig, clapper_lava_into_water_base_init
	dw sprite.general_purpose_42, $4000
	dw sprite.general_purpose_44, $0528
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFD82A:
	dw !initcommand_load_subconfig, clapper_lava_into_water_base_init
	dw sprite.general_purpose_42, $4000
	dw sprite.general_purpose_44, $0438
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFD83C:
	dw !initcommand_load_subconfig, clapper_lava_into_water_base_init
	dw sprite.general_purpose_42, $4000
	dw sprite.general_purpose_44, $05DC
	dw !initcommand_success

DATA_FFD84A:
	dw !initcommand_load_subconfig, clapper_lava_into_water_base_init
	dw sprite.general_purpose_42, $4000
	dw sprite.general_purpose_44, $0528
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFD85C:
	dw !initcommand_load_subconfig, clapper_lava_into_water_base_init
	dw sprite.general_purpose_42, $4000
	dw sprite.general_purpose_44, $01E0
	dw !initcommand_success

DATA_FFD86A:
	dw sprite.type, !sprite_camera_unlock_trigger
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $0022
	dw sprite.general_purpose_44, $001D
	dw !initcommand_success

DATA_FFD87C:
	dw sprite.type, !sprite_camera_unlock_trigger
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $0004
	dw sprite.general_purpose_44, $000F
	dw !initcommand_success

DATA_FFD88E:
	dw sprite.type, !sprite_camera_unlock_trigger
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $000C
	dw sprite.general_purpose_44, $0009
	dw !initcommand_success

DATA_FFD8A0:
	dw sprite.type, !sprite_camera_unlock_trigger
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $0006
	dw sprite.general_purpose_44, $000A
	dw !initcommand_success

DATA_FFD8B2:
	dw sprite.type, !sprite_camera_unlock_trigger
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $0008
	dw sprite.general_purpose_44, $0004
	dw !initcommand_success

DATA_FFD8C4:
	dw sprite.type, !sprite_camera_unlock_trigger
	dw sprite.state, $0001
	dw sprite.general_purpose_42, $000C
	dw sprite.general_purpose_44, $0017
	dw !initcommand_success

DATA_FFD8D6:
	dw sprite.type, !sprite_camera_unlock_trigger
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FFD8E0:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0009
	dw sprite.general_purpose_44, $1010
	dw sprite.general_purpose_46, $8000
	dw !initcommand_success

DATA_FFD8F2:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $000B
	dw sprite.general_purpose_44, $2020
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD904:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0012
	dw sprite.general_purpose_44, $2020
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD916:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0014
	dw sprite.general_purpose_44, $4040
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD928:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $000F
	dw sprite.general_purpose_44, $4040
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD93A:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $000B
	dw sprite.general_purpose_44, $4040
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD94C:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0006
	dw sprite.general_purpose_44, $4040
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD95E:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $2020
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD970:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0005
	dw sprite.general_purpose_44, $2020
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD982:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0004
	dw sprite.general_purpose_44, $2020
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD994:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $000E
	dw sprite.general_purpose_44, $1818
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD9A6:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $000D
	dw sprite.general_purpose_44, $3030
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD9B8:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0021
	dw sprite.general_purpose_44, $5050
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD9CA:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0007
	dw sprite.general_purpose_44, $1818
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD9DC:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0019
	dw sprite.general_purpose_44, $5050
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFD9EE:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $001C
	dw sprite.general_purpose_44, $1818
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFDA00:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $1818
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFDA12:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $000C
	dw sprite.general_purpose_44, $6060
	dw sprite.general_purpose_46, $5050
	dw !initcommand_success

DATA_FFDA24:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0009
	dw sprite.general_purpose_44, $6060
	dw sprite.general_purpose_46, $2040
	dw !initcommand_success

DATA_FFDA36:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $000D
	dw sprite.general_purpose_44, $B060
	dw sprite.general_purpose_46, $FF00
	dw !initcommand_success

DATA_FFDA48:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0010
	dw sprite.general_purpose_44, $B0B0
	dw sprite.general_purpose_46, $FF00
	dw !initcommand_success

DATA_FFDA5A:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $000F
	dw sprite.general_purpose_44, $B0B0
	dw sprite.general_purpose_46, $FF00
	dw !initcommand_success

DATA_FFDA6C:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $000E
	dw sprite.general_purpose_44, $B0B0
	dw sprite.general_purpose_46, $FF00
	dw !initcommand_success

DATA_FFDA7E:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0010
	dw sprite.general_purpose_44, $B0B0
	dw sprite.general_purpose_46, $FF00
	dw !initcommand_success

DATA_FFDA90:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $B0B0
	dw sprite.general_purpose_46, $FF00
	dw !initcommand_success

DATA_FFDAA2:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $000C
	dw sprite.general_purpose_44, $B000
	dw sprite.general_purpose_46, $8000
	dw !initcommand_success

DATA_FFDAB4:
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0008
	dw sprite.general_purpose_44, $B0B0
	dw sprite.general_purpose_46, $FF00
	dw !initcommand_success

DATA_FFDAC6:
if !version == 1
	dw !initcommand_load_subconfig, DATA_FFD8D6
	dw sprite.general_purpose_42, $0004
	dw sprite.general_purpose_44, $00C0
	dw sprite.general_purpose_46, $FF00
	dw !initcommand_success
endif

DATA_FFDAD8:
	dw sprite.type, !sprite_fg_occluder
	dw !initcommand_success

DATA_FFDADE:
	dw sprite.type, !sprite_kremcoin_cheat_handler
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FFDAE8:
	dw sprite.type, !sprite_chest_spawner
	dw sprite.state, $0000
	dw sprite.general_purpose_42, DATA_FFB966
	dw sprite.general_purpose_44, $0004
	dw sprite.general_purpose_46, $0019
	dw sprite.general_purpose_48, $0010
	dw sprite.constants_address, DATA_FFDB06
	dw !initcommand_success

DATA_FFDB06:
	db $4C, $01, $C0, $01, $74, $01, $C0, $01
	db $9C, $01, $C0, $01, $C4, $01, $C0, $01

DATA_FFDB16:
	dw sprite.type, !sprite_barrel_cannon
	dw sprite.render_order, $00EC
	dw sprite.state, $0000
	dw sprite.parameter, $0014
	dw !initcommand_set_oam, $3000
	dw !initcommand_set_alt_palette, $0002
	dw sprite.unknown_1A, $08CC
	dw !initcommand_success

DATA_FFDB34:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0001, $0001, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFDB56:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $A01F, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0001, $0001, $0000, $0400, $0000
	dw !initcommand_success

DATA_FFDB78:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $20E0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0001, $0001, $0000, $0400, $0000
	dw !initcommand_success

DATA_FFDB9A:
	dw !initcommand_load_subconfig, DATA_FF9A2C
	dw sprite.state, $0002
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_4A, $0008
	dw !initcommand_success

DATA_FFDBB0:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0013
	dw sprite.general_purpose_44, $0005
	dw sprite.general_purpose_46, $0010
	dw !initcommand_success

DATA_FFDBC2:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0013
	dw sprite.general_purpose_44, $0004
	dw sprite.general_purpose_46, $0010
	dw !initcommand_success

DATA_FFDBD4:
	dw !initcommand_load_subconfig, DATA_FFB966
	dw sprite.general_purpose_42, $0013
	dw sprite.general_purpose_44, $0007
	dw sprite.general_purpose_46, $0010
	dw !initcommand_success

DATA_FFDBE6:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FF40
	dw sprite.general_purpose_46, $F030
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFDC00:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FF40
	dw sprite.general_purpose_46, $E800
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFDC1A:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $FF40
	dw sprite.general_purpose_46, $F058
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFDC34:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $00C0
	dw sprite.general_purpose_46, $00C8
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_success


DATA_FFDC4A:
	dw !initcommand_load_subconfig, DATA_FFA53C
	dw sprite.max_x_speed, $00C0
	dw sprite.general_purpose_46, $00E8
	dw sprite.max_y_speed, $0060
	dw sprite.general_purpose_4A, $0303
	dw !initcommand_success

;unknown script (likely puftup)
DATA_FFDC60:
	db $FA : dw DATA_FFB8E7
	db $FC : dw $001E
	db $FF

DATA_FFDC67:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFDC60
	dw !initcommand_success

DATA_FFDC71:
	dw !initcommand_load_subconfig, DATA_FFB3D6
	dw sprite.parameter, DATA_FFDC60
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFDC7F:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $05F0
	dw sprite.y_speed, $0200
	dw sprite.general_purpose_42, $C0C0
	dw !initcommand_success

DATA_FFDC91:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $012C
	dw sprite.y_speed, $FF70
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFDCA3:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $012C
	dw sprite.y_speed, $FF40
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFDCB5:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $010C
	dw sprite.y_speed, $FE00
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFDCC7:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $010C
	dw sprite.y_speed, $FEA0
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFDCD9:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $010C
	dw sprite.y_speed, $FEF0
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFDCEB:
	dw !initcommand_load_subconfig, DATA_FFABC8
	dw sprite.general_purpose_4E, $012C
	dw sprite.y_speed, $FFB0
	dw sprite.general_purpose_42, $FFFF
	dw !initcommand_success

DATA_FFDCFD:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $000A
	dw !initcommand_success

DATA_FFDD0F:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $000F
	dw !initcommand_success

DATA_FFDD21:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $0014
	dw !initcommand_success

DATA_FFDD33:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $0019
	dw !initcommand_success

DATA_FFDD45:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $0028
	dw !initcommand_success

DATA_FFDD57:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $0023
	dw !initcommand_success

DATA_FFDD69:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $003C
	dw !initcommand_success

DATA_FFDD7B:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_46, $001E
	dw !initcommand_success

DATA_FFDD8D:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0008
	dw sprite.general_purpose_46, $0014
	dw !initcommand_success

DATA_FFDD9F:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0005
	dw sprite.general_purpose_46, $0023
	dw !initcommand_success

DATA_FFDDB1:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0007
	dw sprite.general_purpose_46, $000F
	dw !initcommand_success

DATA_FFDDC3:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0008
	dw sprite.general_purpose_46, $000F
	dw !initcommand_success

DATA_FFDDD5:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0008
	dw sprite.general_purpose_46, $0019
	dw !initcommand_success

DATA_FFDDE7:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0003
	dw sprite.general_purpose_46, $000F
	dw !initcommand_success

DATA_FFDDF9:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0004
	dw sprite.general_purpose_46, $000F
	dw !initcommand_success

DATA_FFDE0B:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0005
	dw sprite.general_purpose_46, $0019
	dw !initcommand_success

DATA_FFDE1D:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0009
	dw sprite.general_purpose_46, $001E
	dw !initcommand_success

DATA_FFDE2F:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $000A
	dw sprite.general_purpose_46, $0023
	dw !initcommand_success

DATA_FFDE41:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0005
	dw sprite.general_purpose_46, $0014
	dw !initcommand_success

DATA_FFDE53:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $000C
	dw sprite.general_purpose_46, $0028
	dw !initcommand_success

DATA_FFDE65:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0008
	dw sprite.general_purpose_46, $001E
	dw !initcommand_success

DATA_FFDE77:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $000C
	dw sprite.general_purpose_46, $000F
	dw !initcommand_success

DATA_FFDE89:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0006
	dw sprite.general_purpose_46, $000A
	dw !initcommand_success

DATA_FFDE9B:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0005
	dw sprite.general_purpose_46, $000A
	dw !initcommand_success

DATA_FFDEAD:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0050
	dw sprite.general_purpose_46, $0014
	dw !initcommand_success

DATA_FFDEBF:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0075
	dw sprite.general_purpose_46, $0028
	dw !initcommand_success

DATA_FFDED1:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0065
	dw sprite.general_purpose_46, $0028
	dw !initcommand_success

DATA_FFDEE3:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0100
	dw sprite.general_purpose_46, $0014
	dw !initcommand_success

DATA_FFDEF5:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0040
	dw sprite.general_purpose_46, $0028
	dw !initcommand_success

DATA_FFDF07:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0075
	dw sprite.general_purpose_46, $0019
	dw !initcommand_success

DATA_FFDF19:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0040
	dw sprite.general_purpose_46, $001E
	dw !initcommand_success

DATA_FFDF2B:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0060
	dw sprite.general_purpose_46, $0014
	dw !initcommand_success

DATA_FFDF3D:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0030
	dw sprite.general_purpose_46, $0014
	dw !initcommand_success

DATA_FFDF4F:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0080
	dw sprite.general_purpose_46, $000F
	dw !initcommand_success

DATA_FFDF61:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0120
	dw sprite.general_purpose_46, $0011
	dw !initcommand_success

DATA_FFDF73:
	dw !initcommand_load_subconfig, DATA_FFD35A
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_44, $0030
	dw sprite.general_purpose_46, $001E
	dw !initcommand_success

DATA_FFDF85:
	dw !initcommand_load_subconfig, DATA_FF34AC
	dw sprite.general_purpose_42, $0168
	dw !initcommand_success

DATA_FFDF8F:
	dw !initcommand_load_subconfig, DATA_FF941A
	dw sprite.state, $0000
	dw sprite.general_purpose_44, $0020
	dw sprite.general_purpose_46, $0020
	dw sprite.general_purpose_48, $0040
	dw !initcommand_success

DATA_FFDFA5:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FF40
	dw sprite.general_purpose_46, $0808
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFDFB7:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $7070
	dw !initcommand_success

DATA_FFDFC9:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $B030
	dw !initcommand_success

DATA_FFDFDB:
	dw !initcommand_load_subconfig, DATA_FF2B00
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $4848
	dw !initcommand_success

DATA_FFDFED:
	dw !initcommand_load_subconfig, DATA_FF74D0
	dw sprite.ground_y_position, $0800
	dw sprite.ground_distance, $FF80
	dw sprite.unknown_22, $0000
	dw sprite.unknown_28, $0500
	dw sprite.x_speed, $0300
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFE00B:
	dw !initcommand_load_subconfig, DATA_FF7528
	dw sprite.general_purpose_4E, $7FFF
	dw !initcommand_success

DATA_FFE015:
	dw !initcommand_load_subconfig, DATA_FF750A
	dw sprite.general_purpose_4E, $7FFF
	dw !initcommand_success

DATA_FFE01F:
	dw !initcommand_load_subconfig, DATA_FFDFED
	dw sprite.general_purpose_4E, $0078
	dw !initcommand_success

DATA_FFE029:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $0100
	dw sprite.movement_state, $0023
	dw sprite.general_purpose_46, $3838
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFE03F:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $00C0
	dw sprite.movement_state, $0023
	dw sprite.general_purpose_46, $0808
	dw !initcommand_success

DATA_FFE051:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw sprite.movement_state, $220C
	dw sprite.x_sub_position, $0078
	dw !initcommand_success

DATA_FFE067:
	dw !initcommand_load_subconfig, DATA_FF30EC
	dw sprite.max_x_speed, $FC80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFE075:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $6868
	dw !initcommand_success

DATA_FFE087:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw sprite.general_purpose_46, $D000
	dw !initcommand_success

DATA_FFE099:
	dw !initcommand_load_subconfig, DATA_FF2DD6
	dw sprite.max_x_speed, $0100
	dw sprite.general_purpose_46, $2020
	dw !initcommand_success

DATA_FFE0A7:
	dw !initcommand_load_subconfig, DATA_FF2D98
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFE0B5:
	dw !initcommand_load_subconfig, DATA_FFA2A6
	dw sprite.general_purpose_4A, $A000
	dw sprite.max_y_speed, $FF00
	dw sprite.general_purpose_4E, $0110
	dw sprite.general_purpose_48, $0078
	dw !initcommand_success

DATA_FFE0CB:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $4040
	dw sprite.max_y_speed, $FF00
	dw !initcommand_success

DATA_FFE0D9:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $2020
	dw sprite.max_y_speed, $00A0
	dw !initcommand_success

DATA_FFE0E7:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $FEE0
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFE0F9:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $4040
	dw sprite.max_y_speed, $FEC0
	dw !initcommand_success

DATA_FFE107:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $3030
	dw sprite.max_y_speed, $0100
	dw !initcommand_success

DATA_FFE115:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $6000
	dw sprite.max_y_speed, $0100
	dw !initcommand_success

DATA_FFE123:
	dw !initcommand_load_subconfig, DATA_FF7D68
	dw sprite.general_purpose_4A, $5050
	dw sprite.max_y_speed, $FF30
	dw !initcommand_success

DATA_FFE131:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3828
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFE143:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $6060
	dw sprite.max_x_speed, $0180
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFE155:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $20A0
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FFE163:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $3030
	dw sprite.max_x_speed, $FF00
	dw !initcommand_success

DATA_FFE171:
	dw !initcommand_load_subconfig, DATA_FF8144
	dw sprite.general_purpose_46, $0858
	dw sprite.max_x_speed, $FE80
	dw !initcommand_success

DATA_FFE17F:
	dw !initcommand_load_subconfig, DATA_FF891C
	dw !initcommand_set_animation, $0196
	dw sprite.general_purpose_46, $A000
	dw sprite.general_purpose_48, $3000
	dw sprite.general_purpose_4A, $40A0
	dw sprite.max_x_speed, $0480
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFE19D:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0080
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $FC80
	dw !initcommand_success

DATA_FFE1AF:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0380
	dw !initcommand_success

DATA_FFE1C1:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $5000
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FFE1D3:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $C000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $FD80
	dw !initcommand_success

DATA_FFE1E5:
	dw !initcommand_load_subconfig, DATA_FF8520
	dw sprite.general_purpose_46, $4000
	dw sprite.general_purpose_48, $3000
	dw sprite.max_x_speed, $0280
	dw !initcommand_success

DATA_FFE1F7:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $8000
	dw sprite.general_purpose_48, $4000
	dw sprite.max_x_speed, $0120
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFE20D:
	dw !initcommand_load_subconfig, DATA_FF8D84
	dw sprite.general_purpose_46, $0000
	dw sprite.general_purpose_48, $4000
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFE223:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $1070
	dw sprite.max_y_speed, $FE60
	dw !initcommand_success

DATA_FFE23D:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $7010
	dw sprite.max_y_speed, $FE60
	dw !initcommand_success

DATA_FFE257:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $4040
	dw sprite.max_y_speed, $FE60
	dw !initcommand_success

DATA_FFE271:
	dw !initcommand_load_subconfig, DATA_FF8A0C
	dw !initcommand_set_animation, $0197
	dw sprite.general_purpose_46, $0202
	dw sprite.max_x_speed, $0040
	dw sprite.general_purpose_4A, $3838
	dw sprite.max_y_speed, $FF00
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFE28F:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $6058
	dw sprite.max_x_speed, $FF00
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFE2A1:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $0100
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFE2B3:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $8830
	dw sprite.max_x_speed, $FE80
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFE2C5:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $00B8
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FFE2D3:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $4078
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FFE2E1:
	dw !initcommand_load_subconfig, DATA_FF9B44
	dw sprite.general_purpose_46, $8080
	dw sprite.max_x_speed, $0200
	dw !initcommand_success

DATA_FFE2EF:
	dw !initcommand_load_subconfig, DATA_FF9D3C
	dw !initcommand_set_animation, $019A
	dw sprite.movement_state, $0007
	dw sprite.general_purpose_46, $2020
	dw sprite.max_x_speed, $FEC0
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_success

DATA_FFE30D:
	dw !initcommand_load_subconfig, DATA_FF9D3C
	dw !initcommand_set_animation, $019A
	dw sprite.movement_state, $0007
	dw sprite.general_purpose_46, $B070
	dw sprite.max_x_speed, $FF00
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_success

DATA_FFE32B:
	dw !initcommand_load_subconfig, DATA_FF9D3C
	dw !initcommand_set_animation, $019A
	dw sprite.movement_state, $0007
	dw sprite.general_purpose_46, $FF21
	dw sprite.max_x_speed, $FF00
	dw sprite.general_purpose_4A, $0203
	dw sprite.max_y_speed, $0060
	dw !initcommand_success

DATA_FFE349:
	dw !initcommand_load_subconfig, DATA_FF9EB2
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FFE357:
	dw !initcommand_load_subconfig, DATA_FF9EB2
	dw sprite.general_purpose_46, $5050
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFE369:
	dw !initcommand_load_subconfig, DATA_FF9E2E
	dw sprite.general_purpose_4A, $1010
	dw sprite.max_y_speed, $0100
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFE37B:
	dw !initcommand_load_subconfig, DATA_FFA946
	dw sprite.ground_y_position, $8080
	dw sprite.ground_distance, $8080
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFE38D:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $2424
	dw sprite.max_x_speed, $0200
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFE39F:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $2070
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FFE3AD:
	dw !initcommand_load_subconfig, DATA_FF9FFA
	dw sprite.general_purpose_46, $7020
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFE3BF:
	dw !initcommand_load_subconfig, DATA_FF9FFA
if !version == 0
	dw sprite.general_purpose_46, $3060
else
	dw sprite.general_purpose_46, $3050
endif
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_success

DATA_FFE3CD:
	dw !initcommand_load_subconfig, DATA_FF9FF0
	dw sprite.movement_state, $220C
	dw sprite.x_sub_position, $008C
	dw !initcommand_success

DATA_FFE3DB:
	dw !initcommand_load_subconfig, DATA_FF9FF0
	dw sprite.max_x_speed, $0140
	dw !initcommand_set_oam, $2000
	dw sprite.movement_state, $220C
	dw sprite.x_sub_position, $008C
	dw !initcommand_success

DATA_FFE3F1:
	dw !initcommand_load_subconfig, DATA_FF6618
	dw !initcommand_set_animation, $017D
	dw sprite.movement_state, $0011
	dw sprite.constants_address, DATA_FF0450
	dw sprite.unknown_22, DATA_FF6BAA
	dw !initcommand_success

DATA_FFE407:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0040, $000C, $0200
	dw $0080, $0420, $0011, $0040, $0000, $0300, $D800
	dw !initcommand_success

DATA_FFE429:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $2020, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE44B:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $A060, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE46D:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $E020, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE48F:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $A0E0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE4B1:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $6020, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE4D3:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $E0A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE4F5:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $A021, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE517:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $A11F, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE539:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $DF61, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE55B:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $1FA1, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE57D:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $61DF, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE59F:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $9F21, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE5C1:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $219F, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE5E3:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $E15F, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE605:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $5FE1, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE627:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $20E0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE649:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $20E0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE66B:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $60A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE68D:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0804, $A060, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0030, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE6AF:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0804, $6020, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0030, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE6D1:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $E0E0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE6F3:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $8080, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0010, $0001, $0000, $0300, $1EEC
	dw !initcommand_success

DATA_FFE715:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $6060, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0008, $0001, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE737:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $2020, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0008, $0001, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE759:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $E0E0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0008, $0001, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE77B:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0028, $0001, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE79D:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $4040, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0028, $0001, $0000, $0300, $1E00
	dw !initcommand_success

DATA_FFE7BF:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $0000, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0008, $0001, $0000, $0300, $0023
	dw !initcommand_success

DATA_FFE7E1:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $E020, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0008, $0001, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE803:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $6060, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0014, $0020, $0000, $0300, $2700
	dw !initcommand_success

DATA_FFE825:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $A060, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0003, $0010, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE847:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0804, $0020, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0008, $0001, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE869:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $60A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0003, $0250, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE88B:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $E0E0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0008, $0001, $0000, $0300, $0000
	dw !initcommand_success

DATA_FFE8AD:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0804, $C080, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0400, $0000
	dw !initcommand_success

DATA_FFE8CF:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0804, $4000, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0010, $0024, $0000, $0400, $0000
	dw !initcommand_success

DATA_FFE8F1:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0014, $0014, $0203, $0400, $0000
	dw !initcommand_success

DATA_FFE913:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $9080, $0003, $0040, $000C, $0200
	dw $0080, $001D, $001F, $0050, $0203, $0400, $00E2
	dw !initcommand_success

DATA_FFE935:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $E15F, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFE957:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $A060, $0003, $0040, $000C, $0190
	dw $0080, $001C, $0014, $0048, $0000, $0800, $00E2
	dw !initcommand_success

DATA_FFE979:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $A0E0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0600, $00E2
	dw !initcommand_success

DATA_FFE99B:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $E0A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0600, $00E2
	dw !initcommand_success

DATA_FFE9BD:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $6020, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0600, $001E
	dw !initcommand_success

DATA_FFE9DF:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0028, $0001, $0000, $0300, $0028
	dw !initcommand_success

DATA_FFEA01:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $E0E0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0008, $0001, $0000, $0300, $E228
	dw !initcommand_success

DATA_FFEA23:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $8080, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0010, $0001, $0000, $0300, $28E2
	dw !initcommand_success

DATA_FFEA45:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0028, $0001, $0000, $0300, $D8E2
	dw !initcommand_success

DATA_FFEA67:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $A060, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0003, $0010, $0000, $0300, $ECD3
	dw !initcommand_success

DATA_FFEA89:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $5FE1, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $1400
	dw !initcommand_success

DATA_FFEAAB:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $60A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0003, $0250, $0000, $0300, $002D
	dw !initcommand_success

DATA_FFEACD:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $2020, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0008, $0001, $0000, $0300, $14D8
	dw !initcommand_success

DATA_FFEAEF:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $2020, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0008, $0001, $0000, $0300, $ECD8
	dw !initcommand_success

DATA_FFEB11:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $A060, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0003, $0010, $0000, $0300, $14D8
	dw !initcommand_success

DATA_FFEB33:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $60A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0600, $1400
	dw !initcommand_success

DATA_FFEB55:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $2020, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0020, $0000, $0600, $1400
	dw !initcommand_success

DATA_FFEB77:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $4040, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0028, $0001, $0000, $0300, $28D8
	dw !initcommand_success

DATA_FFEB99:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0028, $0001, $0000, $0300, $1E28
	dw !initcommand_success

DATA_FFEBBB:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $E0A0, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0600, $00EC
	dw !initcommand_success

DATA_FFEBDD:
	dw !initcommand_load_subconfig, DATA_FFDB16
	dw !initcommand_bulk_set
	dw $0000, $2060, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0020, $0001, $0000, $0600, $0000
	dw !initcommand_success

DATA_FFEBFF:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0804, $9F21, $0003, $0040, $000C, $0100
	dw $0040, $0018, $0008, $0001, $0000, $0500, $0000
	dw !initcommand_success

DATA_FFEC21:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $80C0, $0003, $0040, $000C, $0100
	dw $0080, $001D, $002D, $0001, $0000, $0400, $0000
	dw !initcommand_success

DATA_FFEC43:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $4020, $0003, $0040, $000C, $0200
	dw $0080, $0320, $0020, $0040, $0000, $0300, $001E
	dw !initcommand_success

DATA_FFEC65:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0804, $C080, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0050, $0050, $0000, $0400, $0000
	dw !initcommand_success

DATA_FFEC87:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $C13F, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0050, $0050, $0000, $0800, $00D3
	dw !initcommand_success

DATA_FFECA9:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $C13F, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0050, $0050, $0000, $0A00, $00D3
	dw !initcommand_success

DATA_FFECCB:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $8040, $0003, $0040, $000C, $0200
	dw $0080, $0020, $0004, $0004, $0000, $0400, $0000
	dw !initcommand_success

DATA_FFECED:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0005, $0000, $0400, $14D8
	dw !initcommand_success

DATA_FFED0F:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0800, $C000, $0003, $0040, $000C, $0200
	dw $0080, $0016, $0001, $0020, $0000, $0500, $D800
	dw !initcommand_success

DATA_FFED31:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $001F, $0006, $0030, $0000, $0800, $E2D8
	dw !initcommand_success

DATA_FFED53:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $000C, $8080, $0003, $0040, $000C, $0200
	dw $0080, $0010, $0014, $000C, $0000, $0400, $14D8
	dw !initcommand_success

DATA_FFED75:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $A0A0, $0003, $0040, $000C, $0190
	dw $0080, $001C, $0014, $0048, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFED97:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $E0E0, $0003, $0040, $000C, $0200
	dw $0080, $001C, $001A, $0048, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFEDB9:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $2020, $0003, $0040, $000C, $0200
	dw $0080, $001C, $001A, $0048, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFEDDB:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $6060, $0003, $0040, $000C, $0200
	dw $0080, $001C, $001A, $0048, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFEDFD:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $C0C0, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0010, $0048, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFEE1F:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0040, $0048, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFEE41:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0060, $0048, $0000, $0800, $00EC
	dw !initcommand_success

DATA_FFEE63:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0020, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFEE85:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $A0A0, $0003, $0040, $000C, $0200
	dw $0080, $001C, $000D, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFEEA7:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $001F, $0060, $0000, $0800, $28E2
	dw !initcommand_success

DATA_FFEEC9:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0100
	dw $0060, $0016, $0020, $0028, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFEEEB:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0004, $B060, $0003, $0040, $000C, $0190
	dw $0080, $001C, $0018, $0048, $0000, $0800, $00E7
	dw !initcommand_success

DATA_FFEF0D:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000C, $000C, $0000, $0800, $280A
	dw !initcommand_success

DATA_FFEF2F:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0006, $000C, $0000, $0800, $280A
	dw !initcommand_success

DATA_FFEF51:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001A, $0012, $000C, $0000, $0800, $280A
	dw !initcommand_success

DATA_FFEF73:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $001E, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFEF95:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4004, $8080, $0003, $0040, $000C, $0200
	dw $0080, $001C, $0016, $0018, $0000, $0800, $0000
	dw !initcommand_success

DATA_FFEFB7:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $42E4, $8080, $0100, $0180, $000C, $0140
	dw $0080, $001A, $0010, $0001, $0000, $0300, $1E00
	dw !initcommand_success

DATA_FFEFD9:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001F, $000D, $0000, $0102, $0400, $0000
	dw !initcommand_success

DATA_FFEFFB:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $2004, $8040, $0003, $0040, $000C, $0200
	dw $0080, $001F, $000D, $0000, $0102, $0400, $0000
	dw !initcommand_success

DATA_FFF01D:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $8080, $0003, $0400, $000C, $0100
	dw $0080, $0218, $000C, $0018, $0000, $0100, $00E2
	dw !initcommand_success

DATA_FFF03F:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $0218, $000C, $0018, $0000, $0100, $00E2
	dw !initcommand_success

DATA_FFF061:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $6060, $0003, $0400, $000C, $0100
	dw $0080, $0218, $000C, $0018, $0000, $0100, $14E2
	dw !initcommand_success

DATA_FFF083:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $2020, $0003, $0400, $000C, $0100
	dw $0080, $0218, $000C, $0018, $0000, $0100, $1EE2
	dw !initcommand_success

DATA_FFF0A5:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0218, $000C, $0018, $0000, $0100, $00E2
	dw !initcommand_success

DATA_FFF0C7:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $4040, $0003, $0400, $000C, $0100
	dw $0080, $0218, $000C, $0018, $0000, $0100, $E2E2
	dw !initcommand_success

DATA_FFF0E9:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $6060, $0003, $0400, $000C, $0100
	dw $0080, $0218, $000C, $0018, $0000, $0100, $00E2
	dw !initcommand_success

DATA_FFF10B:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $E0E0, $0003, $0400, $000C, $0100
	dw $0080, $011F, $000C, $0000, $0000, $0300, $1EE2
	dw !initcommand_success

DATA_FFF12D:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $011F, $000C, $0000, $0000, $0300, $1E28
	dw !initcommand_success

DATA_FFF14F:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $E0E0, $0003, $0400, $000C, $0100
	dw $0080, $011F, $000C, $0000, $0000, $0300, $1E1E
	dw !initcommand_success

DATA_FFF171:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $10C0, $2020, $0060, $00C0, $000C, $01C0
	dw $0080, $031A, $0012, $0010, $0000, $0100, $2300
	dw !initcommand_success

DATA_FFF193:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $12C0, $2020, $0000, $00C0, $000C, $01C0
	dw $0080, $031A, $0012, $0010, $0000, $0100, $2300
	dw !initcommand_success

DATA_FFF1B5:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $10C0, $E0E0, $0000, $00C0, $000C, $0200
	dw $0080, $031A, $0012, $0010, $0000, $0100, $2300
	dw !initcommand_success

DATA_FFF1D7:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $50C0, $E0E0, $0000, $00C0, $000C, $01C0
	dw $0080, $031A, $0018, $0018, $0000, $0100, $2800
	dw !initcommand_success

DATA_FFF1F9:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $1000, $E0E0, $0003, $0400, $000C, $0100
	dw $0080, $0118, $0013, $0018, $0000, $0100, $14E2
	dw !initcommand_success

DATA_FFF21B:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $0000, $0003, $0400, $000C, $0100
	dw $0080, $011A, $0001, $0018, $0000, $0300, $00E2
	dw !initcommand_success

DATA_FFF23D:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $0000, $2020, $0003, $0400, $000C, $0100
	dw $0080, $011F, $000C, $0000, $0000, $0300, $1EE2
	dw !initcommand_success

DATA_FFF25F:
	dw !initcommand_load_subconfig, DATA_FF360E
	dw !initcommand_bulk_set
	dw $4810, $0000, $0003, $0040, $000C, $0200
	dw $0080, $001A, $000C, $0000, $0000, $0800, $2800
	dw !initcommand_success

DATA_FFF281:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $00F0
	dw sprite.max_x_speed, $0180
	dw !initcommand_success

DATA_FFF28F:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $3060
	dw sprite.max_x_speed, $FEC0
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFF2A1:
	dw !initcommand_load_subconfig, DATA_FF9034
	dw sprite.general_purpose_46, $0090
	dw sprite.max_x_speed, $0140
	dw !initcommand_success

DATA_FFF2AF:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.y_speed, $0000
	dw sprite.max_x_speed, $0000
	dw sprite.x_speed, $0000
	dw sprite.movement_state, $0020
	dw !initcommand_success

DATA_FFF2C5:
	dw !initcommand_load_subconfig, DATA_FFF2AF
	dw sprite.general_purpose_4C, $D0D0
	dw sprite.general_purpose_4E, $2B3B
	dw sprite.unknown_22, $0400
	dw sprite.unknown_28, $0066
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $001E
	dw !initcommand_success

DATA_FFF2E3:
	dw !initcommand_load_subconfig, DATA_FFF3E3
	dw sprite.general_purpose_4C, $0900
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0058
	dw sprite.unknown_1C, $0060
if !version == 0
	dw sprite.general_purpose_4A, $0046
	dw sprite.general_purpose_4E, $80D2
else
	dw sprite.general_purpose_4A, $0050
	dw sprite.general_purpose_4E, $80C8
endif
	dw !initcommand_set_oam, $6000
	dw !initcommand_success

DATA_FFF305:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $D0D0
	dw sprite.general_purpose_4E, $2B50
	dw sprite.unknown_22, $0200
	dw sprite.unknown_28, $0100
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $0064
	dw !initcommand_success

DATA_FFF323:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $FFD0
	dw sprite.general_purpose_4E, $2B80
	dw sprite.unknown_22, $0380
	dw sprite.unknown_28, $0068
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_success

DATA_FFF341:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $FFD0
	dw sprite.general_purpose_4E, $2BA0
	dw sprite.unknown_22, $0200
	dw sprite.unknown_28, $00D0
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $0064
	dw !initcommand_success

DATA_FFF35F:
	dw !initcommand_load_subconfig, DATA_FFF3E3
	dw sprite.general_purpose_4C, $0900
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0058
	dw sprite.unknown_1C, $0060
if !version == 0
	dw sprite.general_purpose_4A, $0046
else
	dw sprite.general_purpose_4A, $0050
endif
	dw sprite.general_purpose_4E, $012C
	dw !initcommand_success

DATA_FFF37D:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $A800
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0800
	dw sprite.unknown_28, $0030
	dw sprite.unknown_1C, $0058
	dw sprite.general_purpose_4A, $0014
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFF39F:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $FFD0
	dw sprite.general_purpose_4E, $2BA0
	dw sprite.unknown_22, $0200
	dw sprite.unknown_28, $00D0
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $0064
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFF3C1:
	dw !initcommand_load_subconfig, DATA_FFF2AF
	dw sprite.general_purpose_4C, $D0D0
	dw sprite.general_purpose_4E, $6010
	dw sprite.unknown_22, $0600
	dw sprite.unknown_28, $0070
	dw sprite.unknown_1C, $0040
	dw sprite.general_purpose_4A, $00C8
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFF3E3:
	dw !initcommand_load_subconfig, DATA_FFF2AF
	dw sprite.state, $0005
	dw sprite.unknown_22, $0400
	dw sprite.unknown_28, $0060
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $001E
	dw !initcommand_set_oam, $2000
	dw sprite.general_purpose_4C, $1900
	dw !initcommand_success

DATA_FFF405:
	dw !initcommand_load_subconfig, DATA_FFF3E3
	dw sprite.unknown_28, $0070
	dw sprite.general_purpose_4E, $00A0
	dw !initcommand_success

DATA_FFF413:
	dw !initcommand_load_subconfig, DATA_FFF3E3
	dw sprite.unknown_28, $0070
	dw sprite.general_purpose_4E, $0064
	dw !initcommand_success

DATA_FFF421:
	dw !initcommand_load_subconfig, DATA_FFF3E3
	dw sprite.unknown_28, $0070
	dw sprite.general_purpose_4E, $0028
	dw !initcommand_success

DATA_FFF42F:
	dw !initcommand_load_subconfig, DATA_FFC154
	dw sprite.general_purpose_4E, $0101
	dw sprite.general_purpose_4C, $0101
	dw sprite.max_x_speed, $0001
	dw sprite.general_purpose_46, $0101
	dw !initcommand_success

DATA_FFF445:
	dw !initcommand_load_subconfig, DATA_FFC162
	dw !initcommand_set_oam, $6000
	dw sprite.max_x_speed, $FE80
	dw sprite.general_purpose_46, $5050
	dw sprite.general_purpose_4C, $8080
if !version == 0
	dw sprite.general_purpose_4A, $0002
endif
	dw !initcommand_success

DATA_FFF45B:
	dw !initcommand_load_subconfig, DATA_FF3216
	dw sprite.x_sub_position, $F060
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFF469:
	dw !initcommand_load_subconfig, DATA_FF3216
	dw sprite.x_sub_position, $D024
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFF477:
	dw !initcommand_load_subconfig, DATA_FF3216
	dw sprite.x_sub_position, $D024
	dw !initcommand_success

DATA_FFF481:
	dw !initcommand_load_subconfig, DATA_FF31FA
	dw sprite.constants_address, DATA_FF026A
	dw sprite.x_sub_position, $E0E0
if !version == 0
	dw sprite.unknown_22, $003C
endif
	dw !initcommand_success

DATA_FFF48F:
	dw !initcommand_load_subconfig, DATA_FFCB8A
	dw sprite.general_purpose_42, $3838
	dw sprite.general_purpose_44, $C018
	dw sprite.unknown_28, $0020
	dw sprite.general_purpose_46, $FD00
	dw sprite.general_purpose_48, $01E0
	dw sprite.general_purpose_4A, $0064
	dw sprite.general_purpose_4C, DATA_FFCCD0
	dw !initcommand_success

DATA_FFF4B1:
	dw !initcommand_load_subconfig, DATA_FFCB8A
	dw sprite.general_purpose_42, $4040
	dw sprite.general_purpose_44, $6008
	dw sprite.unknown_28, $0020
	dw sprite.general_purpose_46, $FD00
	dw sprite.general_purpose_48, $01E0
	dw sprite.general_purpose_4A, $0078
	dw sprite.general_purpose_4C, DATA_FFCCD0
	dw !initcommand_success

skull_kart_base_init:
	dw sprite.type, !sprite_skull_cart
	dw sprite.render_order, $00D0
	dw sprite.constants_address, DATA_FF046E
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0027
	dw sprite.unknown_3E, $0010
	dw sprite.x_force, $0000
	dw sprite.parameter, $0000
	dw !initcommand_success

DATA_FFF4F5:
	dw !initcommand_load_subconfig, skull_kart_base_init
	dw sprite.general_purpose_46, $0003
	dw sprite.unknown_22, $0300
	dw sprite.unknown_28, $0500
	dw sprite.x_force, $0000
	dw !initcommand_success

DATA_FFF50B:
	dw !initcommand_load_subconfig, DATA_FFF4F5
	dw sprite.state, $0000
	dw sprite.max_y_speed, $03C0
	dw sprite.unknown_5C, DATA_FFF5F1
	dw !initcommand_success

DATA_FFF51D:
	dw !initcommand_load_subconfig, DATA_FFF4F5
	dw sprite.state, $0100
	dw sprite.general_purpose_42, $0001
	dw sprite.max_y_speed, $0300
	dw sprite.unknown_5C, DATA_FFF651
	dw !initcommand_success

DATA_FFF533:
	dw !initcommand_load_subconfig, DATA_FFF4F5
	dw sprite.state, $0100
	dw sprite.general_purpose_42, $0002
	dw sprite.max_y_speed, $0300
	dw sprite.x_force, $F800
	dw sprite.general_purpose_4E, $5040
	dw sprite.unknown_5C, DATA_FFF6B3
	dw sprite.unknown_3E, $8600
	dw !initcommand_success

DATA_FFF555:
	dw !initcommand_load_subconfig, DATA_FFF4F5
	dw sprite.state, $0100
	dw sprite.general_purpose_42, $0003
	dw sprite.max_y_speed, $0300
	dw sprite.unknown_5C, DATA_FFF627
	dw sprite.unknown_3E, $0510
	dw !initcommand_success

DATA_FFF56F:
	dw !initcommand_load_subconfig, DATA_FFF4F5
	dw sprite.state, $0100
	dw sprite.general_purpose_42, $0004
	dw sprite.max_y_speed, $0380
	dw sprite.unknown_5C, DATA_FFF687
	dw sprite.unknown_3E, $0610
	dw !initcommand_success

DATA_FFF589:
	dw !initcommand_load_subconfig, DATA_FFF4F5
	dw sprite.unknown_22, $FB00
	dw sprite.unknown_28, $0500
	dw sprite.max_y_speed, $0420
	dw sprite.unknown_5C, DATA_FFF6B9
	dw sprite.unknown_3E, $0010
	dw !initcommand_success

DATA_FFF5A3:
	dw !initcommand_load_subconfig, DATA_FFF4F5
	dw sprite.state, $0000
	dw sprite.max_y_speed, $0800
	dw sprite.unknown_22, $0700
	dw sprite.unknown_28, $0800
	dw sprite.unknown_5C, DATA_FFF5F1
	dw !initcommand_success

DATA_FFF5BD:
	dw !initcommand_load_subconfig, DATA_FFF4F5
	dw sprite.state, $0000
	dw sprite.max_y_speed, $0500
	dw sprite.unknown_22, $0400
	dw sprite.unknown_28, $0500
	dw sprite.unknown_5C, DATA_FFF5F1
	dw !initcommand_success

DATA_FFF5D7:
	dw !initcommand_load_subconfig, DATA_FFF4F5
	dw sprite.state, $0000
	dw sprite.max_y_speed, $0480
	dw sprite.unknown_22, $0400
	dw sprite.unknown_28, $0500
	dw sprite.unknown_5C, DATA_FFF5F1
	dw !initcommand_success

;skull cart data
DATA_FFF5F1:
	dw $07A0, $0000, $0080
	dw $0820, $0000, $0080
	dw $0FE0, $0000, $0080
	dw $1060, $0000, $0080
	dw $12F0, $028D, $0200
	dw $12F8, $020D, $0030
	dw $1340, $020D, $0500
	dw $1360, $01C1, $0300
	dw $14E0, $0289, $0200

DATA_FFF627:
	dw $15A0, $020D, $0500
	dw $1700, $0000, $0080
	dw $1780, $0000, $0080
	dw $1900, $0000, $0040
	dw $19A0, $0000, $0040
	dw $2720, $0000, $0080
	dw $27A0, $0000, $0080

DATA_FFF651:
	dw $2980, $0000, $0040
	dw $2A00, $0000, $0040
	dw $2B00, $0000, $0080
	dw $2B80, $0000, $0080
	dw $2C40, $0000, $0040
	dw $2CC0, $0000, $0040
	dw $39C0, $0000, $0080
	dw $3A40, $0000, $0080
	dw $3BC0, $0255, $0600

DATA_FFF687:
	dw $3D70, $026D, $0600
	dw $4040, $0000, $0080
	dw $40C0, $0000, $0080
	dw $4760, $0000, $0040
	dw $47D0, $0000, $0040
	dw $5400, $0000, $0080
	dw $5480, $0000, $0080
	dw $FFFF

DATA_FFF6B3:
	dw $1320, $020D, $0300

DATA_FFF6B9:
	dw $FFFF

DATA_FFF6BB:
	dw !initcommand_load_subconfig, skull_kart_base_init
	dw sprite.general_purpose_46, $0002
	dw sprite.max_y_speed, $0100
	dw sprite.unknown_22, $FC00
	dw sprite.unknown_28, $0600
	dw !initcommand_success

DATA_FFF6D1:
	dw !initcommand_load_subconfig, DATA_FFF6BB
	dw sprite.state, $0000
	dw sprite.unknown_5C, DATA_FFF6DF
	dw !initcommand_success

DATA_FFF6DF:
	dw $0480
	dw $0000, $1000, $0200
	dw $0AF8, $0000, $0040
	dw $0B68, $0000, $0040
	dw $14F8, $0000, $0040
	dw $1588, $0000, $0040
	dw $3D18, $0000, $0040
	dw $3DA8, $0000, $0040
	dw $FFFF

DATA_FFF70D:
	dw !initcommand_load_subconfig, skull_kart_base_init
	dw sprite.state, $0000
	dw sprite.general_purpose_46, $0001
	dw sprite.unknown_22, $0280
	dw sprite.unknown_28, $0480
	dw sprite.unknown_3E, $0010
	dw !initcommand_success

DATA_FFF727:
	dw sprite.unknown_5C, DATA_FFF847
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0100
	dw !initcommand_success

DATA_FFF735:
	dw sprite.unknown_5C, DATA_FFF861
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.unknown_22, $0280
	dw sprite.unknown_28, $0480
	dw sprite.max_y_speed, $0200
	dw !initcommand_success

DATA_FFF74B:
	dw sprite.unknown_5C, DATA_FFF86F
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.unknown_22, $0280
	dw sprite.max_y_speed, $0380
	dw !initcommand_success

DATA_FFF75D:
	dw sprite.unknown_5C, DATA_FFF895
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0280
	dw !initcommand_success

DATA_FFF76B:
	dw sprite.unknown_5C, DATA_FFF8A3
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0380
	dw !initcommand_success

DATA_FFF779:
	dw sprite.unknown_5C, DATA_FFF8BB
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0200
	dw !initcommand_success

DATA_FFF787:
	dw sprite.unknown_5C, DATA_FFF8BD
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0300
	dw !initcommand_success

DATA_FFF795:
	dw sprite.unknown_5C, DATA_FFF8D7
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0380
	dw !initcommand_success

DATA_FFF7A3:
	dw sprite.unknown_5C, DATA_FFF8E5
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0300
	dw !initcommand_success

DATA_FFF7B1:
	dw sprite.unknown_5C, DATA_FFF8FF
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0300
	dw !initcommand_success

DATA_FFF7BF:
	dw sprite.unknown_5C, DATA_FFF90D
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0300
	dw !initcommand_success

DATA_FFF7CD:
	dw sprite.unknown_5C, DATA_FFF91B
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0300
	dw !initcommand_success

DATA_FFF7DB:
	dw sprite.unknown_5C, DATA_FFF8F1
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.state, $0100
	dw sprite.general_purpose_42, $0003
	dw sprite.unknown_22, $0280
	dw sprite.max_y_speed, $0380
	dw !initcommand_success

DATA_FFF7F5:
	dw sprite.unknown_5C, DATA_FFF8BB
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.unknown_3E, $0408
	dw sprite.max_y_speed, $0380
	dw !initcommand_success

DATA_FFF807:
	dw sprite.unknown_5C, DATA_FFF8FF
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.unknown_28, $0600
	dw sprite.max_y_speed, $0300
	dw !initcommand_success

DATA_FFF819:
	dw sprite.unknown_5C, DATA_FFF8D7
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0480
	dw !initcommand_success

DATA_FFF827:
	dw sprite.unknown_5C, DATA_FFF935
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.max_y_speed, $0480
	dw !initcommand_success

DATA_FFF835:
	dw sprite.unknown_5C, DATA_FFF935
	dw !initcommand_load_subconfig, DATA_FFF70D
	dw sprite.unknown_3E, $0410
	dw sprite.max_y_speed, $0480
	dw !initcommand_success

;skull cart data
DATA_FFF847:
	dw $0380, $0000, $0040
	dw $0420, $0000, $0040
	dw $0A80, $0000, $0018
	dw $0B40, $0000, $0018
	dw $FFFF

DATA_FFF861:
	dw $0F40, $0000, $0018
	dw $1000, $0000, $0018
	dw $FFFF

DATA_FFF86F:
	dw $1760, $0000, $0018
	dw $1820, $0000, $0018
	dw $1A00, $0000, $0018
	dw $1AC0, $0000, $0018
	dw $1B00, $0000, $0040
	dw $1B80, $0000, $0040
	dw $FFFF

DATA_FFF895:
	dw $2260, $0000, $0018
	dw $2320, $0000, $0018
	dw $FFFF

DATA_FFF8A3:
	dw $23E0, $0000, $0100
	dw $24A0, $0000, $0100
	dw $24C0, $0000, $0100
	dw $2580, $0000, $0100
DATA_FFF8BB:
	dw $FFFF

DATA_FFF8BD:
	dw $27C0, $0000, $0018
	dw $2880, $0000, $0018
	dw $2940, $0000, $0018
	dw $2A00, $0000, $0018
	dw $FFFF

DATA_FFF8D7:
	dw $2BE0, $0000, $0018
	dw $2CA0, $0000, $0018
	dw $FFFF

DATA_FFF8E5:
	dw $3520, $0000, $0018
	dw $35E0, $0000, $0018
DATA_FFF8F1:
	dw $37E0, $0000, $0018
	dw $38A0, $0000, $0018
	dw $FFFF

DATA_FFF8FF:
	dw $3A80, $0000, $0018
	dw $3B40, $0000, $0018
	dw $FFFF

DATA_FFF90D:
	dw $3DC0, $0000, $0018
	dw $3E80, $0000, $0018
	dw $FFFF

DATA_FFF91B:
	dw $4020, $0000, $0018
	dw $40E0, $0000, $0018
	dw $41A0, $0000, $0018
	dw $4260, $0000, $0418
	dw $FFFF

DATA_FFF935:
	dw $FFFF

DATA_FFF937:
	dw !initcommand_load_subconfig, skull_kart_base_init
	dw sprite.unknown_3E, $0000
	dw sprite.unknown_5C, DATA_FFF9A1
	dw sprite.state, $0200
	dw sprite.general_purpose_46, $0004
	dw sprite.max_y_speed, $0220
	dw sprite.unknown_22, $0200
	dw sprite.unknown_28, $0600
	dw !initcommand_success

DATA_FFF959:
	dw !initcommand_load_subconfig, skull_kart_base_init
	dw sprite.unknown_3E, $0000
	dw sprite.unknown_5C, DATA_FFF9C1
	dw sprite.state, $0200
	dw sprite.general_purpose_46, $0004
	dw sprite.max_y_speed, $0300
	dw sprite.unknown_22, $0180
	dw sprite.unknown_28, $0600
	dw !initcommand_success

DATA_FFF97B:
	dw !initcommand_load_subconfig, skull_kart_base_init
	dw sprite.unknown_3E, $1000
	dw !initcommand_set_oam, $6000
	dw sprite.unknown_5C, DATA_FFF9FF
	dw sprite.state, $0200
	dw sprite.general_purpose_46, $0004
	dw sprite.max_y_speed, $FEC0
	dw sprite.unknown_22, $FEC0
	dw sprite.unknown_28, $FEC0
	dw !initcommand_success

;skull cart data
DATA_FFF9A1:
	dw $1400, $0040, $0280, $0008
	dw $1480, $0040, $03B8, $0008
	dw $1540, $0100
	dw $1580, $0080, DATA_FFFA29
	dw $16E0, $1000
	dw $FFFF

DATA_FFF9C1:
	dw $30A0, $0100
	dw $30A8, $0080, DATA_FFFA29
	dw $30B8, $0040, $03C0, $0028
	dw $3100, $0800, $0004
	dw $31E0, $0800, $0000
	dw $3240, $0100
	dw $3248, $0080, DATA_FFFA29
	dw $3280, $0040, $0300, $0028
	dw $33C0, $0040, $0300, $0028
	dw $3500, $1000
	dw $FFFF

DATA_FFF9FF:
	dw $FFFF

race_handler_init:
	dw sprite.type, !sprite_race_handler
	dw sprite.state, $0000
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $000A
	dw sprite.animation_id, DATA_FFFA17
	dw !initcommand_success

DATA_FFFA17:
	dw !initcommand_load_subconfig, skull_kart_base_init
	dw sprite.unknown_3E, $0000
	dw sprite.state, $0300
	dw sprite.general_purpose_46, $0004
	dw !initcommand_success

DATA_FFFA29:
	dw DATA_FFFA6B
	db $00, $00, $00, $00, $80, $80, $00, $02

	dw DATA_FFCA33
	db $00, $00, $00, $00, $80, $88, $00, $02

	dw DATA_FFFAB7
	db $00, $FD, $00, $FD, $80, $88, $27, $02

	dw DATA_FFFA89
	db $00, $FD, $00, $00, $80, $70, $14, $82
	db $00, $00

	dw DATA_FFFA89
	db $00, $FD, $00, $00, $80, $9C, $14, $82
	db $00, $00

	dw DATA_FFC584
	db $00, $FD, $00, $FB, $88, $78, $13, $81
	db $1C, $00

DATA_FFFA6B:
	dw !initcommand_load_subconfig, DATA_FFC9C3
	dw !initcommand_set_animation, $02FA
	dw !initcommand_set_alt_palette, $0002
	dw sprite.state, $0000
	dw sprite.y_speed, $FD00
	dw sprite.x_speed, $FC00
	dw sprite.max_x_speed, $FDC0
	dw !initcommand_success

DATA_FFFA89:
	dw sprite.type, !sprite_shot_canball_or_barrel
	dw sprite.constants_address, DATA_FF021C
	dw sprite.render_order, $00C8
	dw sprite.constants_address, DATA_FF0214
	dw !initcommand_set_oam, $6000
	dw sprite.interaction_flags, $0020
	dw !initcommand_set_alt_palette, $0002
	dw !initcommand_set_animation, $02FA
	dw sprite.general_purpose_4A, $4008
	dw sprite.state, $0002
	dw sprite.parameter, $0000
	dw !initcommand_success

DATA_FFFAB7:
	dw !initcommand_load_subconfig, DATA_FFFC09
	dw sprite.constants_address, DATA_FF021C
	dw !initcommand_set_animation, $01B3
	dw sprite.general_purpose_42, $FD00
	dw sprite.state, $0001
	dw !initcommand_success

DATA_FFFACD:
	dw sprite.type, !sprite_haunted_hall_door
	dw sprite.render_order, $00EC
	dw sprite.constants_address, DATA_FF021C
	dw sprite.state, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0030
	dw !initcommand_set_animation, $01AC
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, DATA_FFFAF7
	dw sprite.general_purpose_46, $0000
	dw !initcommand_success

DATA_FFFAF7:
	dw !initcommand_spawn_relative, $0000, $0000
	dw sprite.type, !sprite_haunted_hall_door
	dw sprite.render_order, $00C4
	dw sprite.constants_address, DATA_FF021C
	dw sprite.state, $0101
	dw sprite.general_purpose_42, $FFFF
	dw sprite.general_purpose_46, $0000
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0030
	dw !initcommand_set_animation, $01AD
	dw !initcommand_success

DATA_FFFB23:
	dw !initcommand_load_subconfig, DATA_FFFACD
	dw sprite.general_purpose_4C, $0400
	dw !initcommand_success

DATA_FFFB2D:
	dw !initcommand_load_subconfig, DATA_FFFACD
	dw sprite.general_purpose_4C, $0500
	dw !initcommand_success

DATA_FFFB37:
	dw !initcommand_load_subconfig, DATA_FFFACD
	dw sprite.general_purpose_4C, $0400
	dw !initcommand_success

DATA_FFFB41:
	dw !initcommand_load_subconfig, DATA_FFFACD
	dw sprite.general_purpose_4C, $0400
	dw !initcommand_success

DATA_FFFB4B:
	dw !initcommand_load_subconfig, DATA_FFFACD
	dw sprite.general_purpose_4C, $0400
	dw !initcommand_success

DATA_FFFB55:
	dw !initcommand_load_subconfig, DATA_FFFACD
	dw sprite.general_purpose_4C, $0400
	dw !initcommand_success

DATA_FFFB5F:
	dw !initcommand_load_subconfig, DATA_FFFACD
	dw sprite.general_purpose_4C, $0400
	dw !initcommand_success

DATA_FFFB69:
	dw !initcommand_load_subconfig, DATA_FFFACD
	dw sprite.general_purpose_4C, $0400
	dw !initcommand_success

DATA_FFFB73:
	dw sprite.general_purpose_42, $0000
	dw sprite.general_purpose_44, $0050
DATA_FFFB7B:
	dw sprite.type, !sprite_haunted_hall_door
	dw sprite.render_order, $00C4
	dw sprite.constants_address, DATA_FF021C
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $002D
	dw !initcommand_set_animation, $01AE
	dw sprite.state, $0002
	dw sprite.general_purpose_46, $0050
	dw !initcommand_success

DATA_FFFB9D:
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $0000
	dw !initcommand_load_subconfig, DATA_FFFB7B
	dw !initcommand_success

DATA_FFFBAB:
	dw !initcommand_load_subconfig, DATA_FFFB7B
	dw sprite.general_purpose_44, $0050
	dw sprite.state, $0302
	dw !initcommand_success

DATA_FFFBB9:
	dw sprite.general_purpose_42, $1812
	dw sprite.general_purpose_44, $71FD
	dw sprite.general_purpose_46, $1832
	dw sprite.general_purpose_48, $71FD
	dw sprite.general_purpose_4E, $0000
DATA_FFFBCD:
	dw !initcommand_set_animation, $02DA
	dw sprite.type, !sprite_gate_barrel
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $2000
	dw !initcommand_set_alt_palette, $0028
	dw sprite.state, $0000
	dw sprite.general_purpose_4A, $1852
	dw sprite.general_purpose_4C, $71FD
	dw !initcommand_success

DATA_FFFBEF:
	dw sprite.general_purpose_42, $1832
	dw sprite.general_purpose_44, $71FD
	dw sprite.general_purpose_46, $1812
	dw sprite.general_purpose_48, $71FD
	dw sprite.general_purpose_4E, $0001
	dw !initcommand_load_subconfig, DATA_FFFBCD
	dw !initcommand_success

DATA_FFFC09:
	dw sprite.type, !sprite_plus_and_minus_barrel
	dw !initcommand_set_alt_palette, $0028
	dw sprite.render_order, $00C8
	dw !initcommand_set_oam, $2000
	dw sprite.general_purpose_4E, $0000
	dw !initcommand_success

DATA_FFFC1F:
	dw !initcommand_load_subconfig, DATA_FFFC09
	dw !initcommand_set_animation, $01B2
	dw sprite.general_purpose_42, $0005
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FFFC31:
	dw !initcommand_load_subconfig, DATA_FFFC09
	dw !initcommand_set_animation, $01B2
	dw sprite.general_purpose_42, $0001
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FFFC43:
	dw !initcommand_load_subconfig, DATA_FFFC09
	dw !initcommand_set_animation, $01B2
	dw sprite.general_purpose_42, $0004
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FFFC55:
	dw !initcommand_load_subconfig, DATA_FFFC09
	dw !initcommand_set_animation, $01B2
	dw sprite.general_purpose_42, $0006
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FFFC67:
	dw !initcommand_load_subconfig, DATA_FFFC09
	dw !initcommand_set_animation, $01B3
	dw sprite.general_purpose_42, $FFFB
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FFFC79:
	dw !initcommand_load_subconfig, DATA_FFFC09
	dw !initcommand_set_animation, $01B3
	dw sprite.general_purpose_42, $FC00
	dw sprite.state, $0001
	dw !initcommand_success

DATA_FFFC8B:
	dw !initcommand_load_subconfig, DATA_FFFC09
	dw !initcommand_set_animation, $01B4
	dw sprite.state, $0002
	dw sprite.general_purpose_42, $0200
	dw sprite.general_purpose_44, $0700
	dw !initcommand_success

DATA_FFFCA1:
	dw !initcommand_load_subconfig, DATA_FFFC09
	dw !initcommand_set_animation, $01B4
	dw sprite.state, $0002
	dw sprite.general_purpose_42, $FB00
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_4E, $0001
	dw !initcommand_success

DATA_FFFCBB:
	dw sprite.type, !sprite_kackle
	dw sprite.constants_address, DATA_FF021C
	dw sprite.oam_property, $1502
	dw sprite.state, $0000
	dw !initcommand_success

DATA_FFFCCD:
	dw !initcommand_load_subconfig, DATA_FFFCBB
	dw sprite.parameter, DATA_FFFD05
	dw sprite.x_sub_position, $0000
	dw !initcommand_success

DATA_FFFCDB:
	dw !initcommand_load_subconfig, DATA_FFFCBB
	dw sprite.parameter, DATA_FFFD23
	dw sprite.x_sub_position, $0100
	dw !initcommand_success

DATA_FFFCE9:
	dw !initcommand_load_subconfig, DATA_FFFCBB
	dw sprite.parameter, DATA_FFFD41
	dw sprite.x_sub_position, $0120
	dw !initcommand_success

DATA_FFFCF7:
	dw !initcommand_load_subconfig, DATA_FFFCBB
	dw sprite.parameter, DATA_FFFD5F
	dw sprite.x_sub_position, $0140
	dw !initcommand_success

;kackle scripts
DATA_FFFD05:
	db $FA : dw DATA_FFC8CC
	db $FA : dw DATA_FFFD7D
	db $FC : dw $003C
	db $5C : dw $0034
	db $0E : dw $0038
	db $1C : dw $1E09
	db $FA : dw DATA_FFFD90
	db $F6 : dw $1020, $0000
	db $FA : dw DATA_FFFD7D
	db $FF

DATA_FFFD23:
	db $FA : dw DATA_FFC8CC
	db $FA : dw DATA_FFFD7D
	db $FC : dw $003C
	db $5C : dw $0034
	db $0E : dw $0038
	db $1C : dw $1E08
	db $FA : dw DATA_FFFD90
	db $F6 : dw $2760, $0000
	db $FA : dw DATA_FFFD7D
	db $FF

DATA_FFFD41:
	db $FA : dw DATA_FFC8CC
	db $FA : dw DATA_FFFD7D
	db $FC : dw $003C
	db $5C : dw $0034
	db $0E : dw $0038
	db $1C : dw $1E23
	db $FA : dw DATA_FFFD90
	db $F6 : dw $3A00, $0000
	db $FA : dw DATA_FFFD7D
	db $FF

DATA_FFFD5F:
	db $FA : dw DATA_FFC8CC
	db $FA : dw DATA_FFFD7D
	db $FC : dw $003C
	db $5C : dw $0034
	db $0E : dw $0038
	db $1C : dw $1E0C
	db $FA : dw DATA_FFFD90
	db $F6 : dw $5450, $0000
	db $FA : dw DATA_FFFD7D
	db $FF

DATA_FFFD7D:
	db $52 : dw $0007
	db $46 : dw $0404
	db $26 : dw $0040
	db $4A : dw $0404
	db $2A : dw $0100
	db $2C : dw $0000
	db $F9

DATA_FFFD90:
	db $52 : dw $0024
	db $4A : dw $0404
	db $2A : dw $FF00
	db $F9

DATA_FFFD9A:
	dw !initcommand_spawn_relative, $0000, $FFC0
DATA_FFFDA0:
	dw !initcommand_load_subconfig, DATA_FFFDD2
	dw sprite.movement_state, $2827
	dw !initcommand_success

DATA_FFFDB0:
	dw !initcommand_spawn_relative, $0000, $FFC0
	dw !initcommand_load_subconfig, DATA_FFFDD2
	dw sprite.movement_state, $2827
	dw sprite.general_purpose_4A, $F100
	dw !initcommand_success

DATA_FFFDBE:
	dw !initcommand_spawn_relative, $0000, $FFC0
	dw !initcommand_load_subconfig, DATA_FFFDD2
	dw sprite.movement_state, $2827
	dw sprite.general_purpose_4A, $F280
	dw !initcommand_success

DATA_FFFDD2:
	dw sprite.type, !sprite_giant_tire
	dw sprite.state, $0200
	dw sprite.unknown_1C, $0000
	dw !initcommand_set_alt_palette, $00B5
	dw !initcommand_set_animation, $01C6
	dw !initcommand_set_oam, $2000
	dw sprite.constants_address, DATA_FF021C
	dw sprite.render_order, $00D4
	dw sprite.parameter, $0000
	dw sprite.interaction_flags, $0000
	dw sprite.x_speed, $0000
	dw sprite.y_speed, $0000
	dw sprite.movement_state, $0028
	dw sprite.general_purpose_42, $0020
	dw sprite.general_purpose_44, $FE00
	dw sprite.general_purpose_48, $0300
	dw sprite.general_purpose_4A, $F400
	dw sprite.general_purpose_4C, $0070
	dw sprite.general_purpose_4E, $0800
	dw !initcommand_success

DATA_FFFE20:
	dw !initcommand_load_subconfig, DATA_FFFDD2
	dw sprite.y_speed, $0000
	dw sprite.max_x_speed, $FC00
	dw sprite.general_purpose_42, $0008
	dw !initcommand_success

DATA_FFFE32:
	dw !initcommand_load_subconfig, DATA_FFFDD2
	dw sprite.y_speed, $0000
	dw sprite.max_x_speed, $FC80
	dw sprite.general_purpose_42, $0008
	dw !initcommand_success

DATA_FFFE44:
	dw sprite.type, !sprite_giant_tire
	dw sprite.state, $0100
	dw sprite.oam_property, $0000
	dw sprite.general_purpose_44, $0000
	dw sprite.general_purpose_48, DATA_FFFD9A
	dw sprite.general_purpose_4A, $0080
	dw !initcommand_success

DATA_FFFE5E:
	dw !initcommand_load_subconfig, DATA_FFFE44
	dw sprite.general_purpose_42, $0002
	dw sprite.general_purpose_46, $0064
	dw sprite.y_speed, $0100
	dw sprite.x_speed, $FF00
	dw sprite.max_x_speed, $FD00
	dw !initcommand_success

DATA_FFFE78:
	dw !initcommand_load_subconfig, DATA_FFFE44
	dw sprite.general_purpose_42, $0003
	dw sprite.general_purpose_46, $00A5
	dw sprite.y_speed, $0100
	dw sprite.x_speed, $FF80
	dw sprite.max_x_speed, $FD00
	dw !initcommand_success

DATA_FFFE92:
	dw !initcommand_load_subconfig, DATA_FFFE44
	dw sprite.general_purpose_42, $0006
	dw sprite.general_purpose_46, $0064
	dw sprite.y_speed, $0100
	dw sprite.x_speed, $FF80
	dw sprite.max_x_speed, $FD00
	dw !initcommand_success

DATA_FFFEAC:
	dw !initcommand_load_subconfig, DATA_FFFE44
	dw sprite.general_purpose_42, $0006
	dw sprite.general_purpose_46, $0073
	dw sprite.y_speed, $0100
	dw sprite.x_speed, $FF80
	dw sprite.max_x_speed, $FD00
	dw sprite.general_purpose_48, DATA_FFFDB0
	dw !initcommand_success

DATA_FFFECA:
	dw !initcommand_load_subconfig, DATA_FFFE44
	dw sprite.general_purpose_42, $0001
	dw sprite.general_purpose_44, $006E
	dw sprite.general_purpose_46, $07D0
	dw sprite.y_speed, $0100
	dw sprite.x_speed, $FF80
	dw sprite.max_x_speed, $FD00
	dw !initcommand_success

DATA_FFFEE8:
	dw !initcommand_load_subconfig, DATA_FFFE44
	dw sprite.general_purpose_42, $0006
	dw sprite.general_purpose_46, $0064
	dw sprite.y_speed, $0100
	dw sprite.x_speed, $FF80
	dw sprite.max_x_speed, $FD00
	dw sprite.general_purpose_48, DATA_FFFDBE
	dw !initcommand_success

DATA_FFFF06:
	dw !initcommand_load_subconfig, DATA_FFFE44
	dw sprite.general_purpose_42, $0006
	dw sprite.general_purpose_46, $0064
	dw sprite.y_speed, $0100
	dw sprite.x_speed, $FF80
	dw sprite.max_x_speed, $FD00
	dw !initcommand_success

DATA_FFFF20:
	dw !initcommand_load_subconfig, DATA_FFFE44
	dw sprite.general_purpose_42, $0006
	dw sprite.general_purpose_46, $006E
	dw sprite.y_speed, $0100
	dw sprite.x_speed, $FF80
	dw sprite.max_x_speed, $FD00
	dw !initcommand_success

if !version == 0
DATA_FFFF2A:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $A800
	dw sprite.general_purpose_4E, $8080
	dw sprite.unknown_22, $0800
	dw sprite.unknown_28, $0030
	dw sprite.unknown_1C, $0058
	dw sprite.general_purpose_4A, $0014
	dw !initcommand_set_oam, $2000
	dw !initcommand_success

DATA_FFFF4C:
	dw !initcommand_load_subconfig, DATA_FFBB18
	dw sprite.general_purpose_4C, $FFD0
	dw sprite.general_purpose_4E, $2B80
	dw sprite.unknown_22, $0380
	dw sprite.unknown_28, $0068
	dw sprite.unknown_1C, $0020
	dw sprite.general_purpose_4A, $003C
	dw !initcommand_success
DATA_FFFF6A:
endif