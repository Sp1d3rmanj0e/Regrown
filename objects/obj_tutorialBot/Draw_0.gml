/// @description draw healthbar
event_inherited();

draw_text(x,y,fuse);
draw_text(x,y+20,state);

if (state = ENEMYSTATE.ATTACK) {
	
	draw_circle(x,y,enemyAttackReach,true);
}
