/// @description multiple-option buttons

var _name = list[i2,OS.NAME];
var _sel = list[i2,OS.SEL];

switch (_name) {
	
	case "SFX": global.sfx = _sel; break;
	case "Graphics": global.graphics = _sel; break;
	case "Anti-Ailizing": global.antiAil = _sel; break;
	case "Volume": global.volume = _sel; break;
}