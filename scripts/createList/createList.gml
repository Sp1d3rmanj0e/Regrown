function createList(_x,_y,_width,_height,_type) {
	
	var _list = instance_create_layer(_x,_y,"Instances",obj_list);
	
	with (_list) {
		
		// assign type
		type = _type;
		
		
		/*
		Array Positions
		[0] - Name
		[1] - Initialize variable
		[2] - Possible settings
		
		
		*/
		// add options
		switch (type) {
		
			case LIST_TYPE.PAUSE:
		
				array_push(list,["Restart",-1,[]]);
				array_push(list,["Options",-1,[]]);
				array_push(list,["Close",-1,[]]);
			break;
			
			case LIST_TYPE.OPTIONS:
			
				array_push(list,["Keybinds",-1,[]]);
				array_push(list,["Fullscreen",window_get_fullscreen(),["False","True"]]);
			
			break;
			
			case LIST_TYPE.KEYBINDS:
				
				array_push(list,["Jump",-1,[]]);
			break;
		}
		
		// assign width and height
		width = _width;
		if (_height != 0) height = _height; else height = array_length(list)*textH+padding*2;

	}
	
	return _list;
}