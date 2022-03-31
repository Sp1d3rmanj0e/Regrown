// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_attack_melee(far_range, close_range){

	// initialize
	max_origin_dist = attackRange;
	left_right = (x-obj_player.x > 0);
	walkSp = ogwalkSp;
	
	// Enemy Engagement Distances
	if (distance > far_range)
	{
		if (left_right) //if player is to the left
		{
			key_left = 1;
		}
		else //if player is to the right
		{
			key_right = 1;	
		}
	}
	else if (distance < close_range) //Stay certain distance away
	{
			if (left_right == false) //if player is to the right
		{
			key_left = 1;
			key_spaceP = 1;
		}
		else //if player is to the left
		{
			key_right = 1;	
			key_spaceP = 1;
		}
	} else if (distance < 62) and (!place_meeting(x,y,obj_player)) // If player is over enemy
	{
		key_spaceH = 1;
		hsp -= sign(obj_player.x-x) * 5;
	}
	else // In attack Window
	{
		attack(0);
	}

	if (distance < safeDist) and (hp/oghp <= fleehealthdec) and (alarm[2] == -1)//if health is below 50% and fleeing valor is gone
	{
		playerstate = STATE.RUN;
	}



}