if (instance_exists(obj_hangerManager)) {
    with (obj_hangerManager) {
        SlideTransition(TRANS_MODE.GOTO, target);
        global.nextLevel = global.currentLevel;
    }
}


//this is only used at the beginning of the game to send the player to their first battle. 
if (instance_exists(obj_introInstructions) && instance_exists(obj_player)) {
	with (obj_player) {
	//we are now exiting the introinstructions into the real game.
	//so now we set our globals for level progression so that level logic start correctly. 
	 global.hasContract = true;
	 global.contractCompleted = false;
	 global.currentLevel = 5;
	 //back to hanger after this level, which will then lead th
	 global.contractQuantity = 1;
	 global.contractType = global.enemyTypes[0];
	 target = global.levels[5]
	 SlideTransition(TRANS_MODE.GOTO, target);
	}
}
