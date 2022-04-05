
// inherit state machine
event_inherited();


#region motion limitations

var dist_from_origin = x-xstart;

if (abs(dist_from_origin) > enemyMaxOriginDist) and (state == ENEMYSTATE.WANDER)// if too far from origin
{

	if (sign(dist_from_origin) > 0) { // if origin is to the left
		
		if (key_right == 1) key_right = 0;
	} 
	else { // if origin is to the right
		
		if (key_left == 1) key_left = 0;
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

// freeze if falling too fast
if (vsp > fall_speed_stun)
{
	
	alarm[4] = fall_stun; // sets freeze to stun time
}

// jumping
if (key_spaceH) and (alarm[4] == -1) //if not stunned and want to jump
{
    if (!airborne)
    {
		alarm[4] = jump_stun;
        vsp -= jumpHeight;
        airborne = true;
    }
}

#region wall collisions tilemap

// makes all motion integers for tilemaps
Collisions(enemySpeed);

#endregion

// animations

if (abs(hsp) > 0) sprite_index = spr_ratRun; else sprite_index = spr_ratIdle;
if (hsp != 0) {
	
	if (hsp > 0) image_xscale = 1; else image_xscale = -1;
}

// if dead, destroy self
if (enemyHealth <= 0) and (airborne = false)
{
	instance_create_depth(x,y,depth,obj_enemyDead);
	instance_destroy();
}

x += hsp;
y += vsp;