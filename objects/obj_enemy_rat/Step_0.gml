
event_inherited();

// basic mobility


// jumping
if (key_spaceH) and (alarm[4] == -1) //if not stunned and want to jump
{
    if (!airborne)
    {
		alarm[4] = jump_stun;
        vsp -= jump_height;
        airborne = true;
    }
}

// makes all motion integers for tilemaps
Collisions(walkSp);

// if dead, destroy self
if (hp <= 0) and (airborne = false)
{
	instance_create_depth(x,y,depth,obj_enemyDead);
	instance_destroy();
}

x += hsp;
y += vsp;