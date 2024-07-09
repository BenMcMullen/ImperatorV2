if (canAsteroidBreak) {
	canAsteroidBreak = false;
global.asteroidBreaker = true;
alarm[2] = 120;
alarm[3] = 480 * global.selectedShip.passives.veteranCrew;
}