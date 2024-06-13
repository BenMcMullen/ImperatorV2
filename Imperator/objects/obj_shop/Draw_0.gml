// obj_shop - Draw Event
draw_self();

var textVerticalOffset = 20; // Vertical offset between price and name texts

for (var i = 0; i < array_length(global.shopItems); i++) {
    var item = global.shopItems[i];
    
    if (item.purchased == false) { // Only display if not purchased 
        // Draw the sprite first
        draw_sprite(item.sprite, 0, item.x, item.y);
        
        // Draw the purchase box sprite
        var purchaseBox_x = item.x - 85;
        var purchaseBox_y = item.y + 120; // Positioning below the sprite, price, and name texts
        
        // Determine which frame of spr_purchase to draw based on mouse state
        var isMouseOver = (mouse_x > purchaseBox_x && mouse_x < purchaseBox_x + sprite_get_width(spr_purchase) &&
                           mouse_y > purchaseBox_y && mouse_y < purchaseBox_y + sprite_get_height(spr_purchase));
        
        var frameIndex = 0; // Default to static frame
        
        if (isMouseOver) {
            frameIndex = 1; // Mouse hover frame
        }
        
        // Draw the purchase box sprite with the determined frame index
        draw_sprite(spr_purchase, frameIndex, purchaseBox_x, purchaseBox_y);
        
        // Draw the price and name texts
        draw_text(item.x - 50, item.y + 82, "Price: " + string(item.price));
        draw_text(item.x - 50, item.y + 102, item.itemName); // Display item name
       
    }
}

// Drawing the message box (unchanged)
if (showMessage) {
    var boxWidth = sprite_get_width(spr_shopMessage);
    var boxHeight = sprite_get_height(spr_shopMessage);
    var boxX = (room_width - boxWidth) / 2;
    var boxY = (room_height - boxHeight) / 2;

    draw_sprite(spr_shopMessage, 0, boxX, boxY);
    
    var textX = boxX + boxWidth / 2;
    var textY = boxY + boxHeight / 2;
    
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(textX, textY, messageText);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
