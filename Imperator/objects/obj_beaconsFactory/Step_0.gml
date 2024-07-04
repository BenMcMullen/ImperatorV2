// Step Event of obj_beaconsFactory

// Check the number of active beacons
activeBeacons = instance_number(obj_beaconsBeacon);

// If no active beacons remain, remove immunity
if (activeBeacons == 0) {
    immune = false;
}
