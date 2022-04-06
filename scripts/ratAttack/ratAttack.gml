// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ratAttack() {

	enemySpeed = ogwalkSp * 1.5;

	attackSequenceTime += 1/room_speed;

	// prep for jump
	
	//NERFED RAT OPTION
//if (attackSequenceTime < 1) moveDirection = sign(target.x-x); // figures out which direction to go

	// jump and move after delay
	if (attackSequenceTime > 1) {
	
		key_spaceH = 1;
	
		moveDirection = sign(target.x-x); // figures out which direction to go
	
		switch (moveDirection) {
		
			case 1: key_right = 1; break;
			case -1: key_left = 1; break;
		}
	
	}

	// check if able to attack
	if (distance_to_object(target) < enemyAttackReach) and (attackSequenceTime > 0.5) {
	
		enemyAttack(target, enemyDamage);
	}

	// reduce fleeing valor if needed
	if (fleeingValor > 0) {
		
		fleeingValor -= 1/room_speed;
	}
	
	// run if health is too low
	if (enemyHealth <= enemyFleeHealth) and (fleeingValor <= 0) {
		
		state = ENEMYSTATE.FLEE;
		runCalmTime = 3; // delay before it can wander again
	}

	// revert back to chase state after attacking
	if (attackSequenceTime > 1.5) and (!airborne) {
	
	enemySpeed = ogwalkSp;
	state = ENEMYSTATE.CHASE;
	}
}