// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InitPlayer(){
	
	// Define the LevelConfig struct with missionTree[]
    function PlayerMissionProgress(_missionName,_missionLevelIndex, _missionTree, _missionDifficulty, _unlocked) {
        return {
			missionName: _missionName,
			missionLevelIndex: _missionLevelIndex,
            missionTree: _missionTree,
			missionDifficulty: _missionDifficulty,
			unlocked: _unlocked
			
        };
    }
	
	global.playerMissionProgress = []
	
	global.playerMissionProgress[0] = PlayerMissionProgress("Mars", 0, global.martianTreeLevels, 0, true);
	global.playerMissionProgress[1] = PlayerMissionProgress("Venus", 0, global.venusianTreeLevels, 0, true);
	global.playerMissionProgress[2] = PlayerMissionProgress("Titan", 0, global.titanTreeLevels, 0, true);
	global.playerMissionProgress[3] = PlayerMissionProgress("Asteroid Belt", 0, global.asteroidBeltLevels, 0, false);
			
			
	// Define the struct for playerInformation. in the global scope
global.playerInformation = {
	currentTreeIndex: 0,
    kills: 0,   // Total kills attributed to the player
    rank: 1,        // Player's rank (string representation)
    deaths: 0,
	points: 0,
	achievements: 0
	
};



}