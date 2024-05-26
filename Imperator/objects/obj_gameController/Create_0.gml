// obj_game_controller Create event
InitGlobals();
if (!global.music_playing) {
    if (global.current_music != -1) {
        audio_stop_sound(global.current_music);
    }
    global.current_music = audio_play_sound(snd_level1, 1, true);
    global.music_playing = true;
}
