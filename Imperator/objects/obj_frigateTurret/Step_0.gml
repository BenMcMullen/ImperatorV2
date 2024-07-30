if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Step event of obj_huntingenemy

 var frigate = instance_find(obj_frigateShip, 0);
x = frigate.x + turretX;
y = frigate.y + turretY;

ionDamage = max(ionDamage -10, 0);

if (instance_exists(obj_player) && ionDamage <=0) {
	image_index = 0;
	var attackRange = GetCurrentLevel().levelType.detectionRange / global.selectedShip.passives.distortion;
	if (global.frigateBridgeExposed) {
		attackRange = attackRange * 2;
	}
	if (global.playerCloaked) {
		attackRange = 300/ global.selectedShip.passives.distortion;
	}
    var player = instance_find(obj_player, 0); // Reference to the player object
    var player_x = player.x;
    var player_y = player.y;

    var distToPlayer = point_distance(x, y, player_x, player_y);
	

	var pointToPlayer = point_direction(x, y, player_x, player_y);
	
	
    if (distToPlayer < attackRange) {
		image_angle = pointToPlayer + 270;
		
		
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
image_index = 1;	
}
