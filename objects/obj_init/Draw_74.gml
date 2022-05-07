/// @description draw GUI
var _scale = 1 + 0.25*global.guiSize;

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
	
	// draw screen damage cracks
	if (instance_exists(obj_player)) and (global.overlay) {
		
		var _subimg = 4-4*(obj_player.P_health/obj_player.P_maxHealth);
		draw_sprite_stretched(spr_GlassShatter,_subimg,0, 0,global.guiWidth,global.guiHeight);
	}
	
	// draw healthbars
	with (obj_player) {
	if (!instance_exists(inventory)) and (!global.overlay) {
	
		// draw healthbar GUI
		var healthPercent = P_health/P_maxHealth*100;
		draw_healthbar(0,0,Xoffset*_scale,Yoffset*_scale,healthPercent,c_black,make_color_rgb(0,238,255),make_color_rgb(0,222,234),0,true,true);
		draw_sprite_ext(spr_healthbarNew,-1,0,0,_scale,_scale,0,c_white,1);

		// draw nanobot GUI
		var nanobotPercent = nanobotCount/maxNanobotCount*100;
		draw_healthbar(0,Yoffset*_scale,Xoffset*_scale,Yoffset*2*_scale,nanobotPercent,c_black,make_color_rgb(179, 222, 226),make_color_rgb(179,106,205),0,true,true);
		draw_sprite_ext(spr_healthbarNew,-1,0,Yoffset*_scale,_scale,_scale,0,c_white,1);
	}
}
}

