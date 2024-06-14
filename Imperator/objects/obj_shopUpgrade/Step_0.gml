/// @description Insert description here
// You can write your code in this editor

if (other.system_type != global.shoppingSystem) {
	instance_destroy()
}

=
if (showMessage) {
	if (mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_anykey)) {
        showMessage = false;
	}
}
clickProcessed = false;