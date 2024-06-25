// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// scr_load_next_level

function LoadHangar() {
		//Reset variables required for system animations to operate correctly 
		global.garageUpgradingSystem = "";
		global.shopFirstClick = true;
		global.dataPadOpen = false;
		SlideTransition(TRANS_MODE.GOTO, room_hangar);

}
