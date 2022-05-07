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
global.overlay = true;
global.cameraShake = true;
global.guiSize = 0;
global.textSize = 0;
//global.colorblindMode = false;
global.visibleEnemies = 0;

global.keybinds = [];

changeKeybind(KB.JUMP,vk_space,MK.KEY);
changeKeybind(KB.JUMPALT,ord("W"),MK.KEY);
changeKeybind(KB.LEFT,ord("A"),MK.KEY);
changeKeybind(KB.RIGHT,ord("D"),MK.KEY);
changeKeybind(KB.CROUCH,vk_control,MK.KEY);
changeKeybind(KB.CROUCHALT,ord("S"),MK.KEY);
changeKeybind(KB.ATTACK,mb_left,MK.MOU);
changeKeybind(KB.ORGATTACK,ord("Z"),MK.KEY);
changeKeybind(KB.SYNATTACK,ord("X"),MK.KEY);
changeKeybind(KB.SELECT,ord("E"),MK.KEY);
changeKeybind(KB.HEAL,ord("Q"),MK.KEY);