/// @description Exit inventory
if (!closeOn) {
	
secsPerFrame = 0.7;
transAnimation = spr_inventoryscreen_close;
toggleFrames(15);
closeOn = true;
removePowerups(); //Removes powerup selection options

ds_list_destroy(objects); //Prevents memory leak

inventoryOpen = false;

 alarm[1] = 15;
}