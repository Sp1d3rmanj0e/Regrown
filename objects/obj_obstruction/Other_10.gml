/// @description remove wall

tile = 0

// removes collision tiles
if (exists) {
	
	audio_play_sound(snd_crumble,1,false);
	for (var i = 0; i < width/TILE_SIZE; i++) {
	
		for (var j = 0; j < height/TILE_SIZE; j++) {
		
			tilemap_set_at_pixel(tilemap,0,x+i*TILE_SIZE+TILE_SIZE/2,y+j*TILE_SIZE+TILE_SIZE/2);
		}
	}
	
	image_speed = 1;
}
 
exists = false;
