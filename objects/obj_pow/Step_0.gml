/// @description start out picked if active

//powerup_type = ds_list_find_value(powerup.powerups,count);

if (!lock)
{


	lock = true;

	
		if (obj_player.synFill == count) or (obj_player.orgFill == count)
	{
		Choose();
	}
}

