/// @description Insert description here
// You can write your code in this editor
//powerup organization
count = 0;
rows = 3; // How many rows of powerups
columns = 3; // How many columns of powerups
powerups = rows*columns*2;
spacing = 80; // Spacing between powerups
split = columns*spacing + 50; // Spacing between Organic and Synthetic powerup sets
startingY = -270; //Starting coord of the powerup spawns
startingX = 280;


lock = false;

objects = ds_list_create();

with (obj_player) {
	
	pause(1);
	sprite_index = spr_playerChk;
	
}

alarm[0] = room_speed*2; //Activate the inventory


