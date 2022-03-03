/// @description Enemy AI

	key_right = 0;
	key_left = 0;
	key_spaceP = 0; 
	key_spaceH = 0;
	key_crouch = 0;

	damage = 2;

#region Collision


if (touching_wall != 0) key_spaceH = 1;
	
#endregion

if (hp <= 0) exit;


distance = abs(x-obj_player.x);

#region view engagement
if (view_range >= distance_to_object(obj_player)) //If within range to be seen
{
	if (alarm[5] == -1)
	{
		alarm[5] = 0.25 * room_speed; // Activates seeing code
	}
} else lineof_sight = false;


#endregion



#region playerstate code
if (playerstate == 0) or (playerstate == 1)// Wandering and alert
{
	if (playerstate == 0) //if wandering
	{
		max_o_dist = wanderRange;
		dur_min = wanderMin;
		dur_max = wanderMax;
		
	} else // If alert
	{					
		max_o_dist = alertRange;
		dur_min = alertMin;
		dur_max = alertMax;
		
	}
	if (active == 0) // One-time tick per action
	{
		active = 1; //Locks to activate only once
		rando = irandom_range(-1,1); // -1 : left, 0 : none, 1: right
		walkSp = ogwalkSp + random_range(-.3,.3); //variation in speeds
	
		alarm[0] = irandom_range(dur_min,dur_max); //Action time
	} else {  //when active
		
		
		if (rando == -1) //Direction of motion
		{
			key_left = 1;
		} else if (rando == 1)
		{
			key_right = 1;
		} else if (rando == 0) and (playerstate == 1)
		{
			rando = choose(-1,1);
		}
	}
} else if (playerstate == 2)
{
	max_o_dist = attackRange;
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

	if (distance < safeDist) and (hp/oghp <= 0.5) and (alarm[2] == -1)//if health is below 50% and fleeing valor is gone
	{
		playerstate = 3;
	}

} else if (playerstate == 3) //if Fleeing
{
	max_o_dist = runningRange;
	walkSp = ogwalkSp+0.75;
	if (distance < safeDist) //will only get activated if in fleeing mode
	{
		if (sign(x-obj_player.x) == 1) key_left = -1;//if to the right
		else key_right = -1;
		if (alarm[1] == -1)
		{
		alarm[1] = calmTime;
		}
		if (distance < safeDist/2) and (alarm[1] > calmTime/3)
		{
			alarm[1] = calmTime/3;
		}
	}
}
#endregion




#region playerstate transitions

if (distance_to_object(obj_player) < senseRange) and (alarm[6] == -1)
{
	playerstate = 1;
	alarm[6] = alertForget;
}

if (lineof_sight ==	1) and (passive == false) and ((playerstate == 1) or (playerstate == 0))
{
	playerstate = 2; //If seen and aggro, and was alert, then 2
}

if (obj_player.safe) playerstate = 0; //No aggro when invincible

if (lineof_sight == 1)
{
	alarm[6] = attack_forget; //If time goes without seeing player, goes back to 0
}




#endregion



#region don't stray too far
var odist = x-oX;
if (abs(odist) > max_o_dist) //If too far from origin
{
	if (sign(odist) == 1) //if player is to the right
	{
		if (rando == 1) rando = 0;
	} else { //if player is to the left
		if (rando == -1) rando = 0;
	}
}


#endregion
