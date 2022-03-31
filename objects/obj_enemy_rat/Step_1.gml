/// @description enemy AI

// reset controls
key_right = 0;
key_left = 0;
key_spaceP = 0; 
key_spaceH = 0;
key_crouch = 0;


if (touching_wall != 0) key_spaceH = 1; // jump when facing a wall

if (hp <= 0) exit; // stop code if dead

// checks if enemy can see player (not through walls)
if (view_range >= distance_to_object(obj_player)) // if player is close enough to be seen
{
	if (alarm[5] == -1)
	{
		alarm[5] = 0.25 * room_speed; // activates line_of_sight()
	}
} else lineof_sight = false;
