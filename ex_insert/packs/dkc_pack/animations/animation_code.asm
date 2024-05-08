gnawty_turning_logic:
	LDY #!last_used_animation_id+1
	JSL turn_sprite_if_needed
	RTS