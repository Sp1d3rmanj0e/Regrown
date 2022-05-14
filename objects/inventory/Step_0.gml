/// @description dynamic features

// zoom camera to fit inventory
cameraZoom(targetZoom, 0.15);

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

if (input_check_pressed(KB.SELECT)) or (keyboard_check_pressed(vk_escape)) {
	
	//close inventory


	if (!closeOn) { // only activate if not actively closing
		closeOn = true;
		audio_play_sound(snd_close,0,false);
		targetZoom = storedZoom;
	
		secsPerFrame = 0.7; // change animation speed
		transAnimation = spr_inventoryscreen_close;
		toggleFrames(15);

		removePowerups(); // removes powerup selection options

		ds_list_destroy(objects); // prevents memory leak

		inventoryOpen = false;

		 alarm[1] = 15; //delay destroying self to allow closing animation
	}
}