/// @description preparation

// keybind initialization
if (freeze = false)
{
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_spaceP = keyboard_check_pressed(vk_space);
	key_spaceH = keyboard_check(vk_space) || keyboard_check(ord("W"));
	key_crouch = keyboard_check(vk_control) || keyboard_check(ord("S"));
	key_attack = mouse_check_button_pressed(mb_left);
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
		if (ds_grid_get(global.powerup_grid,4,global.orgFill)) {
			
			powTest(global.orgFill);
		}
	}
	if (global.synFill != -4) {
		if (ds_grid_get(global.powerup_grid,4,global.synFill)) {
			
			powTest(global.synFill);
		}
	}
}