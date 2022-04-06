// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ratWander(){

	// if changing directions
	if (motionTime <= 0) {
		
		moveDirection = irandom_range(-1,1); // -1 : left, 0 : no motion, 1 : right
		motionTime = irandom_range(1,3.5); // how long the player is moving for
	}
	else {
		
		// if doing a motion
		motionTime -= 1/room_speed;
	
		switch (moveDirection) {
		
			case 1: key_right = 1; break;
			case -1: key_left = 1; break;
		}
	}	
	
	
	// if enemy sees player

	if (instance_exists(obj_player) && distance_to_object(obj_player) < enemyAggroRadius) && (lineof_sight) {
		
		state = ENEMYSTATE.CHASE;
		target = obj_player;
		motionTime = 0;
	}
	
}

