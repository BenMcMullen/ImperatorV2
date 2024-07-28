if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
/// @description Insert description here
// You can write your code in this editor
if (spawn) {
	with (obj_zzzHUD) {
		global.HUDUpdate = true;
		levelPhase = 2;
	}
spawn = false;
alarm[0] = 10;
}