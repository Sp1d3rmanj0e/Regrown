/// @description get input

// get type
if (type == noone) {
	if (keyboard_check_pressed(vk_anykey)) type = MK.KEYBOARD;
	if (mouse_check_button_pressed(mb_any)) type = MK.MOUSE;
}
else { //set keybind
	
	if (type == MK.KEYBOARD) changeKeybind(change, keyboard_lastkey);
	else if (type == MK.MOUSE) changeKeybind(change, mouse_lastbutton);
	else show_debug_message("ERROR: STEP IN OBJ_KEYBIND - INPUT TYPE NOT RECOGNIZED)");
	
	instance_destroy();
}