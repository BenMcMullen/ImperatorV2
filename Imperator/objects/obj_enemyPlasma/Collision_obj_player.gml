with (other) {

	with (obj_gameController)
	if (global.selectedShip.shields.shieldStatic > 0) 
	{
		loseShieldsScale = 2;
		global.selectedShip.shields.shieldStatic --;
		flash = 3;
	}
	else {
	loseHpScale = 2;
	global.selectedShip.hull.hp --;
	flash = 3;
	}
}

instance_destroy();