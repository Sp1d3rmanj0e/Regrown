/// @description multiple-option buttons

var _name = list[i2,OS.NAME];
var _sel = list[i2,OS.SEL];

switch (_name) {
	
	case "Test1": global.test1 = _sel; break;
	case "Test2" : global.test2 = _sel; break;
	case "SFX": global.sfx = _sel; break;
	case "Graphics": global.graphics = _sel; break;
	case "Anti-Ailizing": global.antiAil = _sel; break;
	case "Volume": global.volume = _sel; break;
}