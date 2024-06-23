function InitLevels() {
    
    function LevelConfigMartian(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType, _difficulty, _completed) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            difficulty: _difficulty,
            completed: _completed
        };
    }
    
    function LevelConfigVenusian(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType, _difficulty, _completed) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            difficulty: _difficulty,
            completed: _completed
        };
    }
    
    function LevelConfigTitan(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType, _difficulty, _completed) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            difficulty: _difficulty,
            completed: _completed
        };
    }
    
    function LevelConfigAsteroidBelt(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType, _difficulty, _completed) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            difficulty: _difficulty,
            completed: _completed
        };
    }
    
    function DifficultyConfig(_id, _difficulty, _hull, _engine, _primaryWeapon, _shields, _sensors) {
        return {
            id: _id,
            difficulty: _difficulty,
            hull: _hull,
            engine: _engine,
            primaryWeapon: _primaryWeapon,
            shields: _shields,
            sensors: _sensors
        };
    }

    // Example of initializing the global difficulties array
    global.difficulties = [];
    // Adding sample difficulties
    global.difficulties[0] = DifficultyConfig(
        1, 
        1, // Easy
        global.hulls[0], 
        global.engines[0], 
        global.primaryWeapons[0], 
        global.shields[0], 
        global.sensors[0]
    );

    global.difficulties[1] = DifficultyConfig(
        2, 
        2, // Medium
        global.hulls[0], 
        global.engines[0], 
        global.primaryWeapons[0], 
        global.shields[0], 
        global.sensors[0]
    );

    global.difficulties[2] = DifficultyConfig(
        3, 
        3, // Hard
        global.hulls[0], 
        global.engines[0], 
        global.primaryWeapons[0], 
        global.shields[0], 
        global.sensors[0]
    );

    global.difficulties[3] = DifficultyConfig(
        4, 
        4, // Expert
        global.hulls[0], 
        global.engines[0], 
        global.primaryWeapons[0], 
        global.shields[0], 
        global.sensors[0]
    );

    global.enemyTypes = [];
    global.enemyTypes[0] = "Rip Wing";
    global.enemyTypes[1] = "Razer Claw";
    global.enemyTypes[2] = "Eminator";

    // Define trees
    global.martianTreeLevels = [];
    global.venusianTreeLevels = [];
    global.titanTreeLevels = [];
    global.asteroidBeltLevels = [];

    // Martian Levels
    global.martianTreeLevels[0] = LevelConfigMartian(8, global.enemyTypes[0], 200, room_1, 2, "levelType", 1, false);
    global.martianTreeLevels[1] = LevelConfigMartian(9, global.enemyTypes[0], 300, room_2, 3, "levelType", 2, false);
    global.martianTreeLevels[2] = LevelConfigMartian(10, global.enemyTypes[0], 500, room_3, 5, "levelType", 3, false);
    global.martianTreeLevels[3] = LevelConfigMartian(11, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, "levelType", 4, false);

    // Venusian Levels
    global.venusianTreeLevels[0] = LevelConfigVenusian(8, global.enemyTypes[0], 200, room_1, 2, "levelType", 1, false);
    global.venusianTreeLevels[1] = LevelConfigVenusian(9, global.enemyTypes[0], 300, room_2, 3, "levelType", 2, false);
    global.venusianTreeLevels[2] = LevelConfigVenusian(10, global.enemyTypes[0], 500, room_3, 5, "levelType", 3, false);
    global.venusianTreeLevels[3] = LevelConfigVenusian(11, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, "levelType", 4, false);

    // Titan Levels
    global.titanTreeLevels[0] = LevelConfigTitan(8, global.enemyTypes[0], 200, room_1, 2, "levelType", 1, false);
    global.titanTreeLevels[1] = LevelConfigTitan(9, global.enemyTypes[0], 300, room_2, 3, "levelType", 2, false);
    global.titanTreeLevels[2] = LevelConfigTitan(10, global.enemyTypes[0], 500, room_3, 5, "levelType", 3, false);
    global.titanTreeLevels[3] = LevelConfigTitan(11, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, "levelType", 4, false);

    // Asteroid Belt Levels
    global.asteroidBeltLevels[0] = LevelConfigAsteroidBelt(8, global.enemyTypes[0], 200, room_1, 2, "levelType", 1, false);
    global.asteroidBeltLevels[1] = LevelConfigAsteroidBelt(9, global.enemyTypes[0], 300, room_2, 3, "levelType", 2, false);
    global.asteroidBeltLevels[2] = LevelConfigAsteroidBelt(10, global.enemyTypes[0], 500, room_3, 5, "levelType", 3, false);
    global.asteroidBeltLevels[3] = LevelConfigAsteroidBelt(11, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, "levelType", 4, false);

    global.contractType = global.enemyTypes[0];
}
