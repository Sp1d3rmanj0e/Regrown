/// @description disappear if overlay is covering

var p1 = 0;

if (inventory.overlay == PTYPE.NONE) {
		p1 = 1;
} else if (inventory.overlay == PTYPE.ORG) {
	if (type == "org") {
		p1 = 1;
	}
} else if (inventory.overlay == PTYPE.SYN) {
	if (type == "syn") {
		p1 = 1;
	}
}
if (selected) {
	p1 = 1;
}

if (p1 == 1) {
	draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,shade,100);
	
	if (sprite_index = spr_powOrg)
	{
		draw_sprite_ext(spr_powOrgIcon,powerup_type,x,y,1,1,0,shade,100);
	}
	else draw_sprite_ext(spr_powSynIcon,powerup_type,x,y,1,1,0,shade,100);
		draw_set_halign(fa_center);
		draw_text(x,y-20,powerup_type);
		draw_text(x,y+20,powerup_name);
		draw_set_halign(fa_left);
}

