/// @description Insert description here
// You can write your code in this editor

if (!lock)
{
	lock = true;
	if (type = "org")
	{
		selDestY += destOffset; //Top lowered by offset
	} else if (type = "syn") {
		selDestY += obj_player.view_height-destOffset; //Bottom raised by offset
	}
	
		if (obj_player.synFill == count) or (obj_player.orgFill == count)
	{
		Choose();
	}
}

if (mouse_check_button_pressed(mb_left))
{
	if (position_meeting(mouse_x,mouse_y,id))
	{
		Choose();
	}
}