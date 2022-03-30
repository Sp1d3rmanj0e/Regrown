/// @description save instances

// Reset room data (the previous data is outdated)
 global.roomData[room] = [];
 
 // save instance data
 var _objectCount = array_length(global.objectsToSave); // get array length
 
 for (var i = 0; i < _objectCount; i++) {
	var _object = global.objectsToSave[i]; // go through all objects that want to be saved
	
	with (_object) {
		var _data;
		if (object_is_ancestor(object_index, enemies)) // if the object is a parent of enemies
		{
			_data = new EnemyData(self) // save enemy-specific data (health)
		}
		else {
			_data = new InstanceData(self); // save generic data (x, y, depth)
		}
		array_push(global.roomData[room], _data); // add instance data to the roomData
	}
 }
