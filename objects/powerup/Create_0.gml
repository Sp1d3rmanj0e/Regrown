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


if (global.saveObjects == 1) { //prevents creating infinite ds_grids upon resetting
	
	global.powerup_grid = ds_grid_create(7,maxpowerups);
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
}

// test manual fill

ds_grid_set(global.powerup_grid,0,0,"Moose"); //Name
ds_grid_set(global.powerup_grid,1,0,1); //Image Number
ds_grid_set(global.powerup_grid,2,0,true); //Unlocked?
ds_grid_set(global.powerup_grid,3,0,"Hits a heavy, one-directional blow."); //Definition
ds_grid_set(global.powerup_grid,4,0,powTest); //Script 
ds_grid_set(global.powerup_grid,5,0,noone); //Sound (ADD ONE)
ds_grid_set(global.powerup_grid,6,0,c_orange); //Color

#endregion

