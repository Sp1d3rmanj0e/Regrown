/// @description 
#region Keybind Setup
//Initialization
if (freeze = false)
{
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_spaceP = keyboard_check_pressed(vk_space);
	key_spaceH = keyboard_check(vk_space);
	key_crouch = 0//keyboard_check(vk_control);
	key_attack = mouse_check_button_pressed(mb_left);
}

#endregion

switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash(); break;
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo(); break;
}
