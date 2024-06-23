

function LoadNextLevel() {
	
	var treeIndex = global.playerInformation.currentTreeIndex;
	var levelIndex = global.playerMissionProgress[treeIndex].missionLevelIndex;
	var level = global.playerMissionProgress[treeIndex].missionTree[levelIndex];
	var tree = global.playerMissionProgress[treeIndex].missionTree;
	show_debug_message(array_length(tree))
	show_debug_message(levelIndex)
    if (levelIndex < array_length(tree)) {
		global.contractType = level.enemyTypes;
        // Example: Set up the level using the currentLevelIndex data
		global.contractQuantity = level.contract;
        global.enemyTypes = level.enemyTypes;
        global.levelPoints = level.levelPoints;
		
        SlideTransition(TRANS_MODE.GOTO, level.room);
    } else {
		show_debug_message(tree)
    }
}
