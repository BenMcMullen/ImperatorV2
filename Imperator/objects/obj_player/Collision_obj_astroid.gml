//die
if (global.current_music != -1) {
    audio_stop_sound(global.current_music);
    global.current_music = -1;
    global.music_playing = false;
    show_debug_message("Music Stopped");
}

with (obj_plasmaCannon) instance_destroy();
instance_change(obj_explosionPlayer,true);




