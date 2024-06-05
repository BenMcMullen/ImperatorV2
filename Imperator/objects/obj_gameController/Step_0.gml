/// @description Insert description here
// You can write your code in this editor

global.enemy_types[0] = "Rip Wing";
global.enemy_types[1] = "Razer Claw";
global.enemy_types[2] = "Eminator";

if (global.contractQuantity <= global.killsThisRoom) {
    global.contractCompleted = true;
} else {
    global.contractCompleted = false;
}