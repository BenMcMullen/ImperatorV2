if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}


// Adjust the sprite based on the size



// Rotate the asteroid for visual effect
image_angle += rotationSpeed;

// Wrap around the screen if out of bounds
if (x < 0) {
    x = room_width;
}
if (x > room_width) {
    x = 0;
}
if (y < 0) {
    y = room_height;
}
if (y > room_height) {
    y = 0;
}

// obj_asteroid Create Event

// Set a random size between 1 and 3

// Set other properties like speed and rotation speed
x += lengthdir_x(flyingSpeed, direction);
y += lengthdir_y(flyingSpeed, direction);
