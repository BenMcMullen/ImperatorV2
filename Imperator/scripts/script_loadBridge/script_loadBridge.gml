// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// scr_load_next_level

function LoadBridge() {
		global.dataPadOpen = false;
		SlideTransition(TRANS_MODE.GOTO, room_bridge);
}

function LoadBridgeSetPlanet() {
	var planet = argument0;
	global.dataPadOpen = false;
	global.playerInformation.currentTreeIndex = planet;
	SlideTransition(TRANS_MODE.GOTO, room_bridge);
    
}