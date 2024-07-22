if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
if (mouse_check_button_pressed(mb_left)) {
    // Check if the mouse is within the bounds of the overlay
    if (mouse_x > x && mouse_x < x + sprite_width && mouse_y > y && mouse_y < y + sprite_height) {
        // Intercept the click
        show_debug_message("Overlay confirmation clicked");

        // Perform any additional actions, like destroying the overlay
        // instance_destroy();

        // Prevent further processing of the click by exiting
        exit;
    }
}