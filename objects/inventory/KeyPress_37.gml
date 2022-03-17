/// @description Exit inventory
if (!closeOn) {
	
secsPerFrame = 0.75;
transAnimation = spr_inventoryscreen_close;
toggleFrames(60);
closeOn = true;
removePowerups(); //Removes powerup selection options

ds_list_destroy(objects); //Prevents memory leak

inventoryOpen = false;

 alarm[1] = 20;
}