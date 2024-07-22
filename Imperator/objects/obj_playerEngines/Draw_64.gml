// Calculate the remaining charge percentage
var boostCharge = global.playerEngineBoostCharge;
var boostCapacity = global.selectedShip.engine.capacity;
var boostPercentage = boostCharge / boostCapacity;

// Determine the frame to display (0 to 20)
var frame = floor(boostPercentage * 20); // 21 frames mean indices from 0 to 20
frame = clamp(frame, 0, 20); // Ensure the frame is within the valid range

// Draw the corresponding frame of the sprite
draw_sprite(spr_HUDBoost, frame, 0, 0); // PlayerHud Shields

