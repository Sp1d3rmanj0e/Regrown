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
var _id = instance_place(mouse_x,mouse_y,obj_pow);
if (_id != noone) {
	var type = _id.type;
	var count = _id.count;
	
	if (type == "org") {
		overlay = PTYPE.ORG;
	} else if (type == "syn") {
		overlay = PTYPE.SYN;
	}
	sel_powerupNum = count;
} else {
	overlay = PTYPE.NONE;
}