// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function MissionEnd(){
	var currentLevel = GetCurrentLevel();
if (LevelRequirementsMet()) {
global.playerInformation.points += currentLevel.levelPoints;
global.playerInformation.commendations += currentLevel.commendations;


for (var i = 0; i < array_length(currentLevel.unlocks); i++) {

	if (currentLevel.unlocks[i].systemStatus.unlocked == false) {
		
    currentLevel.unlocks[i].systemStatus.unlocked = true;
	
}


}
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
        
    case "Escort Detail":
        triggerEnd = ProtectionMissionRequirementsMet();
        break;
		
	case "Shield Beacons":
        triggerEnd = BeaconMissionRequirementsMet();
        break;
		
	case "Surgical Strike":
        triggerEnd = SurgicalMissionRequirementsMet();
        break;
		
	case "Frigate Assault":
        triggerEnd = FrigateMissionRequirementsMet();
        break;
    
    default:
        break;
}

return triggerEnd;
}

	function FrigateMissionRequirementsMet(){
		var currentLevel = GetCurrentLevel();
		if (global.frigateBridgeDestroyed) {
	
		return true;
		//go to hangar after each level
		}
		return false;
	}

	function SurgicalMissionRequirementsMet(){
		var currentLevel = GetCurrentLevel();
		var quantity = currentLevel.levelType.targetQuantity;
		if (quantity <= global.surgicalKillsThisRoom) {
	
		return true;
		//go to hangar after each level
		}
		return false;
	}

	function HuntingMissionRequirementsMet(){
		var currentLevel = GetCurrentLevel();
		var quantity = currentLevel.levelType.quantity;
		if (quantity <= global.killsThisRoom) {
	
		return true;
		//go to hangar after each level
		}
		return false;
	}
	
	function ProtectionMissionRequirementsMet(){
		if (global.escortWarpReached == true) {
			return true;	
		}
			return false;
	}
	
	function BeaconMissionRequirementsMet(){
		if (global.beaconFactoryDestroyed == true) {
			return true;	
		}
			return false;
	}
	
	
function CompleteMission() {
    // Get the player's current mission progress
    var currentTreeIndex = global.playerInformation.currentTreeIndex;
    var currentMissionProgress = global.playerMissionProgress[currentTreeIndex];
    var currentLevelIndex = currentMissionProgress.missionLevelIndex;

    // Determine which tree of levels to use based on the current tree index
  
    switch (currentTreeIndex) {
        case 0:
		
            global.mercurianLevels[currentLevelIndex].completed = true;
            break;
        case 1:
             global.venusianTreeLevels[currentLevelIndex].completed = true;
            break;
        case 2:
            global.earthTreeLevels[currentLevelIndex].completed = true;
            break;
        case 3:
            global.martianTreeLevels[currentLevelIndex].completed = true;
            break;
        default:
            return; // Invalid tree index, exit the function
    }
}