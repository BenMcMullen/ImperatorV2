
with (other) {
if (!global.beaconFactoryImmune) {
	hp -= GetWeaponDamage("secondary", false);
	flash = 5;
	ScreenShake(2,10);
} 
}
instance_destroy();
	


