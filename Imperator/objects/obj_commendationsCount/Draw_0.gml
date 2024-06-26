/// obj_briefDescription Draw Event
depth = -100;
with (obj_commendation) {
	
var commendationsRemaining = GetRemainingCommendations();


// Set alignment and font properties
draw_set_halign(fa_center); // Center align text horizontally
draw_set_valign(fa_top); // Align text to the top
draw_set_font(font_venite); // Replace with your desired font

// Text wrapping parameters



// Adjust the position as needed to position text within the sprite
draw_text(x + sprite_width /2 , y + sprite_height /3, commendationsRemaining);
// Reset alignment to default
draw_text(x + sprite_width/2, y +sprite_height, global.playerInformation.rank.title)
draw_set_color(c_black)
draw_text(x + sprite_width/2, y +sprite_height - 2, global.playerInformation.rank.title)
draw_set_color(c_white)

}
draw_self();