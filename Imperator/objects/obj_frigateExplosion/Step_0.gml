if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}

if (global.frigateBridgeDestroyed) {
sprite = spr_enemyFrigateBridgeExplosion;
}
else {
sprite = spr_enemyFrigateExplosion;	
}

if (explosion_timer > 0) {
    explosion_timer--;
}


