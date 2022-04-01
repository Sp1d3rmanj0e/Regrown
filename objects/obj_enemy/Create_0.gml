/// @description initialization

// inherit default enemy code
event_inherited()

// enemy sprites
sprIdle = spr_ratIdle;
sprMove = spr_ratRun;

// basic initializations
jumpHeight = enemyJumpHeight;
ogwalkSp = enemySpeed;
grv = 0.8;

airborne = false;

oghp = enemyHealth; //saves original hp

damage = 2;

// manual controls/Initialization

key_right = 0;
key_left = 0;
key_spaceP = 0; 
key_spaceH = 0;
key_crouch = 0;

// dynamic initializations
target = obj_player;

motionTime = 0;
chaseForgetTime = 0;

hsp_fraction = 0;
vsp_fraction = 0;

distance = 0; 
lineof_sight = false;
safeFall = true;

max_origin_dist = enemyMaxOriginDist; // max distance from origin (can be altered by playerstate)

active = 0; // activates movement

move_direction = 0; //Random number placeholder

touching_wall = 0;

x_move = 0;
y_move = 0;

// static initializations

random_dist = random_range(0,5);

passive = false;

fall_stun = 2 * room_speed;// stun how long to stun by fall
fall_speed_stun = 20 // how fast you need to fall in order to get stunned
jump_stun = 1.25*room_speed; // jump delay
cliff_height = 5; //How many tiles down is scary

tilemap_solid = layer_tilemap_get_id("tile_ground");
tilemap = layer_tilemap_get_id("tile_collision");






// playerstate settings (static)

	// playerstate = STATE.WANDER



	// playerstate = STATE.PATROL


	// playerstate = STATE.ATTACK

attack_stun = 3 * room_speed;
attack_forget = 5 * room_speed;

	// playerstate = STATE.RUN

safeDist = 300;
calmTime = 4*room_speed;
fleeingValor = 10*room_speed;



// enemy scripts
state = ENEMYSTATE.WANDER;

enemyScript[ENEMYSTATE.WANDER] = ratWander;
enemyScript[ENEMYSTATE.CHASE] = ratChase;
enemyScript[ENEMYSTATE.FLEE] = enemy_run_ground;

// attack player function

function attack(target)
{
		with (target)
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
	alarm[3] = attack_stun; // delay for enemy to hit again
}