// Define the fraction variable (can be set to 1/5, 1/6, etc.)
var fraction = 1 / 6; // Example: 1/6 of the room width
var trigger_x = room_width * fraction;

// Check if the instance creation has already occurred
if (!instance_exists(obj_escortEnemySpawner)) {
    // Check if obj_escortShip has crossed the specified fraction of the room width
    if (x >= trigger_x) {
        // Create the new instance at the center-top of the room
        instance_create_layer(room_width / 2, 0, "Enemy", obj_escortEnemySpawner);
    }
}
