// Collision Event with obj_primaryWeapon
with (other) {
if (!global.beaconFactoryImmune) {
	hp -= GetWeaponDamage("primary", false);
	flash = 5;
	ScreenShake(2,10);
} else {
	flash = 5;
	ScreenShake(2,10);
}
}
instance_destroy();


