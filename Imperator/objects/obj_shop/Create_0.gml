// Initialize the shop items
items = [];
item_prices = [200];
item_sprites = [spr_pulseShield]; 

for (var i = 0; i < array_length(item_prices); i++) {
    var item = instance_create_layer(100 + i * 64, 200, "Instances", obj_itemPulseShield);
    item.sprite_index = item_sprites[i];
    item.price = item_prices[i];
    items[i] = item;
}
