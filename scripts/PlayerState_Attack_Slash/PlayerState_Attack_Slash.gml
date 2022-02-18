// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if (instance_exists(obj_player))
{

Collisions(4);

ProcessAttack(spr_playerAtk,spr_playerAtkHB);

// Trigger Combo Chain

if (key_attack) and (image_index > 2) //If hitting attack and after a couple of frames
{
	state = PLAYERSTATE.ATTACK_COMBO;
}

if (animation_end())
{
	sprite_index = spr_playerIdle;
	state = PLAYERSTATE.FREE;
}


}