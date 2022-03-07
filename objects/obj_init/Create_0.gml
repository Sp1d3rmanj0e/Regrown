/// @description Insert description here
// You can write your code in this editor
randomize();
#macro TILE_SIZE 32

maxpowerups = 19; // Array capacity (Easily changeable)

powerups = array_create(maxpowerups,noone); //Initialize array for powerup storage

powerups[1] = 1;
powerups[2] = 0;
powerups[3] = 3;
powerups[4] = 2;
powerups[5] = 1;
powerups[6] = 0;
powerups[7] = 3;
powerups[8] = 2;
powerups[9] = 1;
powerups[10] = 0;
powerups[11] = 3;
powerups[12] = 2;
powerups[13] = 1;
powerups[14] = 0;
powerups[15] = 3;
powerups[16] = 2;
powerups[17] = 1;
powerups[18] = 0;

room_goto_next();