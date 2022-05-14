/// @description load player and instances

// room fade out
fade = 1;
fadeDirection = -1;

// teleport player to target location
if (instance_exists(targetInstance))
{
	
	if (!instance_exists(obj_player))
	{
		
		instance_create_layer(0,0,"player",obj_player);
	}
	
	// move player to target
	obj_player.x = targetInstance.x;
	obj_player.y = targetInstance.y-128;
	obj_player.x_origin = room_width/2;
}

targetInstance = noone; // clear target

// load saved instances
if (global.saveObjects == 1) { // run if not actively resetting
	
	// remove all current instances
	if (array_length(global.roomData) > room) and (is_array(global.roomData[room])) {
	
		var _objectCount = array_length(global.objectsToSave);
		for (var i = 0; i < _objectCount; i++) {
			instance_destroy(global.objectsToSave[i]);
		}

	// load Instances
		var _roomData = global.roomData[room];
		var _instanceCount = array_length(_roomData);
	
		for (var i = 0; i < _instanceCount; i++) {
			_roomData[i].Create();
		}
	
	}
} 
else {
	
	global.saveObjects = 1;
	global.roomData = [];
}

