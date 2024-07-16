// Collision event with player
var enemyDamage = self.damage
var evasionValue = global.selectedShip.passives.evasion;
var evasionProbability = 0.05 + (evasionValue - 1) * (0.80 - 0.05);

if (random(1) < evasionProbability && collision == false) {
    collision = true;
	show_debug_message("missed!")
} else if (collision == false){
	show_debug_message("hit!")
    // Evasion failed, proceed with collision handling
	collision = true;
    with (other) {
        with (obj_zzzHUD) {
            if (global.shieldGeneratorOverloaded) {
               global.selectedShip.hull.hp -= enemyDamage;
			   loseHpScale = 2;
				flash = 5;
			}
			else if (global.shieldActive) {
				show_debug_message(global.shieldActiveCharge)
				global.shieldActiveCharge -= (enemyDamage - global.selectedShip.passives.activeEnergyDispersionUnit)
				show_debug_message(global.shieldActiveCharge)
			}
			else {
				global.selectedShip.hull.hp -= (enemyDamage - global.selectedShip.shields.shieldStaticReduction)
				loseHpScale = 2;
				flash = 3;
			}
			
        }
    }
    instance_destroy();
}
