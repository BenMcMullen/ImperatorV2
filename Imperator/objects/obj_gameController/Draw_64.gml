// Draw Scoreboard
if (room != room_menu && room != room_intro && instance_exists(obj_player)) {
    var sensorSensitivity = global.selectedShip.sensors.sensitivity
    // Draw the game world as usual
    // (This part is implicitly done by the engine, no need to code anything specific here)

    // Set transparency level
    var transparency = 1; // Adjust as needed (0 for fully transparent, 1 for fully opaque)

    // Draw Minimap
    var minimap_surface = -1;
    var minimap_width = room_width / 40; // Adjusted to 1/40 of room width
    var minimap_height = room_height / 40; // Adjusted to 1/40 of room height
    var minimap_x = 10; // Adjust as needed
    var minimap_y = RES_H - 10 - minimap_height; // Adjusted to align with bottom edge of screen

    // Create the minimap surface if it doesn't exist
    if (minimap_surface == -1) {
        minimap_surface = surface_create(minimap_width, minimap_height);
    }

    // Check if the minimap surface exists before using it
    if (surface_exists(minimap_surface)) {
        // Set the surface as the drawing target
        surface_set_target(minimap_surface);

        // Clear the surface with a fully transparent background
        draw_clear_alpha(c_white, 0);

        // Draw map contents on minimap surface
        with (obj_enemy) {
			if (sensorSensitivity >= 3) {
            var enemy_x = x / room_width * minimap_width;
            var enemy_y = y / room_height * minimap_height;
            draw_sprite(spr_miniMapenemy, 0, enemy_x, enemy_y); // Adjust the enemy icon sprite as needed
			}
	   }
        with (obj_player) {
            var playerX = x / room_width * minimap_width;
            var playerY = y / room_height * minimap_height;
            draw_sprite(spr_miniMapPlayer, 0, playerX, playerY); // Adjust the player icon sprite as needed
        }
		 with (obj_asteroid) {
			 if (sensorSensitivity >= 2) {
            var asteroidX = x / room_width * minimap_width;
            var asteroidY = y / room_height * minimap_height;
            draw_sprite(spr_miniMapAsteroid, 0, asteroidX, asteroidY); // Adjust the player icon sprite as needed
			 }
		}

        // Draw the hangar
        with (obj_toHangarFromBattle) {
            var hangerX = x / room_width * minimap_width;
            var hangerY = y / room_height * minimap_height;
            draw_sprite(spr_miniMapToHangar, 0, hangerX, hangerY); // Adjust the hangar icon sprite as needed
        }
        // (Your minimap drawing code here)

        // Reset the drawing target to the application surface
        surface_reset_target();

        // Draw the minimap surface with transparency
        draw_surface_ext(minimap_surface, minimap_x, minimap_y, 1, 1, 0, c_white, transparency); // Adjust position and scale as needed
    }

    // Clean up the minimap surface when the object is destroyed
    event_inherited();
    if (surface_exists(minimap_surface)) {
        surface_free(minimap_surface);
    }

    // Draw HUD elements (HP, Shields, Points, Contract Info)
    draw_set_alpha(0.5); // Set transparency for HUD background
	
	  var minimap_x = 10; // Adjust as needed
    var minimap_y = RES_H - 10 - minimap_height; // Adju
	
	draw_set_color(c_white);
    draw_rectangle( 10, RES_H - 10,
	10 + minimap_width, RES_H - 10 - minimap_height, true); // Adjusted dimensions to match minimap
    draw_set_alpha(1); // Reset transparency

    // Draw HP
   loseHpScale = max(loseHpScale * 0.95, 1);
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text_transformed(RES_W - RES_W + 8, 12, "HP: " + string(global.selectedShip.hull.hp) + "/" + string(global.selectedShip.hull.maxHp), loseHpScale, loseHpScale, 0);
	draw_set_colour(c_yellow);
	draw_text_transformed(RES_W - RES_W + 10, 10, "HP: " + string(global.selectedShip.hull.hp) + "/" + string(global.selectedShip.hull.maxHp), loseHpScale, loseHpScale, 0);
	
	loseShieldsScale = max(loseShieldsScale * 0.95, 1);
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text_transformed(RES_W - RES_W + 8, 50, "Shields: " + string(global.selectedShip.shields.shieldStatic), loseShieldsScale, loseShieldsScale, 0);
	draw_set_colour(c_yellow);
	draw_text_transformed(RES_W - RES_W + 10, 48, "Shields: " + string(global.selectedShip.shields.shieldStatic), loseShieldsScale, loseShieldsScale, 0);
	
	
	DrawSetText(c_black, font_arial2, fa_left, fa_top);
	draw_text(RES_W - RES_W + 8, 88, "Points: " + string(global.totalPoints));
	draw_set_colour(c_yellow);
	draw_text(RES_W - RES_W + 10, 86, "Points: " + string(global.totalPoints));	

}

// Draw contract and kills information
if (room != room_menu && room != room_intro && room != room_testFlight && instance_exists(obj_player) && !instance_exists(obj_introInstructions) && global.hasContract) {
    if (!global.contractCompleted) {
     DrawSetText(c_black, font_arial2, fa_right, fa_top);
	draw_text(RES_W - 8, 50, "Contract - " + string(global.contractQuantity) + " " + string(global.contractType));
	draw_set_colour(c_yellow);
		draw_text(RES_W -  10, 48, "Contract - " + string(global.contractQuantity) + " " + string(global.contractType));
	}
	if (global.contractCompleted)
	{
		DrawSetText(c_black, font_arial2, fa_right, fa_top);
	draw_text(RES_W - 8, 50, "Contract COMPLETED");
	draw_set_colour(c_yellow);
		draw_text(RES_W -  10, 48, "Contract COMPLETED");
	}
	
	killTextScale = max(killTextScale * 0.95, 1);
	DrawSetText(c_black, font_arial2, fa_right, fa_top);
	draw_text_transformed(RES_W-8, 12, string(global.killsThisRoom) + " Targets Hunted - ", killTextScale, killTextScale,0);
	draw_set_colour(c_yellow);
	draw_text_transformed(RES_W-10, 10, string(global.killsThisRoom) + " Targets Hunted -", killTextScale, killTextScale,0);
}
