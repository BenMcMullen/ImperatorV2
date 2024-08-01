if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Calculate the distance traveled by the plasma bolt
 distanceTraveled = point_distance(startX, startY, x, y);

// Move the plasma bolt (Your existing movement code)
x += lengthdir_x(projectileSpeed, direction);
y += lengthdir_y(projectileSpeed, direction);
// Destroy the Missile if it has traveled the maximum distance
if (global.frigateBridgeExposed) {
maxDistance = maxDistance * 2;	
}
if (distanceTraveled >= maxDistance) {
    instance_destroy();
}
