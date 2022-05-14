// w = 0  -->  Name (String)
// w = 1  -->  Powerup Number / Image Number (Value)
// w = 2  -->  Unlocked? (Boolean)
// w = 3  -->  Definition (String)
// w = 4  -->  Script (Executable)
// w = 5  -->  Sound when chosen or mouse hovers over it (Executable)
// w = 6  -->  Color blend (C_ or RGB)
// w = 7  -->  Cooldown (secs)

function createPowerup(_pos, _name, _imgNum, _unlocked, _def, _script, _sound, _color, _cooldown) {
	
	ds_grid_set(global.powerup_grid,0,_pos,_name); //Name
	ds_grid_set(global.powerup_grid,1,_pos,_imgNum); //Image Number
	ds_grid_set(global.powerup_grid,2,_pos,_unlocked); //Unlocked?
	ds_grid_set(global.powerup_grid,3,_pos,_def); //Definition
	ds_grid_set(global.powerup_grid,4,_pos,_script); //Script 
	ds_grid_set(global.powerup_grid,5,_pos,_sound); //Sound
	ds_grid_set(global.powerup_grid,6,_pos,_color); //Color
	ds_grid_set(global.powerup_grid,7,_pos,_cooldown); //Cooldown
}