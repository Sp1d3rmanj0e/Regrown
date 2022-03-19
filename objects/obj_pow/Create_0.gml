/// @description Insert description here
// You can write your code in this editor

function transferPowData() {
	
	ds_list_add(other.objects,id);
	count = other.count;
	powerup_type = ds_grid_get(global.powerup_grid,1,count);
	powerup_name = ds_grid_get(global.powerup_grid,0,count);
}

shade = c_white;

count = 0;
lock = false;
type = "unknown";

org_x = x;
org_y = y;

selDestX = obj_player.halfViewX;
selectedYsyn = obj_player.camY + obj_player.view_height - 150;
selectedYorg = obj_player.camY + 170;

powerup_name = "Unfilled";
powerup_type = 0;

function Choose()
{
		with(obj_pow) GoBack(other.type);
		x = selDestX;
		
		if (type = "syn") //Change active powerup
		{
			y = selectedYsyn;
			obj_player.synFill = count;
		} else {
			y = selectedYorg;
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

