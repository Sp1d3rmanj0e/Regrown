/// @description
// get mouse input
var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);
var _mousePress = mouse_check_button_pressed(mb_left);

// operate on list
var _size = ds_list_size(list);

for (var i = 0; i < _size; i++) {
	
	// get data
	var _arr = list[| i];
	var _name = _arr[PR.NAME];
	var _sel = _arr[PR.SELECTED];
	var _vals = _arr[PR.VALUES];
	
	// get mouse input locations for buttons
	var _x1 = x + padding;
	var _y1 = y + padding + itemH * i;
	var _x2 = x + width - padding;
	var _y2 = _y1 + itemH;
	
	// get if hovering
	var _hover = point_in_rectangle(_mouseX, _mouseY, _x1, _y1, _x2, _y2);
	
	if (_hover) {
		
		// set hover variable
		hoverID = i;
		
		// select
		if (_sel == -1 and _mousePress) {
			
			switch (_name) {
				
				case "TEST2":
					instance_destroy();
					show_debug_message("worked");
				break;
			}
		}
		
		// change value
		if (_sel > -1) {
			
			var _wheel = mouse_wheel_up()-mouse_wheel_down();
			
			// wheel input
			if (_wheel != 0) {
				
				_sel += _wheel;
				
				// clamp
				_sel = clamp(_sel,0,array_length(_vals)-1);
				
				// apply to list
				_arr[@ PR.SELECTED] = _sel;
				
				if (type == LIST_TYPE.PAUSE) {
					
					//switch(_name) {
						
						/*
						case "Mode":
							global.game_mode = _vals[_sel];
						break;
						*/
					//}
				}
			}
		}
	}
}