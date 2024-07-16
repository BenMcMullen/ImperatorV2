// Create event of obj_enemy

cooldownTimer = 0;

// Variables for AI behavior
detectionRange = 2000 / global.selectedShip.passives.distortion; // Detection range
attackRange = 450; // Attack range
capacity = 20;
plasmaSpeed = 25;
capacity = 20;
fireRate = 5;
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
