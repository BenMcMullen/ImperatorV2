var overlay_instance = instance_find(obj_overlay, 0);
if (!instance_exists(overlay_instance)) {
 var currentTime = current_time / 1000;
if ((currentTime - lastClickTime > debounceTime)) {
	lastClickTime = currentTime; // Update the last click time
	 with (obj_imperatorBubble) {
	 instance_destroy()	 
	 }

  
 
 var imperatorBubble = instance_create_layer(x_coordinate, y_coordinate, "Imperator", obj_imperatorBubble);
imperatorBubble.x_coordinate = x_coordinate;
imperatorBubble.y_coordinate = y_coordinate;
imperatorBubble.longDialogue = longDialogue;
longDialogue = false;
lastClickTime = currentTime; // Update the last click time
}
}