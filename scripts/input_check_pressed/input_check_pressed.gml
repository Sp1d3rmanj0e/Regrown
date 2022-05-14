function input_check_pressed(_input) {
	
	// input - EX: KB.RIGHT
	
	// global.keybinds[_input][0] - gets the raw input number
	// global.keybinds[_input][1] - gets whether the input is mouse or keyboard
	
	// check to see if input is a keyboard
	if (global.keybinds[_input][1] == MK.KEY) {
		
		return keyboard_check_pressed(global.keybinds[_input][0]);
	}
	else { // input is probably a mouse then
		
		return mouse_check_button_pressed(global.keybinds[_input][0]);
	}
}