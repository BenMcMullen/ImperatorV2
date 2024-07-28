rankDifficulty = global.playerInformation.rank.rankDifficulty;
planetIndex = global.playerInformation.currentTreeIndex
levelDifficulty = GetCurrentLevel().difficulty.difficultyModifier
spawn = true;
spawnTimer = 1800 + round(1800 / (rankDifficulty) * levelDifficulty);
spawnedEnemies = 0;
enemy = GetRandomHuntingEnemyType();
enemyCount = GetEnemyStats(enemy[0]).spawnCount
enemyType = enemy[1]
alarm[0] = spawnTimer;



