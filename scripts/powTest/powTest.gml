// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function powTest(_typ) constructor {
	if (_typ == 0) {
		with(obj_player) {
		
			walkSp = ogwalkSp/2;
			jumpH = 69;
		}
	
		static resetChanges = function() {
			with(obj_player) {
			
				walkSp = ogwalkSp;
				jumpH = 23;
			}
		}
	}
}