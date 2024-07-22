if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
var ship = global.selectedShip;
if (global.playerShieldGeneratorOverloaded && !restoring) {
	restoring = true
	show_debug_message("Shield restoring")
alarm[0] = ship.shields.overloadRestoreTime;	
}

if (!global.playerShieldActive && global.playerShieldActiveCharge < ship.shields.shieldActive) { 
	global.playerShieldActiveCharge += (ship.shields.restoreRate + ship.passives.enhancedCoolingUnit);
}
if (global.playerShieldActive) {
	if (global.playerShieldActiveCharge > global.selectedShip.shields.shieldActive / 5) { //return red sprite if shields below 20%
	spriteFrame = 0;
	}
	else {
	spriteFrame = 1
	}
	if (global.playerShieldActiveCharge <= 0) {
		
	global.playerShieldGeneratorOverloaded = true;
	global.playerShieldActive = false;
	show_debug_message("Shield Overloaded")
	//ADD A SHIELD EXPLOSION ANIMATION/GUI HUD ANIMATION
}
else {
	global.playerShieldActiveCharge -= (ship.shields.shieldActiveConsume);
}
}
else {
	spriteFrame = 2;
}
// Follow the player object
if (instance_exists(obj_player)) {
    var player = instance_find(obj_player, 0);
    x = player.x;
    y = player.y;
    image_angle = player.image_angle;
    image_xscale = player.image_xscale;
    image_yscale = player.image_yscale;
}


