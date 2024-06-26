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
	 function PlayerRank(_title, _rank, _commendationTarget) {
        return {
			title: _title,
			rank: _rank,
			commendationTarget: _commendationTarget,
			
        };
    }
	
	global.playerMissionProgress = []
	
	global.playerMissionProgress[0] = PlayerMissionProgress("Mars", 0, global.martianTreeLevels, 0, true);
	global.playerMissionProgress[1] = PlayerMissionProgress("Venus", 0, global.venusianTreeLevels, 0, true);
	global.playerMissionProgress[2] = PlayerMissionProgress("Titan", 0, global.titanTreeLevels, 0, true);
	global.playerMissionProgress[3] = PlayerMissionProgress("Asteroid Belt", 0, global.asteroidBeltLevels, 0, false);
			
			
			// Initialize the global array of player ranks
global.playerRanks = [];
			
// Adding player ranks individually
global.playerRanks[0] = PlayerRank("Lieutenant", 1, 21);
global.playerRanks[1] = PlayerRank("Captain", 2, 25);
global.playerRanks[2] = PlayerRank("Major", 3, 31);
global.playerRanks[3] = PlayerRank("Colonel", 4, 40);
global.playerRanks[4] = PlayerRank("General", 5, 51);
global.playerRanks[5] = PlayerRank("Venator", 6, 60);

			
	// Define the struct for playerInformation. in the global scope
global.playerInformation = {
	currentTreeIndex: 0,
    kills: 0,   // Total kills attributed to the player
    rank: global.playerRanks[0],
	commendations: 0,
    deaths: 0,
	points: 10000,
	achievements: 0,
	name: "Fuzzalitious"
};

}
