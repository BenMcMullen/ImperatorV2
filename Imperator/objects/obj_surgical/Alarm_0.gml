show_debug_message("primaryAlarm")
if (targetEnemiesSpawned <= targetEnemiesCount) {
var spawner_count = instance_number(obj_surgicalEnemySpawner);

	// If there are any spawner instances
	if (spawner_count > 0) {
		// Choose a random spawner
		var random_index = irandom(spawner_count - 1);
		var spawner = instance_find(obj_surgicalEnemySpawner, random_index);
		spawnX = spawner.x;
		spawnY = spawner.y;
		// Set the spawn variable to true for the chosen spawner
		
	}
    // Create the object instance
      var surgicalEnemy = instance_create_layer(spawnX, spawnY, "Enemy", obj_surgicalPrimaryEnemy);
	  show_debug_message("primaryEnemyCreated")
      surgicalEnemy.enemyType = enemy[0]
	  surgicalEnemy.enemySprite = enemy[1];
	  surgicalEnemy.roomColumns = enemy[2];
	  surgicalEnemy.roomRows = enemy[3];
	  surgicalEnemy.enemyProjectile = enemy[4];

    // Increment the current instance index
    targetEnemiesSpawned += 1;
	
	if (targetEnemiesSpawned != targetEnemiesCount) {
		 alarm[0] = 10; // 60 steps = 1 second (assuming room_speed is 60)
	}
	else {
		targetEnemiesSpawned = 0;
		}
		
}

