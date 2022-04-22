/// @description dyamic camera changes

global.viewX = camera_get_view_x(view_camera[0]);
global.viewY = camera_get_view_y(view_camera[0]);

global.halfViewX = global.viewX + global.viewWidth/2;
global.halfViewY = global.viewY + global.viewHeight/2;
global.halfGuiX = global.viewX + global.guiWidth/2;
global.halfGuiY = global.viewY + global.guiHeight/2;

global.guiWidth = display_get_gui_width();
global.guiHeight = display_get_gui_height();
global.viewWidth = camera_get_view_width(view_camera[0]);
global.viewHeight = camera_get_view_height(view_camera[0]);

camera_set_view_size(view_camera[0],960*global.cameraScale,540*global.cameraScale);
global.cameraScale = camera_get_view_width(view_camera[0]) / 960; // inventory was based off of a 960 width

if (room = init) room_goto(rm_titleScreen);