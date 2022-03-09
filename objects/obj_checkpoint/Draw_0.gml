/// @description Insert description here
// You can write your code in this editor
draw_self();
if (lock) draw_sprite(spr_abilityScreen,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));
draw_text(x-100,y,orgFill);
draw_text(x+100,y,synFill);