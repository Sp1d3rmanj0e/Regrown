
if (!global.gamePaused) {
	
	// check if the powerup is unlocked or not
	if (ds_grid_get(global.powerup_grid,2,count)) {
		if (position_meeting(mouse_x,mouse_y,id))
		{
			clicked = true;
		}
	}
}