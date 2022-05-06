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
else {
	// screen damage cracks
	if (instance_exists(obj_player)) {
		
		var _subimg = 4-4*(obj_player.P_health/obj_player.P_maxHealth);
		draw_sprite_stretched(spr_GlassShatter,_subimg,0, 0,global.guiWidth,global.guiHeight);
	}
}
