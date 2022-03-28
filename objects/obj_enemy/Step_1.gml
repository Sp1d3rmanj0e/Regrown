/// @description Enemy AI

key_right = 0;
key_left = 0;
key_spaceP = 0; 
key_spaceH = 0;
key_crouch = 0;


if (touching_wall != 0) key_spaceH = 1; //jump when facing a wall

if (hp <= 0) exit; //stop code if dead

distance = abs(x-obj_player.x);


#region playerstate transitions

//checks if enemy can see player (not through walls)
if (view_range >= distance_to_object(obj_player)) //if player is close enough to be seen
{
	if (alarm[5] == -1)
	{
		alarm[5] = 0.25 * room_speed; //activates line_of_sight()
	}
} else lineof_sight = false;

//attack player if it sees player and isn't passive
if (lineof_sight ==	true) and (passive == false) and ((playerstate != STATE.RUN))
{
	playerstate = STATE.ATTACK;
}

//if time goes without seeing player, enemy no longer is aggro
if (lineof_sight == 1)
{
	alarm[6] = attack_forget;
}

//start patrolling if player is too close
if (distance_to_object(obj_player) < senseRange) and (alarm[6] == -1)
{
	playerstate = STATE.PATROL;
	alarm[6] = alertForget;
}

//player is safe while in inventory
if (obj_player.safe) playerstate = STATE.PATROL;

#endregion


switch (playerstate) 
{
	case 0: enemy_wander_ground(); break;
	case 1: enemy_alert_ground(); break;
	case 2: enemy_attack_melee(far_range,close_range); break;
	case 3: enemy_run_ground(safeDist); break;
}


#region motion limitations

var dist_from_origin = x-startX;

if (abs(dist_from_origin) > max_origin_dist) //If too far from origin
{
	if (sign(dist_from_origin) == 1) //if player is to the right
	{
		if (move_direction == 1) move_direction = 0;
	} else { //if player is to the left
		if (move_direction == -1) move_direction = 0;
	}
}

var move = key_right - key_left;

safeFall = false;

if (move != 0) {
	var check = move * TILE_SIZE/2; //Gets the x coordinate of the tile to either the left or right of them
	for (var i = 0; i < cliff_height; i++)
	{

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
