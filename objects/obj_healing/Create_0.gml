/// @description Initialize and Start Alarms
healPercent = 0;
healthPerSecond = room_speed/(1/0.857);  //Heals 2 health per second

stun = 2; //Player slows while healing
obj_player.walkSp /= stun;


function addHealth() {
	obj_player.P_health += 1;
}


snd_heal = audio_play_sound(snd_batteryCharge_s,1,true);