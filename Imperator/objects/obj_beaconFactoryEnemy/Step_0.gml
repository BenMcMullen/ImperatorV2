// Step event of obj_enemy
if (instance_exists(obj_player)) {
	detectionRange = 2000 / global.selectedShip.passives.distortion; // Detection range
	if (global.isCloaked) {
		detectionRange = 0;
	}
    var player = instance_find(obj_player, 0); // Reference to the player object
    var player_x = player.x;
    var player_y = player.y;

    var dist_to_player = point_distance(x, y, player_x, player_y);

    if (dist_to_player < detectionRange) {
		
        if (dist_to_player > attack_range) {
            // Move towards the player
            var enemyDirection = point_direction(x, y, player_x, player_y);
            var move_x = lengthdir_x(other.enemySpeed, enemyDirection);
            var move_y = lengthdir_y(other.enemySpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
        } else {
			if (dist_to_player > 200) {
			  var enemyDirection = point_direction(x, y, player_x, player_y);
            var move_x = lengthdir_x(other.enemySpeed, enemyDirection);
            var move_y = lengthdir_y(other.enemySpeed, enemyDirection);

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

            if (instance_exists(obj_escortShip)) {
                var escort = instance_find(obj_escortShip, 0);
                var escortX = escort.x;
                var escortY = escort.y;
                var distToEscort = point_distance(x, y, escortX, escortY);

                if (distToPlayer < distToEscort) {
                    targetX = playerX;
                    targetY = playerY;
                    targetDistance = distToPlayer;
                } else {
                    targetX = escortX;
                    targetY = escortY;
                    targetDistance = distToEscort;
                }
            } else {
                targetX = playerX;
                targetY = playerY;
                targetDistance = distToPlayer;
            }

            // Calculate direction towards the target
            var directionToTarget = point_direction(x, y, targetX, targetY);
            // Determine if the target is within range and angle to shoot plasma
            var distanceToTarget = distance_to_point(targetX, targetY);
            var angleToTarget = abs(angle_difference(image_angle, directionToTarget));

            primaryDelay -= 1;

            if (distanceToTarget < shootRange && angleToTarget < shootAngle && primaryDelay < 0) {
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
                    with (instance_create_layer(x, y, "Enemy", obj_enemyPlasma)) {
                        speed = 25;
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

        if (dist_to_waypoint < other.enemySpeed) {
            // Move to the next waypoint
            current_waypoint = (current_waypoint + 1) % array_length(waypoints);
        } else {
            // Move towards the current waypoint
            var enemyDirection = point_direction(x, y, target_x, target_y);
            var move_x = lengthdir_x(other.enemySpeed, enemyDirection);
            var move_y = lengthdir_y(other.enemySpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
        }
    }
}
