// HERE IS WHERE WE HANDLE THE MAJORITY OF OUR LEVELING LOGIC.
// WE SET THE NEXT LEVEL, THE NUMBER OF POINTS EARNED/LOST, THE NEW TYPE OF ENEMIES,
// THE NEW NUMBER OF ENEMIES ETC.

function InitLevels() {
    
    // Define the LevelConfig struct with missionTree[]
    function LevelConfig(_id, _enemyTypes, _levelPoints, _room, _contract, _missionTree) {
        return {
            id: _id,
            enemyTypes: _enemyTypes,
            levelPoints: _levelPoints,
            contract: _contract,
            room: _room,
            missionTree: _missionTree
        };
    }
    
    // Define the MissionTrees struct
    function MissionTrees(_id, _name, _currentLevel, _finalLevel, _completed, _upgradeUnlocks, _difficulty) {
        return {
            id: _id,
            name: _name,
            currentLevel: _currentLevel,
            finalLevel: _finalLevel,
            completed: _completed,
            upgradeUnlocks: _upgradeUnlocks,
            difficulty: _difficulty
        };
    }
    
    // Define the upgradeUnlocks struct
    function UpgradeUnlocks(_id, _name, _upgrade, _missionTree) {
        return {
            id: _id,
            name: _name,
            upgrade: _upgrade,
            missionTree: _missionTree
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

    global.missionTrees = [];
    global.missionTrees[0] = MissionTrees(1, "Mars", 0, 10, false, [], global.difficulties[0]);
    global.missionTrees[1] = MissionTrees(2, "Venus", 0, 10, false, [], global.difficulties[1]);
    global.missionTrees[2] = MissionTrees(3, "Asteroid Belt", 0, 10, false, [], global.difficulties[1]);

    global.levels = [];
    global.levels[0] = LevelConfig(1, [], 0, room_menu, 0, []);
    global.levels[1] = LevelConfig(2, [], 0, room_intro, 0, []);
    global.levels[2] = LevelConfig(3, [], 0, room_shop, 0, []);
    global.levels[3] = LevelConfig(4, [], 0, room_hangar, 0, []);
    global.levels[4] = LevelConfig(5, [], 0, room_garage, 0, []);
    global.levels[5] = LevelConfig(6, [], 0, room_testFlight, 0, []);
    global.levels[6] = LevelConfig(7, [], 0, room_bridge, 0, []);
    global.levels[7] = LevelConfig(8, global.enemyTypes[0], 200, room_1, 2, global.missionTrees[0]);
    global.levels[8] = LevelConfig(9, global.enemyTypes[0], 300, room_2, 3, global.missionTrees[0]);
    global.levels[9] = LevelConfig(10, global.enemyTypes[0], 500, room_3, 5, global.missionTrees[0]);
    global.levels[10] = LevelConfig(11, [global.enemyTypes[0], global.enemyTypes[1]], 800, room_4, 6, [global.missionTrees[0], global.missionTrees[1]]);

    global.contractType = global.enemyTypes[0];
    
    global.upgradeUnlocks = [];
    global.upgradeUnlocks[0] = UpgradeUnlocks(1, global.primaryWeapons[2], global.primaryWeapons[0], [global.missionTrees[0]]);
    global.upgradeUnlocks[1] = UpgradeUnlocks(2, global.hulls[1], global.shields[0], [global.missionTrees[1]]);
    global.upgradeUnlocks[2] = UpgradeUnlocks(3, global.engines[4], global.hulls[0], [global.missionTrees[2]]);
}

