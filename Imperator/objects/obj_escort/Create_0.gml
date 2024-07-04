// Get the room width
var roomWidth = room_width;

// Calculate the range for the middle 3/5ths of the room
var startX = roomWidth / 5;
var endX = roomWidth * 4 / 5;

// Generate a random x coordinate within this range
var randomX = irandom_range(startX, endX);

// Set the y coordinate to be 200 units above the current y position of obj_escort
var newY = room_height - 200;

// Create the obj_escortShip at the calculated coordinates
instance_create_layer(1500, newY, "Escort", obj_escortShip);
