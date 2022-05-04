/// @description draw healthbar
event_inherited();

draw_text(x,y,image_index);
if (state = ENEMYSTATE.ATTACK) show_debug_message(image_index);