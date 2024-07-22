if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// SO BY THE NATURE OF STEP EVENTS/CREATE EVENTS, I CAN'T JUST CONSTANTLY SET THE SPRITE TO BE THE
// DEFAULT SPRITE WHEN ALLSYSTEMINSTALLED IS TRUE, BECAUSE THEN THE HOER MECHANICS BREAK
// BECAUSE THE CREATE STEP WAS OVERRIDDEN. WHAT THIS DOES IT RESETS IT ONCE ONCE ITS SET TO INSTALLED
// BECAUSE YOU CAN'T COMPLETELY UNINSTALL A SYSTEM.

if (AllSystemsInstalled() == true && readyToGo == false) {
	sprite_index = spr_btnBattle;
image_index = 0;
image_speed = 0;
readyToGo = true;
}