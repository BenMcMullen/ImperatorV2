/// Save game data to a file
function SaveFile(filename) {
    // Override old save
    if (file_exists(filename)) file_delete(filename);

    // Create new save file
    var file = file_text_open_write(filename);

    if (file != -1) {
        try {
            // Write primitive data types
	
			global.saveFile = {
			ships: global.playerShips,
			playerMissionProgress: global.playerMissionProgress,
			playerInformation: global.playerInformation,
			systemStatus: global.systemStatus,
			hulls: global.hulls,
			engines: global.engines,
			primaryWeapons: global.primaryWeapons,
			secondaryWeapons: global.secondaryWeapons,
			shields: global.shields,
			sprites: global.sprites,
			sensors: global.sensors
			};
            // Convert arrays of structs to JSON strings and write them
            file_text_write_string(file, json_stringify(global.saveFile));

            file_text_close(file);
        } catch (err) {
            show_message("Failed to save: " + err);
        }
    } else {
        show_message("Failed to create save file!");
    }
}

function LoadFile(filename) {
    // Check if the file exists
    if (!file_exists(filename)) {
        show_message("Save file does not exist!");
        return;
    }

    // Open the file for reading
    var file = file_text_open_read(filename);

    if (file != -1) {
        try {
            // Read and parse JSON strings from the file
            var saveFileJson = file_text_readln(file);

            // Close the file after reading
            file_text_close(file);

            // Parse JSON strings into JavaScript objects or arrays
            global.saveFile = json_parse(saveFileJson);
			global.playerShips = global.saveFile.ships;
			global.playerMissionProgress = global.saveFile.playerMissionProgress;
			global.playerInformation = global.saveFile.playerInformation;
			global.systemStatus = global.saveFile.systemStatus;
			global.hulls = global.saveFile.hulls;
			global.engines = global.saveFile.engines;
			global.primaryWeapons = global.saveFile.primaryWeapons;
			global.secondaryWeapons = global.saveFile.secondaryWeapons;
			global.shields = global.saveFile.shields;
			global.sprites = global.saveFile.sprites;
			global.sensors = global.saveFile.sensors;

	
			LoadBridge()

        } catch (err) {
            show_message("Failed to load: " + err);
            file_text_close(file); // Ensure file is closed in case of error
        }
    } else {
        show_message("Failed to open save file!");
    }
}

function DeleteFile(filename) {
    if (file_exists(filename)) {
        if (!file_delete(filename)) {
            show_debug_message("Failed to delete save file!");
        } else {
            show_debug_message("Save file deleted successfully.");
        }
    } else {
        show_debug_message("Save file does not exist!");
    }
}
function TogglePauseMenu() {
	global.isPaused = !global.isPaused
with(obj_camera) {
    if (global.isPaused) {
	 // Pause the game by setting the game speed to 0
		instance_create_layer(x, y, "Overlay", obj_pauseOverlay);
		instance_create_layer(room_width /2, room_height /2, "Overlay", ozzzbj_pauseMenu);
        game_set_speed(0, gamespeed_fps);
    } else {
		instance_destroy(obj_pauseOverlay, 0);
		instance_destroy(ozzzbj_pauseMenu);
        // Unpause the game by restoring the game speed to normal (e.g., 60 FPS)
        game_set_speed(60, gamespeed_fps);
    }
	}
}