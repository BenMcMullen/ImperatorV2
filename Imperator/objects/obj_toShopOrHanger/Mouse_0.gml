if (instance_exists(obj_shop) || instance_exists(obj_hangerManager)) {
    with (obj_shop) {
		//if player is in the shop, they can go back to their hanger.
		target = global.levels[3];
        SlideTransition(TRANS_MODE.GOTO,target);
        global.nextLevel = global.currentLevel;
    }
    with (obj_hangerManager) {
		//if player is in their hanger, they can go back to the shop.
		target = global.levels[2];
        SlideTransition(TRANS_MODE.GOTO, target);
        global.nextLevel = global.currentLevel;
    }
}
