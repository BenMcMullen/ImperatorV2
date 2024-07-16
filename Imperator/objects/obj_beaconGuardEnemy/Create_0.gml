// Create event of obj_enemy


// Get the waypoints for this enemy based on the beacon index
getWayPoints = true;
waypoints = [];
current_waypoint = 0;
hp = 1;
cooldownTimer = 0;
// Variables for AI behavior
attackRange = 900; // Attack range
capacity = 40;
plasmaSpeed = 80;
fireRate = 2;
detectionRange = 2000 / global.selectedShip.passives.distortion; // Detection range