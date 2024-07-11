// Function to calculate the shortest angle difference
function AngleDifference(angle1, angle2) {
    var diff = (angle2 - angle1) mod 360;
    if (diff > 180) diff -= 360;
    if (diff < -180) diff += 360;
    return diff;
}

// Function to smoothly interpolate between angles
function AngleLerp(angle1, angle2, amount) {
    var shortest_angle = AngleDifference(angle1, angle2);
    return angle1 + shortest_angle * amount;
}
