/// @description
draw_self();
if (powerupNumber < 8) { // organic
	
	draw_sprite_ext(spr_powOrgIcon,powerupNumber,x,y,image_xscale,image_yscale,0,shade,1);
}
else { // synthetic
	
	draw_sprite_ext(spr_powSynIcon,powerupNumber,x,y,image_xscale,image_yscale,0,shade,1);
}