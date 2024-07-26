// Alarm 0 event

if (other.goHanger) {
	LoadHangar();
		audio_play_sound(snd_door, 1, false);
	instance_destroy();
}
