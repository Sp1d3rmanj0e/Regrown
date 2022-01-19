/// @description Insert description here
// You can write your code in this editor
delay--;
if (!lock) and (delay < 1)
{
	lock = true;
	// Makes powerup area
	for (i = 0; i < rows; i++) //columns
	{
		for (j = 0; j < columns; j++) // rows
		{
			instance_create_layer(x + 200 + spacing * j,y -400 + spacing * i,"Abilities",obj_pow);
		}
	}

	for (i = 0; i < rows; i++) //columns
	{
		for (j = 0; j < columns; j++) // rows
		{
			instance_create_layer(x + 200 + spacing * j,y + 100 + spacing * i,"Abilities",obj_pow);
		}
	}
}