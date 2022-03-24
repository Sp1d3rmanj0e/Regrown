/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player)) and (obj_player.state != PLAYERSTATE.DEAD) //CHANGE THIS TO THE CHECKPOINT BUTTON
{
	obj_player.respawnX = x;
	obj_player.respawnY = y;
	obj_player.respawnRoom = room;
	if (!contact)
	{
		if (!instance_exists(inventory))
		{
			instance_create_layer(obj_player.x,obj_player.y,"effects",inventory); //create the inventory
		}
		contact = true;
	}
} 
else
{
	contact = false;
}