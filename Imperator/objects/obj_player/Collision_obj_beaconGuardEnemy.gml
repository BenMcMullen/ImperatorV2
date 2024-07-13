//collision
with (other) {
	if (global.shieldActive) {
		global.selectedShip.hull.hp -= 20;
		global.shieldGeneratorOverloaded = true;
		hp = 0;
		ScreenShake(50,25)
	}
	else {
	if (global.selectedShip.hull.hp > global.selectedShip.passives.bumper) {
		global.selectedShip.hull.hp = global.selectedShip.passives.bumper;
		global.shieldGeneratorOverloaded = true;
	}
	else {
		global.selectedShip.hull.hp = 0;
	}
	hp = 0;
	ScreenShake(200,100);
	}
}


