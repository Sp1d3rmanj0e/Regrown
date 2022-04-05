/// @description enemy Logic


// reset controls
key_right = 0;
key_left = 0;
key_spaceP = 0; 
key_spaceH = 0;
key_crouch = 0;


if (touching_wall != 0) key_spaceH = 1; // jump when facing a wall

if (enemyHealth <= 0) exit; // stop code if dead

distance = abs(x-obj_player.x);


#region state transitions

// checks if enemy can see player (not through walls)
if (enemyAggroRadius >= distance_to_object(obj_player)) // if player is close enough to be seen
{
	if (alarm[5] == -1)
	{
		alarm[5] = 0.25 * room_speed; // activates line_of_sight()
	}
} else lineof_sight = false;

// player is safe while in inventory
if (obj_player.safe) state = ENEMYSTATE.WANDER;

#endregion




