/// @description draw inventory and panels

// get camera information from player
camX = obj_player.camX;
camY = obj_player.camY;
view_width = obj_player.view_width;
view_height = obj_player.view_height;
halfViewX = obj_player.halfViewX;
halfViewY = obj_player.halfViewY;

// make a translucent black background
draw_set_color(make_color_rgb(0,45,45));
	draw_set_alpha(alpha);
	draw_rectangle(camX,camY,camX+view_width,camY+view_height,false);

// draw inventory screen / open-close animations
if (inventoryOpen) { 
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_sprite(pageSprite,0,halfViewX,halfViewY);
} else {
	
	draw_sprite(transAnimation,frame,halfViewX,halfViewY);
}

// progressive text engine (so text doesn't all pop on at the same time)
if (overlay != PTYPE.NONE) {
	charCount++;
	textPart = string_copy(ds_grid_get(global.powerup_grid,3, sel_powerupNum),1,charCount);
} else {
	charCount = 0;
}

	// draw information overlay
if (overlay == PTYPE.SYN) { //Synthetic Definitions
	
	draw_sprite(spr_inventorycoverActive,0,camX+135,camY+94); // adds Cover
	draw_sprite(spr_inventoryscreenSchematics,sel_powerupNum, camX + 157, camY+112); // adds schematic
	draw_text_ext(camX+156+sideOffset, camY+340+sideOffset, textPart,stringHeight,boxWidth-sideOffset); // adds text
	
} else if (overlay == PTYPE.ORG) { //Organic Definitions
	
	draw_sprite(spr_inventorycoverActive,0,camX+615,camY+94); // adds cover
	draw_sprite(spr_inventoryscreenSchematics,sel_powerupNum, camX+637, camY+112); // adds schematic
	draw_text_ext(camX+636+sideOffset, camY+340+sideOffset,textPart,stringHeight,boxWidth-sideOffset); //adds text
}