 if (draw_delayed) {
var level = other.brief;
 if (level.completed) {
	
                sprite_index = spr_briefCompleted;
            } else if (level.unlocks != noone) {
				
                sprite_index = level.sprite; // Assuming items_array contains sprite_index information
				image_index = 1;
            } else {
				
                sprite_index = level.sprite; // Assuming items_array contains sprite_index information
				image_index = 0;
            }
draw_self()
 }