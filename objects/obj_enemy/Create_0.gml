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
lineof_sight = false;
#endregion

test = 0;
passive = false;

random_fling = random_range(0.79,0.99);
random_dist = random_range(0,30);

far_range = 30+random_dist; //maximum dist from player
close_range = 0 + random_dist; // Minimum Distance from player

view_range = 300;
attack_reach = 60;

max_o_dist = 300; // max distance from origin (can be altered by playerstate)
status_range = 0; //additional changes

active = 0; //Activates movement

fall_stun = 2 * room_speed;// Too fast fall go brrrr
fall_speed_stun = 20 //How fast you need to fall in order to get stunned
jump_stun = 1.25*room_speed; // Delay between jumping

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
alertForget = 7*room_speed;
senseRange = 400;

// playerstate = 2 : Attacking
attackRange = 500;
attack_stun = 3 * room_speed;
attack_forget = 5 * room_speed;
// playerstate = 3 : Running
runningRange = 350;
safeDist = 300;
calmTime = 4*room_speed;
fleeingValor = 10*room_speed;

// manual controls/Initialization
touching_wall = 0;
tilemap_solid = layer_tilemap_get_id("tile_ground");
tilemap = layer_tilemap_get_id("tile_collision");
	key_right = 0;
	key_left = 0;
	key_spaceP = 0; 
	key_spaceH = 0;
	key_crouch = 0;

// Functions

function attack(type)
{
	if (type == 0) //Meelee
	{
		with (obj_player)
		{
			if (alarm[0] == -1) //If is hittable, Attack
			{
				alarm[0] = hit_stun;
				if (P_health > 0)
				{
					P_health -= other.damage;
				} else P_health = 0;
				fling(point_direction(other.x,other.y-(sprite_height/2)+30,x,y),25);
			}
		}
	}
	alarm[3] = attack_stun;
}