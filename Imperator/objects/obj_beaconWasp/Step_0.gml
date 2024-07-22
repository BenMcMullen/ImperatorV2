if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Step event of obj_enemy
if (instance_exists(obj_player)) {
	var detectionRange = GetEnemyStats(enemy).detectionRange / global.selectedShip.passives.distortion; // Detection range
	if (global.playerCloaked) {
		detectionRange = 0;
	}
    var player = instance_find(obj_player, 0); // Reference to the player object
    var player_x = player.x;
    var player_y = player.y;

    var distToPlayer = point_distance(x, y, player_x, player_y);

    if (distToPlayer < detectionRange) {
		
        if (distToPlayer > attackRange) {
            // Move towards the player
            var enemyDirection = point_direction(x, y, player_x, player_y);
            var move_x = lengthdir_x(enemySpeed, enemyDirection);
            var move_y = lengthdir_y(enemySpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
        } else {
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
                    with (instance_create_layer(x, y, "Enemy", obj_enemyWaspPlasma)) {
                 
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
    } else {
        // Patrol between waypoints
        var target_x = waypoints[current_waypoint][0];
        var target_y = waypoints[current_waypoint][1];
        var dist_to_waypoint = point_distance(x, y, target_x, target_y);

        if (dist_to_waypoint < enemySpeed) {
            // Move to the next waypoint
            current_waypoint = (current_waypoint + 1) % array_length(waypoints);
        } else {
            // Move towards the current waypoint
            var enemyDirection = point_direction(x, y, target_x, target_y);
            var move_x = lengthdir_x(enemySpeed, enemyDirection);
            var move_y = lengthdir_y(enemySpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
        }
    }
}
