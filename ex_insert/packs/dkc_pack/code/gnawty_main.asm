gnawty_main:
	LDX $64
	LDA $54,x
	STA $8E
	LDA $2E,x
	ASL 
	TAX 
	JMP (.behavior_table,x)

.behavior_table
	dw .walk

.walk
	JSL process_animations 
	JSL process_current_movement
	JSL prepare_sprite_collision
	LDA #$000F
	JSL check_for_player_collision_with_flags
	BCC .no_collision
	LDA #$0507
	JSL queue_sound_effect
	JSL kill_sprite
	
.no_collision
	JML [$05A9]
