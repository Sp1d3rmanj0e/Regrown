/// @description initialize

audio_play_sound(snd_musicTheme,1,false);

global.cameraScale = 1.33; // camera zoom
global.playerSight = 1.33; // how much the player can see

global.orgFill = -4;
global.synFill = -4;

global.gamePaused = false;

randomize();
draw_set_font(fnt_text);


// test initializers
global.volume = 4;
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
changeKeybind(KB.CROUCH,vk_lcontrol,MK.KEY);
changeKeybind(KB.CROUCHALT,ord("S"),MK.KEY);
changeKeybind(KB.ATTACK,mb_left,MK.MOU);
changeKeybind(KB.ORGATTACK,ord("Z"),MK.KEY);
changeKeybind(KB.SYNATTACK,ord("X"),MK.KEY);
changeKeybind(KB.SELECT,ord("E"),MK.KEY);
changeKeybind(KB.HEAL,ord("Q"),MK.KEY);

// rooms not to pause in
doNotPauseRoom = [
	
	rm_credits,
	rm_titleScreen,
	init
]

doNotPauseInst = [
	
	obj_keybind,
	inventory
]

#region references
// THANK YOU kburkhart84!
for(var i = 0; i < 256; i++)
{
    global._fhinputKeys[i] = "Unknown";
}
global._fhinputKeys[vk_escape] = "Escape";
global._fhinputKeys[vk_f1] = "F1";
global._fhinputKeys[vk_f2] = "F2";
global._fhinputKeys[vk_f3] = "F3";
global._fhinputKeys[vk_f4] = "F4";
global._fhinputKeys[vk_f5] = "F5";
global._fhinputKeys[vk_f6] = "F6";
global._fhinputKeys[vk_f7] = "F7";
global._fhinputKeys[vk_f8] = "F8";
global._fhinputKeys[vk_f9] = "F9";
global._fhinputKeys[vk_f10] = "F10";
global._fhinputKeys[vk_f11] = "F11";
global._fhinputKeys[vk_f12] = "F12";
global._fhinputKeys[145] = "Scroll Lock";
global._fhinputKeys[vk_pause] = "Pause";
global._fhinputKeys[192] = "Tilde(~)";
global._fhinputKeys[49] = "1";
global._fhinputKeys[50] = "2";
global._fhinputKeys[51] = "3";
global._fhinputKeys[52] = "4";
global._fhinputKeys[53] = "5";
global._fhinputKeys[54] = "6";
global._fhinputKeys[55] = "7";
global._fhinputKeys[56] = "8";
global._fhinputKeys[57] = "9";
global._fhinputKeys[48] = "0";
global._fhinputKeys[189] = "Dash(-)";
global._fhinputKeys[187] = "Equals(=)";
global._fhinputKeys[vk_backspace] = "Backspace";
global._fhinputKeys[65] = "A";
global._fhinputKeys[66] = "B";
global._fhinputKeys[67] = "C";
global._fhinputKeys[68] = "D";
global._fhinputKeys[69] = "E";
global._fhinputKeys[70] = "F";
global._fhinputKeys[71] = "G";
global._fhinputKeys[72] = "H";
global._fhinputKeys[73] = "I";
global._fhinputKeys[74] = "J";
global._fhinputKeys[75] = "K";
global._fhinputKeys[76] = "L";
global._fhinputKeys[77] = "M";
global._fhinputKeys[78] = "N";
global._fhinputKeys[79] = "O";
global._fhinputKeys[80] = "P";
global._fhinputKeys[81] = "Q";
global._fhinputKeys[82] = "R";
global._fhinputKeys[83] = "S";
global._fhinputKeys[84] = "T";
global._fhinputKeys[85] = "U";
global._fhinputKeys[86] = "V";
global._fhinputKeys[87] = "W";
global._fhinputKeys[88] = "X";
global._fhinputKeys[89] = "Y";
global._fhinputKeys[90] = "Z";
global._fhinputKeys[219] = "L Bracket([)";
global._fhinputKeys[221] = "R Bracket(])";
global._fhinputKeys[220] = "Backslash(\\)";
global._fhinputKeys[20] = "Capslock";
global._fhinputKeys[186] = "Semi-Colon(;)";
global._fhinputKeys[222] = "Apostrophe(')";
global._fhinputKeys[13] = "Enter";
global._fhinputKeys[vk_lshift] = "L Shift";
global._fhinputKeys[vk_rshift] = "R Shift";
global._fhinputKeys[vk_lcontrol] = "L Control";
global._fhinputKeys[vk_rcontrol] = "R Control";
global._fhinputKeys[164] = "L Alt";
global._fhinputKeys[165] = "R Alt";
global._fhinputKeys[188] = "Comma(,)";
global._fhinputKeys[190] = "Period(.)";
global._fhinputKeys[191] = "Slash(/)";
global._fhinputKeys[vk_space] = "Spacebar";
global._fhinputKeys[93] = "Apps";
global._fhinputKeys[vk_insert] = "Insert";
global._fhinputKeys[vk_home] = "Home";
global._fhinputKeys[vk_pageup] = "Page Up";
global._fhinputKeys[vk_delete] = "Delete";
global._fhinputKeys[vk_end] = "End";
global._fhinputKeys[vk_pagedown] = "Page Down";
global._fhinputKeys[144] = "Numlock";
global._fhinputKeys[111] = "Numpad Slash(/)";
global._fhinputKeys[106] = "Numpad Asterisk(*)";
global._fhinputKeys[109] = "Numpad Dash(-)";
global._fhinputKeys[vk_numpad0] = "Numpad 0";
global._fhinputKeys[vk_numpad1] = "Numpad 1";
global._fhinputKeys[vk_numpad2] = "Numpad 2";
global._fhinputKeys[vk_numpad3] = "Numpad 3";
global._fhinputKeys[vk_numpad4] = "Numpad 4";
global._fhinputKeys[vk_numpad5] = "Numpad 5";
global._fhinputKeys[vk_numpad6] = "Numpad 6";
global._fhinputKeys[vk_numpad7] = "Numpad 7";
global._fhinputKeys[vk_numpad8] = "Numpad 8";
global._fhinputKeys[vk_numpad9] = "Numpad 9";
global._fhinputKeys[110] = "Numpad Period(.)";
global._fhinputKeys[107] = "Numpad Plus(+)";
global._fhinputKeys[vk_left] = "Left Arrow";
global._fhinputKeys[vk_right] = "Right Arrow";
global._fhinputKeys[vk_up] = "Up Arrow";
global._fhinputKeys[vk_down] = "Down Arrow";
global._fhinputKeys[mb_left] = "Left Mouse";
global._fhinputKeys[vk_tab] = "Tab";
global._fhinputKeys[vk_shift] = "Shift";
#endregion references