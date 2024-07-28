planetIndex = global.playerInformation.currentTreeIndex
spawn = true;
spawnedEnemies = 0;
enemy = GetRandomSurgicalEnemyType();
enemyCount = GetEnemyStats(enemy[0]).hydraCount
show_debug_message(enemyCount)

enemyType = enemy[1]
firstSpawn = true;
firstSpawnedEnemies = 0;
firstSpawnEnemyCount = GetEnemyStats(enemy[0]).startingSquadSize


