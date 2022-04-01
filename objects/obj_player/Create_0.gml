/// @description initialize

#region setups
//Initializing

// basic initialize
hsp = 0;
vsp = 0;
walkSp = 8;
grv = 0.8; // Gravity
jumpH = 23; // Jump height
airborne = false; // If airborne
freeze = false; // Pause player controls
damage = 2;

// dynamic initialize
lock = false; // don't touch this
hsp_fraction = 0;
vsp_fraction = 0;
healing = 0;
P_health = 1;
P_health_prev = P_health;
flash_alpha = 0;
safe = false;
x_move = 0; //referenced in collisions
y_move = 0; //fling y

// reference initialize
P_maxHealth = 10;
Xoffset = 550; // healthbar
Yoffset = 75; // healthbar
flash_colour = c_red;

//Respawn is changed on obj_checkpoint collision
//Respawn is activated in PlayerState_Dead
respawnX = x;
respawnY = y;
respawnRoom = room;

//ScreenShake
shakeIntensity = 3;
shake = false;

function _shake(int,dur) {
	shake = true;
	alarm[3] = dur;
	shakeIntensity = int;
}

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





