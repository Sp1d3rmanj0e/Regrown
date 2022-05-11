/// @description initialize

global.cameraScale = 1.33; // camera zoom
global.playerSight = 1.33; // how much the player can see

global.orgFill = -4;
global.synFill = -4;

global.gamePaused = false;

randomize();
draw_set_font(fnt_text);


// test initializers
global.sfx = 0;
global.antiAil = 0;
global.volume = 0;
global.graphics = 2;

global.keybinds = [];

changeKeybind(KB.JUMP,vk_space);
changeKeybind(KB.JUMPALT,ord("W"));
changeKeybind(KB.LEFT,ord("A"));
changeKeybind(KB.RIGHT,ord("D"));
changeKeybind(KB.CROUCH,vk_control);
changeKeybind(KB.CROUCHALT,ord("S"));
changeKeybind(KB.ATTACK,mb_left);
changeKeybind(KB.ORGATTACK,ord("Z"));
changeKeybind(KB.SYNATTACK,ord("X"));