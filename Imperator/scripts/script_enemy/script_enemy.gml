// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function GetEnemyStats(enemyType) {
	
	var rankDifficulty = global.playerInformation.rank.rankDifficulty;
	var planetIndex = global.playerInformation.currentTreeIndex
	var levelDifficulty = GetCurrentLevel().difficulty.difficultyModifier
	
	detectionRange = 2000 / global.selectedShip.passives.distortion; // Detection range
attackRange = 450; // Attack range
capacity = 20;
capacity = 20;
fireRate = 5;
    var enemy = {
        shootRange: 0,
        fireRate: 0,
        capacity: 0,
        cooldownDuration: 0,
        detectionRange: 0,
        hp: 0
    };
	

    // Assign values to the fields based on the parameters
    switch (enemyType) {
        case "Rip Wing":
         
            break;
			
		case "Factory Rip Wing":
			enemy.shootRange = (450 * rankDifficulty) * levelDifficulty;
            enemy.fireRate = 6 / (rankDifficulty * levelDifficulty);
            enemy.capacity = round((20 * rankDifficulty) * levelDifficulty);
            enemy.cooldownDuration = 30 / (rankDifficulty * levelDifficulty);
            enemy.detectionRange = 2000 + ((1000 * rankDifficulty) * levelDifficulty);
            enemy.hp = round((5 * rankDifficulty) * levelDifficulty)
            break;
			
        case "Razer Claw":
        
            break;
			
         case "Eminator":
          
            break;
			
		case "Beacon Guard":
     		enemy.shootRange = (900 * rankDifficulty) * levelDifficulty;
            enemy.fireRate = 3 / (rankDifficulty * levelDifficulty);
            enemy.capacity = round((40 * rankDifficulty) * levelDifficulty);
            enemy.cooldownDuration = 15 / (rankDifficulty * levelDifficulty);
            enemy.detectionRange = 2000 + ((500 * rankDifficulty) * levelDifficulty);
            enemy.hp = round((10 * rankDifficulty) * levelDifficulty)
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