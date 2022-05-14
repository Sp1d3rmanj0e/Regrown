/// @description sight, player protection, auto jump
event_inherited();

if (touching_wall != 0) key_spaceH = 1;
if (fuse > 0) fuse -= 1/room_speed;