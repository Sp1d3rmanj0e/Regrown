// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ratRun(){

	// increase running speed
	enemySpeed = ogwalkSp+0.75;

	// move away from player
	moveDirection = -sign(obj_player.x-x);

	switch(moveDirection) {
	
		case 1: key_right = 1; break;
		case -1: key_left = 1; break;
	}

	// calm down timer
	fleeingValor = 10;
	runCalmTime -= 1/room_speed;

	if (runCalmTime <= 0) {
		
		enemySpeed = ogwalkSp;
		state = ENEMYSTATE.WANDER;
	}
}