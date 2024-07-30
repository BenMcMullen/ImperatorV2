with (other) {
	if (global.frigateBridgeExposed && global.selectedShip.secondaryWeapon.damageType != "Ion"){
	hp -= global.selectedShip.primaryWeapon.damage;
	ScreenShake(2,10);
	bridgeHit = true;
	}
}
instance_destroy();