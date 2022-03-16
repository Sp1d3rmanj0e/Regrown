/// @description Insert description here
// You can write your code in this editor

maxpowerups = 18; // Array capacity (Easily changeable)

powerups = ds_list_create() //Initialize array for powerup storage

for (var i = 0; i < maxpowerups; i++)
{
	ds_list_add(powerups,0);
}


ds_list_replace(powerups,2,1);
