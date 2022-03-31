/// @description initialization

// intrinsic variables
state = ENEMYSTATE.IDLE;
hsp = 0;
vsp = 0;
xTo = xstart;
yTo = ystart;

// enemy sprites
sprMove = spr_ratRun;

// enemy scripts
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.WAIT] = -1;

