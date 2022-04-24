/// @description one-option buttons

switch (list[i2][OS.NAME]) {
	
	case "Options":
		// FIX check to see if list already exists
		if (optionOpen == -1) {
			
			optionOpen = createList(x + width + padding, y, width, 0, LIST_TYPE.OPTIONS);
		}
		else {
			
			instance_destroy(optionOpen);
			optionOpen = -1;
		}
	break;
	
	case "Close":
	
		instance_destroy(obj_list);
	break;
}