function InitLevels() {

    function LevelConfigMartian(_enemyTypes, _levelPoints, _room, _contract, _levelType, _rank, _completed, _operationName, _sprite, _unlocks, _commendations, _difficulty) {
        return {
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            rank: _rank,
            completed: _completed,
            operationName: _operationName,
            sprite: _sprite,
            unlocks: _unlocks,
            commendations: _commendations,
            difficulty: _difficulty
        };
    }

    function LevelConfigVenusian(_enemyTypes, _levelPoints, _room, _contract, _levelType, _rank, _completed, _operationName, _sprite, _unlocks, _commendations, _difficulty) {
        return {
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            rank: _rank,
            completed: _completed,
            operationName: _operationName,
            sprite: _sprite,
            unlocks: _unlocks,
            commendations: _commendations,
            difficulty: _difficulty
        };
    }

    function LevelConfigEarth(_enemyTypes, _levelPoints, _room, _contract, _levelType, _rank, _completed, _operationName, _sprite, _unlocks, _commendations, _difficulty) {
        return {
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            rank: _rank,
            completed: _completed,
            operationName: _operationName,
            sprite: _sprite,
            unlocks: _unlocks,
            commendations: _commendations,
            difficulty: _difficulty
        };
    }

    function LevelConfigMercury(_enemyTypes, _levelPoints, _room, _contract, _levelType, _rank, _completed, _operationName, _sprite, _unlocks, _commendations, _difficulty) {
        return {
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
            rank: _rank,
            completed: _completed,
            operationName: _operationName,
            sprite: _sprite,
            unlocks: _unlocks,
            commendations: _commendations,
            difficulty: _difficulty
        };
    }

    function DifficultyConfig(_difficultyModifier) {
        return {
            difficultyModifier: _difficultyModifier
        };
    }
    
    function HuntLevelTypeConfig(_type, _quantity) {
        return {
            type: _type,
			quantity: _quantity
        };
    }

    function EscortLevelTypeConfig(_type, _damageCap, _escortSpeed) {
        return {
            type: _type,
			damageCap: _damageCap,
			escortSpeed: _escortSpeed,
        };
    }
	
	function BeaconLevelTypeConfig(_type, _quantity, _beaconType, _beaconHp, _factoryHp,  _factoryResponseQuantity) {
        return {
            type: _type,
			quantity: _quantity,
			beaconType: _beaconType,
			beaconHp: _beaconHp,
			factoryHp: _factoryHp,
			factoryResponseQuantity: _factoryResponseQuantity
        };
    }

    global.levelTypeEscort = [];
	
    global.levelTypeEscort[0] = EscortLevelTypeConfig(
        "Escort Detail",
		15,
		5
    );

    global.levelTypeEscort[1] = EscortLevelTypeConfig(
        "Escort Detail",
		20,
		8
    );
	
   
    global.levelTypeHunting = [];
	
    global.levelTypeHunting[0] = HuntLevelTypeConfig(
        "Hunting",
		15
    );

    global.levelTypeHunting[1] = HuntLevelTypeConfig(
         "Hunting",
		25
    );
   
   
    global.levelTypeBeacon = [];
	
    global.levelTypeBeacon[0] = BeaconLevelTypeConfig(
        "Shield Beacons",
		2,
		"Kinetic",
		100,
		500,
		10
		
    );

    global.levelTypeBeacon[1] = BeaconLevelTypeConfig(
        "Shield Beacons",
		6,
		"Kinetic",
		200,
		700,
		20
    );
	
	
    // Example of initializing the global difficulties array
    global.difficulties = [];
    // Adding sample difficulties
    global.difficulties[0] = DifficultyConfig(
        1
    );

    global.difficulties[1] = DifficultyConfig(
        1.2
    );
	
	global.difficulties[2] = DifficultyConfig(
        1.4
    );
	
	global.difficulties[3] = DifficultyConfig(
        1.8
    );

    global.enemyTypes = [];
    global.enemyTypes[0] = "Hunting Wasp";
	global.enemyTypes[1] = "Factory Wasp";
    global.enemyTypes[2] = "Hunting Hornet";
    global.enemyTypes[3] = "Eminator";
	global.enemyTypes[4] = "Beacon Guard Hornet";

    // Define trees
    global.martianTreeLevels = [];
    global.venusianTreeLevels = [];
    global.earthTreeLevels = [];
    global.mercurianTreeLevels = [];

    // Martian Levels
    global.martianTreeLevels[0] = LevelConfigMartian(global.enemyTypes[0], 300, room_hunt1, 3, global.levelTypeHunting[0], 1, false, "Operation: Desert Siege", spr_brief, [global.primaryWeapons[2]], 10, global.difficulties[1]);
    global.martianTreeLevels[1] = LevelConfigMartian(global.enemyTypes[0], 201, room_beacons1, 2, global.levelTypeHunting[0], 1, false, "Operation: Red Storm", spr_brief, [], 5, global.difficulties[0]);
	global.martianTreeLevels[2] = LevelConfigMartian(global.enemyTypes[0], 500, room_hunt1, 5, global.levelTypeHunting[0], 3, false, "Operation: Iron Fist", spr_brief, [global.primaryWeapons[3]], 15, global.difficulties[1]);
    global.martianTreeLevels[3] = LevelConfigMartian(global.enemyTypes[0], 800, room_hunt1, 6, global.levelTypeHunting[1], 4, false, "Operation: Twin Blades", spr_brief, [global.primaryWeapons[3]], 20, global.difficulties[1]);
    global.martianTreeLevels[4] = LevelConfigMartian(global.enemyTypes[0], 800, room_escort1, 6, global.levelTypeEscort[0], 1, false, "Operation: Valkyrie", spr_brief2, [global.primaryWeapons[3]], 25, global.difficulties[0]);
    global.martianTreeLevels[5] = LevelConfigMartian(global.enemyTypes[0], 800, room_hunt1, 6, global.levelTypeHunting[0], 1, false, "Operation: BigDaddy", spr_brief3, [global.primaryWeapons[3]], 30, global.difficulties[0]);
    global.martianTreeLevels[6] = LevelConfigMartian(global.enemyTypes[0], 800, room_hunt1, 6, global.levelTypeHunting[1], 1, true, "Operation: FuzzyBoi", spr_brief3, [global.primaryWeapons[3]], 35, global.difficulties[0]);

    // Venusian Levels
    global.venusianTreeLevels[0] = LevelConfigVenusian(global.enemyTypes[0], 200, room_hunt1, 2, global.levelTypeEscort[0], 1, false, "Operation: Vortex", spr_brief, [global.shields[2]], 5, global.difficulties[0]);
    global.venusianTreeLevels[1] = LevelConfigVenusian(global.enemyTypes[0], 200, room_hunt1, 2, global.levelTypeEscort[1], 1, false, "Operation: Vortex", spr_brief, [global.shields[2]], 10, global.difficulties[0]);
    global.venusianTreeLevels[2] = LevelConfigVenusian(global.enemyTypes[0], 300, room_hunt1, 3, global.levelTypeHunting[0], 2, false, "Operation: Thunderbolt", spr_brief, [global.shields[2]], 15, global.difficulties[0]);
    global.venusianTreeLevels[3] = LevelConfigVenusian(global.enemyTypes[0], 500, room_hunt1, 5, global.levelTypeHunting[1], 3, false, "Operation: Solar Flare", spr_brief, [global.shields[2]], 20, global.difficulties[0]);
    

    // Earth Levels
    global.earthTreeLevels[0] = LevelConfigEarth(global.enemyTypes[0], 200, room_hunt1, 2, global.levelTypeHunting[0], 1, false, "Operation: Frostbite", spr_brief, [global.sensors[2]], 5, global.difficulties[0]);
    global.earthTreeLevels[1] = LevelConfigEarth(global.enemyTypes[0], 300, room_hunt1, 3, global.levelTypeEscort[1], 2, false, "Operation: Glacier", spr_brief, [global.sensors[2]], 5, global.difficulties[0]);

	// Mercury Levels
	global.mercurianTreeLevels[0] = LevelConfigMercury(global.enemyTypes[0], 200, room_hunt1, 2, global.levelTypeHunting[0], 1, false, "Operation: Ladon", spr_brief, [global.secondaryWeapons[3]], 5, global.difficulties[0]);
    global.mercurianTreeLevels[1] = LevelConfigMercury(global.enemyTypes[0], 300, room_hunt1, 3, global.levelTypeEscort[1], 2, false, "Operation: Fear", spr_brief, [global.secondaryWeapons[3]], 5, global.difficulties[0]);


}
