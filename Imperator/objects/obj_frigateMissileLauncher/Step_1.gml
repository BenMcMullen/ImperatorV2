if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
if (hp <= 0)
{
	instance_create_layer(x, y, "Enemy", obj_frigateLauncherExplosion);
    
	audio_play_sound(snd_explosion1,10,false);
	
	instance_destroy();
}