/// @description Setting selectedCell data 2



#region selection
if (picked = count) //if current pick is this one
{
	obj_abilityScreen.selectedCell = id;
	selected = true;
} else selected = false;

if (image_speed = 0)
{
	if (selected) image_index = 1;
	else image_index = 0;
}
#endregion