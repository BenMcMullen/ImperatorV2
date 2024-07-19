// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function GetRandomHuntingEnemyType() {
     var options = [ //typeString, sprite, column, row, projectile
        ["Hunting Wasp", spr_enemyWasp, 4, 4, obj_enemyWaspPlasma],
        ["Hunting Hornet", spr_enemyHornet, 3, 3, obj_enemyHornetPlasma]
    ];
    var index = irandom(array_length(options) - 1);
    return options[index];
}

function GetRandomEscortEnemyType() {
     var options = [ //typeString, sprite, column, row
        ["Escort Wasp", spr_enemyWasp, obj_enemyWaspPlasma],
        ["Escort Hornet", spr_enemyHornet, obj_enemyHornetPlasma]
    ];
    var index = irandom(array_length(options) - 1);
    return options[index];
}


function GetEnemyStats(enemyType) {
	
	var rankDifficulty = global.playerInformation.rank.rankDifficulty;
	var planetIndex = global.playerInformation.currentTreeIndex
	var levelDifficulty = GetCurrentLevel().difficulty.difficultyModifier
	

    var enemy = {
        shootRange: 0,
        fireRate: 0,
        capacity: 0,
        cooldownDuration: 0,
        detectionRange: 0,
		enemySpeed: 0,
        hp: 0,
		huntCount: 0,
		escortCount: 0
    };
	

    // Assign values to the fields based on the parameters
    switch (enemyType) {
		
		    case "Escort Wasp":
       		enemy.shootRange = (450 * rankDifficulty) * levelDifficulty;
            enemy.fireRate = 6 / (rankDifficulty * levelDifficulty);
            enemy.capacity = round((20 * rankDifficulty) * levelDifficulty);
            enemy.cooldownDuration = round(30 / (rankDifficulty * levelDifficulty));
            enemy.detectionRange = 6000 + ((1000 * rankDifficulty) * levelDifficulty);
			enemy.enemySpeed = round((8 * rankDifficulty) * levelDifficulty)
            enemy.hp = round((5 * rankDifficulty) * levelDifficulty)
			enemy.huntCount = round((8 * rankDifficulty) * levelDifficulty)
			enemy.escortCount = round((6 * rankDifficulty) * levelDifficulty)
            break;
			
		  case "Escort Hornet":
          	enemy.shootRange = (900 * rankDifficulty) * levelDifficulty;
            enemy.fireRate = 5 / (rankDifficulty * levelDifficulty);
            enemy.capacity = round((30 * rankDifficulty) * levelDifficulty);
            enemy.cooldownDuration = round(20 / (rankDifficulty * levelDifficulty));
            enemy.detectionRange = 6000 + ((500 * rankDifficulty) * levelDifficulty);
			enemy.enemySpeed = round((8 * rankDifficulty) * levelDifficulty);
            enemy.hp = round((10 * rankDifficulty) * levelDifficulty);
            break;
			
		case "Hunting Wasp":
       		enemy.shootRange = (450 * rankDifficulty) * levelDifficulty;
            enemy.fireRate = 6 / (rankDifficulty * levelDifficulty);
            enemy.capacity = round((20 * rankDifficulty) * levelDifficulty);
            enemy.cooldownDuration = round(30 / (rankDifficulty * levelDifficulty));
            enemy.detectionRange = 3500 + ((1000 * rankDifficulty) * levelDifficulty);
			enemy.enemySpeed = round((8 * rankDifficulty) * levelDifficulty)
            enemy.hp = round((5 * rankDifficulty) * levelDifficulty)
			enemy.huntCount = round((8 * rankDifficulty) * levelDifficulty)
			enemy.escortCount = round((6 * rankDifficulty) * levelDifficulty)
            break;
			
         case "Hunting Hornet":
          	enemy.shootRange = (900 * rankDifficulty) * levelDifficulty;
            enemy.fireRate = 5 / (rankDifficulty * levelDifficulty);
            enemy.capacity = round((30 * rankDifficulty) * levelDifficulty);
            enemy.cooldownDuration = round(20 / (rankDifficulty * levelDifficulty));
            enemy.detectionRange = 2000 + ((500 * rankDifficulty) * levelDifficulty);
			enemy.enemySpeed = round((8 * rankDifficulty) * levelDifficulty);
            enemy.hp = round((10 * rankDifficulty) * levelDifficulty);
            break;
			
		case "Beacon Hornet":
     		enemy.shootRange = (900 * rankDifficulty) * levelDifficulty;
            enemy.fireRate = 5 / (rankDifficulty * levelDifficulty);
            enemy.capacity = round((30 * rankDifficulty) * levelDifficulty);
            enemy.cooldownDuration = round(20 / (rankDifficulty * levelDifficulty));
            enemy.detectionRange = 2000 + ((500 * rankDifficulty) * levelDifficulty);
			enemy.enemySpeed = round((15 * rankDifficulty) * levelDifficulty);
            enemy.hp = round((10 * rankDifficulty) * levelDifficulty);
            break;
			
		case "Beacon Wasp":
       		enemy.shootRange = (450 * rankDifficulty) * levelDifficulty;
            enemy.fireRate = 6 / (rankDifficulty * levelDifficulty);
            enemy.capacity = round((20 * rankDifficulty) * levelDifficulty);
            enemy.cooldownDuration = round(30 / (rankDifficulty * levelDifficulty));
            enemy.detectionRange = 2000 + ((1000 * rankDifficulty) * levelDifficulty);
			enemy.enemySpeed = round((8 * rankDifficulty) * levelDifficulty)
            enemy.hp = round((5 * rankDifficulty) * levelDifficulty)
		
            break;
			
			
        default:
      
            break;
    }

    // Return the enemy struct
    return enemy;
}
