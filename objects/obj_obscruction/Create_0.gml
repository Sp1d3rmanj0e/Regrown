/// @description
tilemap = layer_tilemap_get_id("tile_collision");
width = sprite_get_width(sprite_index);
height = sprite_get_height(sprite_index);
tile = tilemap_get(tilemap,63,63);

for (var i = 0; i < width/TILE_SIZE; i++) {
	
	for (var j = 0; j < height/TILE_SIZE; j++) {
		
		tilemap_set_at_pixel(tilemap,tile,x+i*TILE_SIZE+TILE_SIZE/2,y+j*TILE_SIZE+TILE_SIZE/2);
	}
}