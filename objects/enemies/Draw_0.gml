/// @description draw healthbar
draw_self();

if (global.visibleEnemies) draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_red, 1);

// show healthbar after getting attacked
if (showHealthBarTimer != -1) and (state != ENEMYSTATE.DIE) {
	
	showHealthBarTimer -= 1/room_speed;
	draw_healthbar(x-30,y-20,x+30,y-25, enemyHealth/enemyMaxHealth*100,c_grey,c_red,c_lime,0,true,true);
}