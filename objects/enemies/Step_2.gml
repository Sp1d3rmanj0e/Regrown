/// @description animations
if (state != ENEMYSTATE.DIE) {
	
	// animations

	if (abs(hsp) > 1) sprite_index = sprMove; else sprite_index = sprIdle;
	if (hsp != 0) {
	
		if (hsp > 0) image_xscale = 1; else image_xscale = -1;
	}
	if (state == ENEMYSTATE.ATTACK) sprite_index = sprAttack;
}