// Initialize beacon state
isActive = false;
destroyed = false;
health = 100; // Example health value

// Reference to the manager object
manager = obj_beacons;
level = GetCurrentLevel();
hp = level.levelType.factoryHp