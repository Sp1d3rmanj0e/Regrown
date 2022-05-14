

if (place_meeting(x,y,obj_player)) and (!instance_exists(inventory)) and (!global.gamePaused) {
	
	var _scale = clamp(global.guiSize+global.textScale, 1,2);
	
		draw_sprite_ext(spr_infoBox,-1,display_get_gui_width()/2,display_get_gui_height()/2,
		_scale,_scale,0,c_white,1);
		
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
		draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()/2,get_input_name(KB.SELECT),
		_scale,_scale,0);
		
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}