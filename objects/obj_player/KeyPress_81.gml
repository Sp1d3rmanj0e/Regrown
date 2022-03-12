/// @description Healing
if (healing = 0) 
{
	healing = 1;
	Heffect = instance_create_layer(x,y,"effects",obj_healing);
} else {
	healing = 0;
	instance_destroy(Heffect);
}