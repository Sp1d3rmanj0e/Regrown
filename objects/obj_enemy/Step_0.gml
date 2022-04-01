
// inherit state machine
event_inherited();

// freeze if falling too fast
if (vsp > fall_speed_stun)
{
	
	alarm[4] = fall_stun; // sets freeze to stun time
}

// jumping
if (key_spaceH) and (alarm[4] == -1) //if not stunned and want to jump
{
    if (!airborne)
    {
		alarm[4] = jump_stun;
        vsp -= jumpHeight;
        airborne = true;
    }
}

#region wall collisions tilemap

// makes all motion integers for tilemaps
Collisions(enemySpeed);

#endregion

// animations

if (abs(hsp) > 0) sprite_index = spr_ratRun; else sprite_index = spr_ratIdle;
if (hsp != 0) {
	
	if (hsp > 0) image_xscale = 1; else image_xscale = -1;
}

// if dead, destroy self
if (enemyHealth <= 0) and (airborne = false)
{
	instance_create_depth(x,y,depth,obj_enemyDead);
	instance_destroy();
}

x += hsp;
y += vsp;