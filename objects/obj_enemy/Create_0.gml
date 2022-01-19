/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
walkSp = 3;
grv = 0.8; // Gravity
jumpH = 17; // Jump height
air = false; // If airborne
hsp_fraction = 0;
vsp_fraction = 0;
distance = 0;

far_range = 90; //maximum dist from player
close_range = 40;

touching_wall = 0;

tilemap = layer_tilemap_get_id("tile_ground");
	key_right = 0;
	key_left = 0;
	key_spaceP = 0; 
	key_spaceH = 0;
	key_crouch = 0;

function pause(toggle)
{
	if (toggle = 1) 
	{
		freeze = true;
		key_right = 0;
		key_left = 0;
		key_spaceP = 0 ;
		key_spaceH = 0;
	}
	else
	{
		freeze = false;
	}
}



