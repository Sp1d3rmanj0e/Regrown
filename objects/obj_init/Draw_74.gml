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
	
	if (instance_exists(obj_player)) and (global.overlay) and (!instance_exists(inventory)) {
		
		// draw screen damage cracks
		var _subimg = 10-10*(obj_player.P_health/obj_player.P_maxHealth);
		draw_sprite_stretched(spr_GlassShatter,_subimg,0, 0,global.guiWidth,global.guiHeight);
		
		// draw powerup info (bottom middle)
		draw_sprite_ext(spr_powInfo,0,global.guiWidth/2,global.guiHeight,_scale,_scale,0,c_white,1);
		var _combinedScale = clamp(global.guiSize+global.textScale, 1,2);
		_combinedScale *= 2;
		var orgCool = obj_player.orgCooldown;
		var synCool = obj_player.synCooldown;
		var sprWidth = sprite_get_width(spr_powInfo) * _scale;
		var orgText = "";
		var synText = "";
		
			draw_set_halign(fa_center);
		
		// draw organic powerup info
		if (global.orgFill != -4) and (ds_grid_get(global.powerup_grid,7,global.orgFill) != -1) {
			
			if (orgCool == 0) { // show button to press if cooldown is at 0
				
				orgText = get_input_name(KB.ORGATTACK);
			}
			else { // show cooldown number
				
				orgText = orgCool;
			}
		}
		else { 	// draw "empty" text
			
			orgText = "~";
		}
		
		// draw button to activate powerup
		draw_text_transformed(global.guiWidth/2 - sprWidth/3,global.guiHeight - 20 - 20 * _scale, orgText,
			_combinedScale,_combinedScale,0);
		
		
		// draw synthetic powerup info
		if (global.synFill != -4) and (ds_grid_get(global.powerup_grid,7,global.synFill) != -1) {
			
			if (synCool == 0) { // show button to press if cooldown is at 0
				
				synText = get_input_name(KB.SYNATTACK);
			}
			else { // show cooldown number
				
				synText = synCool;
			}
		}
		else { 	// draw "empty" text
			
			synText = "~";
		}
		
		// draw button to activate powerup
		draw_text_transformed(global.guiWidth/2 + sprWidth/3,global.guiHeight - 20 - 20 * _scale, synText,
			_combinedScale,_combinedScale,0);
		
		draw_set_halign(fa_left);
			/*
		if (global.orgFill != -4) {
			
			// of cooldown is 0
			if (orgCool == 0) {
			
				// draw button to activate powerup
				draw_text_transformed(global.guiWidth/2 - sprWidth/3,global.guiHeight - 20 - 20 * _scale,get_input_name(KB.ORGATTACK),
				_combinedScale,_combinedScale,0);
			}
			else { //if currently on cooldown
			
				draw_text_transformed(global.guiWidth/2 - sprWidth/3,global.guiHeight - 20 - 20 * _scale,orgCool,
				_combinedScale,_combinedScale,0);
			}
		}
		
		if (global.synFill != -4) {
			if (orgCool == 0) {
			
				// draw button to activate powerup
				draw_text_transformed(global.guiWidth/2 + sprWidth/3,global.guiHeight - 20 - 20 * _scale,get_input_name(KB.SYNATTACK),
				_combinedScale,_combinedScale,0);
			}
			else {
			
				draw_text_transformed(global.guiWidth/2 - sprWidth/3,global.guiHeight - 20 - 20 * _scale,synCool,
				_combinedScale,_combinedScale,0);
			}
		}
		
			draw_set_halign(fa_left);
	}
	*/
	// draw healthbars
	with (obj_player) {
		if (!instance_exists(inventory)) {
	
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
}