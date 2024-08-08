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
    current_waypoint = 0;

    initialized = true;
}

ionDamage = max(ionDamage - GetEnemyStats(enemyType).ionResistance, 0);

if (instance_exists(obj_player) && initialized && ionDamage <= 0) {
    var detectionRange = GetEnemyStats(enemyType).detectionRange / global.selectedShip.passives.distortion; // Detection range
    if (global.playerCloaked) {
        detectionRange = 0;
    }
    var player = instance_find(obj_player, 0); // Reference to the player object
    var player_x = player.x;
    var player_y = player.y;
    var distToPlayer = point_distance(x, y, player_x, player_y);

    var frigate = instance_find(obj_frigateShip, 0);
    var frigate_x = frigate.x;
    var frigate_y = frigate.y;
    var distToFrigate = point_distance(x, y, frigate_x, frigate_y);
    var maxHuntRange = GetCurrentLevel().levelType.huntRange;
    var maxChaseDistance = maxHuntRange + attackRange;

    if (distToFrigate > maxHuntRange - 100 || distToPlayer > maxChaseDistance) {
        // If within 100 units of maxHuntRange or beyond maxChaseDistance, go back to patrolling waypoints
        waypoints = [];
        for (var i = 0; i < 100; i++) {
            var angle = i * (360 / 100); // Angle in degrees
            var rad = degtorad(angle); // Convert to radians
            var xCoor = frigate.x + cos(rad) * 700;
            var yCoor = frigate.y + sin(rad) * 1500;
            array_push(waypoints, [xCoor, yCoor]);
        }

        // Patrol between waypoints
        var target_x = waypoints[current_waypoint][0];
        var target_y = waypoints[current_waypoint][1];
        var dist_to_waypoint = point_distance(x, y, target_x, target_y);

        if (dist_to_waypoint < enemySpeed) {
            // Choose a new random waypoint
            current_waypoint = irandom(99);
        } else {
            // Move towards the current waypoint
            var enemyDirection = point_direction(x, y, target_x, target_y);
            var move_x = lengthdir_x(enemySpeed, enemyDirection);
            var move_y = lengthdir_y(enemySpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
        }

    } else if (distToPlayer < detectionRange && distToFrigate <= maxHuntRange) {
        // If player is within detection range and not too far from the frigate
        if (distToPlayer > attackRange) {
            // Move towards the player
            var enemyDirection = point_direction(x, y, player_x, player_y);
            var move_x = lengthdir_x(enemySpeed, enemyDirection);
            var move_y = lengthdir_y(enemySpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
        } else {
			
            if (distToPlayer < followDistance) {
                // Move away from the player to maintain distance
                var enemyDirection = point_direction(player_x, player_y, x, y); // Direction away from the player
                var move_x = lengthdir_x(enemySpeed, enemyDirection);
                var move_y = lengthdir_y(enemySpeed, enemyDirection);

                // Update position
                x += move_x;
                y += move_y;
            } else if (distToPlayer > followDistance + 10) {
                var enemyDirection = point_direction(x, y, player_x, player_y);
                var move_x = lengthdir_x(enemySpeed, enemyDirection);
                var move_y = lengthdir_y(enemySpeed, enemyDirection);

                // Update position
                x += move_x;
                y += move_y;
            }

            // ATTACKING LOGIC
            var targetX = player_x;
            var targetY = player_y;
            var targetDistance = distToPlayer;

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
    } else {
        // Patrol between waypoints when not in detection range or out of attack range
        waypoints = [];
        for (var i = 0; i < 100; i++) {
            var angle = i * (360 / 100); // Angle in degrees
            var rad = degtorad(angle); // Convert to radians
            var xCoor = frigate.x + cos(rad) * 700;
            var yCoor = frigate.y + sin(rad) * 1500;
            array_push(waypoints, [xCoor, yCoor]);
        }

        // Patrol between waypoints
        var target_x = waypoints[current_waypoint][0];
        var target_y = waypoints[current_waypoint][1];
        var dist_to_waypoint = point_distance(x, y, target_x, target_y);

        if (dist_to_waypoint < enemySpeed) {
            // Choose a new random waypoint
            current_waypoint = irandom(99);
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
