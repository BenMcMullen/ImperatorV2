// obj_game_controller Create event
InitGlobals();
#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W, RES_H);

global.currentMusic = 0;
global.musicPlaying = false;
global.canPlayerFireMissiles = false;

global.kills = 0;
global.killsThisRoom = 0;
global.killTestScale = 1;

if (!global.musicPlaying) {
    if (global.currentMusic != -1) {
        audio_stop_sound(global.currentMusic);
    }
    global.currentMusic = audio_play_sound(snd_level1, 1, true);
    global.musicPlaying = true;
}
