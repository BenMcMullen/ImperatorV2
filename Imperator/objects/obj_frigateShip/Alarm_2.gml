   var huntingEnemy = instance_create_layer(x, y, "Enemy", obj_frigateEnemy);
      huntingEnemy.enemyType = enemy[0]
	  huntingEnemy.enemySprite = enemy[1];
	  huntingEnemy.enemyProjectile = enemy[2];
	  alarm[2] = 300;
