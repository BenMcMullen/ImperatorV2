//collision
with (other) {
	if (global.playerShieldActive) {
		ScreenShake(50,25)
		hp = 0;
	}
	else {
	if (global.selectedShip.hull.hp > global.selectedShip.passives.bumper) {
		global.selectedShip.hull.hp = global.selectedShip.passives.bumper;
		ScreenShake(200,100);
	}
	else {
		global.selectedShip.hull.hp = 0;
	}
	hp = 0;
	}
}


