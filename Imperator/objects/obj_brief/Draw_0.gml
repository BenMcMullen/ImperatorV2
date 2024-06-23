 
var level = other.brief;
 if (level.completed) {
	 show_debug_message("Not completed")
                sprite_index = spr_briefCompleted;
            } else {
				 show_debug_message("Completed")
                sprite_index = level.sprite; // Assuming items_array contains sprite_index information
            }
draw_self()