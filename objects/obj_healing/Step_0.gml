/// @description Gain Health
scr_followPlayer(0,0);

healPercent += 100/healthPerSecond;
if (healPercent >= 100) {
	healPercent = 0;
	addHealth();
}



if (obj_player.P_health >= obj_player.P_maxHealth) { //If at full health, cancel
	obj_player.P_health = obj_player.P_maxHealth;
	instance_destroy();

}