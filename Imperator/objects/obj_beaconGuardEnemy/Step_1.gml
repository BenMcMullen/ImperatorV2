if (hp <= 0)
{
	var explosion = instance_create_layer(x, y, layer, obj_explosion);
	
    explosion.size = size;
	audio_play_sound(snd_explosion1,10,false);
	
	
	with (explosion) {
    size = size;
}
	
	instance_destroy();
	if (instance_exists(obj_player)) 
	{
	global.playerInformation.kills++;
	global.killsThisRoom++;
	with (obj_zzzHUD) killTextScale = 2;
	}
}