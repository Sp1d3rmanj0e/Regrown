/// @description Insert description here
// You can write your code in this editor
#region setups
//Initializing
lock = false; //Don't touch this
hsp = 0;
vsp = 0;
walkSp = 8;
grv = 0.8; // Gravity
jumpH = 23; // Jump height
air = false; // If airborne
freeze = false; // Pause player controls
hsp_fraction = 0;
vsp_fraction = 0;
healing = 0;
P_health = 1;
P_maxHealth = 10;
Xoffset = 500; //Healthbar
Yoffset = 50; //Healthbar
flash_alpha = 0;
flash_colour = c_red;
P_health_prev = P_health;
x_move = 0;
y_move = 0;
damage = 2;
safe = false;

s1 = 0;
s2 = 0;
s3 = 0;
s4 = 0;


state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

// Layer Ids

//back3 = layer_get_id("BgBack3"); // Mountains and Such
b3 = 0.05;

//back2 = layer_get_id("BgBack2"); //Far Foliage, Towns, Deep Caves
b2 = 0.13;

//back1 = layer_get_id("BgBack1"); //Trees, Bushes, Stalagtites, Combines with Front1
b1 = 0.25;

//front1 = layer_get_id("BgFront1"); //Boxes, Grass, Bushes, Trees, Combines with Back 1
f1 = -0.1;

x_origin = room_width/2; // Another reference is in room_control.




enum PLAYERSTATE
{
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO
}
#endregion

// Cameras
xCamOffset = 0;
yCamOffset = -50;

// Fighting

	// Enemy Hit
	hit_stun = 1.5 * room_speed;

// Powerups

orgFill = noone;
synFill = noone;


//Room Change
enteredRoom = false;



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
		image_speed = 1;
	}
}





