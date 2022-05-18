/// @description

// Main Code 

if (airborne) {
	
	if (jumpBuffer > 0) jumpBuffer -= 1/room_speed;
} 
else {
	
	jumpBuffer = 0.1;
}

// Makes flash go down over time
if (flash_alpha > 0)
{
	flash_alpha -= 0.05;
}

//TAKING DAMAGE
if (P_health < P_health_prev)
{

}
P_health_prev = P_health;

// if game is running normally
if (!global.gamePaused) {
	
	image_speed = imageSpeed;
	x += hsp;
	y += vsp;
} 
else { // if game is paused
	
	// pause hit protection timer
	if (alarm[0] != -1) {
		
		alarm[0]++;
	}
	
	image_speed = 0;
}

if (input_check_pressed(KB.HEAL)) and (P_health < P_maxHealth) {
	
	// healing
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
}

if (place_meeting(x,y,obj_weeds)) {
	
	walkSp = ogwalkSp/2;
} else walkSp = ogwalkSp;