/// @description initialize variables

// REPLACE ALL ITEMS CALLED "FILL"
event_inherited();


// enemy sprites
sprIdle = spr_tutorialBotIdle;
sprMove = spr_tutorialBotRun;
sprAttack = spr_tutorialBotExplode;
sprDie = spr_enemyDie;

// basic initializations
ogwalkSp = enemySpeed;
grv = 0.4;
airborne = false;
damage = 3;

// manual controls/Initialization

key_right = 0;
key_left = 0;
key_spaceP = 0; 
key_spaceH = 0;
key_crouch = 0;

// dynamic initializations

target = "FILL";

	// timers
	showHealthBarTimer = 0;
	hurtStunTimer = 0;
	motionTime = 0;
	chaseForgetTime = 0;
	runCalmTime = 0;
	attackSequenceTime = 0;
	fleeingValor = 0;

lineof_sight = false;
safeFall = true;

touching_wall = 0;

// static initializations

safeDist = 300;
calmTime = 4*room_speed;
fall_stun = 2 * room_speed;// stun how long to stun by fall
fall_speed_stun = 20 // how fast you need to fall in order to get stunned
jump_stun = 1.25*room_speed; // jump delay
cliff_height = 5; //How many tiles down is scary

// enemy scripts
state = ENEMYSTATE.WANDER;

enemyScript[ENEMYSTATE.WANDER] = "FILL";
enemyScript[ENEMYSTATE.CHASE] = "FILL";
enemyScript[ENEMYSTATE.FLEE] = "FILL";
enemyScript[ENEMYSTATE.ATTACK] = "FILL";
enemyScript[ENEMYSTATE.DIE] = "FILL";
enemyScript[ENEMYSTATE.IDLE] = "FILL";
enemyScript[ENEMYSTATE.HURT] = "FILL";