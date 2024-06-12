// Draw Scoreboard
if (room != room_menu || room_intro) && (instance_exists(obj_player)) {
    // Your existing scoreboard drawing code...
// Draw Minimap
var minimap_surface = -1;
var minimap_width = 200; // Adjust as needed
var minimap_height = 200; // Adjust as needed
var minimap_alpha = 0.7; // Adjust transparency level (0 to 1)
var background_sprite = spr_miniMapBackground; // Change to your minimap background sprite

// Create the minimap surface if it doesn't exist
if (minimap_surface == -1) {
    minimap_surface = surface_create(minimap_width, minimap_height);
}

// Check if the minimap surface exists before using it
if (surface_exists(minimap_surface)) {
    // Set the surface as the drawing target
    surface_set_target(minimap_surface);

    // Clear the surface with a semi-transparent background
    draw_clear_alpha(c_black, 0); // Clear with fully transparent background

    // Draw the background sprite
    draw_sprite(background_sprite, 0, 0, 0); // Draw the background sprite at (0, 0) on the surface

    // Draw map bounds (edge of the room)
    draw_rectangle(0, 0, minimap_width, minimap_height, false);

    // Draw the player
    var player_x = obj_player.x / room_width * minimap_width;
    var player_y = obj_player.y / room_height * minimap_height;
    draw_sprite(spr_playerMiniMap, 0, player_x, player_y); // Adjust the player icon sprite as needed

    // Conditionally draw enemies
    with (obj_enemy) {
        var enemy_x = x / room_width * minimap_width;
        var enemy_y = y / room_height * minimap_height;
        draw_sprite(spr_enemyMiniMap, 0, enemy_x, enemy_y); // Adjust the enemy icon sprite as needed
    }

    // Reset the drawing target to the application surface
    surface_reset_target();

    // Draw the minimap surface to the GUI layer
    draw_surface(minimap_surface, 10, 10); // Adjust position as needed
}

// Clean up the minimap surface when the object is destroyed
event_inherited();
if (surface_exists(minimap_surface)) {
    surface_free(minimap_surface);
}

}
