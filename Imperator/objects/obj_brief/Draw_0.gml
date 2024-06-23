 
 var upgrade = GetUpgrade(array_index, systemType);
 if (!upgrade.unlocked) {
                sprite_index = spr_lockedSystemUpgrade;
            } else if (upgrade.isOwned) {
               
               sprite_index = spr_ownedSystemUpgrade;
            } else {
                sprite_index = upgrade.shopSprite; // Assuming items_array contains sprite_index information
            }
draw_self()