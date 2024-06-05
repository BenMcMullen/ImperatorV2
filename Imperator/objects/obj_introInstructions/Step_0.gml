letters += spd;
text = string_copy(endtext[currentLine],1,floor(letters));

//next line

if (elapsedTime >= 5 * 1000000)
{
    // Check if it's the last line of text
    if (currentLine + 1 == array_length(endtext)) 
    {
        
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

// Add delta_time to elapsedTime
elapsedTime += delta_time;