/// @description Insert description here
// You can write your code in this editor
draw_self();
healthPercent = P_health/P_maxHealth*100;

draw_healthbar(camX,camY,camX+Xoffset,camY+Yoffset,healthPercent,c_black,make_color_rgb(0,238,255),make_color_rgb(0,222,234),0,true,true);
draw_sprite(spr_healthBar,0,camX,camY);
//draw_text(x,y,gamer1);

if (flash_alpha > 0)
{
	shader_set(sh_flash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flash_colour, flash_alpha);
	shader_reset();
}

draw_text(obj_checkpoint.x+50,obj_checkpoint.y,synFill);
draw_text(obj_checkpoint.x-60,obj_checkpoint.y,orgFill);