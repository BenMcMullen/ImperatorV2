// Calculate the remaining charge percentage

var primaryReloadPercentage = primaryCooldownTimer / primaryCooldownDuration;

// Determine the frame to display (0 to 20)
var primaryFrame = floor(primaryReloadPercentage * 20); // 21 frames mean indices from 0 to 20
primaryFrame = clamp(primaryFrame, 0, 20); // Ensure the frame is within the valid range

// Draw the corresponding frame of the sprite
draw_sprite(spr_HUDReloadPrimaryCD, primaryFrame, 0, 0); // PlayerHud Shields


// Calculate the remaining charge percentage

var secondaryReloadPercentage = secondaryCooldownTimer / secondaryCooldownDuration;

// Determine the frame to display (0 to 20)
var secondaryFrame = floor(secondaryReloadPercentage * 20); // 21 frames mean indices from 0 to 20
secondaryFrame = clamp(secondaryFrame, 0, 20); // Ensure the frame is within the valid range

// Draw the corresponding frame of the sprite
draw_sprite(spr_HUDReloadSecondaryCD, secondaryFrame, 0, 0); // PlayerHud Shields
