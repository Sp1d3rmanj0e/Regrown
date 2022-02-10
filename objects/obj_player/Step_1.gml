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
}

#endregion
#region Basic Mobility

var move = walkSp * (key_right-key_left);

hsp = move;

vsp += grv;

#endregion

function fling(dir,mag)
{
	x_move = lengthdir_x(mag,dir);
	y_move = lengthdir_y(mag,dir);
}
if (abs(x_move) > 0.1)
{
	x_move /= 1.1;
} else x_move = 0;

if (abs(y_move) > 0.1)
{
	y_move /= 1.6;
} else y_move = 0;

hsp += x_move;
vsp += y_move;