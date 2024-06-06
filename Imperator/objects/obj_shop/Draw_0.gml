// Draw the shop background
draw_self();

// Draw the items and their prices
for (var i = 0; i < array_length(items); i++) {
    var item = items[i];
    draw_sprite(item.sprite_index, 0, item.x, item.y);
    draw_text(item.x, item.y + 32, "Price: " + string(item.price));
}
