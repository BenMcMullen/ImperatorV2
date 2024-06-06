// obj_game_controller Create event
InitGlobals();
#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W, RES_H);


global.levels = [room_menu, room_intro, room_shop, room_playerHanger, 
room_1, room_2, room_3, room_4, room_5];

global.nextLevel = 0;
global.currentLevel = 5;


global.currentMusic = 0;
global.musicPlaying = false;
global.canPlayerFireMissiles = false;
global.isLevelComplete = false;

global.shipUpgrades = [];
global.maxshipUpgrades = 20; //Maximum ship upgrades

global.contractType = "";
global.hasContract = false;
global.contractCompleted = false;
global.contractQuantity = 0;
global.totalCompletedContracts = 2;
global.canPlayerFireMissiles = false;
global.kills = 0;
global.killsThisRoom = 0;



killTextScale = 1;
loseHpScale = 1;

if (!global.musicPlaying) {
    if (global.currentMusic != -1) {
        audio_stop_sound(global.currentMusic);
    }
    global.currentMusic = audio_play_sound(snd_level1, 1, true);
    global.musicPlaying = true;
}

global.enemy_types[0] = "Rip Wing";
global.enemy_types[1] = "Razer Claw";
global.enemy_types[2] = "Eminator";



