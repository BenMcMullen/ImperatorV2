// Calculate the distance traveled by secondary weapons
 distanceTraveled = point_distance(startX, startY, x, y);


// Destroy the projectile if it has traveled the maximum distance
if (distanceTraveled >= global.selectedShip.secondaryWeapon.range) {
    instance_destroy();
}
