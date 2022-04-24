/// @description

// get real mouse coords
var _mouseX = device_mouse_x_to_gui(0);
var _mouseY = device_mouse_y_to_gui(0);

// draw background
draw_set_color(c_aqua);
draw_roundrect(x,y,x+width,y+height,1);
draw_set_color(-1);

// get size of array
var _size = array_length(list);

// text and hitboxes
for (var i = 0; i < _size; i++) {
	
	// get locations
	var x1 = x + padding;
	var y1 = y + padding + textH * i;
	var x2 = x + width - padding;
	var y2 = y1 + textH;
	var x3 = x1 + (width - padding*2) * 0.75; // setting offset
	var y3 = y1 + textH/2;
	
	// set initial color
	draw_set_color(c_aqua);
	
	// if selected - set to specific color
	if (hoverID == i) draw_set_color(c_white);
	
	// draw border
	draw_roundrect(x1,y1+1,x2,y2-2,1);
	
	// draw name
	draw_set_valign(fa_middle);
	draw_text(x1 + padding, y3,list[i][OS.NAME]);
	
	if (list[i][OS.SEL] > -1) {
		
		// draw value
		draw_set_halign(fa_middle);
			draw_text(x3,y3,list[i][OS.VALS][list[i][OS.SEL]]);
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		
		// draw arrows
		
			// set color
		var _saveColor = draw_get_color();
		if (hoverArrowID == i) draw_set_color(c_ltgray);
		if (hoverArrowSide == 1) draw_set_color(_saveColor);
		
			// left arrow
		if (list[i][OS.SEL] > 0)
		draw_arrow(x3 - 60, y3, x3 - 80, y3, 20);
		
			// set color
		if (hoverArrowID == i) draw_set_color(c_ltgray);
		if (hoverArrowSide == -1) draw_set_color(_saveColor);
		
			//right arrow
		if (list[i][OS.SEL] < array_length(list[i][OS.VALS])-1)
		draw_arrow(x3 + 60, y3, x3 + 80 , y3, 20);
		
		// reset colors
		draw_set_color(-1);

	}
	
	// reset color
	draw_set_color(-1);
}

draw_text(0,20,global.test1);
draw_text(0,40,global.test2);
draw_text(0,60,global.sfx);
draw_text(0,80,global.graphics);
draw_text(0,100,global.antiAil);
draw_text(0,120,global.volume);