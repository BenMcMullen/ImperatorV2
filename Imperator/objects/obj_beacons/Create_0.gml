// Initialize beacons and states
beaconList = [];// Number of beacons that need to be destroyed in active state

// Get the room width and height
var roomWidth = room_width;
var roomHeight = room_height;

// Calculate the coordinates for the four corners
var offset = 1100;

// Create the beacons
beaconList[0] = instance_create_layer(offset, offset, "Beacons", obj_beaconsBeacon);
beaconList[1] = instance_create_layer(roomWidth - offset, offset, "Beacons", obj_beaconsBeacon);
beaconList[2] = instance_create_layer(offset, roomHeight - offset, "Beacons", obj_beaconsBeacon);
beaconList[3] = instance_create_layer(roomWidth - offset, roomHeight - offset, "Beacons", obj_beaconsBeacon);

instance_create_layer(roomWidth / 2, roomHeight /2, "Beacons", obj_beaconsFactory);

// Set the first beacon as active
WeakenNextBeacon();
