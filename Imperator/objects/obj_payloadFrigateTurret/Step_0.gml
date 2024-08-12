if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Step event of obj_huntingenemy
if (instance_exists(parent_frigate)) {
    // Update the turret's position to match the frigate's position
    x = parent_frigate.x + moveSpeed;
    y = parent_frigate.y;
}
ionDamage = max(ionDamage -10, 0);

if (instance_exists(obj_player) && ionDamage <=0) {
	image_index = 0;
	
	var attackRange = GetCurrentLevel().levelType.detectionRange / global.selectedShip.passives.distortion;
	
	var playerDetectionRange = GetCurrentLevel().levelType.detectionRange / global.selectedShip.passives.distortion; // Detection range
	var asteroidDetectionRange = GetCurrentLevel().levelType.detectionRange;
	
	
    var player = instance_find(obj_player, 0); // Reference to the player object
    var player_x = player.x;
    var player_y = player.y;

    var distToPlayer = point_distance(x, y, player_x, player_y);
	
	var pointToPlayer = point_direction(x, y, player_x, player_y);
	
	
	var asteroid;
    var asteroid_x;
    var asteroid_y;
	var pointToAsteroid;
	var distToasteroid = 16000;
	
	var nearest_asteroid = noone;
	var min_distance = 999999; // Set a large initial value

	if (instance_exists(obj_asteroid)) {
    var asteroid, dist;
    with (obj_asteroid) {
        dist = point_distance(x, y, other.x, other.y);
        if (dist < min_distance) {
            min_distance = dist;
            nearest_asteroid = id;
        }
    }
    
    if (nearest_asteroid != noone) {
        asteroid_x = nearest_asteroid.x;
        asteroid_y = nearest_asteroid.y;
        distToasteroid = min_distance;
		pointToAsteroid = point_direction(x, y, asteroid_x, asteroid_y);
    }
	}
	
	
	if (distToPlayer < distToasteroid && !global.playerCloaked ) {
		
        if (distToPlayer > attackRange) {
		image_angle = pointToPlayer + 270;
		
		
            // ATTACKING LOGIC
            var targetX, targetY, targetDistance;

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


            if (angleToTarget < shootAngle && primaryDelay < 0) {
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
                    with (instance_create_layer(x, y, "Enemy", obj_frigateTurretPlasma)){
                 
                        direction = directionToTarget + random_range(-1, 1);
                        image_angle = direction;
                    }
                    shotsFired++;
                    if (shotsFired >= capacity) {
                        cooldownTimer = cooldownDuration;
                    }
                }
            
        }
	}
    
} } else if (nearest_asteroid != noone){
		
		asteroid = nearest_asteroid;
        if (distToasteroid <= attackRange) {
           	image_angle = pointToAsteroid + 270;
            // ATTACKING LOGIC
            var targetX, targetY, targetDistance;

            var asteroidX = asteroid.x;
            var asteroidY = asteroid.y;
            var distToasteroid = point_distance(x, y, asteroidX, asteroidY);

            
            targetX = asteroidX;
            targetY = asteroidY;
            targetDistance = distToasteroid;
            

            // Calculate direction towards the target
            var directionToTarget = point_direction(x, y, targetX, targetY);
            // Determine if the target is within range and angle to shoot plasma
            var distanceToTarget = distance_to_point(targetX, targetY);
            var angleToTarget = abs(angle_difference(image_angle, directionToTarget));

            primaryDelay -= 1;

             if (angleToTarget < shootAngle && primaryDelay < 0) {
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
                    with (instance_create_layer(x, y, "Enemy", obj_frigateTurretPlasma)){
                 
                        direction = directionToTarget + random_range(-1, 1);
                        image_angle = direction;
                    }
                    shotsFired++;
                    if (shotsFired >= capacity) {
                        cooldownTimer = cooldownDuration;
                    }
                }
            
        }
    } 
}else {
image_index = 1;	
}
