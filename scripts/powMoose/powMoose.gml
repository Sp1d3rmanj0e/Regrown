function powMoose(_activate) constructor {
	
	with (obj_player) {
		// passive changes
		damage = 4;
	
		// active changes
			// activation code
		if (_activate) and (orgCooldown == 0) {
			orgCooldown = ds_grid_get(global.powerup_grid,7,global.orgFill);
			
		}
		
		orgCooldown -= 1/room_speed;
	}
		// reset changes
		static resetChanges = function() {
			
			with (obj_player) {
				
				damage = 2;
			}
	}	
}