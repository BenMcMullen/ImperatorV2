// Create event of obj_enemy

// Variables for AI behavior
detection_range = 6000; // Detection range
attack_range = 450; // Attack range
speed = 10; // Movement speed

// Waypoints for patrolling
waypoints = [
    [100, room_width],
    [200, 100],
    [200, 200],
    [100, 200]
];
current_waypoint = 0;