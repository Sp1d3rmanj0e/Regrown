// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ratHurt(){
	
	// increment time
	hurtStunTime += 1/room_speed;
	
	// revert back to normal
	if (hurtStunTime >= 1) {
		
		state = ENEMYSTATE.CHASE;
		hurtStunTime = 0;
	}
}