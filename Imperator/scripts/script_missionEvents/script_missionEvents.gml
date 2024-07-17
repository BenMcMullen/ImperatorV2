function GetMissionBriefs() {
    var currentTreeIndex = global.playerInformation.currentTreeIndex;
    var currentDifficulty = global.playerInformation.rank.rank;
    var levels;
    var briefs = [];

    // Select the appropriate level tree based on the current tree index
    switch (currentTreeIndex) {
        case 0:
            levels = global.mercurianLevels;
            break;
        case 1:
            levels = global.venusianTreeLevels;
            break;
        case 2:
            levels = global.earthTreeLevels;
            break;
        case 3:
            levels = global.martianTreeLevels;
            break;
        default:
            return briefs; // Return empty if the tree index is invalid
    }

    // Filter the levels based on the current difficulty
   for (var i = 0; i < array_length(levels); i++) {
        if (levels[i].rank == currentDifficulty) {
            var brief = levels[i];
            brief.parentIndex = i; // Add the parent index to the brief
            briefs[array_length(briefs)] = brief;
        }
    }

    return briefs;
}


function GetPlanetByIndex() {
	var planetIndex = argument0;
    var planet = global.playerMissionProgress[planetIndex];
	
	return planet;
}

function GetCurrentPlanet() {
    // Get the player's current mission progress
    var currentTreeIndex = global.playerInformation.currentTreeIndex;
    var planet = global.playerMissionProgress[currentTreeIndex];
	
	return planet;
}


function SelectMission() {
    var levelIndex = argument0;
    var currentTreeIndex = global.playerInformation.currentTreeIndex;
    var currentMissionProgress = global.playerMissionProgress[currentTreeIndex];
    currentMissionProgress.missionLevelIndex = levelIndex;
}


   
function DestroyShip() {
	global.selectedShip.destroyed = true;
    // Helper function to check and set destroyed if not basic
    function SetDestroyedIfNonBasic(system) {
        if (!system.systemStatus.basic) {
            system.systemStatus.destroyed = true;
        }
    }

    // Check and set destroyed for all systems in the selected ship
    with (global.selectedShip) {
        SetDestroyedIfNonBasic(hull);
        SetDestroyedIfNonBasic(engine);
        SetDestroyedIfNonBasic(shields);
        SetDestroyedIfNonBasic(primaryWeapon);
        SetDestroyedIfNonBasic(secondaryWeapon);
        SetDestroyedIfNonBasic(sensors);
    }
	CheckAndRemoveDestroyedSystems();
}

function CheckAndRemoveDestroyedSystems() {
    // Iterate through each ship in global.playerShips
    for (var i = 0; i < array_length(global.playerShips); i++) {
        var ship = global.playerShips[i];
        
        // Check each system in the ship
        if (ship.hull != noone && ship.hull.systemStatus.destroyed) {
            ship.hull = noone;
        }
        if (ship.engine != noone && ship.engine.systemStatus.destroyed) {
            ship.engine = noone;
        }
        if (ship.primaryWeapon != noone && ship.primaryWeapon.systemStatus.destroyed) {
            ship.primaryWeapon = noone;
        }
        if (ship.secondaryWeapon != noone && ship.secondaryWeapon.systemStatus.destroyed) {
            ship.secondaryWeapon = noone;
        }
        if (ship.shields != noone && ship.shields.systemStatus.destroyed) {
            ship.shields = noone;
        }
        if (ship.sensors != noone && ship.sensors.systemStatus.destroyed) {
            ship.sensors = noone;
        }
        
        // Update the ship in the global array
        global.playerShips[i] = ship;
    }
}

function WeakenNextBeacon() {
    // Deactivate the current active beacon if any
    if (global.activeBeacon != -1) {
        with (global.beaconList[global.activeBeacon]) {
             shieldDown = false;
        }
    }

    // Find a new active beacon
	
   if (array_length(global.beaconList) > 0) {
    // Generate a random index
    var random_index = irandom(array_length(global.beaconList) - 1);
    
    // Isolate the random instance
    var newShieldedBeacon = global.beaconList[random_index];
	newShieldedBeacon.shieldDown = true;
	global.activeBeacon = random_index;
	var enemy = instance_create_layer(x, y, "Beacons", obj_beaconGuardEnemy);
	enemy.beaconIndex = global.activeBeacon;
}
}

function GetWeaponDamage(weaponType, isBeacon) {
    // Get the beacon type from the current level
	level = GetCurrentLevel();
    var beaconType = string(level.levelType.beaconType);
    
    // Get the selected ship's weapon information
    var primaryWeapon = global.selectedShip.primaryWeapon;
    var secondaryWeapon = global.selectedShip.secondaryWeapon;
    
    // Check the weapon type and calculate damage accordingly
    if (weaponType == "primary") {
        if (string(primaryWeapon.damageType) == beaconType && isBeacon) {
            return primaryWeapon.damage * 4;
        } else {
            return primaryWeapon.damage;
        }
    } else if (weaponType == "secondary") {
        if ((string(secondaryWeapon.damageType) == beaconType) & isBeacon) {
            return secondaryWeapon.damage * 4;
        } else {
            return secondaryWeapon.damage;
        }
    } else {
        // Invalid weapon type, return 0 or handle error
        return 0;
    }
}
