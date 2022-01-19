/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

#region Keybind Setup
//Initialization

var bbox_side,p1,p2,p3;



#endregion



#region Movement response
#region Basic Mobility
//Basic Mobility

var move = walkSp * (key_right-key_left);

hsp = move;


vsp += grv;
#endregion
#region Jumping UNUSED

if (key_spaceH)
{
    if (!air)
    {
        vsp -= jumpH;
        air = true;
    }
}
//else vsp += 0.5;

#endregion
#region Wall collisions tilemap
var bbox_side;
hsp += hsp_fraction;
vsp += vsp_fraction;
hsp_fraction = hsp - (floor(abs(hsp)) * sign(hsp));
hsp -= hsp_fraction;
vsp_fraction = vsp - (floor(abs(vsp)) * sign(vsp));
vsp -= vsp_fraction;


// Horizontal Collision

if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left; //Horizontal Collisions
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

//Vertical Collisions

if (vsp >= 0) bbox_side = bbox_bottom; else bbox_side = bbox_top; //Vertical Collisions
p1 = (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp) != 0);
p2 = (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp) != 0);
p3 = (tilemap_get_at_pixel(tilemap,x,bbox_side+vsp) != 0);

if (p1 == 1) || (p2 == 1) || (p3 == 1)
{
	
	if (vsp > 0) {
		y = y - (y mod TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y);
		air = false;
	}
	else y = y - (y mod TILE_SIZE) - (bbox_top - y);
	vsp = 0;
}

//if (tilemap_get_at_pixel(tilemap,x,bbox_side+vsp))


#endregion
#endregion

#region animations
/*
if (hsp != 0) image_xscale = sign(hsp);

//Animation
if (!freeze)
{
	if (vsp != 0)
	{
		if (key_spaceH) and (vsp < 5)
		{
			sprite_index = spr_playerAir;
			image_index = 0;
		}
		else image_index = 1;
	}
	else if (key_crouch) sprite_index = spr_playerCrouch;
	else if (hsp != 0) sprite_index = spr_playerWalk;
	else sprite_index = spr_playerIdle;
}
else sprite_index = spr_playerIdle

*/
#endregion

//Finalizing

x += hsp;
y += vsp;
