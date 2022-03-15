/// @description Delayed Setup Steps

//Readjust position in case player moved during opening animation
x = obj_player.x;
y = obj_player.y;
inventoryOpen = true;
obj_player.safe = true; // Invincibility

switchPage(0);