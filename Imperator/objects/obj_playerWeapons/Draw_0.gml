

// Optionally, draw the shot timer (e.g., as a cooldown bar)
var cooldownPercent = cooldownTimer / cooldownDuration;
draw_set_color(c_red);
draw_rectangle(x - 16, y - 40, x - 16 + (32 * cooldownPercent), y - 36, false);