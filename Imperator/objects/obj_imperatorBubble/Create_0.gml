// Create event of obj_textDisplay
depth = -10000; // Set a very low depth to ensure it is drawn on top
debounceTime = 0.2; // 200 milliseconds debounce time
lastClickTime = -1; // Initialize to an invalid time

alarm[0] = 900; // Set timout on message for 3 seconds (30 step/second)

dialogue = DisplaySentence(global.playerInformation.rank);


