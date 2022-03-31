/// @description fleeing timer
// what happens after enemy has been safe for a while

if (lineof_sight = true)
{
	state = ENEMYSTATE.CHASE;
} 
else {
	state = ENEMYSTATE.PATROL;
}

alarm[2] = fleeingValor; // cooldown to fight again