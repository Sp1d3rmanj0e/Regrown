// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ratChase(){
	
	// if going to player
	moveDirection = sign(target.x-x); //figures out which direction to go
	
	switch (moveDirection) {
		
		case 1: key_right = 1; break;
		case -1: key_left = 1; break;
	}
	
	// attack if close enough
	if (distance_to_object(target) < enemyAttackRadius) {
		sprite_index = sprAttack;
		attackSequenceTime = 0;
		state = ENEMYSTATE.ATTACK;
		
	}
	
	// if can't find player
	
	if (distance_to_object(target) > enemyAggroRadius) {
		
		chaseForgetTime -= 1/room_speed;
		
		// stop chasing if time runs out
		if (chaseForgetTime <= 0) {
			
			state = ENEMYSTATE.WANDER;
		}
	}
	else {
		
		// reset timer if enemy finds player again
		chaseForgetTime = 2.5;
	}
	
	// reduce fleeing valor if needed
	if (fleeingValor > 0) {
		
		fleeingValor -= 1/room_speed;
	}
	
	// run if health is too low
	
	if (enemyHealth <= enemyFleeHealth) and (fleeingValor <= 0) {
		
		state = ENEMYSTATE.FLEE;
		runCalmTime = 5; // delay before it can wander again
	}
}