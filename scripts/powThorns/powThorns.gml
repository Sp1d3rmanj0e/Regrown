function powThorns(_activate) constructor {
	
	with (obj_player) {
		
		// passive changes
		if (!thorns)
			thorns = true;

	}
		// reset changes
		static resetChanges = function() {
			
			with (obj_player) {
				
				thorns = false;
			}
	}	
}