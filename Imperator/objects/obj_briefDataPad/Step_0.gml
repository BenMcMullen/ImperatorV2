
// Check if the animation has reached the last frame
if (image_index >= image_number - 1) {
    // Stop the animation by setting the image speed to 0
    image_speed = 0;

    // Ensure the image index stays on the last frame
    image_index = image_number - 1;
}
// Step Event of obj_briefDataPad
if (!global.dataPadOpen) {
    // Check if the animation has reached the last frame
	sprite_index = spr_briefDataPadClosing;
    if (image_index >= image_number - 1) {
    }
}
