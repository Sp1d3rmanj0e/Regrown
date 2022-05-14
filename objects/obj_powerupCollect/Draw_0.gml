/// @description
draw_self();
if (powerupNumber < 8) { // organic
	
	draw_sprite_ext(spr_powerup_border,powerupNumber+1,x,y,image_xscale,image_yscale,0,shade,1);
	draw_text(x,y,"org");
}
else { // synthetic
	
	draw_sprite_ext(spr_powSynIcon,powerupNumber+1-8,x,y,image_xscale,image_yscale,0,shade,1);
	draw_text(x,y,"syn");
}