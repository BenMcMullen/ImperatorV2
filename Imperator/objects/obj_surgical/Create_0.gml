// Initialize spawns and states
spawnList = [];// Number of spawns that need to be destroyed in active state

// Get the room width and height
roomWidth = room_width;
roomHeight = room_height;

// Calculate the coordinates for the four corners
offset = 300;

enemy = GetSurgicalPrimaryTargetEnemyType();
targetSpawn = true;
targetEnemiesSpawned = 0;
targetEnemiesCount = GetCurrentLevel().levelType.targetQuantity

// Create the spawns
instance_create_layer(roomWidth / 2, offset, "Enemy", obj_surgicalEnemySpawner); // Top center
instance_create_layer(offset, roomHeight - offset, "Enemy", obj_surgicalEnemySpawner); // Bottom left
instance_create_layer(roomWidth - offset, roomHeight - offset, "Enemy", obj_surgicalEnemySpawner); // Bottom right


GetAsteroids(50, 80, true);