/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
#region basics
hsp = 0;
vsp = 0;
walkSp = 3;
ogwalkSp = walkSp;
grv = 0.8; // Gravity
jumpH = 17; // Jump height
air = false; // If airborne
hsp_fraction = 0;
vsp_fraction = 0;
distance = 0;
hp = 10;
oghp = hp;
fling = 0;
#endregion

test = 0;

view_buffer = 10;

random_fling = random_range(0.79,0.99);
random_dist = random_range(0,30);

far_range = 90+random_dist; //maximum dist from player
close_range = 50 + random_dist; // Minimum Distance from player

view_range = 300;
attack_range = 120;

max_o_dist = 300; // max distance from origin (can be altered by playerstate)
status_range = 0; //additional changes

active = 0; //Activates movement

rando = 0; //Random number placeholder

oX = x; //origin x and y
oY = y;
test = 0; //test draw

//defaults
dur_min = 0;
dur_max = 0;
// CHANGE BACK TO 0 EVENTUALLY \/\/\/\/
playerstate = -1; // 0 : Wander, 1 : Patrolling, 2: Attacking, 3: Running

// playerstate = 0 : Wander
wanderMin = 1*room_speed;
wanderMax = 4*room_speed;
wanderRange = 300;

// playerstate = 1 : Patrolling
alertMin = 1.5*room_speed;
alertMax = 3*room_speed;
alertRange = 400;

// playerstate = 2 : Attacking
attackRange = 500;
// playerstate = 3 : Running
runningRange = 350;
safeDist = 200;
calmTime = 4*room_speed;
fleeingValor = 10*room_speed;

#region manual controls/Initialization
touching_wall = 0;

tilemap = layer_tilemap_get_id("tile_collision");
	key_right = 0;
	key_left = 0;
	key_spaceP = 0; 
	key_spaceH = 0;
	key_crouch = 0;
#endregion
