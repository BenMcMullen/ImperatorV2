// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetRemainingCommendations(){
	var commendationTarget = global.playerInformation.rank.commendationTarget;
	var playerCommendations = global.playerInformation.commendations;
	var remainingCommendations = commendationTarget - playerCommendations;

	return remainingCommendations;
}

function UpgradePlayerRank() {
    // Find the current rank index in the playerRanks array
    var currentRankIndex = -1;
    for (var i = 0; i < array_length(global.playerRanks); i++) {
        if (global.playerRanks[i].rank == global.playerInformation.rank.rank) {
            currentRankIndex = i;
            break;
        }
    }
    
    // If current rank is found and there is a next rank
    if (currentRankIndex != -1 && currentRankIndex < array_length(global.playerRanks) - 1) {
        // Upgrade to the next rank
        global.playerInformation.rank = global.playerRanks[currentRankIndex + 1];
		global.playerInformation.commendations = 0;
        show_debug_message("Player rank upgraded to " + global.playerInformation.rank.title);
    } else {
        show_debug_message("Player is already Venator.");
    }
}

function GetPlayerRankTitle() {
    // Return the current rank title from playerInformation
    return global.playerInformation.rank.title;
}
