var ship = global.selectedShip;

if (global.playerEngineBoosting) {
	global.playerEngineBoostCharge -= ship.engine.burnup
		show_debug_message("in burnup")
}
else if (global.playerEngineBoostCharge < ship.engine.capacity){
	global.playerEngineBoostCharge += ship.engine.cooldown
	show_debug_message("in cooldown")
}




