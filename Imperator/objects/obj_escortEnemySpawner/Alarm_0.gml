


// Alarm[0] event
if (spawnedEnemies <= enemyCount) {
	
    // Create the object instance
   var escortEnemy = instance_create_layer(x + 300, y + 300, "Enemy", obj_escortEnemy);
      escortEnemy.enemyType = enemy[0]
	  escortEnemy.enemySprite = enemy[1];
	  escortEnemy.enemyProjectile = enemy[2];

    // Increment the current instance index
    spawnedEnemies += 1;
	
	if (spawnedEnemies != enemyCount) {
		 alarm[0] = 10; // 60 steps = 1 second (assuming room_speed is 60)
	}
	else {
		spawnedEnemies = 0;
		instance_destroy()
		}
		
}
