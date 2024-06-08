// obj_game_controller Create event
MusicConfig();
LevelConfiguration();
InitShop();
#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W, RES_H);
	

//DO NOT CHANGE THESE VALUES. THESE ARE THE DEFAULT VALUES REQUIRED FOR THE GAME 
//TO START IN THE CORRECT PLACE AND ORDER


global.currentMusic = 0;
global.musicPlaying = false;
global.itemMissiles = false;


global.shipUpgrades = [];
global.maxshipUpgrades = 20; //Maximum ship upgrades


global.hasContract = true;
global.contractCompleted = true;
global.contractQuantity = 1;

global.totalCompletedContracts = 0;
global.kills = 0;
global.killsThisRoom = 0;
global.levelPoints = 0;
global.totalPoints = 0

// Initialize the global variables to track purchased items
global.itemMissiles = false;
global.itemPulseShield = false;
global.itemBoostBooster = false;
global.itemRailGun = false;
global.itemRecoilArmour = false;
global.itemEnhancedSensors = false;
global.itemSecondaryGunner = false;
// Initialize more global variables as needed



killTextScale = 1;
loseHpScale = 1;

if (!global.musicPlaying) {
    if (global.currentMusic != -1) {
        audio_stop_sound(global.currentMusic);
    }
    global.currentMusic = audio_play_sound(snd_level1, 1, true);
    global.musicPlaying = true;
}




