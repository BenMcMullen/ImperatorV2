function GetMissionBriefs() {
    var currentTreeIndex = global.playerInformation.currentTreeIndex;
    var currentDifficulty = global.playerInformation.difficulty;
    var levels;

    // Select the appropriate level tree based on the current tree index
    switch (currentTreeIndex) {
        case 0:
            levels = global.martianTreeLevels;
            return global.getMartianLevelsByDifficulty(currentDifficulty)
        case 1:
            levels = global.venusianTreeLevels;
               return global.getVenusianLevelsByDifficulty(currentDifficulty);
        case 2:
            levels = global.titanTreeLevels;
               return global.getTitanLevelsByDifficulty(currentDifficulty);
        case 3:
            levels = global.asteroidBeltLevels;
               return global.getAsteroidBeltLevelsByDifficulty(currentDifficulty);
        default:
          
            return briefs;
    }

}

function SelectMission() {
	var levelIndex = argument0;
    var currentTreeIndex = global.playerInformation.currentTreeIndex;
    var currentDifficulty = global.playerInformation.difficulty;

    // These cases HAVE to be in this order, because that is how they are organized 
	// in the playerMissionProgress array.
    switch (currentTreeIndex) {
        case 0:
            global.playerMissionProgress[0].missionLevelIndex = levelIndex;
        case 1:
			global.playerMissionProgress[1].missionLevelIndex = levelIndex;
        case 2:
			global.playerMissionProgress[2].missionLevelIndex = levelIndex;
        case 3:
			global.playerMissionProgress[3].missionLevelIndex = levelIndex;
    }
	
}


function CompleteMission() {
	var treeIndex = global.playerInformation.currentTreeIndex;
	var levelIndex = global.playerMissionProgress[treeIndex].missionLevelIndex;
	var level = global.playerMissionProgress[treeIndex].missionTree[levelIndex];
	
	level.completed = true;
	
	
}
