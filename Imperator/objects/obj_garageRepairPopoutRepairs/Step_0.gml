if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}

if (global.desiredRepairs == 0) {
	repairSprite = spr_garageRepairPopoutCancelRepairs
}
else {
	repairSprite = spr_garageRepairPopoutMakeRepairs
}

