if (canShield) {
	canShield = false;
	instance_create_layer(x, y, "Player", obj_playerActiveShields);
global.shieldActive = true;
alarm[4] = 480 * global.selectedShip.shields.cooldown;
}