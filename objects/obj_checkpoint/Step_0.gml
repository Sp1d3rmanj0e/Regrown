/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_player)) 
and (obj_player.state != PLAYERSTATE.DEAD) {
	
	// only activate if e is pressed
	if (keyboard_check_pressed(ord("E"))) {
		// save respawn information
		obj_player.respawnX = x;
		obj_player.respawnY = y;
		obj_player.respawnRoom = room;
	
		// opens inventory if conditions are met
		if (!contact)
		{
		
			// spawn inventory
			if (!instance_exists(inventory))
			{
				instance_create_layer(obj_player.x,obj_player.y,"effects",inventory); // creates inventory
			}
			contact = true; //prevent from spawning multiple inventories
		}
	}
} 
else // allow player to contact checkpoint again
{
	
	contact = false;
}