// obj_game_controller Create event
MusicConfig();
InitLevels();
InitShips();
#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W, RES_H);
	
	minimap_surface = -1;
minimap_width = 200; // Adjust as needed
minimap_height = 200; // Adjust as needed

//DO NOT CHANGE THESE VALUES. THESE ARE THE DEFAULT VALUES REQUIRED FOR THE GAME 
//TO START IN THE CORRECT PLACE AND ORDER

 //START OFF WITH THE WASP.
 global.selectedShip = global.playerShips[0];
 global.shoppingSystem = "";
 global.garageUpgradingSystem = "";
  //This is the level you are playing. Levels advance as soon as you leave the battlefield to the hangar
 global.currentLevelIndex = 5;
global.currentMusic = 0;
global.musicPlaying = false;


global.shipUpgrades = [];
global.maxshipUpgrades = 20; //Maximum ship upgrades


global.hasContract = true;
global.contractCompleted = true;
global.contractQuantity = 1;

global.totalCompletedContracts = 0;
global.kills = 0;
global.killsThisRoom = 0;
global.levelPoints = 0;
global.totalPoints = 100000;
global.isDead = false

// Initialize the global variables to track purchased items

global.itemPulseShield = false;
global.itemBoostBooster = false;
global.itemRailGun = false;
global.itemRecoilArmour = false;
global.itemEnhancedSensors = false;
global.itemSecondaryGunner = false;
// Initialize more global variables as needed

//Tracking the shop/garage page's selected system and displayed descriptions
global.lastClickedShopSystem = noone;
global.lastClickedGarageSystem = noone;
global.displayedUpgradeDescriptions = noone;

killTextScale = 1;
loseHpScale = 1;
loseShieldsScale = 1;

if (!global.musicPlaying) {
    if (global.currentMusic != -1) {
        audio_stop_sound(global.currentMusic);
    }
    global.currentMusic = audio_play_sound(snd_level1, 1, true);
    global.musicPlaying = true;
}

		




