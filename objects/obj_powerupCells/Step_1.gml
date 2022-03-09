/// @description Setting selectedCell data

// Adjust selection before anything happens

left_pressed = mouse_check_button_pressed(mb_left);

if (left_pressed)
{
	if (position_meeting(mouse_x,mouse_y,id)) //if clicked
	{
		obj_powerupCells.picked = count;
	}
} 