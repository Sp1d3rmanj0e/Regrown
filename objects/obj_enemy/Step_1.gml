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
#region Enemy Max Distance (ENGAGEMENT
/*
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
		key_left = 0.6;
	}
	else //if player is to the right
	{
		key_right = 0.6;	
	}
}

#region enemy jump


*/
#endregion

#region passive and alert code
if (playerstate == 0) or (playerstate == 1)// Wandering and alert
{
	if (playerstate == 0) //if wandering
	{
		max_o_dist = wanderRange;
		d_min = wanderMin;
		d_max = wanderMax;
		
	} else 
	{					// if alert
		max_o_dist = alertRange;
		d_min = alertMin;
		d_max = alertMax;
		
	}
	if (active == 0) // One-time tick per action
	{
		active = 1; //Locks to activate only once
		rando = irandom_range(-1,1); // -1 : left, 0 : none, 1: right
	
		alarm[0] = irandom_range(d_min,d_max); //Action time
	} else {  //when active
		if (rando == -1) //Direction of motion
		{
			key_left = 1;
		} else if (rando == 1)
		{
			key_right = 1;
		}
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
