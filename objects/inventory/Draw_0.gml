/// @description Insert description here
// You can write your code in this editor
camX = obj_player.camX;
camY = obj_player.camY;
view_width = obj_player.view_width;
view_height = obj_player.view_height;
halfViewX = obj_player.halfViewX;
halfViewY = obj_player.halfViewY;

draw_set_color(make_color_rgb(0,45,45));
	draw_set_alpha(alpha);
	draw_rectangle(camX,camY,camX+view_width,camY+view_height,false);

if (inventoryOpen) {
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_sprite(pageSprite,0,halfViewX,halfViewY);
} else {
	draw_sprite(transAnimation,frame,halfViewX,halfViewY);
}

if (overlay == PTYPE.SYN) { //Synthetic Definitions
	
	draw_sprite(spr_inventorycoverActive,0,camX+135,camY+94); //Adds Cover
	draw_sprite(spr_inventoryscreenSchematics,sel_powerupNum, camX + 157, camY+112); //Adds Schematic
	draw_text(camX+156, camY+340, ds_grid_get(global.powerup_grid, 3, sel_powerupNum));
	
} else if (overlay == PTYPE.ORG) { //Organic Definitions
	
	draw_sprite(spr_inventorycoverActive,0,camX+615,camY+94); //Adds Cover
	draw_sprite(spr_inventoryscreenSchematics,sel_powerupNum, camX+637, camY+112); //Adds Schematic
	draw_text(camX+636, camY+340, ds_grid_get(global.powerup_grid, 3, sel_powerupNum));
}