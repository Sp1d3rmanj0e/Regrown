/// @description

if (state != ENEMYSTATE.DIE) {
	
	// animations

	if (abs(hsp) > 1) sprite_index = spr_ratRun; else sprite_index = spr_ratIdle;
	if (hsp != 0) {
	
		if (hsp > 0) image_xscale = 1; else image_xscale = -1;
	}
}