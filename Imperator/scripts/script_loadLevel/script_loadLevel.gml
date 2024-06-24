function LoadNextLevel() {
    // Retrieve the current tree and level index
    var treeIndex = global.playerInformation.currentTreeIndex;
    var levelIndex = global.playerMissionProgress[treeIndex].missionLevelIndex;

    // Retrieve the current tree of levels and the current level
    var tree = global.playerMissionProgress[treeIndex].missionTree;

    // Ensure the level index is valid
    if (levelIndex < array_length(tree)) {
        var level = tree[levelIndex];

        // Log debug messages for troubleshooting
        show_debug_message("Tree Length: " + string(array_length(tree)));
        show_debug_message("Current Level Index: " + string(levelIndex));
        show_debug_message("Loading Room: " + string(level.room));

        // Set up global variables for the level
        global.contractType = level.enemyTypes;
        global.contractQuantity = level.contract;
        global.enemyTypes = level.enemyTypes;
        global.levelPoints = level.levelPoints;

        // Transition to the room of the current level
        SlideTransition(TRANS_MODE.GOTO, level.room);
    } else {
        show_debug_message("Invalid level index: " + string(levelIndex));
    }
}
