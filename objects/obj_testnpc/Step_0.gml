/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y,obj_player)) && (keyboard_check_pressed(ord("T")))
{
	instance_create_layer(x,y-40,"dialogue_test",obj_dialoguetest);
}