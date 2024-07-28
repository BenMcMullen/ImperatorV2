
if (spawnedEnemies <= enemyCount) {
    // Create the object instance
      var surgicalEnemy = instance_create_layer(x, y, "Enemy", obj_surgicalEnemy);
      surgicalEnemy.enemyType = enemy[0]
	  surgicalEnemy.enemySprite = enemy[1];
	  surgicalEnemy.roomColumns = enemy[2];
	  surgicalEnemy.roomRows = enemy[3];
	  surgicalEnemy.enemyProjectile = enemy[4];

    // Increment the current instance index
    spawnedEnemies += 1;
	
	if (spawnedEnemies != enemyCount) {
		 alarm[1] = 10; // 60 steps = 1 second (assuming room_speed is 60)
	}
	else {
		spawnedEnemies = 0;
		}
		
}