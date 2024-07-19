// Initialize beacons and states
beaconList = [];// Number of beacons that need to be destroyed in active state

// Get the room width and height
var roomWidth = room_width;
var roomHeight = room_height;

// Calculate the coordinates for the four corners
var offset = 1100;
beaconIndex0 = 0;
beaconIndex1 = 1;
beaconIndex2 = 2;
beaconIndex3 = 3;

// Create the beacons
beacon1 = instance_create_layer(offset, offset, "Beacons", obj_beaconBeacon);
beacon1.beaconIndex = beaconIndex0;

beacon2 = instance_create_layer(roomWidth - offset, offset, "Beacons", obj_beaconBeacon);
beacon2.beaconIndex = beaconIndex1;

beacon3 = instance_create_layer(offset, roomHeight - offset, "Beacons", obj_beaconBeacon);
beacon3.beaconIndex = beaconIndex2;

beacon4 = instance_create_layer(roomWidth - offset, roomHeight - offset, "Beacons", obj_beaconBeacon);
beacon4.beaconIndex = beaconIndex3;

global.beaconList[0] = beacon1;
global.beaconList[1] = beacon2;
global.beaconList[2] = beacon3;
global.beaconList[3] = beacon4;

instance_create_layer(roomWidth / 2, roomHeight /2, "Factory", obj_beaconFactory);

// Set the first beacon as active
WeakenNextBeacon();
