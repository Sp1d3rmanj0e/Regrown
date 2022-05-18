#macro TILE_SIZE 32

enum ENEMYSTATE {
	
	IDLE,
	WANDER,
	FLEE,
	CHASE,
	ATTACK,
	HURT,
	DIE,
	WAIT
}

enum PLAYERSTATE {
	
	FREE,
	ATTACK_SLASH,
	ATTACK_COMBO,
	DEAD,
	ATTACK_MOOSE
}

enum LIST_TYPE {
	
	PAUSE,
	OPTIONS,
	KEYBINDS,
	VISIBILITY,
	AUDIO
}

enum OS {
	
	NAME,
	SEL,
	VALS
}

enum B_ACTION {
	
	PLAY,
	CREDITS,
	QUIT,
	BACK
}

enum ATK {
	
	LOW,
	NORM,
	SLANTUP,
	SLANTDOWN,
	UP,
	DOWN
}

enum KB {
	
	JUMP,
	JUMPALT,
	LEFT,
	RIGHT,
	CROUCH,
	CROUCHALT,
	ATTACK,
	ORGATTACK,
	SYNATTACK,
	SELECT,
	HEAL,
	NONE
}

enum MK {
	
	MOU,
	KEY
}
