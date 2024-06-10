//die/
if (global.currentMusic != -1) {
    audio_stop_sound(global.currentMusic);
    global.currentMusic = -1;
    global.musicPlaying = false;
    show_debug_message("Music Stopped");
}

with (obj_playerPlasmaMissiles) instance_destroy();
instance_change(obj_explosionPlayer,true);
global.kills =- global.killsThisRoom;




