/// @description Insert description here
// You can write your code in this editor

// Reset room data (the previous data is outdated)
 global.roomData[room] = [];
 
 // Save data

 var _objectCount = array_length(global.objectsToSave); //get length
 
 for (var i = 0; i < _objectCount; i++) {
	var _object = global.objectsToSave[i]; //go through all objects that want to be saved
	
	with (_object) {
		var _data;
		if (object_is_ancestor(object_index, enemies)) //if the object is a parent of enemies
		{
			_data = new EnemyData(self) //run enemy function
		}
		else {
			_data = new InstanceData(self); //run normal instance function
		}
		array_push(global.roomData[room], _data); //add to the roomData
	}
 }
