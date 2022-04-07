/// @description


// Main Code 

#region Visual Effects
// Makes flash go down over time
if (flash_alpha > 0)
{
	flash_alpha -= 0.05;
}

//TAKING DAMAGE
if (P_health < P_health_prev)
{
	flash_alpha = 1; //Flash
	_shake(10-P_health,20); //Shake
	if (P_health >= P_maxHealth/2) {
		
		audio_play_sound(choose(snd_softGlitch1,snd_softGlitch2),1,false);
		
	} else {
		
		audio_play_sound(choose(snd_glitch1,snd_glitch2),1,false);
		
	}
}
P_health_prev = P_health;

#endregion

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