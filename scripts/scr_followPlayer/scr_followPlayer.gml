// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_followPlayer(xoff,yoff){
	if (instance_exists(obj_player)) {
		
		x = obj_player.x+xoff;
		y = obj_player.y+yoff;
	}
}