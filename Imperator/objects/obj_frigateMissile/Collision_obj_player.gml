// Collision event with player
var enemyDamage = self.damage
var evasionValue = global.selectedShip.passives.evasion;
var evasionProbability = 0.05 + (evasionValue - 1) * (0.80 - 0.05);

if (collision == false){
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

	ScreenShake(25,12)
	instance_create_layer(x,y,"Enemy", obj_frigateExplosion)
    
	audio_play_sound(snd_explosion1,10,false);
	
	
	
    instance_destroy();
}
