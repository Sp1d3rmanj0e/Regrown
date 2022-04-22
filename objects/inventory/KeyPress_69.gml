/// @description close inventory


if (!closeOn) { // only activate if not actively closing
	closeOn = true;
	
	targetZoom = storedZoom;
	
	secsPerFrame = 0.7; // change animation speed
	transAnimation = spr_inventoryscreen_close;
	toggleFrames(15);

	removePowerups(); // removes powerup selection options

	ds_list_destroy(objects); // prevents memory leak

	inventoryOpen = false;

	 alarm[1] = 15; //delay destroying self to allow closing animation
}