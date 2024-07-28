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


 initialized = true;
    
}

if (instance_exists(obj_player) && initialized) {
	var playerDetectionRange = GetEnemyStats(enemyType).detectionRange / global.selectedShip.passives.distortion; // Detection range
	var escortDetectionRange = GetEnemyStats(enemyType).detectionRange;
	
	
    var player = instance_find(obj_player, 0); // Reference to the player object
    var player_x = player.x;
    var player_y = player.y;

    var distToPlayer = point_distance(x, y, player_x, player_y);
	
	
	 var escort;
    var escort_x;
    var escort_y;
	var distToEscort = 16000;
	if (instance_exists(obj_escortShip)) {
	escort = instance_find(obj_escortShip, 0); 
    escort_x = escort.x;
    escort_y = escort.y;
	distToEscort = point_distance(x, y, escort_x, escort_y);
	}
	
	
	if (distToPlayer < distToEscort && !global.playerCloaked ) {
		
        if (distToPlayer > attackRange) {
            // Move towards the player
            var enemyDirection = point_direction(x, y, player_x, player_y);
            var move_x = lengthdir_x(enemySpeed, enemyDirection);
            var move_y = lengthdir_y(enemySpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
        } else {
			if (distToPlayer <= 190) {
                // Move away from the player to maintain 1000 distance
                var enemyDirection = point_direction(player_x, player_y, x, y); // Direction away from the player
                var move_x = lengthdir_x(enemySpeed, enemyDirection);
                var move_y = lengthdir_y(enemySpeed, enemyDirection);

                // Update position
                x += move_x;
                y += move_y;
            }
			if (distToPlayer > 200) {
			  var enemyDirection = point_direction(x, y, player_x, player_y);
            var move_x = lengthdir_x(enemySpeed, enemyDirection);
            var move_y = lengthdir_y(enemySpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
			}
            // ATTACKING LOGIC
            // Player and escortShip detection and shooting
            var targetX, targetY, targetDistance;

            // Determine which target (obj_player or obj_escortShip) is closer
            var playerX = player.x;
            var playerY = player.y;
            var distToPlayer = point_distance(x, y, playerX, playerY);

            
            targetX = playerX;
            targetY = playerY;
            targetDistance = distToPlayer;
            

            // Calculate direction towards the target
            var directionToTarget = point_direction(x, y, targetX, targetY);
            // Determine if the target is within range and angle to shoot plasma
            var distanceToTarget = distance_to_point(targetX, targetY);
            var angleToTarget = abs(angle_difference(image_angle, directionToTarget));

            primaryDelay -= 1;

            if (distanceToTarget < attackRange && angleToTarget < shootAngle && primaryDelay < 0) {
                primaryDelay = fireRate;

                if (cooldownTimer > 0) {
                    cooldownTimer--;
                    if (cooldownTimer == 0) {
                        // Reset the shot count after the cooldown period
                        shotsFired = 0;
                    }
                }

                if (shotsFired < capacity && cooldownTimer == 0) {
                    audio_play_sound(snd_plasma, 10, false);
                    with (instance_create_layer(x, y, "Enemy", enemyProjectile)) {
                 
                        direction = directionToTarget + random_range(-2, 2);
                        image_angle = direction;
                    }
                    shotsFired++;
                    if (shotsFired >= capacity) {
                        cooldownTimer = cooldownDuration;
                    }
                }
        }
    } 
    } else if (instance_exists(obj_escortShip)){
		
		escort = instance_find(obj_escortShip, 0);
        if (distToEscort > attackRange) {
            // Move towards the player
            var enemyDirection = point_direction(x, y, escort_x, escort_y);
            var move_x = lengthdir_x(enemySpeed, enemyDirection);
            var move_y = lengthdir_y(enemySpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
        } else {
			if (distToEscort <= 300) {
                // Move away from the player to maintain 1000 distance
                var enemyDirection = point_direction(escort_x, escort_y, x, y); // Direction away from the player
                var move_x = lengthdir_x(enemySpeed, enemyDirection);
                var move_y = lengthdir_y(enemySpeed, enemyDirection);

                // Update position
                x += move_x;
                y += move_y;
            }
            // ATTACKING LOGIC
            // Player and escortShip detection and shooting
            var targetX, targetY, targetDistance;

            // Determine which target (obj_player or obj_escortShip) is closer
            var escortX = escort.x;
            var escortY = escort.y;
            var distToEscort = point_distance(x, y, escortX, escortY);

            
            targetX = escortX;
            targetY = escortY;
            targetDistance = distToEscort;
            

            // Calculate direction towards the target
            var directionToTarget = point_direction(x, y, targetX, targetY);
            // Determine if the target is within range and angle to shoot plasma
            var distanceToTarget = distance_to_point(targetX, targetY);
            var angleToTarget = abs(angle_difference(image_angle, directionToTarget));

            primaryDelay -= 1;

            if (primaryDelay < 0 && angleToTarget < shootAngle) {
                primaryDelay = fireRate;

                if (cooldownTimer > 0) {
                    cooldownTimer--;
                    if (cooldownTimer == 0) {
                        // Reset the shot count after the cooldown period
                        shotsFired = 0;
                    }
                }

                if (shotsFired < capacity && cooldownTimer == 0) {
                    audio_play_sound(snd_plasma, 10, false);
                    with (instance_create_layer(x, y, "Enemy", enemyProjectile)) {
                 
                        direction = directionToTarget + random_range(-2, 2);
                        image_angle = direction;
                    }
                    shotsFired++;
                    if (shotsFired >= capacity) {
                        cooldownTimer = cooldownDuration;
                    }
                }
        }
    } 
}
}