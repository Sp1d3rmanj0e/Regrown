/// @description Insert description here
// You can write your code in this editor



// animations
if (lock) sprite_index = spr_doorLocked;
else {
	
	sprite_index = spr_door;
	
	// if door is opening
	if (open) and (image_index == 0) {
		
		image_speed = 1;
	}
	
	if (animation_end()) image_speed = 0;
	
	if (!open) and (image_index != 0) {
		
		image_index = 0;
		image_speed = 0;
	}
	
}