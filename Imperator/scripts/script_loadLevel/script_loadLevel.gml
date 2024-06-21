

function GetIndex () {
var target_value = global.playerInformation.currentMission.missionLevel;
var target_index = -1; // Default to -1 in case the value is not found

// Loop through the array to find the index of target_value
for (var i = 0; i < array_length(target_value); i++) {
    if (target_value[i] == target_value) {
        target_index = i;
        break;
    }
	return target_index;
}	
}

function LoadNextLevel() {
	
	var index = global.playerInformation.currentMissionIndex;
	
    if (index < array_length(global.playerInformation.currentMission)) {
        var missionCurrentLevel = global.playerInformation.currentMission[index].missionLevel;
		global.contractType = missionCurrentLevel.enemyTypes;
        // Example: Set up the level using the currentLevelIndex data
		global.contractQuantity = missionCurrentLevel.contract;
        global.enemyTypes = missionCurrentLevel.enemyTypes;
        global.levelPoints = missionCurrentLevel.levelPoints;
		
        SlideTransition(TRANS_MODE.GOTO, missionCurrentLevel.room);
    } else {
		
        show_debug_message(GetIndex());
		show_debug_message(missionTreeSize);
    }
}
