/// @description draw healthbar
event_inherited();

draw_text(x,y,state);

if (state = ENEMYSTATE.ATTACK) {
	
	draw_circle(x,y,enemyAttackReach,true);
}