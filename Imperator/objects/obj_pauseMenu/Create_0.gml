depth = -1000;



gui_width = RES_W;
gui_height = RES_H;
gui_margin = 32;

menu_x = gui_width/2;
menu_y = gui_height/2;
menu_x_target = gui_width/2;
menu_speed = 25;
menu_font = font_veniteLarge;
menu_itemheight = font_get_size(font_veniteLarge);
menu_committed = -1;
menu_control = true;

menu[3] = "Continue";
menu[2] = "Save";
menu[1] = "Stats";
menu[0] = "Back To Menu";

menu_cursor = 2;
menu_items = array_length(menu)

menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items);
