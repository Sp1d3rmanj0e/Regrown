function tBotAttack() {
	
	sprite_index = sprAttack;
	
	image_xscale = sign(obj_player.x-x);
	
	attackSequenceTime += 1/room_speed;
	fuse += 1/(room_speed/sprite_get_speed(sprite_index));
	image_index = fuse;
	
	// explode when animation ends
	if (animation_end()) {
		
		enemyHealth = 0;
		if (distance_to_object(target) < enemyAttackReach)
			enemyAttack(target,damage,25);
	}
	
	if (distance_to_object(target) < enemyAttackReach) attackSequenceTime = 0;
	// delay to stop exploding
	if (attackSequenceTime > 0.25) switchState(ENEMYSTATE.CHASE);
}
	
function tBotChase() {
	
	if (hsp == 0) sprite_index = sprIdle;
	else sprite_index = sprMove;
	
	// if going to player
	followTarget(target,1);
	
	// attack if close enough
	if (distance_to_object(target) < enemyAttackRadius) and (!enemyPassive) {
		//sprite_index = sprAttack;
		attackSequenceTime = 0;
		switchState(ENEMYSTATE.ATTACK);
		
	}
	
	// if can't find player
	
	if (distance_to_object(target) > enemyAggroRadius) or (!lineof_sight) {
		
		chaseForgetTime -= 1/room_speed;
		
		// stop chasing if time runs out
		if (chaseForgetTime <= 0) {
			
			switchState(ENEMYSTATE.WANDER);
		}
	}
	else {
		
		// reset timer if enemy finds player again
		chaseForgetTime = enemyForgetTime;
	}
}
	
function tBotDie() {

	sprite_index = sprDie;
	if (animation_end()) instance_destroy();
}
	
function tBotHurt() {
	
	if (hurtStunTimer > 0) {
		
		hurtStunTimer -= 1/room_speed;
	}
	else {
		if (previousState = ENEMYSTATE.ATTACK) {
			
			attackSequenceTime /= 2;
		}
		switchState(previousState);
	}
}

function tBotIdle() {

	sprite_index = sprIdle;
}
	
function tBotRun() {
	
	if (hsp == 0) sprite_index = sprIdle;
	else sprite_index = sprMove;
	
	// increase running speed
	enemySpeed = ogwalkSp+0.75;

	// move away from player
	followTarget(obj_player,-1);

	// calm down timer
	fleeingValor = 7;
	runCalmTime -= 1/room_speed;

	if (runCalmTime <= 0) {
		
		enemySpeed = ogwalkSp;
		switchState(ENEMYSTATE.WANDER);
	}
}
	
function tBotWander() {
	
	// if enemy sees player

	if (instance_exists(obj_player) && distance_to_object(obj_player) < enemyAggroRadius) && (lineof_sight) {
		
		switchState(ENEMYSTATE.CHASE)
		target = obj_player;
		motionTime = 0;
	}
	sprite_index = sprIdle;
}

