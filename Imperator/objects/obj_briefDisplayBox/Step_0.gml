if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
var displayBox_width = sprite_get_width(sprite_index); // Replace with actual sprite index if needed
var displayBox_height = sprite_get_height(sprite_index); // Replace with actual sprite index if needed

var displayBox_x = room_center_x - displayBox_width / 2;
var displayBox_y = room_center_y - displayBox_height / 2;

x = displayBox_x;
y = displayBox_y;
