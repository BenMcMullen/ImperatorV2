if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
if (delay_timer > 0) {
    delay_timer--;
} else {
    draw_delayed = true;
}
