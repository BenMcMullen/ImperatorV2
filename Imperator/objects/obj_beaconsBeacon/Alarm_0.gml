// Alarm[0] event
if (current_instance <= GetCurrentLevel().levelType.factoryResponseQuantity) {
	
    // Create the object instance
	with (obj_beaconsFactory) {
    instance_create_layer(x + 300, y + 300, "Factory", obj_beaconFactoryEnemy);
	}

    // Increment the current instance index
    current_instance += 1;
	
	if (current_instance != GetCurrentLevel().levelType.factoryResponseQuantity) {
		 alarm[0] = 60; // 60 steps = 1 second (assuming room_speed is 60)
	}
}
