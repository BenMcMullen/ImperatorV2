if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}


// If not locked on, check for player detection
if (!lockedOn && instance_exists(obj_player)) {
    var detectionRange = 500 / global.selectedShip.passives.distortion; // Detection range
    if (global.playerCloaked) {
        detectionRange = 0;
    }
    var player = instance_find(obj_player, 0); // Reference to the player object
    var player_x = player.x;
    var player_y = player.y;

    var distToPlayer = point_distance(x, y, player_x, player_y);
    if (distToPlayer <= detectionRange) {
        lockedOn = true;
        // Start the animation from the first frame
        image_index = 0;
        image_speed = 1; // Set this to the desired animation speed
    }
}

// If locked on, move towards the player
if (instance_exists(obj_player) && lockedOn) {
    if (!activated) {
        // If the animation is completed
        if (image_index == sprite_get_number(sprite_index) - 1) {
			audio_play_sound(snd_mineActivated,10,false);
            activated = true;
        }
    } else { 
		image_index = 7
		if (mineTypeIon) {
        image_index = 8}
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
} else {
    // If not locked on, keep the sprite on frame 0
    image_index = 0;
    image_speed = 0;
}
