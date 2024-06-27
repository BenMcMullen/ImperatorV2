// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// scr_load_next_level

function LoadShipGarage() {

		SlideTransition(TRANS_MODE.GOTO, room_garage);

    
}

function AllSystemsInstalled() {
    var selectedShip = global.selectedShip;

    // Check each system in the selected ship
    if (selectedShip.hull == noone) {
        return false;
    }
    if (selectedShip.engine == noone) {
        return false;
    }
    if (selectedShip.primaryWeapon == noone) {
        return false;
    }
    if (selectedShip.secondaryWeapon == noone) {
        return false;
    }
    if (selectedShip.shields == noone) {
        return false;
    }
    if (selectedShip.sensors == noone) {
        return false;
    }

    // If all systems are present, return true
    return true;
}
