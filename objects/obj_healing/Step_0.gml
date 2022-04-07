/// @description gain health
scr_followPlayer(0,0);

// heal 1 cell per loop
healPercent += 100/healthPerSecond;
if (healPercent >= 100) {
	healPercent = 0;
	obj_player.P_health += 1;
	obj_player.nanobotCount--;
}


// cancel loop if at full heath
if (obj_player.P_health >= obj_player.P_maxHealth) or (obj_player.nanobotCount <= 0) {
	instance_destroy();

}