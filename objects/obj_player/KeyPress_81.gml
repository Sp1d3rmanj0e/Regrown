/// @description Healing
if (state != PLAYERSTATE.DEAD) and (nanobotCount > 0) and (!instance_exists(inventory)) {
	if (healing = 0) 
	{
		healing = 1;
		Heffect = instance_create_depth(x,y,depth-1,obj_healing);
	} else {
		healing = 0;
		instance_destroy(Heffect);
	}
}