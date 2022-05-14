// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free() {

Collisions(walkSp);

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
        vsp -= jumpH;
        airborne = true;
    }
}
#endregion


#region animations

if (key_right) {
	
	image_xscale = 1;
} else if (key_left) {
	
	image_xscale = -1;
}

//Animation

if (!freeze) {
if (airborne) {
	if (key_spaceH) and (vsp < 5)
		{
			sprite_index = spr_playerAlt_AirUp;
		}
		else sprite_index = spr_playerAlt_AirDown;
	}
	else if (key_crouch) sprite_index = spr_playerCrouch;
	else if (hsp != 0) sprite_index = spr_playerAlt_Walk;
	else sprite_index = spr_playerAlt_Idle;
}
else sprite_index = spr_playerAlt_Checkpoint; //Checkpoint animation resets to 0 (Create of Inventory)

if (sprite_index = spr_playerAlt_Checkpoint) and (animation_end())
{
	imageSpeed = 0;
}

#endregion


	if (key_attack) {
		state = PLAYERSTATE.ATTACK_SLASH;
	
		if (healing == 1) instance_destroy(obj_healing);
	}
}