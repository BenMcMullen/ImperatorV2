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
		
    case "asteroid Detail":
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
        
    case "asteroid Detail":
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


function asteroidMovement(){
    // Define the speed of the asteroid ship

  var asteroidDirection = point_direction(x, y, finalDestinationX, finalDestinationY);
var distance = point_distance(x, y, finalDestinationX, finalDestinationY);

// Move towards the final destination if the distance is greater than the speed
if (distance > asteroidSpeed) {
    x = finalDestinationX;
    y += lengthdir_y(asteroidSpeed, asteroidDirection);
} else {
    // Snap to the final destination if within speed range
    x = finalDestinationX;
    y = finalDestinationY;
}

}

function SpawnPayloadParticleCannons() {

		
	var numberOfCannons = global.playerInformation.rank.rank + 2;
	
	

	  for (var i = 0; i <= numberOfCannons; i++) {
		var cannonXCoord = irandom_range(500, room_width - 500);
		 instance_create_layer(cannonXCoord, y, "Enemy", obj_payloadParticleCannon)
}
}


function SpawnPayloadObstacles(num_asteroids, num_frigates) {
    // Define the grid dimensions
    var grid_width = room_width / 10;
    var grid_height = (room_height - 1000) / 10; // Exclude top and bottom 500 units

    // Arrays to track used grid squares and x-axes for frigates
    var used_grid_squares = [];
    var used_frigate_x_axes = [];

    // Function to generate a grid position
    function generate_grid_position() {
        var grid_x = irandom(9);
        var grid_y = irandom(9);
        return [grid_x, grid_y];
    }

    // Spawn asteroids
    for (var i = 0; i < num_asteroids; i++) {
        var pos;
        var valid_position = false;

        repeat (100) { // Limit the number of attempts to avoid infinite loops
            pos = generate_grid_position();
            if (!array_exists(used_grid_squares, pos)) {
                valid_position = true;
                break;
            }
        }

        if (valid_position) {
            array_push(used_grid_squares, pos);

            var spawn_x = pos[0] * grid_width + grid_width / 2;
            var spawn_y = pos[1] * grid_height + grid_height / 2 + 500; // Offset by 500 units
			
          instance_create_layer(spawn_x, spawn_y, "Enemy", obj_payloadAsteroid)
		}
    }

    // Spawn frigates
    for (var j = 0; j < num_frigates; j++) {
        var pos;
        var valid_position = false;

        repeat (100) { // Limit the number of attempts to avoid infinite loops
            pos = generate_grid_position();
            if (!array_exists(used_grid_squares, pos) && !array_exists_x(used_frigate_x_axes, pos[0])) {
                valid_position = true;
                break;
            }
        }

        if (valid_position) {
            array_push(used_grid_squares, pos);
            array_push(used_frigate_x_axes, pos[0]);

            var spawn_x = pos[0] * grid_width + grid_width / 2;
            var spawn_y = pos[1] * grid_height + grid_height / 2 + 500; // Offset by 500 units

            var frigate_instance = instance_create_layer(spawn_x, spawn_y, "Enemy", obj_payloadEnemyFrigateShip); // Assuming obj_payloadEnemyFrigateShip exists
            // Additional setup for frigate_instance can go here
        }
    }
}

// Helper function to check if a value exists in a 2D array
function array_exists(arr, value) {
    for (var i = 0; i < array_length(arr); i++) {
        if (arr[i][0] == value[0] && arr[i][1] == value[1]) {
            return true;
        }
    }
    return false;
}

function array_exists_x(arr, value) {
    for (var i = 0; i < array_length(arr); i++) {
        if (arr[i] == value) {
            return true;
        }
    }
    return false;
}

function GetObjectDirection(xCoor) {
    var middle = room_width / 2; // Calculate the middle of the room
    
    if (xCoor < middle) {
        return true; // Closer to the left side
    } else {
        return false; // Closer to the right side
    }
}