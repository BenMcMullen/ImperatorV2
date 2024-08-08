if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Calculate the distance traveled by the plasma bolt
 distanceTraveled = point_distance(startX, startY, x, y);

// Move the plasma bolt (Your existing movement code)
x += lengthdir_x(projectileSpeed, direction);
y += lengthdir_y(projectileSpeed, direction);

var player = instance_find(obj_player, 0);

var spawner = instance_find(obj_payloadParticleCannonSpawner, 0);
if (player != noone) {
    if (point_distance(x, y, player.x, player.y) <= 2000) {
	    spawner.playSound = true;
        }
		
		 if (point_distance(x, y, player.x, player.y) <= 1200) {
         ScreenShake(20,10)
        }
    }