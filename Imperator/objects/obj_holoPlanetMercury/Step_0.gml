if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Update the angle
angle += 0.00046;

// Calculate the new position
x = cx + a * cos(angle);
y = cy + b * sin(angle);
