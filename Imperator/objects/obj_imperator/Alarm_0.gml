x_coordinate = x - 260;
y_coordinate = y + 150;

with (obj_imperatorBubble) {
    instance_destroy();
}
if (!instance_exists(obj_briefInfo)) {
var imperatorBubble = instance_create_layer(x_coordinate, y_coordinate, "Imperator", obj_imperatorBubble);
imperatorBubble.x_coordinate = x_coordinate;
imperatorBubble.y_coordinate = y_coordinate;
imperatorBubble.longDialogue = false;
}
// Set the next random interval
SetRandomInterval();
