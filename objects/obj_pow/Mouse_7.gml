/// @description mouse still on button when released

if (clicked) and (position_meeting(mouse_x,mouse_y,id)) { //If mouse is still on the button when released
	if (obj_player.orgFill == count) {
		obj_player.orgFill = -4;
		x = org_x;
		y = org_y;
	} else if (obj_player.synFill == count) {
		obj_player.synFill = -4;
		x = org_x;
		y = org_y;
	} else {
	Choose();
	
	}
	audio_play_sound(snd_switch,1,false);
}
clicked = false;