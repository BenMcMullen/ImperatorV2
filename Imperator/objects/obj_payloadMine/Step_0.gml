if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Step event of obj_huntingenemy

if (!initialized) {
cooldownTimer = 0;

// Variables for AI behavior
 enemy = enemyType;
 attackRange = GetEnemyStats(enemy).shootRange; // Attack range
 hp = GetEnemyStats(enemy).hp;
 capacity = GetEnemyStats(enemy).capacity;
 fireRate = GetEnemyStats(enemy).fireRate;
 enemySpeed = GetEnemyStats(enemy).enemySpeed;
 cooldownDuration = GetEnemyStats(enemy).cooldownDuration;
}
	if (!lockedOn) {
	var detectionRange = GetEnemyStats(enemyType).detectionRange / global.selectedShip.passives.distortion; // Detection range
	if (global.playerCloaked) {
		detectionRange = 0;
	}
    var player = instance_find(obj_player, 0); // Reference to the player object
    var player_x = player.x;
    var player_y = player.y;

    var distToPlayer = point_distance(x, y, player_x, player_y);
	 if (distToPlayer <= detectionRange) {
		 lockedOn = true;
	}


	}

if (instance_exists(obj_player) && initialized && lockedOn) {
	var detectionRange = GetEnemyStats(enemyType).detectionRange / global.selectedShip.passives.distortion; // Detection range
	if (global.playerCloaked) {
		detectionRange = 0;
	}
    var player = instance_find(obj_player, 0); // Reference to the player object
    var player_x = player.x;
    var player_y = player.y;

            // Move towards the player
            var enemyDirection = point_direction(x, y, player_x, player_y);
            var move_x = lengthdir_x(enemySpeed, enemyDirection);
            var move_y = lengthdir_y(enemySpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
       
    }


