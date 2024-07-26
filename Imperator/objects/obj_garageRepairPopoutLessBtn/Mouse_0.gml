var pause_overlay = instance_find(obj_pauseOverlay, 0); 
if (!instance_exists(pause_overlay)) {
	var currentTime = current_time / 1000;
 if (mouse_check_button_pressed(mb_left) && (currentTime - lastClickTime > debounceTime)) {
        lastClickTime = currentTime; 
		 
		image_index = 2;
		alarm[0] = 4;
		image_speed = 0;
	var currentHp =  global.selectedShip.hull.hp;
	 var currentDesiredHp = global.selectedShip.hull.hp + (global.desiredRepairs * global.selectedShip.hull.repairability) - (global.selectedShip.hull.repairability);
      	
		if (currentDesiredHp <= currentHp - global.selectedShip.hull.repairability) {
			audio_play_sound(snd_denied, 1, false);
		}
		else {
			audio_play_sound(snd_repairValueChange, 1, false);
           if (currentDesiredHp < currentHp) {
			global.desiredRepairs = global.desiredRepairs;
			}
			else { 
			global.desiredRepairs -= 1;
			}
		}
        
    }
}
