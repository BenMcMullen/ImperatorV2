if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
var ship = global.selectedShip;

if (global.playerEngineBoosting) {
	global.playerEngineBoostCharge -= ship.engine.burnup
		
}
else if (global.playerEngineBoostCharge < ship.engine.capacity){
	global.playerEngineBoostCharge += ship.engine.cooldown
}




