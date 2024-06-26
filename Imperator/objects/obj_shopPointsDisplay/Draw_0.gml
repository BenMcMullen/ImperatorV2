/// obj_briefDescription Draw Event
depth = -100;
with (obj_shopPoints) {
	



// Set alignment and font properties
draw_set_halign(fa_center); // Center align text horizontally
draw_set_valign(fa_top); // Align text to the top
draw_set_font(font_veniteLarge); // Replace with your desired font
draw_set_color(c_white)

// Text wrapping parameters



// Adjust the position as needed to position text within the sprite
draw_text(x + sprite_width /2 , y + sprite_height /2.75, global.playerInformation.points);


}
draw_self();