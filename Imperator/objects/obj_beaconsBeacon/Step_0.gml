// Check if the beacon is active and has taken damage
if (shieldDown && hp <= 0) {
    shieldDown = false;
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
