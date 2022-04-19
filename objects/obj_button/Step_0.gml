/// @description

var _hover = getHover();
var _click = _hover and (mouse_check_button_pressed(mb_left));

// hover
hover = lerp(hover,_hover,0.1);
y = lerp(y,ystart - hover*8,0.1);

// click
if (_click) and (buttonScript >= 0) {
	
	script_execute(buttonScript);
}