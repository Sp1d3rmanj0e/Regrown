function createList(_x,_y,_width,_height,_type) {
	
	var _list = instance_create_layer(_x,_y,"Instances",obj_list);
	
	with (_list) {
		
		// assign type
		type = _type;
		
		
		/*
		Multi-Option Array Positions
		[0] - Name
		[1] - Initialize variable
		[2] - Possible settings
		
		Single-Option Array Positions
		[0] - Name
		[1] - -1
		[2] - [OPTIONAL] - Custom variable
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
				array_push(list,["Visibility",-1,[]]);
				array_push(list,["Audio",-1,[]]);
				array_push(list,["Fullscreen",window_get_fullscreen(),["False","True"]]);
			
			break;
			
			case LIST_TYPE.KEYBINDS:
				
				array_push(list,["Left",-1,[KB.LEFT]]);
				array_push(list,["Right",-1,[KB.RIGHT]]);
				array_push(list,["Jump",-1,[KB.JUMP]]);
				array_push(list,["Jump Alt",-1,[KB.JUMPALT]]);
				array_push(list,["Crouch",-1,[KB.CROUCH]]);
				array_push(list,["Crouch Alt",-1,[KB.CROUCHALT]]);
				array_push(list,["Select",-1,[KB.SELECT]]);
				array_push(list,["Heal",-1,[KB.HEAL]]);
				array_push(list,["",-1,[KB.NONE]]);
				array_push(list,["Generic Attack",-1,[KB.ATTACK]]);
				array_push(list,["Organic Attack",-1,[KB.ORGATTACK]]);
				array_push(list,["Synthetic Attack",-1,[KB.SYNATTACK]]);
				array_push(list,["",-1,[KB.NONE]]);
				array_push(list,["Reset To Defaults",-1,[KB.NONE]]);
			break;
			
			case LIST_TYPE.VISIBILITY:
				
				array_push(list,["Overlay",global.overlay,["OFF","ON"]]);
				array_push(list,["Cam Shake",global.cameraShake,["OFF","ON"]]);
				array_push(list,["Visible Enemies",global.visibleEnemies,["OFF","ON"]]);
				array_push(list,["GUI Size",global.guiSize,["100%","125%","150%","175%","200%"]]);
				array_push(list,["Text Size",global.textSize,["100%","150%","200%"]]);
				//array_push(list,["Colorblind Mode",-1,[]]);
				
			break;
			
			case LIST_TYPE.AUDIO:
				
				array_push(list,["Volume",global.volume,["0%","25%","50%","75%","100%"]]);
			break;
		}
		
		// assign width and height
		width = _width;
		if (_height != 0) height = _height; else height = array_length(list)*textH+padding*2;

	}
	
	return _list;
}