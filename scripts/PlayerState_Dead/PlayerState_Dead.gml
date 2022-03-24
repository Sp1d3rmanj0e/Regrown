

if (instance_exists(obj_player))
{
if (!lock) {
	image_index = 0;
	lock = true;
	audio_play_sound(snd_die,100,false);
}
Collisions(0); 
sprite_index = spr_playerAlt_Dead;

	
if (animation_end()) {
	lock = false;
	with (obj_player) {
		P_health = P_maxHealth; //Set Health to Full
		
		//Go to the room your checkpoint is in
		room_goto(respawnRoom);
		
		//Goto Checkpoint coords
		x = respawnX;
		y = respawnY;
		
		state = PLAYERSTATE.FREE; //Go Back to Normal
	}

}
}