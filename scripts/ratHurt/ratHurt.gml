// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ratHurt(){
	
	if (hurtStunTimer > 0) {
		
		hurtStunTimer -= 1/room_speed;
	}
	else {
		
		switchState(previousState);
	}
}