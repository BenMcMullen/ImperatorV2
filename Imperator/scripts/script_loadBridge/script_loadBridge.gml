// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// scr_load_next_level

function LoadBridge() {
  
        var currentLevel = global.levels[6];
		SlideTransition(TRANS_MODE.GOTO, currentLevel.room);

    
}
