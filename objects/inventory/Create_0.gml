/// @description Insert description here
// You can write your code in this editor
//powerup organization
frame = 0; //Controllable frame counter
maxFrames = 0;  //Sets a limit to the frame counter to prevent memory links [ Controlled by toggleFrames() ]
secsPerFrame = 0.5; //How many frames happen every second
transAnimation = spr_inventoryscreen_open; //Toggleable to change whether open or close animation is being used
closeOn = false; //Prevents spamming the close button
alpha = 0;
maxAlpha = 0.75;
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
pageSubimg = 0; //Sets default subimage for inventory

inventoryOpen = false;


objects = ds_list_create();



with (obj_player) { //Pauses Player Movements
	pause(1);
	sprite_index = spr_playerChk;
}

function toggleFrames(_frames) {
	frame = 0;
	maxFrames = _frames;
}

function switchPage(page) {
if (!closeOn) {
	removePowerups();
if (inventoryOpen = true) {
	switch (page) {
		case 0: //Passive Upgrades
	pageSubimg = 0;
		
	break; //Active Powerups
		case 1:
	
	pageSubimg = 1;
		
	#region Active Upgrades
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
}

function removePowerups() {
	
	
count = 0; //Resetting count for powerup Spawning


	for (var i = 0;i < ds_list_size(objects); i++)
{
	instance_destroy(ds_list_find_value(objects, i));
	
}

ds_list_clear(objects);
}

toggleFrames(30); //Turn on frame counter for 30 frames
alarm[0] = 30; //Activate the inventory

