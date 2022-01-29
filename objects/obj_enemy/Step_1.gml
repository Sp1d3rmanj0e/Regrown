/// @description Enemy AI

	key_right = 0;
	key_left = 0;
	key_spaceP = 0; 
	key_spaceH = 0;
	key_crouch = 0;

#region Collision
var bbox_side,p1,p2,p3;

if (touching_wall != 0) key_spaceH = 1;
	
#endregion
distance = abs(x-obj_player.x);


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
	walkSp = ogwalkSp;
	// Enemy Engagement Distances
	
	if (distance > far_range)
	{
		if (x - obj_player.x > 0) //if player is to the left
		{
			key_left = 1;
		}
		else //if player is to the right
		{
			key_right = 1;	
		}
	}

	if (distance < close_range)
	{
			if (x - obj_player.x < 0) //if player is to the left
		{
			key_left = 1;
		}
		else //if player is to the right
		{
			key_right = 1;	
		}
	}
	if (distance < safeDist) and (hp/oghp <= 0.5) and (alarm[2] == -1)//if health is below 50% and fleeing valor is gone
	{
		playerstate = 3;
	}
	
	/*  Friendly Collisions
	if (place_meeting(x,y,obj_enemy))
	{
		if (choose(1,2) == 1)
		{
			key_left = 3;
		} else {
			key_right = 3;
		}

	}
	*/
} else if (playerstate == 3) //if Fleeing
{
	walkSp = ogwalkSp+0.75;
	if (distance < safeDist) //will only get activated if in fleeing mode
	{
		if (sign(x-obj_player.x) == 1) key_left = -1;//if to the right
		else key_right = -1;
		alarm[1] = calmTime;
	}
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
