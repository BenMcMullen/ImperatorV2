debounceTime = 0.2;
lastClickTime = -1;
longDialogue = true;
 x_coordinate = x - 260;
 y_coordinate = y + 150;
instance_create_layer(room_width/2, room_height/2, "Overlay", obj_overlay);
imperatorDebrief = instance_create_layer(x_coordinate, y_coordinate, "Imperator", obj_imperatorMissionDebrief);
imperatorDebrief.x_coordinate = x_coordinate;
imperatorDebrief.y_coordinate = y_coordinate;
depth = - 49