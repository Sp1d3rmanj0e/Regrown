function powThorns(_activate) constructor {
	
	with (obj_player) {
		// passive changes
		thorns = true;
	
		// active changes
			// activation code
		if (_activate) and (orgCooldown == 0) and (ds_grid_get(global.powerup_grid,7,global.orgFill) != -1) {
			orgCooldown = ds_grid_get(global.powerup_grid,7,global.orgFill);
			
		}
		
		orgCooldown -= 1/room_speed;
	}
		// reset changes
		static resetChanges = function() {
			
			with (obj_player) {
				
				thorns = false;
			}
	}	
}