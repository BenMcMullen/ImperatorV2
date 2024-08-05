/// @description Insert description here
// You can write your code in this editor
audio_sound_pitch(snd_plasma, 0.5)
target_x = x;
target_y = y;
canBoost = true;
hullIntegrityWarningGiven = false;
ionDamageTaken = 0;
global.playerShieldActiveCharge = global.selectedShip.shields.shieldActive;
depth = -5;
instance_create_layer(x, y, "Player", obj_playerShields);
instance_create_layer(x, y, "Player", obj_playerEngines);
instance_create_layer(x, y, "Player", obj_playerWeapons);
instance_create_layer(x, y, "Player", obj_playerCloaking);
