// obj_game_controller Create event

MusicConfig();
InitSystems();
InitLevels();
InitShips();
InitImperatorPhrases();
InitPlayer();
#macro RES_W 1024
#macro RES_H 768
display_set_gui_size(RES_W, RES_H);
	
minimap_surface = -1;
minimap_width = 200; // Adjust as needed
minimap_height = 200; // Adjust as needed

//DO NOT CHANGE THESE VALUES. THESE ARE THE DEFAULT VALUES REQUIRED FOR THE GAME 
//TO START IN THE CORRECT PLACE AND ORDER

 //START OFF WITH THE FINCH.
 global.selectedShip = global.playerShips[0];
 global.shoppingSystem = "";
 global.garageUpgradingSystem = "";
// SCREENSCALE DETERMINES SCREEN SIZE
global.screenScale = 2;

global.currentMusic = 0;
global.musicPlaying = false;


global.hasContract = true;
global.contractCompleted = true;
global.contractQuantity = 1;
global.escortWarpReached = false;
global.beaconFactoryDestroyed = false;
global.activeBeacon = -1;
global.beaconFactoryImmune = true;
global.beaconsOverloaded = 0;
global.beaconList = [];

global.totalCompletedContracts = 0;

global.killsThisRoom = 0;
global.levelPoints = 0;
global.playerCloaked = false;
global.playerShieldActive = false;
global.playerShieldGeneratorOverloaded = false;
global.playerShieldActiveCharge = 0;
global.playerEngineBoosting = false;
global.playerEngineBoostCharge = 0;

//Tracking the shop/garage page's selected system and displayed descriptions
global.lastClickedShopSystem = noone;
global.lastClickedGarageSystem = noone;
global.displayedUpgradeDescriptions = noone;

//For shop door animations
global.shopFirstClick = true;

// For data pad animations
global.dataPadOpen = false;


if (!global.musicPlaying) {
    if (global.currentMusic != -1) {
        audio_stop_sound(global.currentMusic);
    }
    global.currentMusic = audio_play_sound(snd_level1, 1, true);
    global.musicPlaying = true;
}

		




