/// @description Initialization


// controls the opening and closing animations

frame = 0; //Controllable frame counter
maxFrames = 0;  //Sets a limit to the frame counter to prevent memory links [ Controlled by toggleFrames() ]
secsPerFrame = 0.5; //How many frames happen every second
transAnimation = spr_inventoryscreen_open; //Toggleable to change whether open or close animation is being used

alpha = 0;
maxAlpha = 0.75;

// powerup controls

count = 0; //labels the powerups 0-15
rows = 4; // How many rows of powerups
columns = 2; // How many columns of powerups
//powerups = rows*columns*2;

spacing = 80; // Spacing between powerups
startingY = -160; //Starting coord of the powerup spawns
startingXorg = -global.viewWidth/2+spacing+120;
startingXsyn = global.viewWidth/2-spacing*columns-120;

// inventory screens control
alreadyChangedPage = false; // for mouse commands, prevents infinite page changing
oldX = x;
oldY = y;
page = 0; //Which screen the inventory is showing
maxPages = 1; //Includes 0
pageSprite = spr_inventoryscreenPassive; //Sets default subimage for inventory

// textbox references
stringHeight = string_height("ABCDEFG"); //How tall the text is
boxWidth = 168; //width of textbox
sideOffset = 10;
textPart = ""; //allows the text to "type" in
charCount = 0;

// dynamic references

closeOn = false; // prevents spamming the close button
inventoryOpen = false; // lets game know the inventory is open
overlay = PTYPE.NONE; // tells the object what info overlay to activate
sel_powerupNum = 0; // allows referencing of specific powerup data

enum PTYPE 
{
	ORG,
	SYN,
	NONE
}

objects = ds_list_create(); // stores ids of objects to be deleted later

// player control

if (obj_player.state != PLAYERSTATE.DEAD) obj_player.image_index = 0; //Resets his Checkpoint animation if not dead

with (obj_player) { //Pauses Player Movements
	pause(1);
	sprite_index = spr_playerChk;
}


// functions

	// manual frame control
	
function toggleFrames(_frames) {
	
	frame = 0;
	maxFrames = _frames;
}

	// makes switching pages of inventory easier

function switchPage(page) {
	
	if (!closeOn) {
		removePowerups();
	
		if (inventoryOpen = true) {
	
			switch (page) {
		
			// passive upgrade screen
		
			case 0:
		
				pageSprite = spr_inventoryscreenPassive;
		
			break;
	
			// active powerup screen
	
			case 1:
	
				pageSprite = spr_inventoryscreenActive;
		
				#region spawn powerups
		
				// spawn organic powerups
		
				for (var i = 0; i < rows; i++) //columns
				{
					for (var j = 0; j < columns; j++) // rows
					{
			
						with (instance_create_layer(x + startingXorg + spacing * j,y + startingY + spacing * i,"gui",obj_pow))
						{
							sprite_index = spr_powOrg;
							type = "org";
							transferPowData();
				
						}
						count++;
					}
				}
		
				// spawn synthetic powerups
		
				for (i = 0; i < rows; i++) //columns
				{
					for (j = 0; j < columns; j++) // rows
					{
						with (instance_create_layer(x + startingXsyn + spacing * j,y + startingY + spacing * i,"gui",obj_pow))
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
	
	count = 0; // resetting count for powerup Spawning

	for (var i = 0; i < ds_list_size(objects); i++)
	{
		instance_destroy(ds_list_find_value(objects, i));
	
	}

	ds_list_clear(objects);
}

toggleFrames(30); // turn on frame counter for 30 frames
alarm[0] = 30; // open the inventory

audio_play_sound(snd_invOpen,1,false);