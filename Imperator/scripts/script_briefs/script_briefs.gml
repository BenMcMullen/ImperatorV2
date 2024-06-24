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
    var currentMissionProgress = global.playerMissionProgress[currentTreeIndex];

    // Determine which tree of levels to use based on the current tree index
    var levelTree;
    switch (currentTreeIndex) {
        case 0:
            levelTree = global.martianTreeLevels;
            break;
        case 1:
            levelTree = global.venusianTreeLevels;
            break;
        case 2:
            levelTree = global.titanTreeLevels;
            break;
        case 3:
            levelTree = global.asteroidBeltLevels;
            break;
        default:
            show_message("Error: Invalid tree index.");
            return; // Exit the function if the tree index is invalid
    }

    // Check if the provided level index is within valid range
    if (levelIndex >= 0 && levelIndex < array_length(levelTree)) {
        // Update the missionLevelIndex to the new level index
        currentMissionProgress.missionLevelIndex = levelIndex;
    } else {
        show_message("Error: Invalid level index.");
    }
}




function CompleteMission() {
    // Get the player's current mission progress
    var currentTreeIndex = global.playerInformation.currentTreeIndex;
    var currentMissionProgress = global.playerMissionProgress[currentTreeIndex];
    var currentLevelIndex = currentMissionProgress.missionLevelIndex;

    // Determine which tree of levels to use based on the current tree index
    var levelTree;
    switch (currentTreeIndex) {
        case 0:
            levelTree = global.martianTreeLevels;
            break;
        case 1:
            levelTree = global.venusianTreeLevels;
            break;
        case 2:
            levelTree = global.titanTreeLevels;
            break;
        case 3:
            levelTree = global.asteroidBeltLevels;
            break;
        default:
            return; // Invalid tree index, exit the function
    }

    // Set the completed attribute of the current level to true
    if (currentLevelIndex >= 0 && currentLevelIndex < array_length(levelTree)) {
		show_debug_message(string(levelTree[currentLevelIndex].completed) + "before")
        levelTree[currentLevelIndex].completed = true;
		show_debug_message(string(levelTree[currentLevelIndex].completed) + "after")
    } else {
        show_message("Error: Invalid level index.");
    }
}

