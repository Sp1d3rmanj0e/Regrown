/// @description place wall

for (var i = 0; i < width/TILE_SIZE; i++) {
	
	for (var j = 0; j < height/TILE_SIZE; j++) {
		
		tilemap_set_at_pixel(tilemap,tile,x+i*TILE_SIZE+TILE_SIZE/2,y+j*TILE_SIZE+TILE_SIZE/2);
	}
}