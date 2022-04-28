/// @description Insert description here
// You can write your code in this editor

// give the powerup instance specific data
function transferPowData() {
	
	ds_list_add(other.objects,id);
	count = other.count;
	powerup_type = ds_grid_get(global.powerup_grid,1,count);
	powerup_name = ds_grid_get(global.powerup_grid,0,count);
}

shade = c_ltgray;

selected = false;
count = 0;
lock = false;
type = "unknown";

org_x = x;
org_y = y;

selDestX = global.halfViewX;
selectedYsyn = global.viewY + global.viewHeight - 150;
selectedYorg = global.viewY + 170;

powerup_name = "Unfilled";
powerup_type = 0;

clicked = false;

// change active powerup
function Choose()
{
		with(obj_pow) GoBack(other.type);
		x = selDestX;
		
		if (type = "syn") // change active powerup
		{
			y = selectedYsyn;
			global.synFill = count;
		} else {
			y = selectedYorg;
			global.orgFill = count;
		}
		selected = true
}

// send powerups back
function GoBack (TYP)
{
	
	if (TYP = "syn") and (type = "syn") {
			
			if (global.synFill == count) event_user(1);
			selected = false;
			x = org_x;
			y = org_y;
		} else if (TYP = "org") and (type = "org") {
			
			if (global.orgFill == count) event_user(0);
			selected = false;
			x = org_x;
			y = org_y;
		}
}

