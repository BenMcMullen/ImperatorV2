with (other) {
	if (global.frigateBridgeExposed){
	hp -= global.selectedShip.primaryWeapon.damage;
	ScreenShake(2,10);
	bridgeHit = true;
	}
}
instance_destroy();