with (other) {
	hp--;
	flash = 3;
	with (obj_zzzHUD) {
		levelPhase = 3;
		global.HUDUpdate = true;
	}
}

instance_destroy();