if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Step event of obj_enemy
// Create event of obj_enemy
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
	
	if (global.playerCloaked) {
		playerDetectionRange = 0;
	}
	
    var player = instance_find(obj_player, 0); // Reference to the player object
    var playerX = player.x;
    var playerY = player.y;
	var distToPlayer = point_distance(x, y, playerX, playerY);
	
	var escort = instance_find(obj_escort, 0); // Reference to the escort object
	var escortX = escort.x;
    var escortY = escort.y;
	var distToEscort = point_distance(x, y, escortX, escortY);
    
	
	var distToTarget;
	var targetDetectionRange;
	var targetX;
	var targetY;
	
	if ((distToEscort < distToPlayer) || global.playerCloaked) {
		targetX = escortX;
		targetY = escortY;
		distToTarget = distToEscort;
		targetDetectionRange = escortDetectionRange
	} else {
		targetX = playerX;
		targetY = playerY;
		distToTarget = distToPlayer;
		targetDetectionRange = playerDetectionRange;
	}

    if (distToTarget < targetDetectionRange) {
		
        if (distToTarget > attackRange) {
            // Move towards the player
            var enemyDirection = point_direction(x, y, targetX, targetY);
            var move_x = lengthdir_x(enemySpeed, enemyDirection);
            var move_y = lengthdir_y(enemySpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
        } else {
			if (distToTarget > 200) {
			  var enemyDirection = point_direction(x, y, targetX, targetY);
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
            var distToPlayer = point_distance(x, y, targetX, targetY);

            if (instance_exists(obj_escortShip)) {
                var escort = instance_find(obj_escortShip, 0);
                var escortX = escort.x;
                var escortY = escort.y;
                var distToEscort = point_distance(x, y, escortX, escortY);

                if (distToPlayer < distToEscort) {
                    targetX = targetX;
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
    } 
	if (hp <= 0){
	var explosion = instance_create_layer(x, y, layer, obj_explosion);
	
    explosion.size = size;
	audio_play_sound(snd_explosion1,10,false);
	
	
	with (explosion) {
    size = size;
}
	
	instance_destroy();
	if (instance_exists(obj_player)) 
	{
	global.playerInformation.kills++;
	global.killsThisRoom++;
	with (obj_zzzHUD) killTextScale = 2;
	}
}

}
