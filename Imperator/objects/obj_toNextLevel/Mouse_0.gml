if (instance_exists(obj_shop) || instance_exists(obj_hangerManager)) {
    with (obj_shop) {
        SlideTransition(TRANS_MODE.GOTO, other.target);
        global.nextLevel = global.currentLevel;
    }
    with (obj_hangerManager) {
        SlideTransition(TRANS_MODE.GOTO, other.target);
        global.nextLevel = global.currentLevel;
    }
}