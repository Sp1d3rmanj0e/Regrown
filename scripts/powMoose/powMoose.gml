function powMoose(_activate) constructor {
	
	with (obj_player) {
		
		// passive changes
		
	
		// button activated
		if (_activate) and (orgCooldown == 0) {
			
			orgCooldown = ds_grid_get(global.powerup_grid,7,global.orgFill);
			state = PLAYERSTATE.ATTACK_MOOSE;
		}
		
		if (orgCooldown > 0) orgCooldown -= 1/room_speed;
		
	}
	// reset passive changes
	static resetChanges = function() {
		
		with (obj_player) {
			
			
		}
	}	
}