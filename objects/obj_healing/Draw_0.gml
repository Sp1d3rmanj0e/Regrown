/// @description healthbar drawing

draw_self();

// true healthbar
var healPercent = 100*(healCounter/(room_speed/healthPerSecond));
draw_healthbar(bbox_left,bbox_bottom,bbox_right,bbox_bottom+10,healPercent,c_black,c_aqua,c_purple,0,true,true);

draw_text(x,y,obj_player.P_health);