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
	 function PlayerRank(_title, _rank, _commendationTarget, _rankDifficulty, _rankBadge) {
        return {
			title: _title,
			rank: _rank,
			commendationTarget: _commendationTarget,
			rankDifficulty: _rankDifficulty,
			rankBadge: _rankBadge
			
        };
    }
	
	global.playerMissionProgress = []
	global.playerMissionProgress[0] = PlayerMissionProgress("Mercury", 0, global.mercurianTreeLevels, 0, true);
	global.playerMissionProgress[1] = PlayerMissionProgress("Venus", 0, global.venusianTreeLevels, 0, false);
	global.playerMissionProgress[2] = PlayerMissionProgress("Earth", 0, global.earthTreeLevels, 0, true);
	global.playerMissionProgress[3] = PlayerMissionProgress("Mars", 0, global.martianTreeLevels, 0, true);

			
			
			// Initialize the global array of player ranks
global.playerRanks = [];
			
// Adding player ranks individually
global.playerRanks[0] = PlayerRank("Lieutenant", 1, 21, 1, spr_commendations);
global.playerRanks[1] = PlayerRank("Captain", 2, 25, 1.2, spr_commendations);
global.playerRanks[2] = PlayerRank("Major", 3, 31, 1.4, spr_commendations);
global.playerRanks[3] = PlayerRank("Colonel", 4, 40, 1.7, spr_commendations);
global.playerRanks[4] = PlayerRank("General", 5, 51, 2.1, spr_commendations);
global.playerRanks[5] = PlayerRank("Venator", 6, 60, 2.5, spr_commendations);

			
	// Define the struct for playerInformation. in the global scope
global.playerInformation = {
	currentTreeIndex:3,
    kills: 0,   // Total kills attributed to the player
    rank: global.playerRanks[1],
	commendations: 0,
    deaths: 0,
	points: 500,
	achievements: 0,
	name: "Fuzzalitious"
};

}
