

// Set the y coordinate to be 200 units above the current y position of obj_escort
var newY = room_height - 200;

// Create the obj_escortShip at the calculated coordinates
instance_create_layer(1500, newY, "Escort", obj_escortShip);

// Initialize spawns and states
spawnList = [];// Number of spawns that need to be destroyed in active state

// Calculate the coordinates for the four corners
offset = 1100;



