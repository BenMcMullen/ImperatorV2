

// Optionally, draw the shot timer (e.g., as a cooldown bar)
var cooldown_percent = cooldown_timer / cooldown_duration;
draw_set_color(c_red);
draw_rectangle(x - 16, y - 40, x - 16 + (32 * cooldown_percent), y - 36, false);