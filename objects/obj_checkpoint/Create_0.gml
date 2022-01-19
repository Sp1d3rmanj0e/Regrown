/// @description Insert description here
// You can write your code in this editor

//powerup organization
count = 0;
rows = 3; // How many rows of powerups
columns = 3; // How many columns of powerups
powerups = rows*columns*2;
spacing = 120; // Spacing between powerups
split = columns*spacing + 50; // Spacing between Organic and Synthetic powerup sets
startingY = -360; //Starting coord of the powerup spawns


lock = false;
delay_ref= room_speed * 2;
synFill = noone;
orgFill = noone;
