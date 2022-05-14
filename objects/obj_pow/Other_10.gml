/// @description deactivate org pow

if (ds_grid_get(global.powerup_grid,4,count) != noone) {
	
	var powCode = ds_grid_get(global.powerup_grid,4,global.orgFill);
	myStruct = new powCode();
	myStruct.resetChanges(); 
}

obj_player.orgCooldown = 0;
global.orgFill = -4;
x = org_x;
y = org_y;