/// @description Insert description here
// You can write your code in this editor


//draw textbox
draw_sprite(spr_textbox,0,x,y);


//draw text
textPart = string_copy(text,1,charCount);
draw_text_ext(x,y,textPart,stringHeight,boxWidth);



