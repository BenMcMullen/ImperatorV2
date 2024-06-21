letters += spd;
text = string_copy(endtext[currentLine],1,floor(letters));

//next line




if ((letters > -length && keyboard_check_pressed(vk_anykey)) || (elapsedTime >= 5 * 1000000))
{
    // Check if it's the last line of text
    if (currentLine + 1 == array_length(endtext)) 
    {
		with (obj_overlay) {
		instance_destroy();	
		}
        text = "";
		instance_destroy()
    }
    else
    {
        // Move to the next line of text
        currentLine++;
        letters = 0;
        length = string_length(endtext[currentLine]);
    }
    
    // Reset elapsedTime
    elapsedTime = 0;
}

// Add delta_time to elapsedTimes
elapsedTime += delta_time;