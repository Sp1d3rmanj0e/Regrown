// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyAttack(target, damage, mag){

	with (target) {
		
		if (alarm[0] == -1) and (!safe) {// if is hittable and not safe, attack
			
			// stop player healing
			if (instance_exists(obj_healing)) {
				instance_destroy(Heffect);
				healing = 0;
			}
			
			// activate hit protection
			alarm[0] = 1.5 * room_speed;
			
			// apply damage
			if (P_health > 0) {
			
				P_health -= damage;
			} 
			else P_health = 0;
			
			// yeet player
			fling(point_direction(other.x,other.y-(sprite_height/2)+30,x,y),mag); 
			
			// close inventory if it is open
			if (instance_exists(inventory)) instance_destroy(inventory);
		}
	}
	
	// enemy hit delay
	alarm[1] = enemyAttackStun;
}