// HERE IS WHERE WE HANDLE THE MAJORITY OF OUR LEVELING LOGIC.
// WE SET THE NEXT LEVEL, THE NUMBER OF POINTS EARNED/LOST, THE NEW TYPE OF ENEMIES,
// THE NEW NUMBER OF ENEMIES ETC.

function InitLevels() {
    
    
    function LevelConfigMartian(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
			
        };
    }
	
	function LevelConfigVenusian(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
			
        };
    }
	
	function LevelConfigTitan(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
			
        };
    }
	
	function LevelConfigAsteroidBelt(_id, _enemyTypes, _levelPoints, _room, _contract, _levelType) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            levelType: _levelType,
			
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
    "Easy", 
    global.hulls[0], 
    global.engines[0], 
    global.primaryWeapons[0], 
    global.shields[0], 
    global.sensors[0]
);

global.difficulties[1] = DifficultyConfig(
    2, 
    "Medium", 
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

	//Define trees
	global.martianTreeLevels = [];
	global.venusianTreeLevels = [];
	global.titanTreeLevels = [];
	global.asteroidBeltLevels = [];
	
   
    global.martianTreeLevels[0] = LevelConfigMartian(8, global.enemyTypes[0], 200, room_1, 2, "levelType");
    global.martianTreeLevels[1] = LevelConfigMartian(9, global.enemyTypes[0], 300, room_2, 3, "levelType");
    global.martianTreeLevels[2] = LevelConfigMartian(10, global.enemyTypes[0], 500, room_3, 5, "levelType");
    global.martianTreeLevels[3] = LevelConfigMartian(11, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, "levelType");


    global.venusianTreeLevels[0] = LevelConfigVenusian(8, global.enemyTypes[0], 200, room_1, 2, "levelType");
    global.venusianTreeLevels[1] = LevelConfigVenusian(9, global.enemyTypes[0], 300, room_2, 3, "levelType");
    global.venusianTreeLevels[2] = LevelConfigVenusian(10, global.enemyTypes[0], 500, room_3, 5, "levelType");
    global.venusianTreeLevels[3] = LevelConfigVenusian(11, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, "levelType");

	
    global.titanTreeLevels[0] = LevelConfigTitan(8, global.enemyTypes[0], 200, room_1, 2, "levelType");
    global.titanTreeLevels[1] = LevelConfigTitan(9, global.enemyTypes[0], 300, room_2, 3, "levelType");
    global.titanTreeLevels[2] = LevelConfigTitan(10, global.enemyTypes[0], 500, room_3, 5, "levelType");
    global.titanTreeLevels[3] = LevelConfigTitan(11, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, "levelType");

	
    global.asteroidBeltLevels[0] = LevelConfigAsteroidBelt(8, global.enemyTypes[0], 200, room_1, 2, "levelType");
    global.asteroidBeltLevels[1] = LevelConfigAsteroidBelt(9, global.enemyTypes[0], 300, room_2, 3, "levelType");
    global.asteroidBeltLevels[2] = LevelConfigAsteroidBelt(10, global.enemyTypes[0], 500, room_3, 5, "levelType");
    global.asteroidBeltLevels[3] = LevelConfigAsteroidBelt(11, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, "levelType");




    global.contractType = global.enemyTypes[0];
  
}

