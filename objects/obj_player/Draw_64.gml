/// @description GUI

if (!instance_exists(inventory)) and (!global.gamePaused) {
	
	// draw healthbar GUI
	var healthPercent = P_health/P_maxHealth*100;
	draw_healthbar(0,0,Xoffset,Yoffset,healthPercent,c_black,make_color_rgb(0,238,255),make_color_rgb(0,222,234),0,true,true);
	draw_sprite(spr_healthbarNew,-1,0,0);
	draw_text(3,15,P_health);

	// draw nanobot GUI
	var nanobotPercent = nanobotCount/maxNanobotCount*100;
	draw_healthbar(0,Yoffset,Xoffset,Yoffset*2,nanobotPercent,c_black,make_color_rgb(179, 222, 226),make_color_rgb(179,106,205),0,true,true);
	draw_sprite(spr_healthbarNew,-1,0,Yoffset);
	draw_text(3,127,nanobotCount);
}
