letters += spd;
text = string_copy(endtext[currentLine],1,floor(letters));

//next line


if (keyboard_check_pressed(vk_f1)){
	with (obj_intro) {
		instance_destroy()
	}
	 SlideTransition(TRANS_MODE.NEXT);
	}
if (letters > -length && (keyboard_check_pressed(vk_anykey) || elapsedTime >= 3 * 1000000)){
    // Check if it's the last line of text
    if (currentLine + 1 == array_length(endtext)) {
        SlideTransition(TRANS_MODE.NEXT);
    }
    else{
        // Move to the next line of text
        currentLine++;
        letters = 0;
        length = string_length(endtext[currentLine]);
    }
    
    // Reset elapsedTime
    elapsedTime = 0;
}
	
// Add delta_time to elapsedTime
elapsedTime += delta_time;