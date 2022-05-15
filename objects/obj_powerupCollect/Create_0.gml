/// @description
roomStart = room;
shade = c_white
image_speed = 0;

// set to black if already gotten it
if (ds_grid_get(global.powerup_grid,2,powerupNumber) == true) {
	
	shade = c_gray;
	image_blend = c_gray;
}

height = 0;
hover = 1;