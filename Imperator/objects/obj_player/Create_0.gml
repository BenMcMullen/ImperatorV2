/// @description Insert description here
// You can write your code in this editor
audio_sound_pitch(snd_plasma, 0.5)
target_x = x;
target_y = y;
canCloak = true;
canAsteroidBreak = true;
global.shieldActiveCharge = global.selectedShip.shields.shieldActive;
depth = -1;
instance_create_layer(x, y, "Player", obj_playerActiveShields);
