/// @description start out picked if active

//powerup_type = ds_list_find_value(powerup.powerups,count);

if (!lock)
{

	lock = true;
	
		if (global.synFill == count) or (global.orgFill == count)
	{
		Choose();
	}
}

