/// @description Insert description here
// You can write your code in this editor
if (global.contractQuantity <= global.killsThisRoom) {
	//pretty much, this code says if you meet the contract, then progress the next actual level.
	//since the non level levels are stored first in the array, we start the count at 5.
	//However, we often go to the hanger or shop so we have to track the actual level profression here.
	//In the nextlevel collision object we reset the nextlevel to the level progression.
    global.contractCompleted = true;
	global.currentLevel ++;
	//go to hanger after each level
	global.nextLevel = 3;
} else {
    global.contractCompleted = false;
}