/// @description instance info
draw_self();
draw_text(x,y+20,enemyHealth);
draw_text(x-20,y-20,state);
draw_text(x-20,y, alarm[1]);

// show healthbar after getting attacked
if (showHealthBarTimer != -1) {
	
	showHealthBarTimer -= 1/room_speed;
	draw_healthbar(x-30,y-20,x+30,y-25, enemyHealth/enemyMaxHealth*100,c_grey,c_red,c_lime,0,true,true);
}