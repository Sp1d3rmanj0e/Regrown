function PlayerState_Dead() {

	if (!lock) {
		image_index = 0;
		lock = true;
		audio_play_sound(snd_die,100,false);
	}
	Collisions(0); 
	sprite_index = spr_enemyDie;

	
	if (animation_end()) {
		lock = false;
		with (obj_player) {
			P_health = P_maxHealth; // reset health
			nanobotCount = maxNanobotCount; // reset nanobots
			//Go to the room your checkpoint is in
			global.saveObjects = 0;
			room_goto(respawnRoom);
		
			//Goto Checkpoint coords
			x = respawnX;
			y = respawnY-50;
		
			state = PLAYERSTATE.FREE; //Go Back to Normal
		}

	}
}