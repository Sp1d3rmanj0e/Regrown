// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//target is the instance we are moving towards/away from
// dir = 1 : move towards target
// dir = -1 : run from target

function followTarget(target, dir) {
	
	moveDirection = sign(target.x-x); // figures out which direction to go
	
	switch (moveDirection) {
		
		case 1: key_right = 1; break;
		case -1: key_left = 1; break;
	}
}