global.saveObjects = 1;

global.objectsToSave = [
	enemies

]

global.roomData = [];

function InstanceData (_instance) constructor {
	x = _instance.x;
	y = _instance.y;
	depth = _instance.depth;
	object_index = _instance.object_index;
	
	static Create = function () {
		return instance_create_depth(x,y,depth,object_index);
	}
}

function EnemyData (_instance) : InstanceData (_instance) constructor {
	hp = _instance.hp; // Get/Store hp data
	
	static BaseCreate = Create; //Get instance that was created
	static Create = function () { //Create new create function
		var _inst = BaseCreate(); //Get id of new instance
		_inst.hp = hp; //add hp value to new instance
	}
}