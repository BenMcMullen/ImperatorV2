/// @description Insert description here
// You can write your code in this editor
if (global.contractQuantity <= global.killsThisRoom && global.hasContract == true) {
	//pretty much, this code says if you meet the contract, then progress the next actual level.
	//since the non level levels are stored first in the array, we start the count at 5.
	//However, we often go to the hangar or shop so we have to track the actual level profression here.
    global.contractCompleted = true;
	//go to hangar after each level
} else {
    global.contractCompleted = false;
}