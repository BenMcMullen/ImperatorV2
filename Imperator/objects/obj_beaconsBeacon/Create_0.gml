// Initialize beacon state
shieldDown = false;
destroyed = false;

// Reference to the manager object
manager = obj_beacons;
level = GetCurrentLevel();
hp = level.levelType.beaconHp

instance_create_layer(x, y, "Enemy", obj_beaconFactoryEnemy);

// Current instance index
current_instance = 0;

