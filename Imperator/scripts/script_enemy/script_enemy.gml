// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function GetEnemy(difficulty, playerRank, enemyType, planet, scale) {
	
    var enemy = {
        shootRange: 0,
        plasmaSpeed: 0,
        capacity: 0,
        cooldownDuration: 0,
        fireRate: 0,
        detectionRange: 0,
        hp: 0
    };

    // Assign values to the fields based on the parameters
    switch (enemyType) {
        case "type1":
            enemy.shootRange = difficulty * scale;
            enemy.plasmaSpeed = playerRank * scale;
            enemy.capacity = 10 * scale;
            enemy.cooldownDuration = difficulty * 2;
            enemy.fireRate = 5 / playerRank;
            enemy.detectionRange = 100 + (planet * scale);
            enemy.hp = 50 * difficulty;
            break;
        case "type2":
            enemy.shootRange = difficulty * scale * 1.5;
            enemy.plasmaSpeed = playerRank * scale * 1.2;
            enemy.capacity = 15 * scale;
            enemy.cooldownDuration = difficulty * 1.5;
            enemy.fireRate = 4 / playerRank;
            enemy.detectionRange = 150 + (planet * scale);
            enemy.hp = 70 * difficulty;
            break;
        // Add more cases for different enemy types as needed
        default:
            enemy.shootRange = difficulty;
            enemy.plasmaSpeed = playerRank;
            enemy.capacity = 10;
            enemy.cooldownDuration = 2;
            enemy.fireRate = 1;
            enemy.detectionRange = 100;
            enemy.hp = 50;
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