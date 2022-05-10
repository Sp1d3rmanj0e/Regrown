/// @description
draw_self();
draw_text(x,y+50,tilemap_get_width(tilemap));
draw_text(x,y+70,height);

for (var i = 0; i < width/TILE_SIZE; i++) {
	
	for (var j = 0; j < height/TILE_SIZE; j++) {
		
		draw_circle(x+i*TILE_SIZE+TILE_SIZE/2,y+j*TILE_SIZE+TILE_SIZE/2,5,false);
	}
}