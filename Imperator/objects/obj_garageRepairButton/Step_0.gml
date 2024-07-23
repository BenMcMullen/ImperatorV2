if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// You can write your code in this editor

// Step Event
if (delay_timer > 0) {
    delay_timer--;
} else {
    draw_delayed = true;
}

