if (canCloak) {
	canCloak = false;
global.playerCloaked = true;
alarm[0] = global.selectedShip.passives.cloaking;
alarm[1] = 1200 / global.selectedShip.passives.veteranCrew;
}