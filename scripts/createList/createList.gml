function createList(_x,_y,_width,_height,_type) {
	
	var _list = instance_create_layer(_x,_y,"Instances",obj_list);
	
	with (_list) {
		
		// assign type
		type = _type;
		
		// add options
		switch (type) {
		
			case LIST_TYPE.PAUSE:
		
				array_push(list,["Options",-1,[]]);
				array_push(list,["Restart",-1,[]]);
				array_push(list,["Close",-1,[]]);
			break;
			
			case LIST_TYPE.OPTIONS:
			
				array_push(list,["SFX",global.sfx,["100%","75%","50%","25%","0%"]]);
				array_push(list,["Graphics",global.graphics,["POTATO","LOW","MEDIUM","HIGH"]]);
				array_push(list,["Anti-Ailizing",global.antiAil,["ON","OFF"]]);
				array_push(list,["Volume",global.volume,["100%","75%","50%","25%","0%"]]);
			
			break;
		}
		
		// assign width and height
		width = _width;
		if (_height != 0) height = _height; else height = array_length(list)*textH+padding*2;

	}
	
	return _list;
}