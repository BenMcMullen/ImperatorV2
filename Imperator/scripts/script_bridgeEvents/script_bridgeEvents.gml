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
		
		var rankUp = instance_create_layer(x, y, "Imperator", obj_bridgeRankUp)
		rankUp.messageText = GetRankUpText();
		rankUp.rankBadge = global.playerInformation.rank.rankBadge
        show_debug_message("Player rank upgraded to " + global.playerInformation.rank.title);
    } else {
        show_debug_message("Player is already Venator.");
    }
}

function GetPlayerRankTitle() {
    // Return the current rank title from playerInformation
    return global.playerInformation.rank.title;
}


function UnlockShip() {
	if (global.playerInformation.rank.rank == 2 && !global.playerShips[2].isOwned) {
		var unlock = instance_create_layer(x, y, "Imperator", obj_bridgeUnlocks)
		unlock.messageText = GetUnlockShipText(global.playerShips[2]);
		unlock.shipSprite = global.playerShips[2].sprites.spriteGarage
		UnlockAllSystems(global.playerShips[2]);
	}
	else if (global.playerInformation.rank.rank == 3 && !global.playerInformationShips[1].isOwned) {
	var unlock instance_create_layer(x, y, "Imperator", obj_bridgeUnlocks)
	unlock.messageText = GetUnlockShipText(global.playerShips[1]);
	unlock.shipSprite = global.playerShips[1].sprites.spriteGarage
	UnlockAllSystems(global.playerShips[2]);
	}
}

function GetUnlockShipText() {
	ship = argument0;
	return ("Congratulations " + global.playerInformation.rank.title + " " + global.playerInformation.name + "! You have unlocked the " 
	+ ship.shipClass + " class ship, the '" + ship.shipName + "'!")
	
}

function GetRankUpText() {
	return ("Congratulations " + global.playerInformation.name + "! You have been promoted to the rank of " 
	+ global.playerInformation.rank.title + "!" + "You will need " + 
	string(global.playerInformation.rank.commendationTarget) + " more commendations before your next promotion.") 
	
}

function UnlockAllSystems() {
	playerShip = argument0;
	playerShip.isOwned = true;
    // Check and unlock primaryWeapon
    if (variable_instance_exists(playerShip, "primaryWeapon") && playerShip.primaryWeapon != noone) {
        playerShip.primaryWeapon.systemStatus.isOwned = true;
        playerShip.primaryWeapon.systemStatus.unlocked = true;
    }

    // Check and unlock secondaryWeapon
    if (variable_instance_exists(playerShip, "secondaryWeapon") && playerShip.secondaryWeapon != noone) {
        playerShip.secondaryWeapon.systemStatus.isOwned = true;
        playerShip.secondaryWeapon.systemStatus.unlocked = true;
    }

    // Check and unlock hull
    if (variable_instance_exists(playerShip, "hull") && playerShip.hull != noone) {
        playerShip.hull.systemStatus.isOwned = true;
        playerShip.hull.systemStatus.unlocked = true;
    }

    // Check and unlock engine
    if (variable_instance_exists(playerShip, "engine") && playerShip.engine != noone) {
        playerShip.engine.systemStatus.isOwned = true;
        playerShip.engine.systemStatus.unlocked = true;
    }

    // Check and unlock sensors
    if (variable_instance_exists(playerShip, "sensors") && playerShip.sensors != noone) {
        playerShip.sensors.systemStatus.isOwned = true;
        playerShip.sensors.systemStatus.unlocked = true;
    }

    // Check and unlock shields
    if (variable_instance_exists(playerShip, "shields") && playerShip.shields != noone) {
        playerShip.shields.systemStatus.isOwned = true;
        playerShip.shields.systemStatus.unlocked = true;
   // Randomize passives based on ship class
    var shipClass = playerShip.shipClass;
    var validPassives = [];
    
    // Gather valid passives for the ship class
    for (var i = 0; i < array_length(global.passives); i++) {
        if (global.passives[i].class == shipClass) {
            array_push(validPassives, global.passives[i]);
        }
    }

    // Randomly select a passive from the valid passives
    if (array_length(validPassives) > 0) {
        var randomIndex = irandom(array_length(validPassives) - 1);
        playerShip.passives = validPassives[randomIndex];
    } else {
        show_debug_message("No valid passives found for ship class: " + shipClass);
    }
}

}