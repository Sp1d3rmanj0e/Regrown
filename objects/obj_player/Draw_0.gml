/// @description Insert description here
// You can write your code in this editor
draw_self();
if (state != PLAYERSTATE.DEAD) draw_sprite(spr_playerNum,0,x-12*image_xscale,y);
draw_text(x,y,vsp);
if (flash_alpha > 0)
{
	shader_set(sh_flash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, flash_colour, flash_alpha);
	shader_reset();
}
