/// @description disappear if overlay is covering

var p1 = 0;

// draw self if mouse is not over either side
if (inventory.overlay == PTYPE.NONE) {
		p1 = 1;

// draw self if mouse is on synthetic side and type is organic
} else if (inventory.overlay == PTYPE.ORG) {
	if (type == "org") {
		p1 = 1;
	}

// draw self if mouse is on organic side and type is synthetic
} else if (inventory.overlay == PTYPE.SYN) {
	if (type == "syn") {
		p1 = 1;
	}
}
if (selected) {
	p1 = 1;
}

if (p1 == 1) {
	
	// if powerup unlocked
	if (ds_grid_get(global.powerup_grid,2,count)) {
		
		// draw powerup backdrop
		draw_sprite_ext(spr_powerup_border,0,x,y,image_xscale,image_yscale,0,ds_grid_get(global.powerup_grid,6,count),100);
	
		// draw icons for the powerups
		if (count < powerup.maxpowerups/2)
		{
			draw_sprite_ext(spr_powOrgIcon,powerup_type,x,y,1,1,0,shade,100);
		}
		else draw_sprite_ext(spr_powSynIcon,powerup_type,x,y,1,1,0,shade,100);
			draw_set_halign(fa_center);
			draw_text(x,y-20,powerup_type);
			draw_text(x,y+20,powerup_name);
			draw_set_halign(fa_left);
	}
	else { // if powerup not unlocked
		
		// draw gray background
		draw_sprite_ext(spr_powerup_border,0,x,y,image_xscale,image_yscale,0,c_gray,0.75);
		
		// draw gray icons for the powerups
		if (count < powerup.maxpowerups/2)
		{
			draw_sprite_ext(spr_powOrgIcon,0,x,y,1,1,0,c_gray,0.75);
		}
		else draw_sprite_ext(spr_powSynIcon,0,x,y,1,1,0,c_gray,0.75);
	}
}
	

