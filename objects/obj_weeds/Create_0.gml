/// @description

// vars
damage = 1;
target = obj_player;

// properties
width = bbox_right-bbox_left;
height = bbox_bottom-bbox_top;
frame = [];

// draw height
for (var h = 0; h < height/TILE_SIZE; h++) {

	// draw width
	for (var i = 0; i < width/TILE_SIZE; i++) {
	
		frame[h][i] = irandom_range(0,image_number-1);
	}
}