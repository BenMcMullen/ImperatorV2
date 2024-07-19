//collision
with (other) {
	if (global.playerShieldActive) {
		global.selectedShip.hull.hp -= 20;
		global.playerShieldGeneratorOverloaded = true;
		hp = 0;
		ScreenShake(50,25)
	}
	else {
	if (global.selectedShip.hull.hp > global.selectedShip.passives.bumper) {
		global.selectedShip.hull.hp = global.selectedShip.passives.bumper;
		global.playerShieldGeneratorOverloaded = true;
	}
	else {
		global.selectedShip.hull.hp = 0;
	}
	hp = 0;
	ScreenShake(200,100);
	}
}


