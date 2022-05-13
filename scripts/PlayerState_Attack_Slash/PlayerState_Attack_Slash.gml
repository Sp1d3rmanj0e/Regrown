// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack_Slash() {
	var _speed = walkSp/2;
	
	if (image_index > 3) {
		
		_speed = walkSp;
	}

	Collisions(_speed);

	var p1 = tilemap_get_at_pixel(tilemap,bbox_left,bbox_top-(TILE_SIZE/2));
	var p2 = tilemap_get_at_pixel(tilemap,bbox_right,bbox_top-(TILE_SIZE/2));

	#region Jumping
	if (key_spaceH) and (p1 == 0) and (p2 == 0)
	{
	    if (!airborne) or (jumpBuffer > 0)
	    {
			jumpBuffer = 0;
		
			if (instance_exists(obj_healing)) {
				instance_destroy(Heffect);
				healing = 0;
			}
	        vsp -= jumpH/1.5;
	        airborne = true;
	    }
	}
	#endregion

	if (!attackCalled) {
	
		attackCalled = true;
	
		// default attack
		attack = ATK.NORM; // 1
		
		// side
		// up
		if (key_spaceH) {
			
			if ((key_right) or (key_left)) {
				
				attack = ATK.SLANTUP;
			}
			else {
				
				attack = ATK.UP;
			}
		} 
		// down
		if (airborne) {
			
			if (key_crouch) {
				
				if (key_right) or (key_left) {
					
					attack = ATK.SLANTDOWN;
				}
				else {
					
					attack = ATK.DOWN;
				}
			}
			
		}
		else if (key_crouch) attack = ATK.LOW;
		
		
		
	}
	switch(attack) {
	
	case ATK.NORM:
		ProcessAttack(spr_playerAttack_Norm,spr_playermelee_CHAR_HB);
	break;
	
		case ATK.SLANTDOWN:
			ProcessAttack(spr_playerAttack_SlantDown,spr_playerAttack_SlantDownHB);
		break;
	
		case ATK.SLANTUP:
			ProcessAttack(spr_playerAttack_SlantUp,spr_playerAttack_SlantUpHB);
		break;
	
		case ATK.UP:
			ProcessAttack(spr_playerAttack_DirUp,spr_playerAttack_DirUpHB);
		break;
	
		case ATK.LOW:
			ProcessAttack(spr_playerAttack_Low,spr_playerAttack_LowHB);
		break;
	
		case ATK.DOWN:
			ProcessAttack(spr_playerAttack_DirDown,spr_playerAttack_DirDownHB);
		break;
	}






	// Trigger Combo Chain
	/*
	if (key_attack) and (image_index > 2) //If hitting attack and after a couple of frames
	{
		state = PLAYERSTATE.ATTACK_COMBO;
	}
	*/

	if (animation_end())
	{
		sprite_index = spr_playerAlt_Idle;
		state = PLAYERSTATE.FREE;
		attackCalled = false;
	}
}