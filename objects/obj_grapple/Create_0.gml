/// @description Insert description here
// You can write your code in this editor

hitByAttack = ds_list_create();
pointSide = obj_player.image_xscale;

pointDir = 0

key_up = keyboard_check(vk_space) || keyboard_check(ord("W"));
key_side = keyboard_check(ord("A")) || keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));

if (key_up) pointDir += 90;
if (key_down) pointDir -= 90;
if (key_side) pointDir /= 2;

image_xscale = pointSide;
image_angle = pointDir * sign(image_xscale);
