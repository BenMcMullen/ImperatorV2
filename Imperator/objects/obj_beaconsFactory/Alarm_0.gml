// Alarm[0] event
if (current_instance <= (GetCurrentLevel().levelType.factoryResponseQuantity * 4)) {
	
    // Create the object instance
var boostedSpeed = (GetCurrentLevel().levelType.enemySpeed * 2)
show_debug_message(boostedSpeed);
   var factory = instance_create_layer(x + 300, y + 300, "Factory", obj_beaconFactoryEnemy);
	factory.enemySpeed = boostedSpeed
    // Increment the current instance index
    current_instance += 1;
	
	if (current_instance != (GetCurrentLevel().levelType.factoryResponseQuantity*4)) {
		 alarm[0] = 10; // 60 steps = 1 second (assuming room_speed is 60)
	}
	else {
		current_instance = 0;
		}
}
