/// @description Insert description here
// You can write your code in this editor

//Initializing
lock = false; //Don't touch this
hsp = 0;
vsp = 0;
walkSp = 8;
grv = 0.8; // Gravity
jumpH = 23; // Jump height
air = false; // If airborne
freeze = false; // Pause player controls
zoom = 1;
hsp_fraction = 0;
vsp_fraction = 0;
healing = 0;
P_health = 1;
P_maxHealth = 10;
Xoffset = 500; //Healthbar
Yoffset = 50; //Healthbar


//Modular View
ogViewH = camera_get_view_height(view_camera[0]);
ogViewW = camera_get_view_width(view_camera[0]);
xCamOffset = 0;
yCamOffset = -50;

gamer1 = -1;

//Tilemaps
tilemap = layer_tilemap_get_id("tile_collision");

// Fighting

	// Enemy Hit
	hit_stun = 1.5 * room_speed;

// Functions


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





