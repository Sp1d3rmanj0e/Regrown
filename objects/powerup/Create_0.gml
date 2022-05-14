/// @description Insert description here
// You can write your code in this editor

maxpowerups = 16; // Array capacity (Easily changeable)



// w = 0  -->  Name (String)
// w = 1  -->  Powerup Number / Image Number (Value)
// w = 2  -->  Unlocked? (Boolean)
// w = 3  -->  Definition (String)
// w = 4  -->  Script (Executable)
// w = 5  -->  Sound when chosen or mouse hovers over it (Executable)
// w = 6  -->  Color blend (C_ or RGB)
// w = 7  -->  Cooldown (secs)


if (global.saveObjects == 1) { //prevents creating infinite ds_grids upon resetting
	
	global.powerup_grid = ds_grid_create(8,maxpowerups);
}


#region Powerup Data

// initialize values so there aren't any empty cells

for (var i = 0; i < maxpowerups; i++) {
	ds_grid_set(global.powerup_grid,0,i,"No Name"); //Name
	ds_grid_set(global.powerup_grid,1,i,0); //Image Number
	ds_grid_set(global.powerup_grid,2,i,true); //Unlocked?
	ds_grid_set(global.powerup_grid,3,i,"Empty Value"); //Definition
	ds_grid_set(global.powerup_grid,4,i,noone); //Script
	ds_grid_set(global.powerup_grid,5,i,noone); //Sound 
	ds_grid_set(global.powerup_grid,6,i,c_white); //Color
	ds_grid_set(global.powerup_grid,7,i,-1); //Cooldown
}

// test manual fill
	// org pows
createPowerup(0, "Moose", 1, true, "Hits a heavy, one-directional blow.         Also, It breaks rock walls!", powMoose, noone, c_orange, 2);
createPowerup(1, "Cheetah TEST", 2, true, "WWW", noone, noone, c_yellow, -1);
createPowerup(2, "Thorns", 3, true, "Hurt enemies that hit you for half your current damage.", powThorns, noone, c_green, -1);

	// syn pows
createPowerup(8, "Springs", 0, true, "Boosts Jump", powJump, noone, c_silver, -1);
createPowerup(9, "Rubber Pads", 1, false, "Immune to electrical wires", powShock, noone, c_blue, -1);
#endregion

