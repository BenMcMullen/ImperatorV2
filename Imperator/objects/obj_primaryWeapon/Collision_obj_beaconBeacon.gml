with (other) {
if (shieldDown == true) {
	hp -= global.selectedShip.primaryWeapon.damage;
	flash = 5;
	ScreenShake(2,10);
} else {
	flash = 5;
	ScreenShake(2,10);
}
}
instance_destroy()
	
