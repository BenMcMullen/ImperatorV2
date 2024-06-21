// obj_shipSystemsLarge Create Event
current_group_start = 0; // Start index of the current group of items
items_per_group = 3; // Number of items to display per group

contained_object = noone; // Initialize contained_object to noone

creator_id = instance_number(obj_garageSystem);
/* THESE ARE THE VARIABLES SET IN THE CREATION CODES
target = global.sensors;
total_items = array_length(target); 
systemType = "sensors";
systemSprite = global.selectedShip.sensors.garageSprite; */
debounceTime = 0.2;
lastClickTime = -1;
cost = 0;
upgradeName = "";
isOwned = false;
unlocked = false;
depth = -10;

// Define the number of columns and spacing
columns = 4; // Number of columns per row
spacing_x = 111; // Horizontal spacing between objects
spacing_y = 111; // Vertical spacing between objects
start_x = 50; // Starting X position
start_y = 50; // Starting Y position
current_column = 0;
current_row = 0;
obj_width = 64; // Width of each object
obj_height = 64; // Height of each object
global.garageUpgradingSystem = "";
global.lastClickedGarageSystem = 0;
