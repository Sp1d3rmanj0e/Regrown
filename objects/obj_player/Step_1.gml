/// @description preparation

// keybind initialization
if (freeze = false)
{
	key_right = input_check(KB.RIGHT);
	key_left = input_check(KB.LEFT);
	key_spaceP = input_check_pressed(KB.JUMP);
	key_spaceH = input_check(KB.JUMP) || input_check(KB.JUMPALT);
	key_crouch = input_check(KB.CROUCH) || input_check(KB.CROUCHALT);
	key_attack = input_check_pressed(KB.ATTACK);
	key_orgAttack = input_check(KB.ORGATTACK);
	key_synAttack = input_check(KB.SYNATTACK);
}
// become dead if health is too low
if (P_health <= 0) {
	state = PLAYERSTATE.DEAD;
}

// player state engine
if (!global.gamePaused) {
	
	switch (state) {
		
		case PLAYERSTATE.FREE: PlayerState_Free(); break;
		case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash(); break;
		case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo(); break;
		case PLAYERSTATE.DEAD: PlayerState_Dead(); break;
	}
}

// powerup state engine
if (!global.gamePaused) {
	
	if (global.orgFill != -4) {
		
		// get script and execute
		var _orgScript = ds_grid_get(global.powerup_grid,4,global.orgFill);
		if (_orgScript) {
			
			_orgScript(key_orgAttack);
		}
	}
	
	if (global.synFill != -4) {
		
		// get script and execute
		var _synScript = ds_grid_get(global.powerup_grid,4,global.orgFill);
		if (_synScript) {
			
			_synScript(key_synAttack);
		}
	}
}