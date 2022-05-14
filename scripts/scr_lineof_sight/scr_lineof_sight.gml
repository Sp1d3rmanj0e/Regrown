// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_lineof_sight(leeway)
{

			var dir = point_direction(x,y,obj_player.x,obj_player.y); // Sets Dir to player
			var xDist = lengthdir_x(abs(obj_player.x-x),dir);
			var yDist = lengthdir_y(abs(obj_player.y-y),dir);
			var dist = distance_to_object(obj_player); // Distance to player
			for(var i = 0; i < dist; i += leeway)
			{
				if (tilemap_get_at_pixel(tilemap_solid,x+(xDist/dist)*i,y+(yDist/dist)*i) != 0)
				{
					show_debug_message("failed");
					return false;
				}
			}
			
			show_debug_message("succeeded");
			return true;
}