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
rows = 4; // How many rows of powerups
columns = 2; // How many columns of powerups
powerups = rows*columns*2;
spacing = 80; // Spacing between powerups
startingY = -160; //Starting coord of the powerup spawns
startingXorg = -obj_player.view_width/2+spacing+120;
startingXsyn = obj_player.view_width/2-spacing*columns-120;
page = 0; //Which screen the inventory is showing
maxPages = 1; //Includes 0
pageSprite = spr_inventoryscreenPassive; //Sets default subimage for inventory

//For textbox sizes
stringHeight = string_height("ABCDEFG"); //How tall the text is
boxWidth = 168; //width of textbox
sideOffset = 10;
textPart = "";
charCount = 0;

inventoryOpen = false;
overlay = PTYPE.NONE;
sel_powerupNum = 0;

if (obj_player.state != PLAYERSTATE.DEAD) obj_player.image_index = 0; //Resets his Checkpoint animation if not dead

objects = ds_list_create();

enum PTYPE 
{
	ORG,
	SYN,
	NONE
}



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
	pageSprite = spr_inventoryscreenPassive;
		
	break; //Active Powerups
		case 1:
	
	pageSprite = spr_inventoryscreenActive;
		
	#region Active Upgrades
	// Organic
	for (var i = 0; i < rows; i++) //columns
	{
		for (var j = 0; j < columns; j++) // rows
		{
			
			with (instance_create_layer(x + startingXorg + spacing * j,y + startingY + spacing * i,"inventory",obj_pow))
			{
				sprite_index = spr_powOrg;
				type = "org";
				transferPowData();
				
			}
			count++;
		}
	}
	// Lower (synthetic powerup area)
	for (i = 0; i < rows; i++) //columns
	{
		for (j = 0; j < columns; j++) // rows
		{
			with (instance_create_layer(x + startingXsyn + spacing * j,y + startingY + spacing * i,"inventory",obj_pow))
			{
				
				sprite_index = spr_powSyn;
				type = "syn";
				transferPowData();
			}
			count++;
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

audio_play_sound(snd_invOpen,1,false);