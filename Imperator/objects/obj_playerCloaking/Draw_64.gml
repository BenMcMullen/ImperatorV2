// Calculate the remaining charge percentage
if (global.playerCloaked) {
	draw_sprite(spr_HUDCloaking, 21, 0, 0); // PlayerHud Cloaking
}
else if (global.playerCanCloak) {
	draw_sprite(spr_HUDCloaking, 20, 0, 0); // PlayerHud Cloaking
}
else {
	

var cloakCooldown = global.playerCloakingCooldown / (1200 / global.selectedShip.passives.veteranCrew);

// Determine the frame to display (0 to 20)
var frame = floor(cloakCooldown * 20); // 21 frames mean indices from 0 to 20
frame = clamp(frame, 0, 20); // Ensure the frame is within the valid range

// Draw the corresponding frame of the sprite
draw_sprite(spr_HUDCloaking, frame, 0, 0); // PlayerHud Boost


}
