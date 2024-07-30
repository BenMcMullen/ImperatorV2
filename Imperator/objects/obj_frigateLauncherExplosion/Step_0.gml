if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}

if (explosion_timer > 0) {
    explosion_timer--;
}


