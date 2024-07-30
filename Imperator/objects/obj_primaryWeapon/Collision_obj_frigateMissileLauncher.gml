with (other) {
	hp -= global.selectedShip.primaryWeapon.damage;
	ScreenShake(2,10);
}
instance_destroy();