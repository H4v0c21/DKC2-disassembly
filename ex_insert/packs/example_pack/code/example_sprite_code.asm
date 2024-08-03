example_sprite_main:
	LDX $64
	LDA $54,x
	STA $8E
	LDA $2E,x
	ASL 
	TAX 
	JMP (.example_sprite_behavior_table,x)

.example_sprite_behavior_table
	dw .idle

.idle
	JSL process_animations 
	JSL prepare_sprite_collision
	JSL check_for_player_collision
	BCC .no_collision
	LDY #$0000
	LDA [$8E],y
	JSL queue_sound_effect
.no_collision
	JML [$05A9]