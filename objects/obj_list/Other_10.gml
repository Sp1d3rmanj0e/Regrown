/// @description one-option buttons

switch (list[i2][OS.NAME]) {
	
	case "Options":
		
		if (optionOpen == -1) {
			
			optionOpen = createList(x + width + padding, y, width, 0, LIST_TYPE.OPTIONS);
		}
		else {
			// destroy any children list made
			if (optionOpen.keybindsOpen != -1) {
				
				instance_destroy(optionOpen.keybindsOpen);
			}
			
			instance_destroy(optionOpen);
			optionOpen = -1;
			
		}
	break;
	
	case "Close":
		global.gamePaused = false;
		instance_destroy(obj_list);
	break;
	
	case  "Restart":
		instance_destroy(obj_list);
		global.gamePaused = false;
		global.saveObjects = 0; //completely resets enemies
		game_restart(); //FIX this later
	break;
	
	case "Keybinds":
	
		if (keybindsOpen == -1) {
			
			keybindsOpen = createList(x+width+padding, y, width, 0, LIST_TYPE.KEYBINDS);
		}
		else {
			
			instance_destroy(keybindsOpen);
			keybindsOpen = -1;
		}
	break;
	
	case "Right": 
		with (instance_create_depth(global.halfGuiX,global.halfGuiY,depth,obj_keybind)) change = KB.RIGHT;
	break;
	
	case "Left":
		with (instance_create_depth(global.halfGuiX,global.halfGuiY,depth,obj_keybind)) change = KB.LEFT;
	break;
}