// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if (instance_exists(obj_player))
{
	hsp = 0;
	vsp = 0;
//Start of the attack

ProcessAttack(spr_playerCmbo,spr_playerCmboHB);

// Trigger Combo Chain continuous
/*
if (key_attack) and (image_index > 4) //If hitting attack and after a couple of frames
{
	state = PLAYERSTATE.ATTACK_SLASH;
}
*/
if (animation_end())
{
	sprite_index = spr_playerIdle;
	state = PLAYERSTATE.FREE;
}


}