/// @description toggle pause

// make sure current room isn't on the doNotPause array
var _pause = true;
for (var i = 0; i < array_length(doNotPause); i++) {
	
	if (room == doNotPause[i]) _pause = false;
}

// create pause menu
if (_pause) and (!instance_exists(obj_keybind)) {
	
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused) {
		
		createList(50,50,400,0,LIST_TYPE.PAUSE);
	}
	else {
		
		instance_destroy(obj_list);
	}
}