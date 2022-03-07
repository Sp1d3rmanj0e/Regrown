/// @description Collision with Player (Inventory)
if (place_meeting(x,y,obj_player))
{
	delay--;
	if (!lock) and (delay < 1)
	{
		synFill = noone;
		orgFill = noone;
		layer_sprite_create("Abilities",spr_abilityScreen,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));
		
		#region powerup spawning
		lock = true;
		// Makes powerup area
		// Organic
		for (var i = 0; i < rows; i++) //columns
		{
			for (var j = 0; j < columns; j++) // rows
			{
				count++;
				with (instance_create_layer(x + 350 + spacing * j,y + startingY + spacing * i,"Abilities",obj_pow))
				{
					sprite_index = spr_powOrg;
					count = other.count;
					type = "org";
				}
			}
		}
		// Lower (synthetic powerup area)
		for (i = 0; i < rows; i++) //columns
		{
			for (j = 0; j < columns; j++) // rows
			{
				count++;
				with (instance_create_layer(x + 350 + spacing * j,y + startingY + split + spacing * i,"Abilities",obj_pow))
				{
					sprite_index = spr_powSyn;
					count = other.count-1;
					type = "syn";
				}
			}
		}
		#endregion
	}
}
else
{
	delay = delay_ref; //resets delay when not colliding
}