// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if (instance_exists(obj_player))
{
	
	
#region Basic Mobility

var move = walkSp * (key_right-key_left);

hsp = move;

vsp += grv;

#endregion

function fling(dir,mag)
{
	x_move = lengthdir_x(mag,dir);
	y_move = lengthdir_y(mag,dir);
}
if (abs(x_move) > 0.1)
{
	x_move /= 1.1;
} else x_move = 0;

if (abs(y_move) > 0.1)
{
	y_move /= 1.6;
} else y_move = 0;

hsp += x_move;
vsp += y_move;


var bbox_side,p1,p2,p3;
#region Jumping
if (key_spaceH)
{
    if (!air)
    {
        vsp -= jumpH;
        air = true;
    }
}
#endregion
#region Wall collisions tilemap
var bbox_side;
hsp += hsp_fraction;
vsp += vsp_fraction;
hsp_fraction = hsp - (floor(abs(hsp)) * sign(hsp));
hsp -= hsp_fraction;
vsp_fraction = vsp - (floor(abs(vsp)) * sign(vsp));
vsp -= vsp_fraction;


if (hsp > 0) bbox_side = bbox_right; else if (hsp < 0) bbox_side = bbox_left; else bbox_side = x;//Horizontal Collisions
p1 = (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top) != 0);
p2 = (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_bottom) != 0);
p3 = (tilemap_get_at_pixel(tilemap,bbox_side+hsp,bbox_top+((bbox_bottom-bbox_top)/2)) != 0); 

if (p1 == 1) || (p2 == 1) || (p3 == 1)
{
	if (hsp > 0) x = x - (x mod TILE_SIZE) + (TILE_SIZE - 1) - (bbox_right - x) + TILE_SIZE+5;
	else x = x - (x mod TILE_SIZE) - (bbox_left - x) - TILE_SIZE - 5;
	hsp = 0;
}

if (vsp >= 0) bbox_side = bbox_bottom; else bbox_side = bbox_top; //Vertical Collisions
p1 = (tilemap_get_at_pixel(tilemap,bbox_left,bbox_side+vsp) != 0);
p2 = (tilemap_get_at_pixel(tilemap,bbox_right,bbox_side+vsp) != 0);
p3 = (tilemap_get_at_pixel(tilemap,bbox_left+((bbox_right-bbox_left)/2),bbox_side+vsp) != 0);


if (p1 == 1) || (p2 == 1) || (p3 == 1)
{
	if (vsp > 0) {
		y = y - (y mod TILE_SIZE) + (TILE_SIZE - 1) - (bbox_bottom - y) + TILE_SIZE;
		air = false;
	}
	else y = y - (y mod TILE_SIZE) - (bbox_top - y) - TILE_SIZE;
	vsp = 0;
}
#endregion

#region animations

if (hsp != 0)
{
	if (key_right)
	{
		image_xscale = 1;
	} else
	{
		image_xscale = -1;
	}
}

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
else sprite_index = spr_playerChk;

if (sprite_index = spr_playerChk) and (image_index >= image_number-1)
{
	image_speed = 0;
	//camera_zoom(0.5,0.5);
}

#endregion


if (key_attack) state = PLAYERSTATE.ATTACK_SLASH;

}