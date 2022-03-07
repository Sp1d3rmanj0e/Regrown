/// @description Insert description here
// You can write your code in this editor

#region Keybind Setup
//Initialization



var bbox_side,p1,p2,p3;

if (freeze = false)
{
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_spaceP = keyboard_check_pressed(vk_space);
	key_spaceH = keyboard_check(vk_space);
	key_crouch = 0//keyboard_check(vk_control);
}

#endregion
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

#region auto climb slopes BUGGED WITH CROUCH
/*
p4 = -1;
if (p2 == 1)
{
	for (var i = bbox_bottom; i > bbox_top; i-=TILE_SIZE)
	{
			if (p4 == -1) p4 = 1;
		if (tilemap_get_at_pixel(tilemap,bbox_side+hsp,i-TILE_SIZE) != 0)
		{
			p4 = 0;
		}
	}
	
	
}
gamer1 = p4;

if (p4 == 1)
{
	if (queue < 2)
	{
		queue++;
	} else {
		y -= TILE_SIZE;
		queue = 0;
	}
} else queue = 0;
*/
#endregion

//if (tilemap_get_at_pixel(tilemap,x,bbox_bottom+vsp) <= 1)

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


#region cameras

function camera_zoom (zoomX,_speed)
{

	if (zoomX > zoom) zoom += _speed;
	else if (zoomX < zoom) zoom -= _speed;
	else return true;
}

camera_set_view_size(view_camera[0],ogViewW/zoom,ogViewH/zoom);

#endregion

#region Abilities




#endregion



#region animations

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
else sprite_index = spr_playerChk;

if (sprite_index = spr_playerChk) and (image_index >= image_number-1)
{
	image_speed = 0;
	//camera_zoom(0.5,0.5);
}

#endregion


#region colliding with checkpoint

if (place_meeting(x,y,obj_checkpoint))
{
	pause(1);
	
	//Walk in animation here
	
	sprite_index = spr_playerChk;
	x = obj_checkpoint.x;
}


#endregion
//Finalizing

x += hsp;
y += vsp;
