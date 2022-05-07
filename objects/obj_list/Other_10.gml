/// @description one-option buttons
sound = snd_switch;

switch (list[i2][OS.NAME]) {
	
	case "Options":
		
		if (optionOpen == -1) {
			
			optionOpen = createList(x + width + padding, y, width, 0, LIST_TYPE.OPTIONS);
		}
		else {
			// destroy any children list made
			if (optionOpen.options2Open != -1) {
				
				instance_destroy(optionOpen.options2Open);
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
	
		if (options2Open == -1) {
			
			options2Open = createList(x+width+padding, y, width, 0, LIST_TYPE.KEYBINDS);
		}
		else {
			
			instance_destroy(options2Open);
			options2Open = -1;
		}
	break;
	
	case "Visibility":
		
		if (options2Open == -1) {
			
			options2Open = createList(x+width+padding, y, width, 0, LIST_TYPE.VISIBILITY);
		}
		else {
			
			instance_destroy(options2Open);
			options2Open = -1;
		}
	break;
	
	case "Audio":
		
		if (options2Open == -1) {
			
			options2Open = createList(x+width+padding, y, width, 0, LIST_TYPE.VISIBILITY);
		}
		else {
			
			instance_destroy(options2Open);
			options2Open = -1;
		}
	break;
	
	case "Right": prepKeybind(KB.RIGHT); break;
	
	case "Left": prepKeybind(KB.LEFT); break;
	
	case "Jump": prepKeybind(KB.JUMP); break;
	
	case "Crouch": prepKeybind(KB.CROUCH); break;
	
	case "Jump Alt": prepKeybind(KB.JUMPALT); break;
	
	case "Crouch Alt": prepKeybind(KB.CROUCHALT); break;
	
	case "Generic Attack": prepKeybind(KB.ATTACK); break;
	
	case "Organic Attack": prepKeybind(KB.ORGATTACK); break;
	
	case "Synthetic Attack": prepKeybind(KB.SYNATTACK); break;
	
	case "Select": prepKeybind(KB.SELECT); break;
	
	case "Heal": prepKeybind(KB.HEAL); break;
	
	case "Reset To Defaults":
		
		changeKeybind(KB.JUMP,vk_space,MK.KEY);
		changeKeybind(KB.JUMPALT,ord("W"),MK.KEY);
		changeKeybind(KB.LEFT,ord("A"),MK.KEY);
		changeKeybind(KB.RIGHT,ord("D"),MK.KEY);
		changeKeybind(KB.CROUCH,vk_control,MK.KEY);
		changeKeybind(KB.CROUCHALT,ord("S"),MK.KEY);
		changeKeybind(KB.ATTACK,mb_left,MK.MOU);
		changeKeybind(KB.ORGATTACK,ord("Z"),MK.KEY);
		changeKeybind(KB.SYNATTACK,ord("X"),MK.KEY);
		changeKeybind(KB.SELECT,ord("E"),MK.KEY);
		changeKeybind(KB.HEAL,ord("Q"),MK.KEY);
	break;
	
	default: sound = noone;
}

audio_play_sound(sound,0,false);