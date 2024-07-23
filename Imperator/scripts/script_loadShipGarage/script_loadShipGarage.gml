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
function DrawPassivesInGarage(x, y) {
    var passives = global.selectedShip.passives;
    var yOffset = 0;
    var spriteIndex;
    var passiveText;

    // Define sprite indices and corresponding texts for each passive directly
    var passiveData = [
        { name: "distortion", text: "Radar Distortion" },
        { name: "evasion", text: "Evasion" },
        { name: "hotShot", text: "Weapons Precision" },
        { name: "fov", text: "High Def Sensors" },
        { name: "bumper", text: "Hull Integrity" },
        { name: "cloaking", text: "Cloaking" },
        { name: "enhancedArmory", text: "Ammo Capacity" },
        { name: "veteranCrew", text: "Crew Experience" },
        { name: "enhancedCoolingUnit", text: "Shield Cooling Effeciency" },
        { name: "activeEnergyDispersionUnit", text: "Pulse Shielding Dispersion" },
        { name: "passiveEnergyDispersionUnit", text: "Basic Shielding Disperion" }
    ];

    // Iterate over the passive data and draw each passive sprite with text
    for (var i = 0; i < array_length(passiveData); i++) {
        var passiveName = passiveData[i].name;
        spriteIndex = GetPassiveSpriteIndex(passiveName);
        passiveText = passiveData[i].text;
        
        if (spriteIndex != -1) {
            // Draw the passive sprite with the calculated frame index
            draw_sprite(spr_passivesBar, spriteIndex, x, y + yOffset);
			draw_set_halign(fa_center); // Center align text horizontally
			draw_set_valign(fa_top); // Align text to the top

			draw_set_font(font_venite)
            draw_set_color(c_black);
            // Draw text above the sprite, adjusted by 10 pixels
            draw_text(x, y + yOffset - 18, passiveText);
			draw_set_color(c_white);
			draw_text(x + 2, y + yOffset - 20, passiveText);
            yOffset += sprite_get_height(spr_passivesBar) + 20; // Adjust the offset for the next sprite
        } else {
            // Handle invalid passive name (optional)
            draw_text(x, y + yOffset, "Invalid passive: " + passiveName);
            yOffset += 50; // Adjust the offset for the next text line
        }
    }
}

function GetPassiveSpriteIndex(passiveName) {
    var passiveValue = GetPassiveValue(passiveName); // Get the passive value based on the name
    var minValue, maxValue;

    // Define the ranges for each passive
    switch (passiveName) {
        case "distortion":
        case "evasion":
        case "hotShot":
        case "fov":
        case "enhancedArmory":
        case "veteranCrew":
            minValue = 1;
            maxValue = 2;
            break;
        case "bumper":
            minValue = 20;
            maxValue = 100;
            break;
        case "cloaking":
            minValue = 0;
            maxValue = 1000;
            break;
        case "enhancedCoolingUnit":
        case "activeEnergyDispersionUnit":
        case "passiveEnergyDispersionUnit":
            minValue = 1;
            maxValue = 10;
            break;
        default:
            // Handle error: unknown passive
            show_debug_message("Unknown passive: " + passiveName);
            return -1; // Invalid index
    }

    // Calculate the frame index (0 to 20)
    var percentage = (passiveValue - minValue) / (maxValue - minValue);
    var frameIndex = floor(percentage * 20); // 21 frames, index 0 to 20

    // Ensure the frame index is within the valid range
    frameIndex = clamp(frameIndex, 0, 20);

    return frameIndex;
}

function GetPassiveValue(passiveName) {
    // Use a switch statement to fetch the passive value based on its name
    switch (passiveName) {
        case "distortion":
            return global.selectedShip.passives.distortion;
        case "evasion":
            return global.selectedShip.passives.evasion;
        case "hotShot":
            return global.selectedShip.passives.hotShot;
        case "fov":
            return global.selectedShip.passives.fov;
        case "bumper":
            return global.selectedShip.passives.bumper;
        case "cloaking":
            return global.selectedShip.passives.cloaking;
        case "enhancedArmory":
            return global.selectedShip.passives.enhancedArmory;
        case "veteranCrew":
            return global.selectedShip.passives.veteranCrew;
        case "enhancedCoolingUnit":
            return global.selectedShip.passives.enhancedCoolingUnit;
        case "activeEnergyDispersionUnit":
            return global.selectedShip.passives.activeEnergyDispersionUnit;
        case "passiveEnergyDispersionUnit":
            return global.selectedShip.passives.passiveEnergyDispersionUnit;
        default:
            show_debug_message("Unknown passive: " + passiveName);
            return 0; // Return a default value or handle the error accordingly
    }
}

function DisplayGarageSystem(systemToDisplay) {
	//this checks that the class of the system matches the class of the ship, or the class is any
	var display = false;
	if ((string(systemToDisplay.systemStatus.class) == string(global.selectedShip.shipClass)) || string(systemToDisplay.systemStatus.class) == "Any") {
		display = true;	
	}
	
	
	return display;
	
}
