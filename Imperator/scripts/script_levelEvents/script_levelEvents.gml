function LoadNextLevel() {
    // Retrieve the current tree and level index
    var treeIndex = global.playerInformation.currentTreeIndex;
    var levelIndex = global.playerMissionProgress[treeIndex].missionLevelIndex;

    // Retrieve the current tree of levels and the current level
    var tree = global.playerMissionProgress[treeIndex].missionTree;

    // Ensure the level index is valid
    if (levelIndex < array_length(tree)) {
        var level = tree[levelIndex];

      

        // Set up global variables for the level
        global.contractQuantity = level.contract;
        global.levelPoints = level.levelPoints;

        // Transition to the room of the current level
        SlideTransition(TRANS_MODE.GOTO, level.room);
    } else {
        show_debug_message("Invalid level index: " + string(levelIndex));
    }
}

function GetCurrentLevel() {  
    // Retrieve the current tree and level index
    var treeIndex = global.playerInformation.currentTreeIndex;
    var levelIndex = global.playerMissionProgress[treeIndex].missionLevelIndex;
    var tree = global.playerMissionProgress[treeIndex].missionTree;
	var level = tree[levelIndex];
	return level;
}

function GetAsteroids(min, max, always) {
	
	var modifier = GetDifficultyRankModifier();
	var minAmount =  min * modifier;
	var maxAmount = max * modifier;
	
	var chance = global.playerInformation.rank.rank;
    // Ensure chance is within the valid range
     if (chance < 0) chance = 0;
    if (chance > 6) chance = 6;
    
    // Randomly decide if asteroids should be created based on the chance
    if (always || irandom(6) <= chance) {
        // Determine the number of asteroids to create
        var numAsteroids = irandom_range(minAmount, maxAmount);
        
        // Get the player's position
        var playerX = obj_player.x;
        var playerY = obj_player.y;
        
        // Loop to create the asteroids
       for (var i = 0; i < numAsteroids; i++) {
            var asteroidX, asteroidY;

                // Generate random positions within the room
                asteroidX = irandom(room_width);
                asteroidY = irandom(room_height);
                
                // Calculate the distance from the player
                var distance = point_distance(playerX, playerY, asteroidX, asteroidY);
                
                // Check if the distance is greater than 500
                if (distance > 500) {
                   // Create the asteroid at the valid position
            instance_create_layer(asteroidX, asteroidY, "Asteroids", obj_asteroid);
                }
            }
    }
	
}

function GetDifficultyRankModifier() {
	var rankDifficulty = global.playerInformation.rank.rankDifficulty;
	var levelDifficulty = GetCurrentLevel().difficulty.difficultyModifier
	return (1*(rankDifficulty * levelDifficulty))
}

function GetCameraStart() {
var currentLevel = GetCurrentLevel();
var levelType = currentLevel.levelType.type;
var coordinates = [];
 
switch (levelType) {
		
    case "Escort Detail":
       return [room_width/2, 500]	
        break;
		
	case "Shield Beacons":
       return [room_width / 2 + 350, room_height/2 + 325]	
        break;

	case "Frigate Assault":
       return [room_width - 500, room_height/2]
        break;
	
    
    default:
        break;
}
 return coordinates;
}

function HasCameraStart() {
var currentLevel = GetCurrentLevel();
var levelType = currentLevel.levelType.type;
var hasCoordinates = false;
switch (levelType) {
    case "Hunting":
        hasCoordinates = false;;
        break;
        
    case "Escort Detail":
        hasCoordinates = true;
        break;
		
	case "Shield Beacons":
	show_debug_message("Here at Beacons is true!")
          hasCoordinates = true;
        break;
		
	case "Surgical Strike":
          hasCoordinates = false;
        break;
			
	case "Frigate Assault":
          hasCoordinates = true;
        break;
    
    default:
        break;
}
return hasCoordinates;
}
	
function MetFrigateParticleCannonConditions() {
	if (global.frigateParticleCannonWithinRange || global.frigateBridgeExposed || global.frigateLaunchersDestroyed >= 2) {
		return true 
		}
		
return false;
}


