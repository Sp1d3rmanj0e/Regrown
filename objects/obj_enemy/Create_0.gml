/// @description initialization

// basic initializations

hsp = 0;
vsp = 0;
walkSp = 2.75
ogwalkSp = walkSp; //Saves the original walk speed
grv = 0.8;
jump_height = 17; // Jump height
airborne = false;

hp = 10;
oghp = hp; //saves original hp

damage = 2;

// manual controls/Initialization

key_right = 0;
key_left = 0;
key_spaceP = 0; 
key_spaceH = 0;
key_crouch = 0;

// dynamic initializations

hsp_fraction = 0;
vsp_fraction = 0;

distance = 0; 
lineof_sight = false;
safeFall = true;

max_origin_dist = 300; // max distance from origin (can be altered by playerstate)

active = 0; // activates movement

move_direction = 0; //Random number placeholder

dur_min = 0; // minimum time of motion
dur_max = 0; // maximum time of motion

touching_wall = 0;

x_move = 0;
y_move = 0;

// static initializations

random_dist = random_range(0,5);

far_range = 30+random_dist; //maximum dist from player
close_range = 0 + random_dist; // Minimum Distance from player

view_range = 200;

passive = false;

fall_stun = 2 * room_speed;// stun how long to stun by fall
fall_speed_stun = 20 // how fast you need to fall in order to get stunned
jump_stun = 1.25*room_speed; // jump delay
cliff_height = 5; //How many tiles down is scary

startX = x; // origin

tilemap_solid = layer_tilemap_get_id("tile_ground");
tilemap = layer_tilemap_get_id("tile_collision");

// enemystates

enum STATE {
	
	WANDER,
	PATROL,
	ATTACK,
	RUN	
}

playerstate = STATE.WANDER;

// playerstate settings (static)

	// playerstate = STATE.WANDER

wanderMin = 1*room_speed;
wanderMax = 4*room_speed;
wanderRange = 300;

	// playerstate = STATE.PATROL

alertMin = 1.5*room_speed;
alertMax = 3*room_speed;
alertRange = 400;
alertForget = 7*room_speed;
senseRange = 400;

	// playerstate = STATE.ATTACK

attackRange = 500;
attack_stun = 3 * room_speed;
attack_forget = 5 * room_speed;

	// playerstate = STATE.RUN

runningRange = 350;
safeDist = 300;
calmTime = 4*room_speed;
fleeingValor = 10*room_speed;
fleehealthdec = 0.2;

// attack player function

function attack(type)
{
	if (type == 0) //Meelee
	{
		with (obj_player)
		{
			if (alarm[0] == -1) and (!safe)// if is hittable and not safe, attack
			{
				alarm[0] = hit_stun; // activate hit stun
				if (P_health > 0) // damage
				{
					P_health -= other.damage;
				} else P_health = 0;
				fling(point_direction(other.x,other.y-(sprite_height/2)+30,x,y),25); 
				if (instance_exists(inventory)) instance_destroy(inventory);
			}
		}
	}
	alarm[3] = attack_stun; // delay for enemy to hit again
}