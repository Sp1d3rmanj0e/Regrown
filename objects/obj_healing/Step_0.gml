/// @description gain health
scr_followPlayer(0,0);

// heal 1 cell per loop
healCounter += 1;
if (healCounter >= room_speed/healthPerSecond) {
	healCounter = 0;
	obj_player.P_health += 1;
	obj_player.nanobotCount--;
	audio_stop_sound(snd_heal);
	audio_play_sound(snd_heal,1,false);
}

// cancel loop if at full heath
if (obj_player.P_health >= obj_player.P_maxHealth) or (obj_player.nanobotCount <= 0) {
	instance_destroy();

}