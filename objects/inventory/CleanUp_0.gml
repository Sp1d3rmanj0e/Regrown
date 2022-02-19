/// @description Insert description here
// You can write your code in this editor
for (var i = 0;i < ds_list_size(objects); i++)
{
	instance_destroy(ds_list_find_value(objects, i));
	
}

with (obj_player) {
	
	pause(0);
	safe = false;
}

ds_list_destroy(objects);