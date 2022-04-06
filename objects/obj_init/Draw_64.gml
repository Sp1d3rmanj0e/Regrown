/// @description screen if game is paused

if (global.gamePaused) {
	
	// draw backdrop
	draw_set_color(c_black);
	draw_set_alpha(0.8)
	draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(), false);
	draw_set_alpha(1);
	
	// draw text
	draw_set_color(c_red);
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"PAUSED");
	
	// reset colors
	draw_set_color(c_white);
}
