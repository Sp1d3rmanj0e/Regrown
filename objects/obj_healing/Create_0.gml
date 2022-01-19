/// @description Initialize and Start Alarms
stun = 2;
healthNeeded = obj_player.P_maxHealth-obj_player.P_health
health_gained = min(healthNeeded,3);
heal_time = 1;
healing = 0;
time = 0; //for healthbar
obj_player.walkSp /= stun;
alarm[0] = room_speed*heal_time;
alarm[1] = room_speed*(heal_time/2)