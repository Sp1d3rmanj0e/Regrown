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
page = 0; //Which screen the inventory is showing
maxPages = 1; //Includes 0

inventoryOpen = false;

objects = ds_list_create();






with (obj_player) {
	
	pause(1);
	sprite_index = spr_playerChk;
	
}

alarm[0] = 30; //Activate the inventory

function switchPage(page) {
	removePowerups();
if (inventoryOpen = true) {
	switch (page) {
		case 0: //Passive Upgrades
		
		
		break; //Active Powerups
		case 1:
		
	#region Active Upgrades
		// Makes powerup area
	// Organic
	for (var i = 0; i < rows; i++) //columns
	{
		for (var j = 0; j < columns; j++) // rows
		{
			count++;
			with (instance_create_layer(x + startingX + spacing * j,y + startingY + spacing * i,"inventory",obj_pow))
			{
				sprite_index = spr_powOrg;
				count = other.count;
				type = "org";
				ds_list_add(other.objects,id);
			}
		}
	}
	// Lower (synthetic powerup area)
	for (i = 0; i < rows; i++) //columns
	{
		for (j = 0; j < columns; j++) // rows
		{
			count++;
			with (instance_create_layer(x + startingX + spacing * j,y + startingY + split + spacing * i,"inventory",obj_pow))
			{
				sprite_index = spr_powSyn;
				count = other.count-1;
				type = "syn";
				ds_list_add(other.objects,id);
			}
		}
	}

	#endregion
	
		break;
	}
}
}

function removePowerups() {
	
	
count = 0; //Resetting count for powerup Spawning


	for (var i = 0;i < ds_list_size(objects); i++)
{
	instance_destroy(ds_list_find_value(objects, i));
	
}

ds_list_clear(objects);
}
