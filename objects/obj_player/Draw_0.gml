/// @description Insert description here
// You can write your code in this editor
draw_self();
healthPercent = P_health/P_maxHealth*100;
draw_healthbar(camX,camY,camX+Xoffset,camY+Yoffset,healthPercent,c_black,c_red,c_green,0,true,true);