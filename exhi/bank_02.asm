if !ex_patch == 1
	incsrc "ex_patch/ex_sprite_handler.asm"
endif

padbyte $00 : pad $030000
