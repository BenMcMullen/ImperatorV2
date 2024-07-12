// Collision event with player
var enemyDamage = self.damage
if (random(1) < global.selectedShip.passives.evasion && collision == false) {
    collision = true;
	show_debug_message("missed!")
} else if (collision == false){
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
