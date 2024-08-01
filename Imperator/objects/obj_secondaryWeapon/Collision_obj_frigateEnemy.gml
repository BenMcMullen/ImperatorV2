
with (other) {
	if (global.selectedShip.secondaryWeapon.damageType != "Ion") {
	hp -= global.selectedShip.secondaryWeapon.damage;
	flash = 17;
	ScreenShake(2,10);
} else {
	ionDamage = global.selectedShip.secondaryWeapon.damage;
}
}

instance_destroy();