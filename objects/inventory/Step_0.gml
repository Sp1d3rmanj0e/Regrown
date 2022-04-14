/// @description dynamic features

if (!global.gamePaused) {

	//counts frames manually when activated
	if (frame < maxFrames) {
	
		frame += secsPerFrame;
	}

	// fading black screen when opening/closing

		// fade in (opening)
	if (!closeOn) {
	
		if (alpha < maxAlpha) {
		
			alpha += 0.05;
		}
	
		// fade out (closing)
	} else { 
		if (alpha > 0) {
		
			alpha -= 0.03;
		}

	}

	// powerup reference and control

		// shade all powerups gray
	if (instance_exists(obj_pow)) {
	
		obj_pow.shade = c_ltgray;
	}

		// get powerup info
	var _id = instance_place(mouse_x,mouse_y,obj_pow); // gets id of selected powerup
	if (_id != noone) { // if id exists
		var type = _id.type; //Get pow type
		var count = _id.count; //Get pow number
		sel_powerupNum = count;
	
		//shade selected powerup white
		_id.shade = c_white; //Set pow to selected color
		if (type == "org") {
			overlay = PTYPE.ORG;
		} else if (type == "syn") {
			overlay = PTYPE.SYN;
		}
	
	} else {
	
		// remove info screen if no powerups are selected
		overlay = PTYPE.NONE;
	}
} 
else {
	
	alarm[0]++;
	alarm[1]++;
}