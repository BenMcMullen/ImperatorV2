

xCoor = room_width /2;
instance_create_layer(xCoor - 256, 500, "asteroid", obj_asteroidWarp);

// Create the obj_asteroidShip at the calculated coordinates
instance_create_layer(xCoor, room_height - 200, "asteroid", obj_asteroidShip);

// Initialize spawns and states
spawnList = [];// Number of spawns that need to be destroyed in active state

// Calculate the coordinates for the four corners
offset = 1100;

GetAsteroids(10, 27, false);

