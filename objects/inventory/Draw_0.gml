/// @description Insert description here
// You can write your code in this editor

draw_set_color(make_color_rgb(0,45,45));
	draw_set_alpha(alpha);
	draw_rectangle(obj_player.camX,obj_player.camY,obj_player.camX+obj_player.view_width,obj_player.camY+obj_player.view_height,false);

if (inventoryOpen) {
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_sprite(spr_inventoryscreenPassive,pageSubimg,obj_player.halfViewX,obj_player.halfViewY);
} else {
	draw_sprite(transAnimation,frame,obj_player.halfViewX,obj_player.halfViewY);
}