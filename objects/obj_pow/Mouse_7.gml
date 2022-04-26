/// @description mouse still on button when released

if (clicked) and (position_meeting(mouse_x,mouse_y,id)) { //If mouse is still on the button when released
	
	// remove from selected if already selected
	if (global.orgFill == count) {
		
		if (global.orgFill != -4) {
			var powCode = ds_grid_get(global.powerup_grid,4,global.orgFill);
			myStruct = new powCode(count);
			myStruct.resetChanges(); 
		}

		global.orgFill = -4;
		x = org_x;
		y = org_y;
	} else if (global.synFill == count) {
		
		if (global.synFill != -4) {
			var powCode = ds_grid_get(global.powerup_grid,4,global.synFill);
			myStruct = new powCode(count);
			myStruct.resetChanges(); 
		}
		
		global.synFill = -4;
		x = org_x;
		y = org_y;
	} //if not already selected, select it
	else {
	Choose();
	
	}
	audio_play_sound(snd_switch,1,false);
}
clicked = false;

