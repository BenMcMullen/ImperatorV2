// Collision event with player
if (activated) { 
var enemyDamage = self.damage
var enemyIonDamage = self.ionDamage
if (self.mineTypeIon) {
	  with (other) {
      ionDamageTaken += enemyIonDamage / global.selectedShip.passives.ionShielding;
	  }
}

else {

    with (other) {
        with (obj_zzzHUD) {
            if (global.playerShieldGeneratorOverloaded) {
               global.selectedShip.hull.hp -= enemyDamage;
			   loseHpScale = 2;
				flash = 5;
			}
			else if (global.playerShieldActive) {
				global.playerShieldActiveCharge -= (enemyDamage - global.selectedShip.passives.activeEnergyDispersionUnit)
				loseHpScale = 2;
				flash = 3;
			}
			else {
				global.selectedShip.hull.hp -= (enemyDamage - global.selectedShip.shields.shieldStaticReduction)
				loseHpScale = 2;
				flash = 3;
			}
			
        }
    }
}

	ScreenShake(25,12)
	instance_create_layer(x,y,"Enemy", obj_frigateExplosion)
    
	audio_play_sound(snd_explosion1,10,false);
    instance_destroy();
}
