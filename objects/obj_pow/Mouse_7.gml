/// @description mouse still on button when released

if (clicked) and (position_meeting(mouse_x,mouse_y,id)) { //If mouse is still on the button when released
	if (global.orgFill == count) {
		global.orgFill = -4;
		x = org_x;
		y = org_y;
	} else if (global.synFill == count) {
		global.synFill = -4;
		x = org_x;
		y = org_y;
	} else {
	Choose();
	
	}
	audio_play_sound(snd_switch,1,false);
}
clicked = false;