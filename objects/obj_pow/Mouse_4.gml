/// @description Insert description here
// You can write your code in this editor
if (ds_grid_get(global.powerup_grid,2,count))
{
	if (position_meeting(mouse_x,mouse_y,id))
	{
		
		if (obj_player.orgFill == count) {
			obj_player.orgFill = -4;
			x = org_x;
			y = org_y;
		} else {
		Choose();
		}
		
	}
}