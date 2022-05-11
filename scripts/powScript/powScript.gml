// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function powScript(_typ) constructor {
	
	switch(_typ) {
		
		case 0:
		
			with(obj_player) {
		
				walkSp = ogwalkSp/2;
				jumpH = 69;
			}
		break;
		
		case 1:
			
			with(obj_player) {
				
				walkSp = ogwalkSp*2;
				jumpH = 11.5;
			}
		break;
		
		case 2:
			
			obj_player.thorns = true;
		break;
	}
	
	static resetChanges = function(_typ) {
	
		switch(_typ) {
			
			case 0:
			
				with(obj_player) {
				
					walkSp = ogwalkSp;
					jumpH = 23;
				}
			break;
			
			case 1:
			
				with(obj_player) {
					
					walkSp = ogwalkSp;
					jumpH = 23;
				}
			break;
			
			case 2:
				
				obj_player.thorns = false;
			break;
		}
	}
}