if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}

if (launched) {

    image_speed = 1; // Set to your desired animation speed
    image_index += image_speed; // Increment image_index manually
    
    if (image_index >= sprite_get_number(sprite_index)) {
        image_index = 1; // Loop back to the first frame after 0
    }
	
x += lengthdir_x(projectileSpeed, direction);
y += lengthdir_y(projectileSpeed, direction);

}