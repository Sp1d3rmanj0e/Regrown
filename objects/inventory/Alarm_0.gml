/// @description delayed setup steps

// readjust position in case player moved during opening animation
x = obj_player.x;
y = obj_player.y;

inventoryOpen = true; // tells game the inventory is open
obj_player.safe = true; // make player invincible

switchPage(0); // open first page