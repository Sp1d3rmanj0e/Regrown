// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
if (instance_exists(obj_player))
{
	
Collisions(walkSp);

#region Jumping
if (key_spaceH) and (tilemap_get_at_pixel(tilemap,bbox_left,bbox_top-(TILE_SIZE/2)) == 0) and (tilemap_get_at_pixel(tilemap,bbox_right,bbox_top-(TILE_SIZE/2)) == 0)
{
    if (!air)
    {
        vsp -= jumpH;
        air = true;
    }
}
#endregion


#region animations

if (hsp != 0)
{
	if (key_right)
	{
		image_xscale = 1;
	} else
	{
		image_xscale = -1;
	}
}

//Animation

if (!freeze)
{
	if (vsp != 0)
	{
		if (key_spaceH) and (vsp < 5)
		{
			sprite_index = spr_playerAir;
			image_index = 0;
		}
		else image_index = 1;
	}
	else if (key_crouch) sprite_index = spr_playerCrouch;
	else if (hsp != 0) sprite_index = spr_playerWalk;
	else sprite_index = spr_playerIdle;
}
else sprite_index = spr_playerChk;

if (sprite_index = spr_playerChk) and (image_index >= image_number-1)
{
	image_speed = 0;
	//camera_zoom(0.5,0.5);
}

#endregion


if (key_attack) state = PLAYERSTATE.ATTACK_SLASH;

}