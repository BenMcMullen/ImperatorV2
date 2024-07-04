// Check if the beacon is active and has taken damage
if (shieldDown && hp <= 0) {
    shieldDown = false;
    // Increment the count of destroyed active beacons
    with (manager) {
        beaconsDestroyed++;
        if (beaconsDestroyed >= maxActiveDestructions) {
            // Destroy all beacons if the condition is met
            with (all) {
                if (object_index == obj_beaconsBeacon) {
                    instance_destroy();
                }
            }
        } else {
            // Activate the next beacon
            WeakenNextBeacon();
        }
    }
	var explosion = instance_create_layer(x, y, layer, obj_objectExplosion);
	
    explosion.size = 4;
	audio_play_sound(snd_explosion1,10,false);
	
	
	with (explosion) {
    size = size;
}
	
	instance_destroy();
}
