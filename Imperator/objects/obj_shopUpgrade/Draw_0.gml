if (draw_delayed) {
		
 var upgrade = GetUpgrade(array_index, systemType);
 if (!upgrade.systemStatus.unlocked) {
                sprite_index = spr_lockedSystemUpgrade;
            } else if (upgrade.systemStatus.isOwned) {
               
               sprite_index = spr_ownedSystemUpgrade;
            } else {
                sprite_index = upgrade.systemSprite; // Assuming items_array contains sprite_index information
            }
			draw_self();
	 }