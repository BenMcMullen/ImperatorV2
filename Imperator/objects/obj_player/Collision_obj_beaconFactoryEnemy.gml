//collision
with (other) {
	if (global.asteroidBreaker && other.hp <= global.selectedShip.hull.hp) {
		ScreenShake(50,25)
		global.selectedShip.hull.hp -= hp * global.selectedShip.passives.asteroidBreaker;
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


