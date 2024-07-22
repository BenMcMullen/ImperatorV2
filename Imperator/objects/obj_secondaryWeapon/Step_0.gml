if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Calculate the distance traveled by secondary weapons
 distanceTraveled = point_distance(startX, startY, x, y);

x += lengthdir_x(projectileSpeed, direction);
y += lengthdir_y(projectileSpeed, direction);


// Destroy the projectile if it has traveled the maximum distance
if (distanceTraveled >= global.selectedShip.secondaryWeapon.range) {
    instance_destroy();
}
