/// @description draw healthbar
event_inherited();

if (state = ENEMYSTATE.ATTACK) {
	
	draw_circle(x,y,enemyAttackReach,true);
}
