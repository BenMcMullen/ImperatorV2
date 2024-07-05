// Initialize beacon state
shieldDown = false;
destroyed = false;

// Reference to the manager object
manager = obj_beacons;
level = GetCurrentLevel();
hp = level.levelType.beaconHp

var explosion = instance_create_layer(x, y, layer, obj_objectExplosion);
	
    explosion.size = 8;
	audio_play_sound(snd_explosion1,10,false);
	
	
	with (explosion) {
    size = size;
}


// Current instance index
current_instance = 0;

