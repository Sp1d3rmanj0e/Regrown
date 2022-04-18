/// @description switch pages

var mouseChangeRight = (mouse_x > global.viewX + global.viewWidth - 70);
var mouseChangeLeft = (mouse_x < global.viewX + 70); 

// move left
if ((keyboard_check_pressed(ord("A"))) or (mouseChangeLeft)) and (!alreadyChangedPage) {

	alreadyChangedPage = true;
	page = max(0, page-1);
	switchPage(page);
}

// move right
if ((keyboard_check_pressed(ord("D"))) or (mouseChangeRight)) and (!alreadyChangedPage){
	
	alreadyChangedPage = true;
	page = min(maxPages, page+1);
	switchPage(page);
}

// reset alreadyChangedPage if mouse left swap zone

if (!mouseChangeLeft) and (!mouseChangeRight) {
	
	alreadyChangedPage = false;
}