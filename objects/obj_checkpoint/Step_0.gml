/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player)) //CHANGE THIS TO THE CHECKPOINT BUTTON
{
	if (!contact)
	{
		if (!instance_exists(inventory))
		{
			instance_create_layer(obj_player.x,obj_player.y,"inventory",inventory); //create the inventory
		}
		contact = true;
	}
} 
else
{
	contact = false;
}