// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// scr_load_next_level

function LoadNextLevel() {
    global.currentLevelIndex++;
    global.totalCompletedContracts ++;
	
    if (global.currentLevelIndex < array_length(global.levels)) {
        var currentLevel = global.levels[global.currentLevelIndex];
		
		global.contractType = currentLevel.enemyTypes;
        // Example: Set up the level using the currentLevelIndex data
        global.numEnemies = currentLevel.numEnemies;
        global.enemyTypes = currentLevel.enemyTypes;
        global.levelPoints = currentLevel.levelPoints;

        room_goto(currentLevel.room);
    } else {
        show_debug_message("No more levels.");
    }
}
