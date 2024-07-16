// Calculate the distance traveled by the plasma bolt
 distanceTraveled = point_distance(startX, startY, x, y);

// Move the plasma bolt (Your existing movement code)

// Destroy the plasma bolt if it has traveled the maximum distance
if (distanceTraveled >= maxDistance) {
    instance_destroy();
}
