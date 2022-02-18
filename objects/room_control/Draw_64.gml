/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_alpha(fade);

draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),0)

draw_set_color(c_white);
draw_set_alpha(1);

if (fade > 0)
{
	fade += 0.05 * fadeDirection;
}