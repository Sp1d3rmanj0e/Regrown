/// @description
// properties
width = 480
height = 600;

padding = 25;
textH = 48;

// type
type = noone;

// array
list = [];

// vars
hoverID = -1;
hoverArrowID = -1;
hoverArrowSide = 0;

optionOpen = -1;
options2Open = -1;
i2 = 0;

sound = noone;

// functions
function prepKeybind(_input) {
	
	if (!instance_exists(obj_keybind)) {
		
		with (instance_create_depth(global.halfGuiX,global.halfGuiY,depth,obj_keybind)) change = _input;
	}
}