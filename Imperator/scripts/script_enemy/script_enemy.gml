// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function GetEnemyStats(enemyType) {
	
	var rankDifficulty = global.playerInformation.rank.rankDifficulty;
	var planetIndex = global.playerInformation.currentTreeIndex
	var levelDifficulty = GetCurrentLevel().difficulty
	
    var enemy = {
        shootRange: 0,
        plasmaSpeed: 0,
        capacity: 0,
        cooldownDuration: 0,
        detectionRange: 0,
        hp: 0
    };

    // Assign values to the fields based on the parameters
    switch (enemyType) {
        case "Rip Wing":
            enemy.shootRange = difficulty * scale;
            enemy.plasmaSpeed = playerRank * scale;
            enemy.capacity = 10 * scale;
            enemy.cooldownDuration = difficulty * 2;
            enemy.detectionRange = 100 + (planet * scale);
            enemy.hp = 50 * difficulty;
            break;
		case "Factory Rip Wing":
      
            break;
        case "Razer Claw":
        
            break;
         case "Eminator":
          
            break;
		case "Beacon Guard":
     
            break;
        default:
      
            break;
    }

    // Return the enemy struct
    return enemy;
}

/*can be used like 
var enemy = GetEnemy(difficulty, playerRank, enemyType, planet, scale);

// Accessing the fields
var plasmaSpeed = enemy.plasmaSpeed;
var hp = enemy.hp;
*/