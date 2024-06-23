debounceTime = 0.2;
lastClickTime = -1;
longDialogue = true;

 x_coordinate = x - 260;
 y_coordinate = y + 150;

depth = - 49

 var imperatorBubble = instance_create_layer(x_coordinate, y_coordinate, "Imperator", obj_imperatorBubble);
imperatorBubble.x_coordinate = x_coordinate;
imperatorBubble.y_coordinate = y_coordinate;
imperatorBubble.longDialogue = true;

function SetRandomInterval() {
    // Set the alarm to a random time between 10 and 25 seconds
    alarm[0] = irandom_range(10 * room_speed, 25 * room_speed);
}

SetRandomInterval();