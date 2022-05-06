/// @description get input

// get type
if (type == noone) {
	if (keyboard_check_pressed(vk_anykey)) type = MK.KEY;
	if (mouse_check_button_pressed(mb_any)) type = MK.MOU;
}
else { //set keybind
	
	if (type == MK.KEY) changeKeybind(change, keyboard_lastkey, MK.KEY);
	else if (type == MK.MOU) changeKeybind(change, mouse_lastbutton, MK.MOU);
	else show_debug_message("ERROR: STEP IN OBJ_KEYBIND - INPUT TYPE NOT RECOGNIZED)");
	
	audio_play_sound(snd_chime,0,false);
	instance_destroy();
}