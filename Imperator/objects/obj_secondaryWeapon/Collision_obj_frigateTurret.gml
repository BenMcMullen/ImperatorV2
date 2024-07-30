
with (other) {
	if (global.selectedShip.secondaryWeapon.damageType == "Ion") {
	ionDamage = global.selectedShip.secondaryWeapon.damage;
	ScreenShake(2,10);
} 
}

instance_destroy();