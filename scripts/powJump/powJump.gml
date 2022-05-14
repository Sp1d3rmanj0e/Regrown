function powJump(_activate) constructor {
	
	with (obj_player) {
		
		// passive changes
		jumpH = 29;
	
		// button activated
		if (_activate) and (synCooldown == 0) {
			
			synCooldown = ds_grid_get(global.powerup_grid,7,global.synFill);
			
		}
		
		if (synCooldown > 0) synCooldown -= 1/room_speed;
		
	}
	// reset passive changes
	static resetChanges = function() {
		
		with (obj_player) {
			
			jumpH = 23;
		}
	}	
}