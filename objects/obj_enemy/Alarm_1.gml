/// @description Calm Cooldown

if (lineof_sight = true)
{
	playerstate = STATE.ATTACK;
} else 
{
	playerstate = STATE.PATROL; //patrol
}
alarm[2] = fleeingValor; //cooldown to fight again