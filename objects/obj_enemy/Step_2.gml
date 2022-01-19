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
distance = x-obj_player.x;
#region enemy AI
if (abs(distance) > far_range)
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

if (abs(distance) < close_range)
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



#endregion

#endregion