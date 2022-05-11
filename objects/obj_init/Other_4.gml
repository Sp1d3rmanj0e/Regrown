/// @description camera initializing and button spawning

global.guiWidth = display_get_gui_width();
global.guiHeight = display_get_gui_height();
global.viewWidth = camera_get_view_width(view_camera[0]);
global.viewHeight = camera_get_view_height(view_camera[0]);

switch (room) {
	
	case rm_titleScreen:
		
		createButton(global.halfGuiX,200,300,80,"Play",B_ACTION.PLAY);
		createButton(global.halfGuiX,300,300,80,"Credits",B_ACTION.CREDITS);
		createButton(global.halfGuiX,400, 300, 80, "Quit", B_ACTION.QUIT);
	break;
	
	case rm_credits:
		
		createButton(global.halfGuiX,global.guiHeight-100,300,80, "Back", B_ACTION.BACK);
	break;
}

if (room == rm_titleScreen) {
	
	createButton(global.halfGuiX,200,300,80,"Play",B_ACTION.PLAY);

	createButton(global.halfGuiX,300,300,80,"Credits",B_ACTION.CREDITS);

	createButton(global.halfGuiX,400, 300, 80, "Quit", B_ACTION.QUIT);
}