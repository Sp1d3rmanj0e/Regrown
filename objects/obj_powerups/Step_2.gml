/// @description Going to respective cells


selCell = obj_abilityScreen.selectedCell;
left_pressed = mouse_check_button_pressed(mb_left);

if (selCell = inCell) and (selCell.powerup != game_controls.powerupTypes[count])
{
	x = _x;
	y = _y;
	inCell = -1;
}


if (left_pressed)
{
	if (position_meeting(mouse_x,mouse_y,id)) //if clicked
	{
		if (selCell != inCell)
		{
			if (selCell.powerup = -1) // if unoccupied
			{
				x = selCell.x;
				y = selCell.y;
				selCell.powerup = game_controls.powerupTypes[count];
				obj_powerupCells.picked ++;
				inCell = selCell;
			}
			else //if wanted space is occupied and you aren't in it
			{
				x = selCell.x;
				y = selCell.y;
				selCell.powerup = game_controls.powerupTypes[count];
				inCell = selCell;
			
			}
		}
	}
}






if (!lock) // I don't exactly know what this is and at this point, I'm afraid to ask
{
	//powerup = game_controls.powerupTypes[count]; // Leave it here for now
	lock = true;
}

