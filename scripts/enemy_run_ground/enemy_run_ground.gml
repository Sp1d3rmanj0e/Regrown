// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_run_ground(safeDist) {
	
	walkSp = ogwalkSp+0.75;
	max_origin_dist = runningRange;
	
	if (distance < safeDist) //will only get activated if in fleeing mode
	{
		if (sign(x-obj_player.x) == 1) key_left = -1;//if to the right
		else key_right = -1;
		if (alarm[1] == -1)
		{
		alarm[1] = calmTime;
		}

	}

}


