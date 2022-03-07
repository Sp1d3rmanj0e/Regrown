/// @description Insert description here
// You can write your code in this editor


// Calculate how many powerups there actually are;
var count2 = 0;
for (i = 0;i < array_length(game_controls.powerupTypes);i++)
{
	if (game_controls.powerupTypes[i] != noone) count2++
}
powerups = count2; // Sett new powerup count


// After activated \/\/\/
if (action = true) 
{

	image_alpha = 1;
	
	#region make cells and powerups
	/*
	if (!lock) // Make cells and powerups
	{
		lock = true;
		x = obj_player.x;
		y = obj_player.y-50;
		count = 0
		for (var i = 0;i < amt;i++) // powerup cells
			{
				count++;
				with (instance_create_depth(x+xOffset,yOffset+spacing*i,depth-1,obj_powerupCells))
				{
					count = other.count;
				}
			}
		count = 0;
		for (var i = 0;i < columns;i++) // Columns
		{
			for (var j = 0;j < rows;j++) // Rows
			{
				count++;
				if (powerups >= count) 
				{
					with (instance_create_depth(x+xOffset+spacing*i+powerupSep,yOffset+spacing*j,depth-2,obj_powerups))
					{
						count = other.count-1;
					}
				}
			}
		}
	}
	*/
	#endregion
	
	
}