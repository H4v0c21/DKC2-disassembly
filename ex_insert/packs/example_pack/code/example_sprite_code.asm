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
	dw .do_things

.idle
	JSL $B9D100		;process animations	 
	JSL $BCFB58
	JSR .handle_sprite_collision
	JML [$05A9]

.do_things
	LDA #!last_used_animation_id
	JSL $B9D0C6		;play custom ex animation
	JSL $B9D100		;process animations
	LDY #$0000
	LDA [$8E],y
	JSL $B58003		;queue sound effect
	LDX $64
	INC $42,x
	STZ $2E,x
	JML [$05A9]

.handle_sprite_collision
	LDA $42,x
	BNE .return
	;JSL $BEBE6D		;check collision with kong
	JSL $BEBE62		;check collision with kong
	BCS .collision_happened
.return
	CLC
	RTS	

.collision_happened
	INC $2E,x
	RTS