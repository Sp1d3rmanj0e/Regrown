/// @description Exit inventory
if (!closeOn) {

closeOn = true;
removePowerups(); //Removes powerup selection options

ds_list_destroy(objects); //Prevents memory leak

inventoryOpen = false;

 alarm[1] = 30;
}