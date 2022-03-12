/// @description Insert description here
// You can write your code in this editor

healthPercent = P_health/P_maxHealth*100;
if (!instance_exists(inventory)) {
draw_healthbar(0,0,Xoffset,Yoffset,healthPercent,c_black,make_color_rgb(0,238,255),make_color_rgb(0,222,234),0,true,true);
draw_sprite(spr_healthBar,-1,0,0);
draw_text(3,15,P_health);
}