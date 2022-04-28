/// @description mouse still on button when released

if (clicked) and (position_meeting(mouse_x,mouse_y,id)) { //If mouse is still on the button when released
	
	// remove from selected if already selected
	if (global.orgFill == count) {
		
		event_user(0);
	} else if (global.synFill == count) {
		
		event_user(1);
	} //if not already selected, select it
	else {
	Choose();
	
	}
	audio_play_sound(snd_switch,1,false);
}
clicked = false;

