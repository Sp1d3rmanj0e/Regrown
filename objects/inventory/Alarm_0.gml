/// @description Insert description here
// You can write your code in this editor

lock = true;


		
#region powerup spawning
// Makes powerup area
// Organic
for (var i = 0; i < rows; i++) //columns
{
	for (var j = 0; j < columns; j++) // rows
	{
		count++;
		with (instance_create_layer(x + 350 + spacing * j,y + startingY + spacing * i,"inventory",obj_pow))
		{
			sprite_index = spr_powOrg;
			count = other.count;
			type = "org";
			ds_list_add(other.objects,id);
		}
	}
}
// Lower (synthetic powerup area)
for (i = 0; i < rows; i++) //columns
{
	for (j = 0; j < columns; j++) // rows
	{
		count++;
		with (instance_create_layer(x + 350 + spacing * j,y + startingY + split + spacing * i,"inventory",obj_pow))
		{
			sprite_index = spr_powSyn;
			count = other.count-1;
			type = "syn";
			ds_list_add(other.objects,id);
		}
	}
}
#endregion