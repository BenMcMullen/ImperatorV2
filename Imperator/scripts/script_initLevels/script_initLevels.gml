function InitLevels() {

    function LevelConfigMartian(_levelPoints, _room, _contract, _levelType, _rank, _completed, _operationName, _sprite, _unlocks, _commendations, _difficulty) {
        return {
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

    function LevelConfigVenusian(_levelPoints, _room, _contract, _levelType, _rank, _completed, _operationName, _sprite, _unlocks, _commendations, _difficulty) {
        return {
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

    function LevelConfigEarth(_levelPoints, _room, _contract, _levelType, _rank, _completed, _operationName, _sprite, _unlocks, _commendations, _difficulty) {
        return {
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

    function LevelConfigMercury(_levelPoints, _room, _contract, _levelType, _rank, _completed, _operationName, _sprite, _unlocks, _commendations, _difficulty) {
        return {
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

    function DifficultyConfig(_difficultyLevel, _difficultyModifier) {
        return {
			difficultyLevel: _difficultyLevel,
            difficultyModifier: _difficultyModifier
        };
    }
    
    function HuntLevelTypeConfig(_type, _quantity) {
        return {
            type: _type,
			quantity: _quantity
        };
    }
	
	function FrigateLevelTypeConfig(_type, _frigateSpeed, _turretFireRate, _quantity, _detectionRange, _generatorHp, _huntRange, _particleBeamRange) {
        return {
			type: _type,
            frigateSpeed: _frigateSpeed,
			turretFireRate: _turretFireRate,
			quantity: _quantity,
			detectionRange: _detectionRange,
			generatorHp: _generatorHp,
			huntRange: _huntRange,
			particleBeamRange: _particleBeamRange
        };
    }
	
	
	function SurgicalLevelTypeConfig(_type, _targetQuantity, _hydra, _startingSquadSize) {
        return {
            type: _type,
			targetQuantity: _targetQuantity,
			hydra: _hydra,
			startingSquadSize: _startingSquadSize
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
	
	global.levelTypeFrigate = [];
	
	  global.levelTypeFrigate[0] = FrigateLevelTypeConfig(
        "Frigate Assault",
		3,
		5,
		12,
		2000,
		10,
		3000,
		40000
    );
	  global.levelTypeFrigate[1] = FrigateLevelTypeConfig(
        "Frigate Assault",
		4,
		7,
		16,
		2300,
		600,
		4000,
		6000
    );
	

	global.levelTypeSurgical = [];
	
	  global.levelTypeSurgical[0] = SurgicalLevelTypeConfig(
        "Surgical Strike",
		3,
		3,
		8
    );
	
	 global.levelTypeSurgical[1] = SurgicalLevelTypeConfig(
        "Surgical Strike",
		5,
		3,
		12
    );
	
	 global.levelTypeSurgical[2] = SurgicalLevelTypeConfig(
        "Surgical Strike",
		7,
		4,
		18
    );


    global.levelTypeEscort = [];
	
    global.levelTypeEscort[0] = EscortLevelTypeConfig(
        "Escort Detail",
		150,
		5
    );

    global.levelTypeEscort[1] = EscortLevelTypeConfig(
        "Escort Detail",
		100,
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
		1,
        1
    );

    global.difficulties[1] = DifficultyConfig(
		2,
        1.2
    );
	
	global.difficulties[2] = DifficultyConfig(
		3,
        1.4
    );
	
	global.difficulties[3] = DifficultyConfig(
		4,
        1.8
    );

    global.enemyTypes = [];
    global.enemyTypes[0] = "Hunting Wasp";
	global.enemyTypes[1] = "Hunting Hornet";
	global.enemyTypes[2] = "Beacon Wasp";
	global.enemyTypes[3] = "Beacon Hornet";
	global.enemyTypes[4] = "Escort Wasp";
	global.enemyTypes[5] = "Escort Hornet";
	global.enemyTypes[6] = "Surgical Wasp";
	global.enemyTypes[7] = "Surgical Hornet";
	global.enemyTypes[8] = "Surgical Primary Target";
	global.enemyTypes[9] = "Frigate Wasp";
	global.enemyTypes[10] = "Frigate Hornet";
	

    // Define trees
    global.martianTreeLevels = [];
    global.venusianTreeLevels = [];
    global.earthTreeLevels = [];
    global.mercurianTreeLevels = [];

    // Martian Levels
    global.martianTreeLevels[0] = LevelConfigMartian(300, room_levelFrigate, 3, global.levelTypeFrigate[0], 1, false, "Operation: Desert Siege", spr_brief, noone, 100, global.difficulties[0]);
    global.martianTreeLevels[1] = LevelConfigMartian(201, room_levelHunting, 2, global.levelTypeHunting[0], 1, false, "Operation: Red Storm", spr_brief, noone, 5, global.difficulties[0]);
	global.martianTreeLevels[2] = LevelConfigMartian(500, room_levelBeacons, 5, global.levelTypeBeacon[0], 3, false, "Operation: Iron Fist", spr_brief, noone, 15, global.difficulties[1]);
    global.martianTreeLevels[3] = LevelConfigMartian(800, room_levelHunting, 6, global.levelTypeHunting[1], 4, false, "Operation: Twin Blades", spr_brief, [global.primaryWeapons[3]], 20, global.difficulties[1]);
    global.martianTreeLevels[4] = LevelConfigMartian(800, room_levelEscort, 6, global.levelTypeEscort[0], 1, false, "Operation: Valkyrie", spr_brief2, [global.primaryWeapons[3]], 25, global.difficulties[0]);
    global.martianTreeLevels[5] = LevelConfigMartian(800, room_levelHunting, 6, global.levelTypeHunting[0], 1, false, "Operation: BigDaddy", spr_brief3, [global.primaryWeapons[3]], 30, global.difficulties[0]);
    global.martianTreeLevels[6] = LevelConfigMartian(800, room_levelHunting, 6, global.levelTypeHunting[1], 1, true, "Operation: FuzzyBoi", spr_brief3, [global.primaryWeapons[3]], 35, global.difficulties[0]);

    // Venusian Levels
    global.venusianTreeLevels[0] = LevelConfigVenusian(200, room_levelHunting, 2, global.levelTypeEscort[0], 1, false, "Operation: Vortex", spr_brief, [global.shields[2]], 5, global.difficulties[0]);
    global.venusianTreeLevels[1] = LevelConfigVenusian(200, room_levelHunting, 2, global.levelTypeEscort[1], 1, false, "Operation: Vortex", spr_brief, [global.shields[2]], 10, global.difficulties[0]);
    global.venusianTreeLevels[2] = LevelConfigVenusian(300, room_levelHunting, 3, global.levelTypeHunting[0], 2, false, "Operation: Thunderbolt", spr_brief, [global.shields[2]], 15, global.difficulties[0]);
    global.venusianTreeLevels[3] = LevelConfigVenusian(500, room_levelHunting, 5, global.levelTypeHunting[1], 3, false, "Operation: Solar Flare", spr_brief, [global.shields[2]], 20, global.difficulties[0]);
    

    // Earth Levels
    global.earthTreeLevels[0] = LevelConfigEarth(200, room_levelHunting, 2, global.levelTypeHunting[0], 1, false, "Operation: Frostbite", spr_brief, [global.sensors[2]], 5, global.difficulties[0]);
    global.earthTreeLevels[1] = LevelConfigEarth(300, room_levelHunting, 3, global.levelTypeEscort[1], 2, false, "Operation: Glacier", spr_brief, [global.sensors[2]], 5, global.difficulties[0]);

	// Mercury Levels
	global.mercurianTreeLevels[0] = LevelConfigMercury(200, room_levelHunting, 2, global.levelTypeHunting[0], 1, false, "Operation: Ladon", spr_brief, [global.secondaryWeapons[3]], 5, global.difficulties[0]);
    global.mercurianTreeLevels[1] = LevelConfigMercury(300, room_levelHunting, 3, global.levelTypeEscort[1], 2, false, "Operation: Fear", spr_brief, [global.secondaryWeapons[3]], 5, global.difficulties[0]);


}
