
// basic mobility
var move = walkSp * (key_right-key_left);

hsp = move;

vsp += grv;

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
        vsp -= jump_height;
        airborne = true;
    }
}

#region wall collisions tilemap

// makes all motion integers for tilemaps

hsp += hsp_fraction;
vsp += vsp_fraction;
hsp_fraction = hsp - (floor(abs(hsp)) * sign(hsp));
hsp -= hsp_fraction;
vsp_fraction = vsp - (floor(abs(vsp)) * sign(vsp));
vsp -= vsp_fraction;

var bbox_side,p1,p2,p3;

// horizontal collision
if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
p1 = (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top) != 0);
p2 = (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom) != 0);
p3 = (tilemap_get_at_pixel(tilemap,bbox_side+hsp,y) != 0); 

if (p1 == 1) || (p2 == 1) || (p3 == 1)
{
	if (hsp > 0) touching_wall = 1; else touching_wall = -1;
	if (hsp > 0) x = x - (x mod TILE_SIZE) + (TILE_SIZE - 1) - (bbox_right - x);
	else x = x - (x mod TILE_SIZE) - (bbox_left - x);
	hsp = 0;
	
} else touching_wall = 0;

// vertical collisions
if (vsp >= 0) bbox_side = bbox_bottom; else bbox_side = bbox_top; //Vertical Collisions
p1 = (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp) != 0);
p2 = (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp) != 0);
p3 = (tilemap_get_at_pixel(tilemap,x,bbox_side+vsp) != 0);

if (p1 == 1) || (p2 == 1) || (p3 == 1)
{
	
	if (vsp > 0) {
		y = y - (y mod TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y);
		airborne = false;
	}
	else y = y - (y mod TILE_SIZE) - (bbox_top - y);
	vsp = 0;
}



#endregion

// animations

if (abs(hsp) > 0) sprite_index = spr_ratRun; else sprite_index = spr_ratIdle;
if (hsp != 0) {
	
	if (hsp > 0) image_xscale = 1; else image_xscale = -1;
}

// if dead, destroy self
if (hp <= 0) and (airborne = false)
{
	instance_create_depth(x,y,depth,obj_enemyDead);
	instance_destroy();
}

x += hsp;
y += vsp;