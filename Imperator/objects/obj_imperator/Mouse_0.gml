
 var currentTime = current_time / 1000;
show_debug_message("i get here though");
if ((currentTime - lastClickTime > debounceTime)) {
	 with (obj_imperatorBubble) {
	 instance_destroy()	 
	 }
    lastClickTime = currentTime; // Update the last click time

var x_coordinate = x - 260;
var y_coordinate = y + 150;
  
 
 var imperator = instance_create_layer(x_coordinate, y_coordinate, "Imperator", obj_imperatorBubble);
imperator.x_coordinate = x_coordinate;
imperator.y_coordinate = y_coordinate;
}