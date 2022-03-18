/// @description Insert description here
// You can write your code in this editor

function transferPowData() {
	
	ds_list_add(other.objects,id);
	count = other.count;
	powerup_type = ds_grid_get(global.powerup_grid,1,count);
	powerup_name = ds_grid_get(global.powerup_grid,0,count);
}


count = 0;
lock = false;
type = "unknown";

org_x = x;
org_y = y;

selDestX = obj_player.camX + 300;
selDestY = obj_player.camY; //Gets the Camera's Y location (top side)
destOffset = 200; //offset from camera height

powerup_name = "Unfilled";
powerup_type = 0;

function Choose()
{
		with(obj_pow) GoBack(other.type);
		x = selDestX;
		y = selDestY;
		if (type = "syn") //Change active powerup
		{
			obj_player.synFill = count;
		} else {
			obj_player.orgFill = count;
		}
}

function GoBack (TYP)
{
	if (TYP = "syn") and (type = "syn")
		{
			x = org_x;
			y = org_y;
		} else if (TYP = "org") and (type = "org")
		{
			x = org_x;
			y = org_y;
		}
}

