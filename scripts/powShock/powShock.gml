function powShock(_activate) constructor {
	
	with (obj_player) {
		
		// passive changes
		
		shockImmunity = true;
		// button activated
		if (_activate) and (synCooldown == 0) {
			
			synCooldown = ds_grid_get(global.powerup_grid,7,global.synFill);
			
		}
		
	}
	// reset passive changes
	static resetChanges = function() {
		
		with (obj_player) {
			
			shockImmunity = false;
		}
	}	
}