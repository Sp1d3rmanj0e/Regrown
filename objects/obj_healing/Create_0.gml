/// @description initialize and start alarms

// healing initializers
healPercent = 0;
healthPerSecond = room_speed/(1/0.857);  // heals 2 health per second

// player slows while healing
stun = 2; 
obj_player.walkSp /= stun;

snd_heal = audio_play_sound(snd_batteryCharge_s,1,true);