// Collision event with player
var enemyDamage = self.damage
var evasionValue = global.selectedShip.passives.evasion;
var evasionProbability = 0.05 + (evasionValue - 1) * (0.80 - 0.05);

if (random(1) < evasionProbability && collision == false) {
    collision = true;
} else if (collision == false){
    // Evasion failed, proceed with collision handling
	collision = true;
    with (other) {
        with (obj_zzzHUD) {
            if (global.playerShieldGeneratorOverloaded) {
               global.selectedShip.hull.hp -= enemyDamage;
			   loseHpScale = 2;
				flash = 5;
			}
			else if (global.playerShieldActive) {
				global.playerShieldActiveCharge -= (enemyDamage - global.selectedShip.passives.activeEnergyDispersionUnit)
				
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
