if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
EscortMovement();
var currentY = floor(y); //y is set as a floating point number, convert for ==.

if (currentY == (room_height - (triggerDistance * triggerNumber))) {
	
 show_debug_message("triggerSpawner")
var spawnLocation = irandom(3);
        var spawn_x, spawn_y;
        
        switch (spawnLocation) {
            case 0: // Top middle
                spawn_x = room_width / 2;
                spawn_y = 500;
                break;
            case 1: // Left middle
                spawn_x = 500;
                spawn_y = room_height / 2;
                break;
            case 2: // Right middle
                spawn_x = room_width - 500;
                spawn_y = room_height / 2;
                break;
            case 3: // Bottom middle
                spawn_x = room_width / 2;
                spawn_y = room_height - 1500;
                break;
		}
 // Create the new instance at the chosen location
       var spawner = instance_create_layer(x, spawn_y, "Enemy", obj_escortEnemySpawner);
	   spawner.enemyCountBonus = triggerNumber;
	   
		triggerNumber ++;

}