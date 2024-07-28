if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
if (hp <= 0) {
	var spawner_count = instance_number(obj_surgicalEnemySpawner);
	global.surgicalKillsThisRoom ++; 
	with (obj_zzzHUD) {
		global.HUDUpdate = true;
		levelPhase = 2;
	}
	// If there are any spawner instances
	if (spawner_count > 0) {
		// Choose a random spawner
		var random_index = irandom(spawner_count - 1);
		var spawner = instance_find(obj_surgicalEnemySpawner, random_index);

		// Set the spawn variable to true for the chosen spawner
		with (spawner) {
			if (!spawn) {
				spawn = true;
				spawnedEnemies = 0;
			}
		}
	}
	var explosion = instance_create_layer(x, y, layer, obj_enemyExplosion);
	
    explosion.size = size;
	audio_play_sound(snd_explosion1,10,false);
	
	
	with (explosion) {
    size = size;
}
	
	instance_destroy();
}