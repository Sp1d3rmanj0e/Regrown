/// @description Gain Health
scr_followPlayer(0,0);
time += 100/heal_time/room_speed;
if (healing = 1)
{
	obj_player.P_health += (health_gained/(heal_time/2))/room_speed;
}
