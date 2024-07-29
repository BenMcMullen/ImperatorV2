if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
/// obj_enemy Collision Event with obj_mapEdge
ionDamage = max(ionDamage - GetEnemyStats(enemyType).ionResistance, 0);

if (instance_exists(obj_player) && ionDamage <=0) {
if (place_meeting(x, y, obj_mapEdge)) {
    var collisionInstance = instance_place(x, y, obj_mapEdge);
    
    // Reverse the movement direction
    hsp = -hsp;
    vsp = -vsp;

    // Adjust the position slightly back from the collision point to prevent sticking
    var collisionAngle = point_direction(x, y, collisionInstance.x, collisionInstance.y);
    x -= lengthdir_x(5, collisionAngle);
    y -= lengthdir_y(5, collisionAngle);

    // Add or subtract a random number between 0 and 4 to vsp and hsp
    vsp += random_range(-4, 4);
    hsp += random_range(-4, 4);

    // Ensure that the combined value of vsp and hsp stays under 20
    var totalSpeed = sqrt(sqr(vsp) + sqr(hsp));
    if (totalSpeed > 20) {
        var ratio = 20 / totalSpeed;
        vsp *= ratio;
        hsp *= ratio;
    }

    // Clamp the position to ensure the enemy stays within the bounds of the room
    var distanceToEdge = 5; // Adjust as needed
    x = clamp(x, distanceToEdge, room_width - distanceToEdge);
    y = clamp(y, distanceToEdge, room_height - distanceToEdge);
}

// Other movement and behavior code goes here...
x += hsp;
y += vsp;

if (hsp != 0) image_xscale = sign(hsp) * size;
if (vsp != 0) image_yscale = sign(vsp) * size;


if (instance_exists(obj_player)) {
// Player and escortShip detection and shooting
var targetX, targetY, targetDistance;

// Determine which target (obj_player or obj_escortShip) is closer
var player = instance_find(obj_player, 0);
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
}
else {
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
}