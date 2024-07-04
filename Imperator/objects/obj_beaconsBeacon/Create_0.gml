// Initialize beacon state
shieldDown = false;
destroyed = false;

// Reference to the manager object
manager = obj_beacons;
level = GetCurrentLevel();
hp = level.levelType.beaconHp