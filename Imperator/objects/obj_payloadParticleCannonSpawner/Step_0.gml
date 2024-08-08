if (playSound) {
	playSound = false;
audio_play_sound(snd_particleBeam, 10, false);	
}

if (!instance_exists(obj_payloadParticleCannon) && spawnCannons) {
	show_debug_message("triggering spawner")
	spawnCannons = false;
alarm[0] = spawnCannonInterval;	
}