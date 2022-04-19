/// @description

if (keyboard_check_pressed(ord("M"))) {
	menuOpen = !menuOpen;
	
	if (menuOpen) {
		
		event_user(0);
	} 
	else {
		
		event_user(1);
	}
}