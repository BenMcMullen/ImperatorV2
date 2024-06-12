//die
if (global.currentMusic != -1) {
    audio_stop_sound(global.currentMusic);
    global.currentMusic = -1;
    global.musicPlaying = false;
    show_debug_message("Music Stopped");
}
global.kills =- global.killsThisRoom;
global.selectedShip.hull.hp = global.selectedShip.hull.maxHp;
global.selectedShip.shields.shieldStatic = global.selectedShip.shields.shieldStaticMax;
with (obj_playerWeapons) instance_destroy();
instance_change(obj_explosionPlayer,true);




