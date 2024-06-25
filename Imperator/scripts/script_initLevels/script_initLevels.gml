function InitLevels() {
    
    function LevelConfigMartian(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType, _difficulty, _completed, _operationName, _sprite) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            difficulty: _difficulty,
            completed: _completed,
            operationName: _operationName,
            sprite: _sprite
        };
    }
    
    function LevelConfigVenusian(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType, _difficulty, _completed, _operationName, _sprite) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            difficulty: _difficulty,
            completed: _completed,
            operationName: _operationName,
            sprite: _sprite
        };
    }
    
    function LevelConfigTitan(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType, _difficulty, _completed, _operationName, _sprite) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            difficulty: _difficulty,
            completed: _completed,
            operationName: _operationName,
            sprite: _sprite
        };
    }
    
    function LevelConfigAsteroidBelt(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType, _difficulty, _completed, _operationName, _sprite) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            difficulty: _difficulty,
            completed: _completed,
            operationName: _operationName,
            sprite: _sprite
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
    global.martianTreeLevels[0] = LevelConfigMartian(1, global.enemyTypes[0], 200, room_1, 2, "levelType", 1, true, "Operation Red Storm", spr_brief);
    global.martianTreeLevels[1] = LevelConfigMartian(2, global.enemyTypes[0], 300, room_2, 3, "levelType", 2, false, "Operation Desert Siege", spr_brief);
    global.martianTreeLevels[2] = LevelConfigMartian(3, global.enemyTypes[0], 500, room_3, 5, "levelType", 3, false, "Operation Iron Fist", spr_brief);
    global.martianTreeLevels[3] = LevelConfigMartian(4, global.enemyTypes[0], 800, room_3, 6, "levelType", 4, false, "Operation Twin Blades", spr_brief);
	global.martianTreeLevels[4] = LevelConfigMartian(5, global.enemyTypes[0], 800, room_3, 6, "levelType", 1, false, "Operation Valkyrie", spr_brief2);
	global.martianTreeLevels[5] = LevelConfigMartian(6, global.enemyTypes[0], 800, room_4, 6, "levelType", 1, false, "Operation BigDaddy", spr_brief3);
	global.martianTreeLevels[6] = LevelConfigMartian(7, global.enemyTypes[0], 800, room_2, 6, "levelType", 1, true, "Operation FuzzyBoi", spr_brief3);

    // Venusian Levels
	 global.venusianTreeLevels[0] = LevelConfigVenusian(7, global.enemyTypes[0], 200, room_1, 2, "levelType", 1, false, "Operation Vortex", spr_brief);
    global.venusianTreeLevels[1] = LevelConfigVenusian(8, global.enemyTypes[0], 200, room_1, 2, "levelType", 1, false, "Operation Vortex", spr_brief);
    global.venusianTreeLevels[2] = LevelConfigVenusian(9, global.enemyTypes[0], 300, room_2, 3, "levelType", 2, false, "Operation Thunderbolt", spr_brief);
    global.venusianTreeLevels[3] = LevelConfigVenusian(10, global.enemyTypes[0], 500, room_3, 5, "levelType", 3, false, "Operation Solar Flare", spr_brief);
    global.venusianTreeLevels[4] = LevelConfigVenusian(11, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, "levelType", 4, false, "Operation Double Helix", spr_brief);

    // Titan Levels
    global.titanTreeLevels[0] = LevelConfigTitan(12, global.enemyTypes[0], 200, room_1, 2, "levelType", 1, false, "Operation Frostbite", spr_brief);
    global.titanTreeLevels[1] = LevelConfigTitan(13, global.enemyTypes[0], 300, room_2, 3, "levelType", 2, false, "Operation Glacier", spr_brief);
    global.titanTreeLevels[2] = LevelConfigTitan(14, global.enemyTypes[0], 500, room_3, 5, "levelType", 3, false, "Operation Blizzard", spr_brief);
    global.titanTreeLevels[3] = LevelConfigTitan(15, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, "levelType", 4, false, "Operation Icebreaker", spr_brief);

    // Asteroid Belt Levels
    global.asteroidBeltLevels[0] = LevelConfigAsteroidBelt(16, global.enemyTypes[0], 200, room_1, 2, "levelType", 1, false, "Operation Starfall", spr_brief);
    global.asteroidBeltLevels[1] = LevelConfigAsteroidBelt(17, global.enemyTypes[0], 300, room_2, 3, "levelType", 2, false, "Operation Meteor", spr_brief);
    global.asteroidBeltLevels[2] = LevelConfigAsteroidBelt(18, global.enemyTypes[0], 500, room_3, 5, "levelType", 3, false, "Operation Comet", spr_brief);
    global.asteroidBeltLevels[3] = LevelConfigAsteroidBelt(19, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, "levelType", 4, false, "Operation Nebula", spr_brief);

    global.contractType = global.enemyTypes[0];
}
