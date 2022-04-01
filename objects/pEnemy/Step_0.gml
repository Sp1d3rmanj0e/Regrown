/// @description execute state machine

if (!global.gamePaused) {
	
	if (enemyScript[state] != -1) script_execute(enemyScript[state]);
}