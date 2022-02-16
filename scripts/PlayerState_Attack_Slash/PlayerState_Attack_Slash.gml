// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if (instance_exists(obj_player))
{
	
	
hsp = 0;
vsp = 0;

//Start of the attack

if (sprite_index != spr_playerAtk)
{
	sprite_index = spr_playerAtk;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

// Use attack hitbox
mask_index = spr_playerAtkHB; // Set mask to hitbox
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x,y,enemies,hitByAttackNow,false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		// If this instance has not yet been hit by this attack
		var hitID = hitByAttackNow[| i];
		if (ds_list_find_index(hitByAttack,hitID) == -1) //if hasn't been hit yet
		{
			ds_list_add(hitByAttack,hitID);
			with (hitID)
			{
				EnemyHit(obj_player.damage);
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = spr_playerIdle;

if (animation_end())
{
	sprite_index = spr_playerIdle;
	state = PLAYERSTATE.FREE;
}


}