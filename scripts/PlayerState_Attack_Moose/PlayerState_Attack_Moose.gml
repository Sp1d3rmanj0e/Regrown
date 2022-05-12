// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Moose() {

	if (place_meeting(x+5,y,obj_obstruction)) {
	
	show_debug_message("Collides");
	with (obj_obstruction) event_user(0);
}
	
	Collisions(4);


	if (!attackCalled) {
		
		damage *= 2;
		attackCalled = true;
		origX = x;
	}
	
	if (abs(origX - x) < 150) {
		
		hsp = 30*sign(image_xscale);
	}
	
	ProcessAttack(spr_playerAttack_Moose,spr_playerAttack_MooseHB);
	
	if (animation_end())
	{
		sprite_index = spr_playerIdle;
		state = PLAYERSTATE.FREE;
		attackCalled = false;
		damage /= 2;
	}
}