
with (other) {
	if (global.selectedShip.secondaryWeapon.damageType != "Ion") {
	hp -= global.selectedShip.secondaryWeapon.damage;
	ScreenShake(2,10);
} 
}

instance_destroy();