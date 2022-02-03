
var bbox_side,p1,p2,p3;

#region Movement response

#region Basic Mobility
//Basic Mobility

var move = walkSp * (key_right-key_left);

hsp = move;


vsp += grv;
#endregion
// Main Code Translations Here




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

if (fling != 0)
{
	hsp += fling;
	if (abs(fling)<0.1)
	{
		fling = 0;
	}
	fling *= random_fling;
}

// No more moving here
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

x += hsp;
y += vsp;
