var pause_overlay = instance_find(obj_pauseOverlay, 0); 
if (!instance_exists(pause_overlay)) {
	var currentTime = current_time / 1000;
 if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
        lastClickTime = currentTime; 
		if (global.desiredRepairs == 0) {
			with (obj_garageRepairPopout) {
				instance_destroy(obj_garageRepairPopout);
			}
			with (obj_garageRepairPopoutMoreBtn) {
				instance_destroy(obj_garageRepairPopoutMoreBtn);
			}
			with (obj_garageRepairPopoutLessBtn) {
				instance_destroy(obj_garageRepairPopoutLessBtn);
			}
			with (obj_overlay) {
				instance_destroy(obj_overlay);
			}
		instance_destroy();
		}
		 else if ((global.desiredRepairs * 100) <= global.playerInformation.points) {
		image_index = 2;
		image_speed = 0;
		
		global.playerInformation.points -= (global.desiredRepairs *100);
		global.selectedShip.hull.hp += (global.desiredRepairs * global.selectedShip.hull.repairability)
		if (global.selectedShip.hull.hp > global.selectedShip.hull.maxHp) {
		global.selectedShip.hull.hp = global.selectedShip.hull.maxHp;	
		}
		global.desiredRepairs = 0;
					audio_play_sound(snd_repair, 1, false);
		 } 
		 else {
			 audio_play_sound(snd_denied, 1, false);
		 }
    }
		 } 
 