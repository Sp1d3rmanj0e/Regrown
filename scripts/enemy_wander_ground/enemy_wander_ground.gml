// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
function enemy_wander_ground(){

	if (active == 0) // one-time tick per action
	{
		active = 1; // locks to activate only once
		move_direction = irandom_range(-1,1); // -1 : left, 0 : none, 1: right
		enemySpeed = ogwalkSp + random_range(-.3,.3); // variation in speeds
	
		alarm[0] = irandom_range(enemyMotionTimeMin, enemyMotionTimeMax); // action time
	} 
	else {  //when active
		
		if (move_direction == -1) {
			
			key_left = 1;
		} 
		else if (move_direction == 1) {
			
			key_right = 1;
		}
	}
}