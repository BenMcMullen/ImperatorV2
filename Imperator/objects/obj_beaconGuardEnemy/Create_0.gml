// Create event of obj_enemy


// Get the waypoints for this enemy based on the beacon index
getWayPoints = true;
waypoints = [];
current_waypoint = 0;
cooldownTimer = 0;

// Variables for AI behavior

enemy = "Beacon Guard";
attackRange = GetEnemyStats(enemy).shootRange; // Attack range
hp = GetEnemyStats(enemy).hp;
capacity = GetEnemyStats(enemy).capacity;
fireRate = GetEnemyStats(enemy).fireRate;
enemySpeed = GetEnemyStats(enemy).enemySpeed;
cooldownDuration = GetEnemyStats(enemy).cooldownDuration;
detectionRange = GetEnemyStats(enemy).detectionRange / global.selectedShip.passives.distortion; // Detection range