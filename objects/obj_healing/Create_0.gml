/// @description initialize and start alarms

snd_heal = snd_batteryCharge_s;

// healing initializers
healthPerSecond = 1.7;
healCounter = 0;

// player slows while healing
stun = 2; 
obj_player.walkSp /= stun;

audio_play_sound(snd_heal,1,false);