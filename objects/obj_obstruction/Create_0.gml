/// @description
event_inherited();

tilemap = layer_tilemap_get_id("tile_collision");
startRoom = room;
width = sprite_get_width(sprite_index);
height = sprite_get_height(sprite_index);
tile = 1;
exists = true;
image_speed = 0;
event_user(1);