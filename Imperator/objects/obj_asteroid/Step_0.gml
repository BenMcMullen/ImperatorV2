// obj_asteroid Step Event
// Move the asteroid in the direction it's facing
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Rotate the asteroid for visual effect
image_angle += rotation_speed;

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
