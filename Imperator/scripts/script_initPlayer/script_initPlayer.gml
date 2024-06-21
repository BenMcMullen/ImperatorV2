// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InitPlayer(){
	
	// Define the LevelConfig struct with missionTree[]
    function PlayerMissionProgress(_missionName , _missionLevel, _missionDifficulty) {
        return {
			missionName: _missionName,
            missionLevel: _missionLevel,
			missionDifficulty: _missionDifficulty
			
        };
    }
	
	global.playerMissionProgress = [];
	
	global.playerMissionProgress[0] = PlayerMissionProgress("Mars", global.martianTreeLevels[0], global.difficulties[0]);
	global.playerMissionProgress[0] = PlayerMissionProgress("Venus", global.venusianTreeLevels[0], global.difficulties[0]);
	global.playerMissionProgress[0] = PlayerMissionProgress("Titan", global.titanTreeLevels[0], global.difficulties[0]);
	global.playerMissionProgress[0] = PlayerMissionProgress("Asteroid Belt", global.asteroidBeltLevels[0], global.difficulties[0]);
			
			
	// Define the struct for playerInformation. in the global scope
global.playerInformation = {
	currentMissionTree: 0,
    kills: 0,   // Total kills attributed to the player
    rank: 1,        // Player's rank (string representation)
    deaths: 0,
	points: 0,
	 progress: global.playerMissionProgress,
	 achievements: 0
	
};



}