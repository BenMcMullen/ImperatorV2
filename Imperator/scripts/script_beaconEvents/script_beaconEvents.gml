/// @description Get the waypoints for the enemy based on the beacon index
/// @param beaconIndex The index of the beacon that created the enemy

function GetWaypoints(beaconIndex) {
    var waypoints = [];
    
	
	
	
	
    switch (beaconIndex) {
        case 0:
            waypoints[0] = [1100, 1100]; // Home (offset values)
            waypoints[1] = [room_width - 1100, 1100]; // Right
            waypoints[2] = [1100, room_height - 1100]; // Bottom
            break;
        case 1:
            waypoints[0] = [room_width - 1100, 1100]; // Home (offset values)
            waypoints[1] = [1100, 1100]; // Left
            waypoints[2] = [room_width - 1100, room_height - 1100]; // Bottom
            break;
        case 2:
            waypoints[0] = [1100, room_height - 1100]; // Home (offset values)
            waypoints[1] = [1100, 1100]; // Top
            waypoints[2] = [room_width - 1100, room_height - 1100]; // Right
            break;
        case 3:
            waypoints[0] = [room_width - 1100, room_height - 1100]; // Home (offset values)
            waypoints[1] = [room_width - 1100, 1100]; // Top
            waypoints[2] = [1100, room_height - 1100]; // Left
            break;
    }

    return waypoints;
}
