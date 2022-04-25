function createButton(_x,_y,_width,_height,_text,_buttonScript) {
	
	var _button = instance_create_layer(_x,_y,"gui",obj_button);
	
	with (_button) {
		
		x = _x-_width/2;
		y = _y;
		width = _width;
		height = _height;
		text = _text;
		bScript = _buttonScript;
	}
	
	 return _button;
}