

if (global.playerCanCloak) {
if (keyboard_check_pressed(vk_tab)) { // Replace vk_key with the specific key you want to check
        global.playerCloaked = true;
		global.playerCanCloak = false;
		global.playerCloakingDuration = global.selectedShip.passives.cloaking // global.selectedShip.passives.veteranCrew;

    }
}