// Create event of obj_enemy
hp = 1;
cooldownTimer = 0;
// Variables for AI behavior

detection_range = 6000 * global.selectedShip.passives.distortion; // Detection range
attack_range = 450; // Attack range


// Waypoints for patrolling
waypoints = [
    [100, room_width],
    [200, 100],
    [200, 200],
    [100, 200]
];
current_waypoint = 0;