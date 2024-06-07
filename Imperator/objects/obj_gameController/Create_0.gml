// obj_game_controller Create event
InitGlobals();
#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W, RES_H);
	 
global.levels = [room_menu, room_intro, room_shop, room_hanger, 
room_1, room_2, room_3, room_4, room_5];

global.enemyTypes[0] = "Rip Wing";
global.enemyTypes[1] = "Razer Claw";
global.enemyTypes[2] = "Eminator";


//DO NOT CHANGE THESE VALUES. THESE ARE THE DEFAULT VALUES REQUIRED FOR THE GAME 
//TO START IN THE CORRECT PLACE AND ORDER
global.nextLevel = 5;
global.currentLevel = 5;
global.isLevelComplete = false;


global.currentMusic = 0;
global.musicPlaying = false;
global.canPlayerFireMissiles = false;


global.shipUpgrades = [];
global.maxshipUpgrades = 20; //Maximum ship upgrades
global.canPlayerFireMissiles = false;

 global.contractType = global.enemyTypes[0];
global.hasContract = true;
global.contractCompleted = true;
global.contractQuantity = 1;
global.totalCompletedContracts = 0;

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




