with (other) {
	if (global.selectedShip.secondaryWeapon.damageType != "Ion") {
if (shieldDown == true) {
		hp -= global.selectedShip.secondaryWeapon.damage;
	flash = 5;
	ScreenShake(2,10);
} else {
	flash = 5;
	ScreenShake(2,10);
}
}
}
instance_destroy();



with (other) {
	if (global.selectedShip.secondaryWeapon.damageType != "Ion") {
	hp -= global.selectedShip.secondaryWeapon.damage;
	flash = 17;
	ScreenShake(2,10);
}
}

instance_destroy();