// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MissionEnd(){
	var currentLevel = GetCurrentLevel();
if (LevelRequirementsMet()) {
global.playerInformation.points += currentLevel.levelPoints;
global.playerInformation.commendations += currentLevel.commendations;
show_debug_message("Mission End here")
CompleteMission();
LoadBridge();
}

}

	



function LevelRequirementsMet(){
var currentLevel = GetCurrentLevel();
var levelType = currentLevel.levelType.type;
var triggerEnd = false;
switch (levelType) {
    case "Hunting":
        triggerEnd = HuntingMissionRequirementsMet();
        break;
        
    case "Protection Detail":
        triggerEnd = ProtectionMissionRequirementsMet();
        break;
    
    default:
        show_debug_message("Unknown level type: " + levelType);
        break;
}

return triggerEnd;
}

	function HuntingMissionRequirementsMet(){
		var currentLevel = GetCurrentLevel();
		var quantity = currentLevel.levelType.quantity;
		if (quantity <= global.killsThisRoom) {
	
		return true;
		//go to hangar after each level
		} else {
		return false;
		}
	}
	
	function ProtectionMissionRequirementsMet(){
	}
	
	
function CompleteMission() {
    // Get the player's current mission progress
    var currentTreeIndex = global.playerInformation.currentTreeIndex;
    var currentMissionProgress = global.playerMissionProgress[currentTreeIndex];
    var currentLevelIndex = currentMissionProgress.missionLevelIndex;

    // Determine which tree of levels to use based on the current tree index
  
    switch (currentTreeIndex) {
        case 0:
		
            global.martianTreeLevels[currentLevelIndex].completed = true;
            break;
        case 1:
             global.venusianTreeLevels[currentLevelIndex].completed = true;
            break;
        case 2:
            global.earthTreeLevels[currentLevelIndex].completed = true;
            break;
        case 3:
            global.mercurianLevels[currentLevelIndex].completed = true;
            break;
        default:
            return; // Invalid tree index, exit the function
    }
}