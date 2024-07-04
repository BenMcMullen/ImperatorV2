// Step Event of obj_beaconsFactory

// Check the number of active beacons

with (obj_beacons) {
	if (obj_beacons.beaconsOverloaded <= obj_beacons.maxBeaconOverloads)
	global.beaconFactoryImmune = false;
}

// If no active beacons remain, remove immunity

if (GetCurrentLevel().levelType.factoryHp <= 0)
{
	var explosion = instance_create_layer(x, y, layer, obj_objectExplosion);
	
    explosion.size = size;
	audio_play_sound(snd_explosion1,10,false);
	
	
	with (explosion) {
    size = size;
}
	
	instance_destroy();
}