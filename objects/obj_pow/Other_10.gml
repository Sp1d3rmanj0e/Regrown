/// @description deactivate org pow

if (ds_grid_get(global.powerup_grid,4,count) != noone) {
	
	var powCode = ds_grid_get(global.powerup_grid,4,global.orgFill);
	myStruct = new powCode(count);
	myStruct.resetChanges(); 
}

global.orgFill = -4;
x = org_x;
y = org_y;