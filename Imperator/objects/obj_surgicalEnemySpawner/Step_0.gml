
if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}


if (firstSpawn) {
firstSpawn = false;
alarm[0] = 10;
}

if (spawn) {
spawn = false;
alarm[1] = 10;
}