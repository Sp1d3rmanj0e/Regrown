/// @description Insert description here
// You can write your code in this editor
count = 0;
lock = false;
type = "unknown";

org_x = x;
org_y = y;

selDestX = obj_player.camX + 900;
selDestY = obj_player.camY; //Gets the Camera's Y location (top side)
destOffset = 200; //offset from camera height




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