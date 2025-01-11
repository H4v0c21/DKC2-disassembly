;DATA_80FFB0:
	db $30, $31

;DATA_80FFB2:
	db $41, $44, $4E, $45

;DATA_80FFB6:
	db $00, $00, $00, $00, $00, $00, $00

;DATA_80FFBD:
	db $00

;DATA_80FFBE:
	db $00

;DATA_80FFBF:
	db $00

;DATA_80FFC0:
	db "DIDDY'S KONG QUEST   "

;DATA_80FFD5:
	db $35

;DATA_80FFD6:
	db $02

;DATA_80FFD7:
	db $0D

;DATA_80FFD8:
	db $01

;DATA_80FFD9:
	db $01

;DATA_80FFDA:
	db $33

;DATA_80FFDB:
	db !version

;DATA_80FFDC:
	db $E3, $67

;DATA_80FFDE:
	db $1C, $98

;DATA_80FFE0:
	db $44, $49, $44, $44

;DATA_80FFE4:
	db $59, $20

;DATA_80FFE6:
	db $03, $70

;DATA_80FFE8:
	db $00, $00


;DATA_80FFEA:
	dw NMI_start_force_bank_80

;DATA_80FFEC:
	db $00, $00

;DATA_80FFEE:
	dw IRQ_start_force_bank_80

;DATA_80FFF0:
	db $44, $49, $44, $44

;DATA_80FFF4:
	db $59, $20

;DATA_80FFF6:
	db $4B, $4F

;DATA_80FFF8:
	db $4E, $47

;DATA_80FFFA:
	db $00, $F8

;DATA_80FFFC:
	dw RESET_start_force_bank_80

;DATA_80FFFE:
	db $00, $70