if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
/// @description Insert description here
// You can write your code in this editor
if (spawn) {
	with (obj_zzzHUD) {
		levelPhase = 2;
	}
	alarm [1] = 120;
spawn = false;
alarm[0] = 10;
}