if !ex_patch == 1
	incsrc "ex_patch/custom_level_code_handlers.asm"
endif

padbyte $00 : pad $020000
