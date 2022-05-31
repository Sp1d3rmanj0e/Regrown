/// @description

if (animation_end()) image_speed = 0;

if (distance_to_object(obj_player) < 20) changeDoor(true);
else changeDoor(false);