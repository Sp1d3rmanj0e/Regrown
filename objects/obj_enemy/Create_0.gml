/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
#region basics
hsp = 0;
vsp = 0;
walkSp = 3;
grv = 0.8; // Gravity
jumpH = 17; // Jump height
air = false; // If airborne
hsp_fraction = 0;
vsp_fraction = 0;
distance = 0;
#endregion

far_range = 90; //maximum dist from player
close_range = 90; // Minimum Distance from player

view_range = 300;
attack_range = 120;

playerstate = 0; // 0 : Wander, 1 : Patrolling, 2: Attacking, 3: Running

max_o_dist = 300; // max distance from origin (can be altered by playerstate)
status_range = 0; //additional changes

active = 0; //Activates movement

rando = 0; //Random number placeholder

oX = x; //origin x and y
oY = y;
test = 0; //test draw

//defaults
d_min = 0;
d_max = 0;

//playerstate = 0
wanderMin = 1*room_speed;
wanderMax = 3*room_speed;
wanderRange = 300;



// playerstate = 1
alertMin = 2.5*room_speed;
alertMax = 4*room_speed;
alertRange = 400;


#region manual controls/Initialization
touching_wall = 0;

tilemap = layer_tilemap_get_id("tile_collision");
	key_right = 0;
	key_left = 0;
	key_spaceP = 0; 
	key_spaceH = 0;
	key_crouch = 0;
#endregion
