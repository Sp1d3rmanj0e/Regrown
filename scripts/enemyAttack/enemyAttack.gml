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
			target.airborne = true; // prevent big hit boost
			
			fling(point_direction(other.x,other.y-(sprite_height/2)+30,x,y),mag); 
			show_debug_message(obj_player.vsp);
			// close inventory if it is open
			if (instance_exists(inventory)) instance_destroy(inventory);
			
			
			if (other.target = obj_player) {
		
				obj_player.jumpBuffer = true; // prevent big hit boost coyote
				flash_alpha = 1; // flash
				_shake(10-P_health,20); // shake
				if (P_health >= P_maxHealth/2) {
		
					audio_play_sound(choose(snd_softGlitch1,snd_softGlitch2),1,false);
		
				} else {
		
					audio_play_sound(choose(snd_glitch1,snd_glitch2),1,false);
		
				}
			}
		}
	}
}