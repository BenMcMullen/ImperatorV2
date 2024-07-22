if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// obj_shipSystems Step Event
if (drag) {
    x = mouse_x - initial_x;
    y = mouse_y - initial_y;
}

if (other.systemType != global.garageUpgradingSystem) {
	instance_destroy()
}