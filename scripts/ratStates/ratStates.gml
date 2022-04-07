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
	
		enemyAttack(target, enemyDamage, 25);
	}

	// reduce fleeing valor if needed
	if (fleeingValor > 0) {
		
		fleeingValor -= 1/room_speed;
	}
	
	// run if health is too low
	if (enemyHealth <= enemyFleeHealth) and (fleeingValor <= 0) {
		
		switchState(ENEMYSTATE.FLEE);
		runCalmTime = 3; // delay before it can wander again
	}

	// revert back to chase state after attacking
	if (attackSequenceTime > 2) and (!airborne) {
	
	enemySpeed = ogwalkSp;
	switchState(ENEMYSTATE.CHASE);
	}
}
	
function ratChase() {
	
	// if going to player
	moveDirection = sign(target.x-x); //figures out which direction to go
	
	switch (moveDirection) {
		
		case 1: key_right = 1; break;
		case -1: key_left = 1; break;
	}
	
	// attack if close enough
	if (distance_to_object(target) < enemyAttackRadius) and (!enemyPassive) {
		sprite_index = sprAttack;
		attackSequenceTime = 0;
		switchState(ENEMYSTATE.ATTACK);
		
	}
	
	// if can't find player
	
	if (distance_to_object(target) > enemyAggroRadius) {
		
		chaseForgetTime -= 1/room_speed;
		
		// stop chasing if time runs out
		if (chaseForgetTime <= 0) {
			
			switchState(ENEMYSTATE.WANDER);
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
		
		switchState(ENEMYSTATE.FLEE);
		runCalmTime = 3; // delay before it can wander again
	}
}
	
function ratDie() {

	sprite_index = sprDie;
	if (animation_end()) instance_destroy();
}
	
function ratHurt() {
	
	if (hurtStunTimer > 0) {
		
		hurtStunTimer -= 1/room_speed;
	}
	else {
		
		switchState(previousState);
	}
}

function ratIdle() {

	sprite_index = sprIdle;
}
	
function ratRun() {

	// increase running speed
	enemySpeed = ogwalkSp+0.75;

	// move away from player
	moveDirection = -sign(obj_player.x-x);

	switch(moveDirection) {
	
		case 1: key_right = 1; break;
		case -1: key_left = 1; break;
	}

	// calm down timer
	fleeingValor = 7;
	runCalmTime -= 1/room_speed;

	if (runCalmTime <= 0) {
		
		enemySpeed = ogwalkSp;
		switchState(ENEMYSTATE.WANDER);
	}
}
	
function ratWander() {

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
		
		switchState(ENEMYSTATE.CHASE)
		target = obj_player;
		motionTime = 0;
	}
	
}

