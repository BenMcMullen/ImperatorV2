function GetLevelHUDInstructions(levelType, levelPhase) {

    // Determine the phase string based on the levelType and levelPhase
    var phaseString;
    
    switch (levelType) {
        case 	"Shield Beacons":
            if (levelPhase == 1) {
                phaseString = "Find and destroy the unshielded shield beacon.";
            } else if (levelPhase == 2) {
                phaseString = "One more beacon to go, lookout for additional sentries.";
            } else if (levelPhase == 3) {
                phaseString = "The factory just deployed all of it's defense sqaudrons!";
            } else if (levelPhase == 4) {
                phaseString = "The factory node is unshielded! Bring it down.";
            }
            break;
            
        case  "Hunting":
            if (levelPhase == 1) {
                phaseString = string(GetCurrentLevel().levelType.quantity - global.killsThisRoom) + " targets remaining on this contract.";
            } else if (levelPhase == 2) {
                phaseString = "Incoming enemy reinforcements detected!";
            } 
            break;
            
        case "Escort Detail":
            if (levelPhase == 1) {
                phaseString = "Escort the passenger ship safely to the warp.";
			}
			 if (levelPhase == 2) {
                phaseString = "Incoming Enemy Sqaudron!";
			}
			 if (levelPhase == 3) {
                phaseString = "Passenger ship is coming under fire!";
			}
            break;
			
		case "Surgical Strike":
            if (levelPhase == 1) {
                phaseString = "Hunt down the primary targets. Careful, these bots are on Hydra protocol.";
			}
			 if (levelPhase == 2) {
                phaseString = string(GetCurrentLevel().levelType.targetQuantity - global.surgicalKillsThisRoom) + " targets remaining!";
			}
            break;
			
            
        default:
            phaseString = "Unknown level type.";
            break;
    }
    
    return phaseString;
}

