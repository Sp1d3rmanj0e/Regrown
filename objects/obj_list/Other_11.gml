/// @description multiple-option buttons
sound = snd_switch;

audio_play_sound(snd_switch,0,false);
show_debug_message("Multi-option");

var _name = list[i2,OS.NAME];
var _sel = list[i2,OS.SEL];

switch (_name) {
	
	case "Overlay": global.overlay = _sel; break;
	case "Cam Shake": global.cameraShake = _sel; break;
	case "GUI Size": global.guiSize = _sel; break;
	case "Text Size": global.textSize = _sel; break;
	case "Fullscreen": window_set_fullscreen(_sel); break;
	case "Visible Enemies": global.visibleEnemies = _sel; break;
	default: sound = noone;
}

audio_play_sound(sound,0,false);