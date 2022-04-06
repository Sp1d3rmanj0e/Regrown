/// @description preparation

// keybind initialization
if (freeze = false)
{
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_spaceP = keyboard_check_pressed(vk_space);
	key_spaceH = keyboard_check(vk_space) || keyboard_check(ord("W"));
	key_crouch = 0//keyboard_check(vk_control);
	key_attack = mouse_check_button_pressed(mb_left);
}

// become dead if health is too low
if (P_health <= 0) {
	state = PLAYERSTATE.DEAD;
}

// player state engine
if (!global.gamePaused) {
	switch (state)
	{
		case PLAYERSTATE.FREE: PlayerState_Free(); break;
		case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash(); break;
		case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo(); break;
		case PLAYERSTATE.DEAD: PlayerState_Dead(); break;
	}
}