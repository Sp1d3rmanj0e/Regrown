/// @description
if (roomStart == room) {
	
	draw_self();
	
	if (powerupNumber < powerup.maxpowerups/2) { // organic
	
		draw_sprite_ext(spr_powOrgIcon,powerupNumber+1,x,y,image_xscale,image_yscale,0,shade,1);
	}
	else { // synthetic
	
		draw_sprite_ext(spr_powSynIcon,powerupNumber-8+1,x,y,image_xscale,image_yscale,0,shade,1);
	}
}