/// @description

// Inherit the parent event
event_inherited();

open = true;

function changeDoor(_open) {
	
	if (open != _open) {
		
		image_index = 0;
	
		open = _open;
	
		image_speed = 1;
		
		if (open) {
			
			sprite_index = spr_doorOpen;
		}
		else {
			
			sprite_index = spr_doorClose;
		}
	}
}