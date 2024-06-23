// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetMissionBriefs(){
	var briefs = [];
	var levels = global.playerMissionProgress[global.playerInformation.currentTreeIndex].missionTree
	 for (var i = 0; i < levels; i++) {
		  var level = levels[i];
		 if (level.difficulty = global.playerInformation.difficulty) {
			 briefs.add()
		 }
		 show_debug_message("Outside difficulty")
	 }

}