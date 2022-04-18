/// @description dyamic camera changes

global.viewX = camera_get_view_x(view_camera[0]);
global.viewY = camera_get_view_y(view_camera[0]);
global.halfViewX = global.viewX + global.viewWidth/2;
global.halfViewY = global.viewY + global.viewHeight/2;