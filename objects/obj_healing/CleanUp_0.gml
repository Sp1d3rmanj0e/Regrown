/// @description reset walkSpeed

// also destroyed in PlayerState_Free

obj_player.walkSp *= stun;
obj_player.healing = 0;

audio_stop_sound(snd_heal);