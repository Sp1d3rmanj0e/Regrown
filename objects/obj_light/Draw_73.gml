/// @description
/*
if !surface_exists(surf)
    {

    surf = surface_create(global.viewWidth, global.viewHeight);
    surface_set_target(surf);
    draw_set_colour(c_black);
    draw_set_alpha(0);
    draw_rectangle(0, 0, global.viewWidth, global.viewHeight, false); // draw black cover
    surface_reset_target(); // clear stray data
}
else
{
	if (surface_exists(surf)) {
	surface_set_target(surf);
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(0, 0, global.viewWidth, global.viewHeight, 0);
	gpu_set_blendmode(bm_subtract);
	with (lightParent)
	    {
			
	    }
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
	draw_surface(surf, global.viewX, global.viewY);
	}
}
draw_set_color(c_white);