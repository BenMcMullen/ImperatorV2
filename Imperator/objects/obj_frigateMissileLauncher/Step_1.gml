if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
if (hp <= 0)
{
	global.frigateLaunchersDestroyed ++;
	instance_create_layer(x, y, "Enemy", obj_frigateExplosion);
    
	audio_play_sound(snd_explosion1,10,false);
	
	instance_destroy();
}