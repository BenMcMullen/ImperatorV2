var ship = global.selectedShip;
if (global.shieldGeneratorOverloaded && restoring = false) {
	restoring = true
	show_debug_message("Shield restoring")
alarm[0] = ship.shields.overloadRestoreTime;	
show_debug_message( ship.shields.overloadRestoreTime)
}

if (!global.shieldActive && global.shieldActiveCharge < ship.shields.shieldActive) { 
	global.shieldActiveCharge += (ship.shields.restoreRate + ship.passives.enhancedCoolingUnit);
}
if (global.shieldActive) {
	if (global.shieldActiveCharge > global.selectedShip.shields.shieldActive / 5) { //return red sprite if shields below 20%
	image_index = 0;
	}
	else {
	image_index = 1
	}
	if (global.shieldActiveCharge <= 0) {
		
	global.shieldGeneratorOverloaded = true;
	global.shieldActive = false;
	show_debug_message("Shield Overloaded")
	//ADD A SHIELD EXPLOSION ANIMATION/GUI HUD ANIMATION
}
else {
	global.shieldActiveCharge -= (ship.shields.shieldActiveConsume);
}
}
else {
	image_index = 2;
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


