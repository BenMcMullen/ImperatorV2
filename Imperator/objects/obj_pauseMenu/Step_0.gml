if (global.isPaused) {
    // If the game is paused, exit the step event
    exit;
}
// obj_menu Step event
// Ease in items
menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control) {
    if (keyboard_check_pressed(vk_up)) {
        menu_cursor++;
        if (menu_cursor >= menu_items) menu_cursor = 0;
    }
    if (keyboard_check_pressed(vk_down)) {
        menu_cursor--;
        if (menu_cursor < 0) menu_cursor = menu_items - 1;
    }
    
    if (keyboard_check_pressed(vk_enter)) {
        MenuClick();
    }
    
    var mouse_y_gui = device_mouse_y_to_gui(0);
    
    if ((mouse_y_gui < menu_y) && (mouse_y_gui > menu_top)) {
        menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5); // div shows how many times a number can go into a number as a whole/ 11 div 3 = 3, 12 div 3 = 4. 
        if (mouse_check_button_pressed(mb_left)) {
            MenuClick();
        }
    }
}

if ((menu_x > gui_width + 150) && (menu_committed != -1)) {
    switch (menu_committed) {
		 case 3:
			default:
			global.isPaused = false;
            break;
        case 2: 
			SaveFile(SAVEFILE)
			global.isPaused = false;
            break;
        case 1: 
		global.isPaused = false;
        break;
        case 0: 
           SlideTransition(TRANS_MODE.RESTART)
            break;
    }
}
