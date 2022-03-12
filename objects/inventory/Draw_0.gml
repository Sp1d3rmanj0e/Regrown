/// @description Insert description here
// You can write your code in this editor

if (lock) {
	draw_set_color(c_black);
	draw_rectangle(obj_player.camX,obj_player,obj_player.camY,obj_player.camX+obj_player.view_width,obj_player.camY+obj_player.view_height);
	draw_set_color(c_white);
	draw_sprite(spr_inventoryscreen,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0]));
}