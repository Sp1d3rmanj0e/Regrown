/// @description Insert description here
// You can write your code in this editor

fade = 1;
fadeDirection = -1;


if (instance_exists(targetInstance))
{
	if (!instance_exists(obj_player))
	{
		instance_create_layer(0,0,"player",obj_player);
		
	}
	// Move player to target
	obj_player.x = targetInstance.x;
	obj_player.y = targetInstance.y;
	obj_player.x_origin = room_width/2;
}

// Clear Target
targetInstance = noone;