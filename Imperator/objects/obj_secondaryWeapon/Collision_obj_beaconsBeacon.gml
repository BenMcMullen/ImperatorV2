with (other) {
if (shieldDown == true) {
	hp -= GetWeaponDamage("secondary", true);
	
	flash = 5;
	ScreenShake(2,10);
} else {
	flash = 5;
	ScreenShake(2,10);
}
}
instance_destroy();
