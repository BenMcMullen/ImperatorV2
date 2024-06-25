function GetMissionBriefs() {
    var currentTreeIndex = global.playerInformation.currentTreeIndex;
    var currentDifficulty = global.playerInformation.rank;
    var levels;
    var briefs = [];

    // Select the appropriate level tree based on the current tree index
    switch (currentTreeIndex) {
        case 0:
            levels = global.martianTreeLevels;
            break;
        case 1:
            levels = global.venusianTreeLevels;
            break;
        case 2:
            levels = global.titanTreeLevels;
            break;
        case 3:
            levels = global.asteroidBeltLevels;
            break;
        default:
            return briefs; // Return empty if the tree index is invalid
    }

    // Filter the levels based on the current difficulty
   for (var i = 0; i < array_length(levels); i++) {
        if (levels[i].difficulty.difficulty == currentDifficulty) {
            var brief = levels[i];
            brief.parentIndex = i; // Add the parent index to the brief
            briefs[array_length(briefs)] = brief;
        }
    }

    return briefs;
}


function SelectMission() {
    var levelIndex = argument0;
    var currentTreeIndex = global.playerInformation.currentTreeIndex;
    var currentMissionProgress = global.playerMissionProgress[currentTreeIndex];
    currentMissionProgress.missionLevelIndex = levelIndex;
}




function CompleteMission() {
    // Get the player's current mission progress
    var currentTreeIndex = global.playerInformation.currentTreeIndex;
    var currentMissionProgress = global.playerMissionProgress[currentTreeIndex];
    var currentLevelIndex = currentMissionProgress.missionLevelIndex;

    // Determine which tree of levels to use based on the current tree index
  
    switch (currentTreeIndex) {
        case 0:
		
            global.martianTreeLevels[currentLevelIndex].completed = true;
            break;
        case 1:
             global.venusianTreeLevels[currentLevelIndex].completed = true;
            break;
        case 2:
            global.titanTreeLevels[currentLevelIndex].completed = true;
            break;
        case 3:
            global.asteroidBeltLevels[currentLevelIndex].completed = true;
            break;
        default:
            return; // Invalid tree index, exit the function
    }
}
   

