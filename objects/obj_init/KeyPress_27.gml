/// @description toggle pause

if (room != rm_titleScreen) {
	
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused) {
		
		createList(50,50,400,0,LIST_TYPE.PAUSE);
	}
	else {
		
		instance_destroy(obj_list);
	}
}