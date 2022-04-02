/// @description enemy AI


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



#region motion limitations

var dist_from_origin = x-xstart;

if (abs(dist_from_origin) > max_origin_dist) // if too far from origin
{
	if (sign(dist_from_origin) == 1) // if player is to the right
	{
		if (move_direction == 1) move_direction = 0;
	} else { // if player is to the left
		if (move_direction == -1) move_direction = 0;
	}
}

var move = key_right - key_left;

safeFall = false;

if (move != 0) {
	var check = move * TILE_SIZE/2; //Gets the x coordinate of the tile to either the left or right of them
	for (var i = 0; i < cliff_height; i++) {

		if (tilemap_get_at_pixel(tilemap,x+check,y+i*TILE_SIZE) != 0) or (airborne == true){
			safeFall = true;
		}
	}
	
}
if (safeFall = false) and (move != 0){
	if (move = 1) {
		key_right = 0;
	} else if (move = -1) {
		key_left = 0;
	}
}
#endregion
