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
}

if (mouse_check_button_pressed(mb_left))
{
	if (position_meeting(mouse_x,mouse_y,id))
	{
		with(obj_pow) GoBack(other.type);
		x = selDestX;
		y = selDestY;
		if (type = "syn")
		{
			obj_checkpoint.synFill = count;
		} else {
			obj_checkpoint.orgFill = count;
		}
	}
}