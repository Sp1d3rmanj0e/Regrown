



/// @description Enemy AI

	key_right = 0;
	key_left = 0;
	key_spaceP = 0; 
	key_spaceH = 0;
	key_crouch = 0;

	damage = 2;

#region Collision


if (touching_wall != 0) key_spaceH = 1;
	
#endregion

if (hp <= 0) exit;


distance = abs(x-obj_player.x);

#region view engagement
if (view_range >= distance_to_object(obj_player)) //If within range to be seen
{
	if (alarm[5] == -1)
	{
		alarm[5] = 0.25 * room_speed; // Activates seeing code
	}
} else lineof_sight = false;


#endregion





switch (playerstate) {
	case 0: enemy_wander_ground(); break;
	case 1: enemy_alert_ground(); break;
	case 2: enemy_attack_melee(far_range,close_range); break;
	case 3: enemy_run_ground(safeDist); break;
	
}


#region playerstate transitions

if (distance_to_object(obj_player) < senseRange) and (alarm[6] == -1)
{
	playerstate = STATE.PATROL;
	alarm[6] = alertForget;
}

if (lineof_sight ==	1) and (passive == false) and ((playerstate == STATE.PATROL) or (playerstate == STATE.WANDER))
{
	playerstate = STATE.ATTACK; //If seen and aggro, and was alert, then 2
}

if (obj_player.safe) playerstate = STATE.WANDER; //No aggro when invincible

if (lineof_sight == 1)
{
	alarm[6] = attack_forget; //If time goes without seeing player, goes back to 0
}




#endregion



#region don't stray too far
var odist = x-oX;
if (abs(odist) > max_o_dist) //If too far from origin
{
	if (sign(odist) == 1) //if player is to the right
	{
		if (rando == 1) rando = 0;
	} else { //if player is to the left
		if (rando == -1) rando = 0;
	}
}

var move = key_right - key_left;

safeFall = false;

if (move != 0) {
var check = move * TILE_SIZE/2; //Gets the x coordinate of the tile to either the left or right of them
for (var i = 0; i < cliff_height; i++)
{
	draw_sprite(spr_test,-1,x+check,y+i*TILE_SIZE);
	if (tilemap_get_at_pixel(tilemap,x+check,y+i*TILE_SIZE) != 0) or (air == true){
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
