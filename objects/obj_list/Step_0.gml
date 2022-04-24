/// @description

// check if clicked
var _clicked = mouse_check_button_pressed(mb_left);

// get relative mouse coords
var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);

// get size of array
var _size = array_length(list);


// reset hoverID
hoverID = -1;

// text and hitboxes
for (var i = 0; i < _size; i++) {
	i2 = i;
	// get locations
	var x1 = x + padding;
	var y1 = y + padding + textH * i;
	var x2 = x + width - padding;
	var y2 = y1 + textH;
	var x3 = x1 + (width - padding*2) * 0.75; // setting offset
	var y3 = y1 + textH/2;
	var p1, p2;
	
	// check if mouse is touching
	if (point_in_rectangle(_mouseX, _mouseY, x, y1, x + width, y2)) {
		
		hoverID = i;
		
		// button commands
		if (_clicked) {
			
			event_user(0);
		}
		
		// arrow click check
			if (list[i][1] > -1) {
				// check to see if mouse is over either arrow
					var p1 = point_in_rectangle(_mouseX, _mouseY, x3 + 60, y3 - 20, x3 + 80, y3 + 20); // right
					var p2 = point_in_rectangle(_mouseX, _mouseY, x3 - 80, y3 - 20, x3 - 60, y3 + 20); // left
		
				// check if movement is possible
				if (p1 + p2 != 0) {
					
					if (list[i][1] == 0) p2 = 0;
					if (list[i][1] == array_length(list[i][2])-1) p1 = 0;
					
					// return selected arrow to DrawGUI
					hoverArrowID = i;
					hoverArrowSide = p1-p2;
					
					// switch data if button was clicked
					if (_clicked) {
						
						var _click = p1-p2;
						
						list[i][1] += _click;
						
						event_user(1);
					}
				} 
				else {
					
					hoverArrowID = -1;
				}
			}
		
		// switch selected setting
		
	}
}