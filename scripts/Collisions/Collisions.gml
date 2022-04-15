// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Collisions(sped)
{
	
#region Basic Mobility

var move = sped * (key_right-key_left);

hsp = move;

vsp += grv;

#endregion

function fling(dir,mag)
{
	x_move = clamp(lengthdir_x(mag,dir),-mag/2, mag/2);
	y_move = clamp(lengthdir_y(mag,dir),-mag/2, mag/2);
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

#region Wall collisions tilemap

hsp += hsp_fraction;
vsp += vsp_fraction;
hsp_fraction = hsp - (floor(abs(hsp)) * sign(hsp));
hsp -= hsp_fraction;
vsp_fraction = vsp - (floor(abs(vsp)) * sign(vsp));
vsp -= vsp_fraction;

var bbox_side, p1, p2, p3;

//Horizontal Collision
if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
p1 = tilemap_get_at_pixel(tilemap, bbox_side+hsp, bbox_top);
p2 = tilemap_get_at_pixel(tilemap, bbox_side+hsp,bbox_bottom);
p3 = tilemap_get_at_pixel(tilemap, bbox_side+hsp, y);
if (p1 != 0) or (p2 != 0) or (p3 != 0) {
	if (hsp > 0) touching_wall = 1; else touching_wall = -1;
	if (hsp > 0) x = bbox_side - (bbox_side mod TILE_SIZE) + (TILE_SIZE-1) - (bbox_right -x);
	else x = bbox_side - (bbox_side mod TILE_SIZE) - (bbox_left - x);
	hsp = 0;
} else touching_wall = 0;

//vsp = min(vsp,TILE_SIZE);
//Vertical Collision
if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
p1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_side+min(vsp,TILE_SIZE));
p2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_side+min(vsp,TILE_SIZE));
p3 = tilemap_get_at_pixel(tilemap, x, bbox_side+min(vsp,TILE_SIZE));
if (p1 != 0) or (p2 != 0) or (p3 != 0){
	if (vsp > 0) y = bbox_side - (bbox_side mod TILE_SIZE) + (TILE_SIZE-1) - (bbox_bottom - y);
	else y = bbox_side - (bbox_side mod TILE_SIZE) - (bbox_top - y);
	vsp = 0;
}

// extreme emergency case if pla
if (tilemap_get_at_pixel(tilemap,x,y) != 0) {
	y -= TILE_SIZE;
}

if (tilemap_get_at_pixel(tilemap,bbox_right,bbox_bottom) != 0) {
	x-= 32;
}
if (tilemap_get_at_pixel(tilemap,bbox_left,bbox_bottom) != 0) {
	x+= 32;
	
}

p1 = tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom+1);
p2 = tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom+1);

if (p1 != 0) || (p2 != 0) {
	
	airborne = false;
} 
else {
	
	airborne = true;
}


#endregion

}