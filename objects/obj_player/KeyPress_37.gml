/// @description TESTS
if (global.orgFill != -4) {
	var powCode = ds_grid_get(global.powerup_grid,4,global.orgFill);
	myStruct = new powCode();
	myStruct.resetChanges(); 
}
global.orgFill = -4;

cameraZoom(1,0.1)