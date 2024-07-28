

xCoor = room_width /2;
instance_create_layer(xCoor, 500, "Escort", obj_escortWarp);

// Create the obj_escortShip at the calculated coordinates
instance_create_layer(xCoor, room_height - 200, "Escort", obj_escortShip);

// Initialize spawns and states
spawnList = [];// Number of spawns that need to be destroyed in active state

// Calculate the coordinates for the four corners
offset = 1100;

GetAsteroids(10, 27, false);

