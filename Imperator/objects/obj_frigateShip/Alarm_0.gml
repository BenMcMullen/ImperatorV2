// Alarm[0] event
if (spawnedEnemies <= enemyCount) {
	
    // Create the object instance
   var huntingEnemy = instance_create_layer(x, y, "Enemy", obj_frigateEnemy);
      huntingEnemy.enemyType = enemy[0]
	  huntingEnemy.enemySprite = enemy[1];
	  huntingEnemy.enemyProjectile = enemy[2];

    // Increment the current instance index
    spawnedEnemies += 1;
	
	if (spawnedEnemies != enemyCount) {
		 alarm[0] = 10; // 60 steps = 1 second (assuming room_speed is 60)
	}
	else {
		spawnedEnemies = 0;
		}
		
}