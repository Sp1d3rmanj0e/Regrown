/// @description initialize variables
// intrinsic Variables
state = ENEMYSTATE.IDLE;
hsp = 0;
vsp = 0;
// default sprite
sprMove = spr_ratIdle;

// enemy reference scripts
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.WAIT] = -1;

// tilemaps
tilemap_solid = layer_tilemap_get_id("tile_ground");
tilemap = layer_tilemap_get_id("tile_collision");

// dynamic variables
target = obj_player;

x_move = 0;
y_move = 0;

hsp_fraction = 0;
vsp_fraction = 0;

previousState = ENEMYSTATE.IDLE;