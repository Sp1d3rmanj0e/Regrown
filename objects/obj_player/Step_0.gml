/// @description


// Main Code 

#region Visual Effects
// Makes flash go down over time
if (flash_alpha > 0)
{
	flash_alpha -= 0.05;
}

// Flash if damaged
if (P_health < P_health_prev) //If took damage
{
	flash_alpha = 1;
	_shake(30);
}
P_health_prev = P_health;

#endregion


//Finalizing

x += hsp;
y += vsp;
