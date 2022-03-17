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