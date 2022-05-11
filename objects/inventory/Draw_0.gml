/// @description draw inventory and panels


// get camera information from player

// make a translucent black background
draw_set_color(make_color_rgb(0,45,45));
	draw_set_alpha(alpha);
	draw_rectangle(global.viewX,global.viewY,global.viewX+global.viewWidth,global.viewY+global.viewHeight,false);

// draw inventory screen / open-close animations
if (inventoryOpen) { 
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_sprite(pageSprite,0,global.halfViewX,global.halfViewY);
} else {
	
	draw_sprite(transAnimation,frame,global.halfViewX,global.halfViewY);
}

// progressive text engine (so text doesn't all pop on at the same time)
if (overlay != PTYPE.NONE) {
	charCount++;
	// check to see if hovered powerup is locked or not
	if (ds_grid_get(global.powerup_grid,2,sel_powerupNum)) {
		
		// if is unlocked
		textPart = string_copy(ds_grid_get(global.powerup_grid,3, sel_powerupNum),1,charCount);
	}
	else {
		
		// if is locked
		textPart = string_copy("Currently locked! Find the powerup to use it!",1,charCount)
	}
} else {
	charCount = 0;
}

	// draw information overlay
if (overlay == PTYPE.SYN) { //Synthetic Definitions
	
	draw_sprite(spr_inventorycoverActive,0,global.viewX+135,global.viewY+94); // adds Cover
	draw_sprite(spr_inventoryscreenSchematics,sel_powerupNum, global.viewX + 157, global.viewY+112); // adds schematic
	draw_text_ext(global.viewX+156+sideOffset, global.viewY+340+sideOffset, textPart,stringHeight,boxWidth-sideOffset); // adds text
	
} else if (overlay == PTYPE.ORG) { //Organic Definitions
	
	draw_sprite(spr_inventorycoverActive,0,global.viewX+615,global.viewY+94); // adds cover
	draw_sprite(spr_inventoryscreenSchematics,sel_powerupNum, global.viewX+637, global.viewY+112); // adds schematic
	draw_text_ext(global.viewX+636+sideOffset, global.viewY+340+sideOffset,textPart,stringHeight,boxWidth-sideOffset); //adds text
}