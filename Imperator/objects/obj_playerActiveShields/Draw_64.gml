if (restoring) {
	// Calculate the remaining time and percentage
    var restore_time = global.selectedShip.shields.overloadRestoreTime;
    var remaining_time = alarm[0];
    var charge_percentage = 1 - (remaining_time / restore_time);

	// Determine the frame to display (0 to 16)
	var frame = floor(charge_percentage * 17);
		frame = clamp(frame, 0, 16); // Ensure the frame is within the valid range

// Draw the corresponding frame of the sprite
		draw_sprite(spr_HUDShieldGeneratorCD, frame, 0, 0); // PlayerHud Shields
	
	}
	else if (global.shieldActiveCharge <= global.selectedShip.shields.shieldActive / 5) {
		draw_sprite(spr_HUDShields, 1, 0, 0); // PlayerHud Shields
	}
	else {
	draw_sprite(spr_HUDShields, 0, 0, 0); // PlayerHud Shields	
	}