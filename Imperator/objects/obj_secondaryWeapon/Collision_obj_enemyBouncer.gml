with (other) {
	hp -= global.selectedShip.secondaryWeapon.damage;
	flash = 17;
	ScreenShake(2,10);
}

instance_destroy();