/// @description draw bush

// draw height
for (var h = 0; h < height/TILE_SIZE; h++) {

	// draw width
	for (var i = 0; i < width/TILE_SIZE; i++) {
	
		draw_sprite(spr_weeds,frame[h][i],x+i*TILE_SIZE,y+h*TILE_SIZE);
	}
}