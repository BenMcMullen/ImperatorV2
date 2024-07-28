with (other) {
	hp--;
	flash = 3;
	with (obj_zzzHUD) {
		global.HUDUpdate = true;
		levelPhase = 3;
	}
}

instance_destroy();