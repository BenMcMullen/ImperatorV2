if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Step event of obj_huntingenemy
if (spawn) {
spawn = false;
alarm[0] = 10;
}



if (instance_exists(obj_player)) {
	var detectionRange = GetCurrentLevel().levelType.detectionRange / global.selectedShip.passives.distortion; // Detection range
	if (global.playerCloaked) {
		detectionRange = 300/ global.selectedShip.passives.distortion;
	}
    var player = instance_find(obj_player, 0); // Reference to the player object
    var player_x = player.x;
    var player_y = player.y;
	
	  var allyFrigate = instance_find(obj_frigateAllyFrigate, 0); // Reference to the player object
    var ally_x = allyFrigate.x;
    var ally_y = allyFrigate.y;

    var distToPlayer = point_distance(x, y, player_x, player_y);

	
	var enemyDirection = point_direction(x, y, player_x, player_y);
  

    if (distToPlayer > detectionRange) {
			var frigateSpeed = GetCurrentLevel().levelType.frigateSpeed;
			if (global.frigateBridgeExposed) {
				frigateSpeed = frigateSpeed *2;
			}
			var enemyDirection = point_direction(x, y, ally_x, ally_y);
            var move_x = lengthdir_x(frigateSpeed, enemyDirection);
            var move_y = lengthdir_y(frigateSpeed, enemyDirection);

            // Update position
            x += move_x;
            y += move_y;
			}
    
}

