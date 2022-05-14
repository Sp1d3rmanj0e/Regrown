/// @description state machine
event_inherited();

// die if health is too low
if (enemyHealth <= 0) {
	
	state = ENEMYSTATE.DIE;
}

#region motion limitations


// limit wander disance
var dist_from_origin = x-xstart;

if (abs(dist_from_origin)  > enemyMaxOriginDist) and (state == ENEMYSTATE.WANDER)// if too far from origin
{

	if (sign(dist_from_origin) > 0) { // if origin is to the left
		
		if (key_right == 1) key_right = 0;
	} 
	else { // if origin is to the right
		
		if (key_left == 1) key_left = 0;
	}
}

var move = key_right - key_left;

// prevent enemy from falling off of a cliff
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

#region jump stun
// stun if falling too fast
if (vsp > fall_speed_stun)
{
	
	alarm[1] = fall_stun; // sets freeze to stun time
}

// jumping
if (key_spaceH) and (alarm[1] == -1) //if not stunned and want to jump
{
    if (!airborne)
    {
		alarm[1] = jump_stun;
        vsp -= enemyJumpHeight;
        airborne = true;
    }
}
#endregion

if (!global.gamePaused) {
	
	image_speed = 1;
	Collisions(enemySpeed);
	x += hsp;
	y += vsp;
} else {
	
	image_speed = 0;
	alarm[1]++;
}