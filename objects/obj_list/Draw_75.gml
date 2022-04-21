/// @description

draw_text(500,300,global.game_mode);

draw_set_color(make_color_rgb(20, 201, 247));
draw_roundrect(x,y,x+width,y+height,0);
draw_set_color(-1);

var _size = ds_list_size(list);

for (var i = 0; i < _size; i++) {
	
	// get data
	var _arr = list[| i];
	var _name = _arr[PR.NAME]
	var _sel = _arr[PR.SELECTED]
	var _vals = _arr[PR.VALUES]
	
	// position to draw
	var _x = x + padding;
	var _y = y + padding + itemH * i;
	
	// color if not selected
	draw_text(50,50,hoverID);
	if (i != hoverID) draw_set_color(c_black);
	
	// draw name
	draw_text(_x,_y,_name);
	
	// draw value
	if (_sel > -1) {
		
		var _val = _vals[_sel];
		
		draw_set_halign(fa_right);
		draw_text(x+width-padding,_y, _val);
		draw_set_halign(fa_left);
	}
	
	// reset color
	draw_set_color(c_white);
}