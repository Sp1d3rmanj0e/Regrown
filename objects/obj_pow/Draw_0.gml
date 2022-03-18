/// @description Insert description here
// You can write your code in this editor
draw_self();
if (sprite_index = spr_powOrg)
{
draw_sprite_ext(spr_powOrgIcon,powerup_type,x,y,1,1,0,c_white,100);
}
else draw_sprite_ext(spr_powSynIcon,powerup_type,x,y,1,1,0,c_white,100);
draw_set_halign(fa_center);
draw_text(x,y-20,powerup_type);
draw_text(x,y+20,powerup_name);
draw_set_halign(fa_left);