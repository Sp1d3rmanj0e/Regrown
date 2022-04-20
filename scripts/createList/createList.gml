function createList(_x, _y, _width, _height, _type) {
	
	var _list = instance_create_layer(_x,_y,"gui",obj_list);
	
	with(_list) {
		
		width = _width;
		height = _height;
		type = _type;
	
	
		switch(_type) {
		
			case LIST_TYPE.PAUSE:
			
				ds_list_add(list,["TEST1",0,[1,2,3,4]]);
				ds_list_add(list,["TEST2",-1,[]]);
			break;
		}
	}
	
	return _list;
}