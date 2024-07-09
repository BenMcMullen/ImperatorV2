if (canCloak) {
	canCloak = false;
global.isCloaked = true;
alarm[0] = global.selectedShip.passives.cloaking;
alarm[1] = 1200 * global.selectedShip.passives.veteranCrew;
}