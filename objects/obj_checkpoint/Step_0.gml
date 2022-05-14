/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_player)) 
and (obj_player.state != PLAYERSTATE.DEAD) {
	
	// only activate if e is pressed
	if (input_check_pressed(KB.SELECT)) {
		
		// save respawn information
		obj_player.respawnX = x;
		obj_player.respawnY = y;
		obj_player.respawnRoom = room;
		obj_player.P_health = obj_player.P_maxHealth;
		obj_player.nanobotCount = obj_player.maxNanobotCount;
	
		// spawn inventory if not already existant
		if (!instance_exists(inventory))
		{
			instance_create_layer(obj_player.x,obj_player.y,"effects",inventory); // creates inventory
		}
	}
}