// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyAttack(target, damage){

	with (target) {
		
		if (alarm[0] == -1) and (!safe) {// if is hittable and not safe, attack
			
			alarm[0] = 1.5 * room_speed; // activate hit stun
			if (P_health > 0) {// damage
			
				P_health -= damage;
			} 
			else P_health = 0;
			fling(point_direction(other.x,other.y-(sprite_height/2)+30,x,y),25); 
			if (instance_exists(inventory)) instance_destroy(inventory);
		}
	}
	alarm[1] = enemyAttackStun; // delay for enemy to hit again
}