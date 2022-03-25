/// @description Insert description here
// You can write your code in this editor
if (!closeOn) { //if opening
if (alpha < maxAlpha) {
	alpha += 0.05;
}
} else { //if closing
if (alpha > 0) {
	alpha -= 0.03;
}

}
if (frame < maxFrames) {
	frame += secsPerFrame;
}

 //You need a sprite to check for collisions apparently
 if (instance_exists(obj_pow))obj_pow.shade = c_ltgray; //All powerups shade gray
var _id = instance_place(mouse_x,mouse_y,obj_pow); //Gets id of selected pow
if (_id != noone) { //If id is not nothing
	var type = _id.type; //Get pow type
	var count = _id.count; //Get pow number
	_id.shade = c_white; //Set pow to selected color
	if (type == "org") {
		overlay = PTYPE.ORG;
	} else if (type == "syn") {
		overlay = PTYPE.SYN;
	}
	sel_powerupNum = count;
} else {
	overlay = PTYPE.NONE;
}