/// @description multiple-option buttons
sound = snd_switch;

audio_play_sound(snd_switch,0,false);
show_debug_message("Multi-option");

var _name = list[i2,OS.NAME];
var _sel = list[i2,OS.SEL];

switch (_name) {
	
	case "SFX": global.sfx = _sel; break;
	case "Graphics": global.graphics = _sel; break;
	case "Anti-Ailizing": global.antiAil = _sel; break;
	case "Volume": global.volume = _sel; break;
	case "Fullscreen": window_set_fullscreen(_sel); break;
	default: sound = noone;
}

audio_play_sound(sound,0,false);