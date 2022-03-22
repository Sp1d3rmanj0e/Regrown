/// @description Insert description here
// You can write your code in this editor

if (clicked) and (position_meeting(mouse_x,mouse_y,id)) {
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
}
clicked = false;