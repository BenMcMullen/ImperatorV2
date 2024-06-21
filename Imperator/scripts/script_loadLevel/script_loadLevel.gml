// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// scr_load_next_level

function LoadNextLevel() {
    global.currentLevelIndex++;
    global.totalCompletedContracts ++;
	
    if (global.playerInformation.progress[global.playerInformation.currentMissionTree].missionLevel < array_length(global.playerInformation.progress[global.playerInformation.currentMissionTree])) {
        var currentLevel = global.playerInformation.progress[global.playerInformation.currentMissionTree].missionLevel;
		
		global.contractType = currentLevel.enemyTypes;
        // Example: Set up the level using the currentLevelIndex data
		global.contractQuantity = currentLevel.contract;
        global.enemyTypes = currentLevel.enemyTypes;
        global.levelPoints = currentLevel.levelPoints;
		
        SlideTransition(TRANS_MODE.GOTO, currentLevel.room);
    } else {
        show_debug_message("No more levels.");
    }
}
