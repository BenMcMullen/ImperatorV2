if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}

// Step event of obj_huntingenemy
var frigate = instance_find(obj_frigateShip, 0);
x = frigate.x;
y = frigate.y;

if (!priming && !firing) 
{
image_index = 0;	
}
else { image_index = 1; }

if (MetFrigateParticleCannonConditions()) {
    if (beginFiringSequence) {
		beginFiringSequence = false;
		chargingStatus = 1;
        image_index = 1;
        priming = true;
        alarm[1] = 420;
		
    }

    if (instance_exists(obj_player) && instance_exists(obj_frigateAllyFrigate) && priming) {
        var player = instance_find(obj_player, 0); // Reference to the player object
		if (global.frigateParticleCannonWithinRange) {
		player = instance_find(obj_frigateAllyFrigate, 0)	
		}
        var player_x = player.x;
        var player_y = player.y;

        var pointToPlayer = point_direction(x, y, player_x, player_y);
		if (!global.playerCloaked) {
        global.frigateParticleCannonDirection = pointToPlayer + 180;
		}
        image_angle = global.frigateParticleCannonDirection;

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
		if (!global.playerCloaked) {
         global.frigateParticleCannonBeamDirection = directionToTarget;
		}
        

        with (instance_create_layer(x, y, "Enemy", obj_frigateParticleCannonTargetingLaser)) {
			
            direction = global.frigateParticleCannonBeamDirection;
            image_angle = direction;
        }
    }
	
}
if (instance_exists(obj_player) && instance_exists(obj_frigateAllyFrigate) && firing) {
	if (global.frigateParticleCannonWithinRange) {
		
	 var player = instance_find(obj_player, 0); // Reference to the player object
		if (global.frigateParticleCannonWithinRange) {
		player = instance_find(obj_frigateAllyFrigate, 0)	
		}
        var player_x = player.x;
        var player_y = player.y;

        var pointToPlayer = point_direction(x, y, player_x, player_y);
        global.frigateParticleCannonDirection = pointToPlayer + 180;
        image_angle = global.frigateParticleCannonDirection;

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
        global.frigateParticleCannonBeamDirection = directionToTarget;

		audio_play_sound(snd_particleBeam, 10, false);
	  
        with (instance_create_layer(x, y, "Enemy", obj_frigateParticleCannonBeam)) {
			
            direction = global.frigateParticleCannonBeamDirection;
            image_angle = direction;
        }
	
	} else {
	
    image_angle = global.frigateParticleCannonDirection;
    audio_play_sound(snd_particleBeam, 10, false);

    with (instance_create_layer(x, y, "Enemy", obj_frigateParticleCannonBeam)) {
       
	   direction = global.frigateParticleCannonBeamDirection;
        image_angle = direction;
    }
} 
}

