// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RefreshInstance(){
		instance = argument0;
		cost = argument1;
		isOwned = argument2;
		unlocked = argument3;
		upgradeName = argument4;
		system_type = argument5;
  // Store the properties
    var x_position = instance.x;
    var y_position = instance.y;
    

    // Destroy the current instance
    instance_destroy(instance);

    // Create a new instance with the stored properties
    var newInstance = instance_create_layer(x_position, y_position, "Items", instance.object_index);
	newInstance.cost = cost;
	newInstance.isOwned = isOwned;
	newInstance.unlocked = unlocked;
	newInstance.upgradeName = upgradeName;
	newInstance.system_type = system_type;

    // Optional: Copy other necessary properties (if any)
    // Example:
    // newInstance.someProperty = instance.someProperty;

    return newInstance;
}