/// @description Camera follow player
view_width = camera_get_view_width(view_camera[0]);
view_height = camera_get_view_height(view_camera[0]);

//if (freeze = false) 
camera_set_view_pos(view_camera[0],x-view_width/2+xCamOffset,y-view_height/2+yCamOffset);
camX = camera_get_view_x(view_camera[0]);
camY = camera_get_view_y(view_camera[0]);

