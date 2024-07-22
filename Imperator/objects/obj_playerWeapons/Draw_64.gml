// Calculate the remaining charge percentage
var cooldown = primaryCooldownTimer;
var primaryCooldownTimer = primaryCooldownDuration;
var reloadPercentage = cooldown / primaryCooldownTimer;

// Determine the frame to display (0 to 20)
var frame = floor(reloadPercentage * 20); // 21 frames mean indices from 0 to 20
frame = clamp(frame, 0, 20); // Ensure the frame is within the valid range

// Draw the corresponding frame of the sprite
draw_sprite(spr_HUDBoost, frame, 0, 0); // PlayerHud Shields

