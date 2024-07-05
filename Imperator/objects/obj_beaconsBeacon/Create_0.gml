// Initialize beacon state
shieldDown = false;
destroyed = false;

// Reference to the manager object
manager = obj_beacons;
level = GetCurrentLevel();
hp = level.levelType.beaconHp

var enemy = instance_create_layer(x, y, "Enemy", obj_beaconFactoryEnemy);
enemy.enemySpeed = (GetCurrentLevel().levelType.enemySpeed * 2)

// Current instance index
current_instance = 0;

