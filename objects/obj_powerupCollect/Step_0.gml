/// @description

if (height < 0.01) hover = 1;
else if (height > 0.99) hover = 0;

height = lerp(height,hover,0.05);
y = lerp(y,ystart - height*16,0.1);