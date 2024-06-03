// Player Draw GUI Event

// Set color and draw HP and shot count in the upper left-hand corner of the screen
draw_set_color(c_white);
draw_text(150, 50, "HP: " + string(hp) + "/" + string(max_hp));

if (global.canPlayerFireMissiles) {
	draw_text(250, 100, "Missiles Enabled");
}
