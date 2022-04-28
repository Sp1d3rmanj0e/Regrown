/// @description deactivate syn pow

if (ds_grid_get(global.powerup_grid,4,count) != noone) {
	
	var powCode = ds_grid_get(global.powerup_grid,4,global.synFill);
	myStruct = new powCode(count);
	myStruct.resetChanges(); 
}
		
global.synFill = -4;
x = org_x;
y = org_y;