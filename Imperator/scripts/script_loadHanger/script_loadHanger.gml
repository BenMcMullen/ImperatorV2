// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// scr_load_next_level

function LoadHanger() {
  
        var currentLevel = global.levels[3];
		SlideTransition(TRANS_MODE.GOTO, currentLevel.room);

    
}
