// Create event of obj_enemy
hp = 1;
cooldownTimer = 0;

// Variables for AI behavior
detection_range = 6000 / global.selectedShip.passives.distortion; // Detection range
attack_range = 450; // Attack range

// Calculate center of the map
center_x = room_width / 2;
center_y = room_height / 2;

// Waypoints for patrolling in a circle around the center
waypoints = [];
number_of_waypoints = 20;
radius = 2000;

// Randomize direction: 0 for clockwise, 1 for counterclockwise
var patrolDirection = irandom(1);

for (var i = 0; i < number_of_waypoints; i++) {
    var angle;
    if (patrolDirection == 0) {
        // Clockwise
        angle = i * (360 / number_of_waypoints);
    } else {
        // Counterclockwise
        angle = 360 - (i * (360 / number_of_waypoints));
    }
    var xCoor = center_x + lengthdir_x(radius, angle);
    var yCoor = center_y + lengthdir_y(radius, angle);
    array_push(waypoints, [xCoor, yCoor]);
}

current_waypoint = 0;
