// Step Event of obj_beaconsFactory


if (global.beaconsOverloaded >= GetCurrentLevel().levelType.quantity){
global.beaconFactoryImmune = false;
}

if (hp <= 0)
{
	global.beaconFactoryDestroyed = true
	var explosion = instance_create_layer(x, y, layer, obj_objectExplosion);
	
    explosion.size = 8;
	audio_play_sound(snd_explosion1,10,false);
	
	
	with (explosion) {
    size = size;
}
	
	instance_destroy();
}