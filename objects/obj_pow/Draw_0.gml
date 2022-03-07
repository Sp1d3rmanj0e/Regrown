/// @description Insert description here
// You can write your code in this editor
draw_self();
if (sprite_index = spr_powOrg)
{
draw_sprite_ext(spr_powOrgIcon,obj_init.powerups[count],x,y,1,1,0,c_white,100);
}
else draw_sprite_ext(spr_powSynIcon,obj_init.powerups[count],x,y,1,1,0,c_white,100);
draw_text(x,y,count);
draw_text(x+50,y,obj_init.powerups[count]);
draw_text(x-50,y,type);