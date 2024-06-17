// obj_garageRightArrow Mouse Press Event
if (mouse_check_button_pressed(mb_left) && targetDisplayBox != noone) {
    if (targetDisplayBox.currentIndex + targetDisplayBox.itemsPerPage < array_length(targetDisplayBox.target)) {
        targetDisplayBox.currentIndex += targetDisplayBox.itemsPerPage;
        with (targetDisplayBox) {
            instance_destroy(); // Destroy current upgrades
            draw_self(); // Redraw the display box with updated items
        }
    }
}
