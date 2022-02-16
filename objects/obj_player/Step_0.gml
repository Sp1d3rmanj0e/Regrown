/// @description


// Main Code 

#region Visual Effects
// Makes flash go down over time
if (flash_alpha > 0)
{
	flash_alpha -= 0.05;
}

// Flash if damaged
if (P_health != P_health_prev) //If took damage
{
	flash_alpha = 1;
}
P_health_prev = P_health;

#endregion

#region colliding with checkpoint

if (place_meeting(x,y,obj_checkpoint))
{
	pause(1);
	
	//Walk in animation here
	
	sprite_index = spr_playerChk;
	x = obj_checkpoint.x;
}


#endregion

//Finalizing

x += hsp;
y += vsp;
