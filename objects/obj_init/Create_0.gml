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
changeKeybind(global.keybinds, KB.JUMP,ord("W"));
changeKeybind(global.keybinds, KB.JUMPALT,vk_space);
changeKeybind(global.keybinds, KB.LEFT,ord("A"));
changeKeybind(global.keybinds, KB.RIGHT,ord("D"));
changeKeybind(global.keybinds, KB.CROUCH,vk_control);
changeKeybind(global.keybinds, KB.ATTACK,mb_left);
changeKeybind(global.keybinds, KB.ORGATTACK,ord("Z"));
changeKeybind(global.keybinds, KB.SYNATTACK,ord("X"));