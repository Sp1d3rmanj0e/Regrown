/// @description Post Processing
view_width = camera_get_view_width(view_camera[0]);
view_height = camera_get_view_height(view_camera[0]);

if (shake) { //If screenshake is activated
	camera_set_view_pos(view_camera[0],x-view_width/2+xCamOffset+random_range(-shakeIntensity,shakeIntensity),y-view_height/2+yCamOffset+random_range(-shakeIntensity,shakeIntensity));
} else { //If camera is normal
	camera_set_view_pos(view_camera[0],x-view_width/2+xCamOffset,y-view_height/2+yCamOffset);
}
camX = camera_get_view_x(view_camera[0]);
camY = camera_get_view_y(view_camera[0]);

halfViewX = camX + view_width/2;
halfViewY = camY + view_height/2;


// Background Movement
x_change = x-x_origin;

layer_x(back1,x_change*b1);
layer_x(back2,x_change*b2);
layer_x(back3,x_change*b3);
layer_x(front1,x_change*f1);

var _exit = instance_place(x,y,obj_exit); //activates if on exit block

if (!enteredRoom) and (_exit == noone) //if not on exit block and room enter tag is still off
{
	enteredRoom = true;  // set the tag to true
}

if (enteredRoom) and (_exit != noone) //If ready to exit room and is stepping on port
{
	targetRoom = _exit.targetRoom;
	enteredRoom = false;
	room_control.fade = 0.01;
	room_control.fadeDirection = 1;
	alarm[2] = 25;
	
	room_control.targetInstance = _exit.targetInstance;
}