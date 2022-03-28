// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_alert_ground(){

	max_origin_dist = alertRange;
		dur_min = alertMin;
		dur_max = alertMax;


	if (active == 0) // One-time tick per action
	{
		active = 1; //Locks to activate only once
		move_direction = irandom_range(-1,1); // -1 : left, 0 : none, 1: right
		walkSp = ogwalkSp + random_range(-.3,.3); //variation in speeds
	
		alarm[0] = irandom_range(dur_min,dur_max); //Action time
	} else {  //when active
		
		
		if (move_direction == -1) //Direction of motion
		{
			key_left = 1;
		} else if (move_direction == 1)
		{
			key_right = 1;
		} else if (move_direction == 0) and (playerstate == STATE.PATROL)
		{
			move_direction = choose(-1,1);
		}
	}


}