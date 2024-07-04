with (other) {
	if (other.shieldDown) {
	hp -= GetWeaponDamage("secondary", true);
	}
	flash = 17;
	ScreenShake(2,10);
}

instance_destroy();