// Initialize spawns and states
spawnList = [];// Number of spawns that need to be destroyed in active state

// Get the room width and height
roomWidth = room_width;
roomHeight = room_height;

// Calculate the coordinates for the four corners
offset = 1100;


// Create the spawns
instance_create_layer(offset, offset, "Enemy", obj_huntingEnemySpawner);
instance_create_layer(roomWidth - offset, offset, "Enemy", obj_huntingEnemySpawner);
instance_create_layer(offset, roomHeight - offset, "Enemy", obj_huntingEnemySpawner);
instance_create_layer(roomWidth - offset, roomHeight - offset, "Enemy", obj_huntingEnemySpawner);

GetAsteroids(25, 50, false);