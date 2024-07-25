var overlay_instance = instance_find(obj_overlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0); var pause_overlay = instance_find(obj_pauseOverlay, 0);
if (!instance_exists(overlay_instance) && !instance_exists(pause_overlay)) {
	var currentTime = current_time / 1000;
 if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
        lastClickTime = currentTime; 
		 
		sprite_index = spr_garageRepairBtn;
		image_index = 2;
		image_speed = 0;
     
            var repairPopout = instance_create_layer(room_width/2, room_height/2, "Items", obj_garageRepairPopout);

            var repairPopoutMore = instance_create_layer(room_width/2, room_height/2, "Items", obj_garageRepairPopoutMoreBtn);

            var repairPopoutLess = instance_create_layer(room_width/2, room_height/2, "Items", obj_garageRepairPopoutLessBtn);
			
			var repairPopoutMakeRepairs = instance_create_layer(room_width/2, room_height/2, "Items", obj_garageRepairPopoutRepairs);
			
			global.desiredRepairs = 0;

    }
}
