if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// Check if the beacon is active and has taken damage
if (initialDeployment) {
	initialDeployment = false;
enemy = instance_create_layer(x, y, "Beacons", obj_beaconHornet);
enemy.beaconIndex = other.beaconIndex;

}



if (shieldDown && hp <= 0) {
    shieldDown = false;
	hp = level.levelType.beaconHp
	alarm[0] = 10;
    // Increment the count of destroyed active beacons
   with (manager){
	   global.beaconsOverloaded++;
            // Activate the next beacon
            WeakenNextBeacon();
   }
      
}

if (!global.beaconFactoryImmune) {
	var explosion = instance_create_layer(x, y, layer, obj_objectExplosion);
	
    explosion.size = 8;
	audio_play_sound(snd_explosion1,10,false);
	
	
	with (explosion) {
    size = size;
}
	instance_destroy()
}
