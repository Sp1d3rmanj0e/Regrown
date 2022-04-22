/// @description GUI

if (!instance_exists(inventory)) {
	
	// draw healthbar GUI
	var healthPercent = P_health/P_maxHealth*100;
	draw_healthbar(75,25,50+Xoffset,25+Yoffset,healthPercent,c_black,make_color_rgb(0,238,255),make_color_rgb(0,222,234),0,true,true);
	draw_sprite(spr_healthBar,-1,0,0);
	draw_text(3,15,P_health);

	// draw nanobot GUI
	var nanobotPercent = nanobotCount/maxNanobotCount*100;
	draw_healthbar(75,137,50+Xoffset,137+Yoffset,nanobotPercent,c_black,make_color_rgb(179, 222, 226),make_color_rgb(179,106,205),0,true,true);
	draw_sprite(spr_nanobotCapsuleIcon,-1,0,112);
	draw_text(3,127,nanobotCount);
}
